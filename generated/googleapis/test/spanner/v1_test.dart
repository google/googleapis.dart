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
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/spanner/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAutoscalingConfig = 0;
api.AutoscalingConfig buildAutoscalingConfig() {
  final o = api.AutoscalingConfig();
  buildCounterAutoscalingConfig++;
  if (buildCounterAutoscalingConfig < 3) {
    o.autoscalingLimits = buildAutoscalingLimits();
    o.autoscalingTargets = buildAutoscalingTargets();
  }
  buildCounterAutoscalingConfig--;
  return o;
}

void checkAutoscalingConfig(api.AutoscalingConfig o) {
  buildCounterAutoscalingConfig++;
  if (buildCounterAutoscalingConfig < 3) {
    checkAutoscalingLimits(o.autoscalingLimits!);
    checkAutoscalingTargets(o.autoscalingTargets!);
  }
  buildCounterAutoscalingConfig--;
}

core.int buildCounterAutoscalingLimits = 0;
api.AutoscalingLimits buildAutoscalingLimits() {
  final o = api.AutoscalingLimits();
  buildCounterAutoscalingLimits++;
  if (buildCounterAutoscalingLimits < 3) {
    o.maxNodes = 42;
    o.maxProcessingUnits = 42;
    o.minNodes = 42;
    o.minProcessingUnits = 42;
  }
  buildCounterAutoscalingLimits--;
  return o;
}

void checkAutoscalingLimits(api.AutoscalingLimits o) {
  buildCounterAutoscalingLimits++;
  if (buildCounterAutoscalingLimits < 3) {
    unittest.expect(
      o.maxNodes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxProcessingUnits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minNodes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minProcessingUnits!,
      unittest.equals(42),
    );
  }
  buildCounterAutoscalingLimits--;
}

core.int buildCounterAutoscalingTargets = 0;
api.AutoscalingTargets buildAutoscalingTargets() {
  final o = api.AutoscalingTargets();
  buildCounterAutoscalingTargets++;
  if (buildCounterAutoscalingTargets < 3) {
    o.highPriorityCpuUtilizationPercent = 42;
    o.storageUtilizationPercent = 42;
  }
  buildCounterAutoscalingTargets--;
  return o;
}

void checkAutoscalingTargets(api.AutoscalingTargets o) {
  buildCounterAutoscalingTargets++;
  if (buildCounterAutoscalingTargets < 3) {
    unittest.expect(
      o.highPriorityCpuUtilizationPercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.storageUtilizationPercent!,
      unittest.equals(42),
    );
  }
  buildCounterAutoscalingTargets--;
}

core.List<api.EncryptionInfo> buildUnnamed0() => [
      buildEncryptionInfo(),
      buildEncryptionInfo(),
    ];

void checkUnnamed0(core.List<api.EncryptionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEncryptionInfo(o[0]);
  checkEncryptionInfo(o[1]);
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

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterBackup = 0;
api.Backup buildBackup() {
  final o = api.Backup();
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    o.createTime = 'foo';
    o.database = 'foo';
    o.databaseDialect = 'foo';
    o.encryptionInfo = buildEncryptionInfo();
    o.encryptionInformation = buildUnnamed0();
    o.expireTime = 'foo';
    o.maxExpireTime = 'foo';
    o.name = 'foo';
    o.referencingBackups = buildUnnamed1();
    o.referencingDatabases = buildUnnamed2();
    o.sizeBytes = 'foo';
    o.state = 'foo';
    o.versionTime = 'foo';
  }
  buildCounterBackup--;
  return o;
}

void checkBackup(api.Backup o) {
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseDialect!,
      unittest.equals('foo'),
    );
    checkEncryptionInfo(o.encryptionInfo!);
    checkUnnamed0(o.encryptionInformation!);
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxExpireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.referencingBackups!);
    checkUnnamed2(o.referencingDatabases!);
    unittest.expect(
      o.sizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionTime!,
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
    o.createTime = 'foo';
    o.sourceDatabase = 'foo';
    o.versionTime = 'foo';
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
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceDatabase!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupInfo--;
}

core.int buildCounterBatchCreateSessionsRequest = 0;
api.BatchCreateSessionsRequest buildBatchCreateSessionsRequest() {
  final o = api.BatchCreateSessionsRequest();
  buildCounterBatchCreateSessionsRequest++;
  if (buildCounterBatchCreateSessionsRequest < 3) {
    o.sessionCount = 42;
    o.sessionTemplate = buildSession();
  }
  buildCounterBatchCreateSessionsRequest--;
  return o;
}

void checkBatchCreateSessionsRequest(api.BatchCreateSessionsRequest o) {
  buildCounterBatchCreateSessionsRequest++;
  if (buildCounterBatchCreateSessionsRequest < 3) {
    unittest.expect(
      o.sessionCount!,
      unittest.equals(42),
    );
    checkSession(o.sessionTemplate!);
  }
  buildCounterBatchCreateSessionsRequest--;
}

core.List<api.Session> buildUnnamed3() => [
      buildSession(),
      buildSession(),
    ];

void checkUnnamed3(core.List<api.Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSession(o[0]);
  checkSession(o[1]);
}

core.int buildCounterBatchCreateSessionsResponse = 0;
api.BatchCreateSessionsResponse buildBatchCreateSessionsResponse() {
  final o = api.BatchCreateSessionsResponse();
  buildCounterBatchCreateSessionsResponse++;
  if (buildCounterBatchCreateSessionsResponse < 3) {
    o.session = buildUnnamed3();
  }
  buildCounterBatchCreateSessionsResponse--;
  return o;
}

void checkBatchCreateSessionsResponse(api.BatchCreateSessionsResponse o) {
  buildCounterBatchCreateSessionsResponse++;
  if (buildCounterBatchCreateSessionsResponse < 3) {
    checkUnnamed3(o.session!);
  }
  buildCounterBatchCreateSessionsResponse--;
}

core.List<api.MutationGroup> buildUnnamed4() => [
      buildMutationGroup(),
      buildMutationGroup(),
    ];

void checkUnnamed4(core.List<api.MutationGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutationGroup(o[0]);
  checkMutationGroup(o[1]);
}

core.int buildCounterBatchWriteRequest = 0;
api.BatchWriteRequest buildBatchWriteRequest() {
  final o = api.BatchWriteRequest();
  buildCounterBatchWriteRequest++;
  if (buildCounterBatchWriteRequest < 3) {
    o.excludeTxnFromChangeStreams = true;
    o.mutationGroups = buildUnnamed4();
    o.requestOptions = buildRequestOptions();
  }
  buildCounterBatchWriteRequest--;
  return o;
}

void checkBatchWriteRequest(api.BatchWriteRequest o) {
  buildCounterBatchWriteRequest++;
  if (buildCounterBatchWriteRequest < 3) {
    unittest.expect(o.excludeTxnFromChangeStreams!, unittest.isTrue);
    checkUnnamed4(o.mutationGroups!);
    checkRequestOptions(o.requestOptions!);
  }
  buildCounterBatchWriteRequest--;
}

core.List<core.int> buildUnnamed5() => [
      42,
      42,
    ];

void checkUnnamed5(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterBatchWriteResponse = 0;
api.BatchWriteResponse buildBatchWriteResponse() {
  final o = api.BatchWriteResponse();
  buildCounterBatchWriteResponse++;
  if (buildCounterBatchWriteResponse < 3) {
    o.commitTimestamp = 'foo';
    o.indexes = buildUnnamed5();
    o.status = buildStatus();
  }
  buildCounterBatchWriteResponse--;
  return o;
}

void checkBatchWriteResponse(api.BatchWriteResponse o) {
  buildCounterBatchWriteResponse++;
  if (buildCounterBatchWriteResponse < 3) {
    unittest.expect(
      o.commitTimestamp!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.indexes!);
    checkStatus(o.status!);
  }
  buildCounterBatchWriteResponse--;
}

core.int buildCounterBeginTransactionRequest = 0;
api.BeginTransactionRequest buildBeginTransactionRequest() {
  final o = api.BeginTransactionRequest();
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    o.options = buildTransactionOptions();
    o.requestOptions = buildRequestOptions();
  }
  buildCounterBeginTransactionRequest--;
  return o;
}

void checkBeginTransactionRequest(api.BeginTransactionRequest o) {
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    checkTransactionOptions(o.options!);
    checkRequestOptions(o.requestOptions!);
  }
  buildCounterBeginTransactionRequest--;
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed6();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed6(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterChangeQuorumRequest = 0;
api.ChangeQuorumRequest buildChangeQuorumRequest() {
  final o = api.ChangeQuorumRequest();
  buildCounterChangeQuorumRequest++;
  if (buildCounterChangeQuorumRequest < 3) {
    o.etag = 'foo';
    o.name = 'foo';
    o.quorumType = buildQuorumType();
  }
  buildCounterChangeQuorumRequest--;
  return o;
}

void checkChangeQuorumRequest(api.ChangeQuorumRequest o) {
  buildCounterChangeQuorumRequest++;
  if (buildCounterChangeQuorumRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkQuorumType(o.quorumType!);
  }
  buildCounterChangeQuorumRequest--;
}

core.int buildCounterChildLink = 0;
api.ChildLink buildChildLink() {
  final o = api.ChildLink();
  buildCounterChildLink++;
  if (buildCounterChildLink < 3) {
    o.childIndex = 42;
    o.type = 'foo';
    o.variable = 'foo';
  }
  buildCounterChildLink--;
  return o;
}

void checkChildLink(api.ChildLink o) {
  buildCounterChildLink++;
  if (buildCounterChildLink < 3) {
    unittest.expect(
      o.childIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variable!,
      unittest.equals('foo'),
    );
  }
  buildCounterChildLink--;
}

core.List<api.Mutation> buildUnnamed7() => [
      buildMutation(),
      buildMutation(),
    ];

void checkUnnamed7(core.List<api.Mutation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutation(o[0]);
  checkMutation(o[1]);
}

core.int buildCounterCommitRequest = 0;
api.CommitRequest buildCommitRequest() {
  final o = api.CommitRequest();
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    o.maxCommitDelay = 'foo';
    o.mutations = buildUnnamed7();
    o.requestOptions = buildRequestOptions();
    o.returnCommitStats = true;
    o.singleUseTransaction = buildTransactionOptions();
    o.transactionId = 'foo';
  }
  buildCounterCommitRequest--;
  return o;
}

void checkCommitRequest(api.CommitRequest o) {
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    unittest.expect(
      o.maxCommitDelay!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.mutations!);
    checkRequestOptions(o.requestOptions!);
    unittest.expect(o.returnCommitStats!, unittest.isTrue);
    checkTransactionOptions(o.singleUseTransaction!);
    unittest.expect(
      o.transactionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommitRequest--;
}

core.int buildCounterCommitResponse = 0;
api.CommitResponse buildCommitResponse() {
  final o = api.CommitResponse();
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    o.commitStats = buildCommitStats();
    o.commitTimestamp = 'foo';
  }
  buildCounterCommitResponse--;
  return o;
}

void checkCommitResponse(api.CommitResponse o) {
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    checkCommitStats(o.commitStats!);
    unittest.expect(
      o.commitTimestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommitResponse--;
}

core.int buildCounterCommitStats = 0;
api.CommitStats buildCommitStats() {
  final o = api.CommitStats();
  buildCounterCommitStats++;
  if (buildCounterCommitStats < 3) {
    o.mutationCount = 'foo';
  }
  buildCounterCommitStats--;
  return o;
}

void checkCommitStats(api.CommitStats o) {
  buildCounterCommitStats++;
  if (buildCounterCommitStats < 3) {
    unittest.expect(
      o.mutationCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommitStats--;
}

core.int buildCounterContextValue = 0;
api.ContextValue buildContextValue() {
  final o = api.ContextValue();
  buildCounterContextValue++;
  if (buildCounterContextValue < 3) {
    o.label = buildLocalizedString();
    o.severity = 'foo';
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterContextValue--;
  return o;
}

void checkContextValue(api.ContextValue o) {
  buildCounterContextValue++;
  if (buildCounterContextValue < 3) {
    checkLocalizedString(o.label!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterContextValue--;
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

core.int buildCounterCopyBackupEncryptionConfig = 0;
api.CopyBackupEncryptionConfig buildCopyBackupEncryptionConfig() {
  final o = api.CopyBackupEncryptionConfig();
  buildCounterCopyBackupEncryptionConfig++;
  if (buildCounterCopyBackupEncryptionConfig < 3) {
    o.encryptionType = 'foo';
    o.kmsKeyName = 'foo';
    o.kmsKeyNames = buildUnnamed8();
  }
  buildCounterCopyBackupEncryptionConfig--;
  return o;
}

void checkCopyBackupEncryptionConfig(api.CopyBackupEncryptionConfig o) {
  buildCounterCopyBackupEncryptionConfig++;
  if (buildCounterCopyBackupEncryptionConfig < 3) {
    unittest.expect(
      o.encryptionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.kmsKeyNames!);
  }
  buildCounterCopyBackupEncryptionConfig--;
}

core.int buildCounterCopyBackupRequest = 0;
api.CopyBackupRequest buildCopyBackupRequest() {
  final o = api.CopyBackupRequest();
  buildCounterCopyBackupRequest++;
  if (buildCounterCopyBackupRequest < 3) {
    o.backupId = 'foo';
    o.encryptionConfig = buildCopyBackupEncryptionConfig();
    o.expireTime = 'foo';
    o.sourceBackup = 'foo';
  }
  buildCounterCopyBackupRequest--;
  return o;
}

void checkCopyBackupRequest(api.CopyBackupRequest o) {
  buildCounterCopyBackupRequest++;
  if (buildCounterCopyBackupRequest < 3) {
    unittest.expect(
      o.backupId!,
      unittest.equals('foo'),
    );
    checkCopyBackupEncryptionConfig(o.encryptionConfig!);
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceBackup!,
      unittest.equals('foo'),
    );
  }
  buildCounterCopyBackupRequest--;
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

core.int buildCounterCreateDatabaseRequest = 0;
api.CreateDatabaseRequest buildCreateDatabaseRequest() {
  final o = api.CreateDatabaseRequest();
  buildCounterCreateDatabaseRequest++;
  if (buildCounterCreateDatabaseRequest < 3) {
    o.createStatement = 'foo';
    o.databaseDialect = 'foo';
    o.encryptionConfig = buildEncryptionConfig();
    o.extraStatements = buildUnnamed9();
    o.protoDescriptors = 'foo';
  }
  buildCounterCreateDatabaseRequest--;
  return o;
}

void checkCreateDatabaseRequest(api.CreateDatabaseRequest o) {
  buildCounterCreateDatabaseRequest++;
  if (buildCounterCreateDatabaseRequest < 3) {
    unittest.expect(
      o.createStatement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseDialect!,
      unittest.equals('foo'),
    );
    checkEncryptionConfig(o.encryptionConfig!);
    checkUnnamed9(o.extraStatements!);
    unittest.expect(
      o.protoDescriptors!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateDatabaseRequest--;
}

core.int buildCounterCreateInstanceConfigRequest = 0;
api.CreateInstanceConfigRequest buildCreateInstanceConfigRequest() {
  final o = api.CreateInstanceConfigRequest();
  buildCounterCreateInstanceConfigRequest++;
  if (buildCounterCreateInstanceConfigRequest < 3) {
    o.instanceConfig = buildInstanceConfig();
    o.instanceConfigId = 'foo';
    o.validateOnly = true;
  }
  buildCounterCreateInstanceConfigRequest--;
  return o;
}

void checkCreateInstanceConfigRequest(api.CreateInstanceConfigRequest o) {
  buildCounterCreateInstanceConfigRequest++;
  if (buildCounterCreateInstanceConfigRequest < 3) {
    checkInstanceConfig(o.instanceConfig!);
    unittest.expect(
      o.instanceConfigId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterCreateInstanceConfigRequest--;
}

core.int buildCounterCreateInstancePartitionRequest = 0;
api.CreateInstancePartitionRequest buildCreateInstancePartitionRequest() {
  final o = api.CreateInstancePartitionRequest();
  buildCounterCreateInstancePartitionRequest++;
  if (buildCounterCreateInstancePartitionRequest < 3) {
    o.instancePartition = buildInstancePartition();
    o.instancePartitionId = 'foo';
  }
  buildCounterCreateInstancePartitionRequest--;
  return o;
}

void checkCreateInstancePartitionRequest(api.CreateInstancePartitionRequest o) {
  buildCounterCreateInstancePartitionRequest++;
  if (buildCounterCreateInstancePartitionRequest < 3) {
    checkInstancePartition(o.instancePartition!);
    unittest.expect(
      o.instancePartitionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateInstancePartitionRequest--;
}

core.int buildCounterCreateInstanceRequest = 0;
api.CreateInstanceRequest buildCreateInstanceRequest() {
  final o = api.CreateInstanceRequest();
  buildCounterCreateInstanceRequest++;
  if (buildCounterCreateInstanceRequest < 3) {
    o.instance = buildInstance();
    o.instanceId = 'foo';
  }
  buildCounterCreateInstanceRequest--;
  return o;
}

void checkCreateInstanceRequest(api.CreateInstanceRequest o) {
  buildCounterCreateInstanceRequest++;
  if (buildCounterCreateInstanceRequest < 3) {
    checkInstance(o.instance!);
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateInstanceRequest--;
}

core.int buildCounterCreateSessionRequest = 0;
api.CreateSessionRequest buildCreateSessionRequest() {
  final o = api.CreateSessionRequest();
  buildCounterCreateSessionRequest++;
  if (buildCounterCreateSessionRequest < 3) {
    o.session = buildSession();
  }
  buildCounterCreateSessionRequest--;
  return o;
}

void checkCreateSessionRequest(api.CreateSessionRequest o) {
  buildCounterCreateSessionRequest++;
  if (buildCounterCreateSessionRequest < 3) {
    checkSession(o.session!);
  }
  buildCounterCreateSessionRequest--;
}

core.List<api.EncryptionInfo> buildUnnamed10() => [
      buildEncryptionInfo(),
      buildEncryptionInfo(),
    ];

void checkUnnamed10(core.List<api.EncryptionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEncryptionInfo(o[0]);
  checkEncryptionInfo(o[1]);
}

core.int buildCounterDatabase = 0;
api.Database buildDatabase() {
  final o = api.Database();
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    o.createTime = 'foo';
    o.databaseDialect = 'foo';
    o.defaultLeader = 'foo';
    o.earliestVersionTime = 'foo';
    o.enableDropProtection = true;
    o.encryptionConfig = buildEncryptionConfig();
    o.encryptionInfo = buildUnnamed10();
    o.name = 'foo';
    o.quorumInfo = buildQuorumInfo();
    o.reconciling = true;
    o.restoreInfo = buildRestoreInfo();
    o.state = 'foo';
    o.versionRetentionPeriod = 'foo';
  }
  buildCounterDatabase--;
  return o;
}

void checkDatabase(api.Database o) {
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseDialect!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultLeader!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.earliestVersionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableDropProtection!, unittest.isTrue);
    checkEncryptionConfig(o.encryptionConfig!);
    checkUnnamed10(o.encryptionInfo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkQuorumInfo(o.quorumInfo!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkRestoreInfo(o.restoreInfo!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionRetentionPeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabase--;
}

core.int buildCounterDatabaseRole = 0;
api.DatabaseRole buildDatabaseRole() {
  final o = api.DatabaseRole();
  buildCounterDatabaseRole++;
  if (buildCounterDatabaseRole < 3) {
    o.name = 'foo';
  }
  buildCounterDatabaseRole--;
  return o;
}

void checkDatabaseRole(api.DatabaseRole o) {
  buildCounterDatabaseRole++;
  if (buildCounterDatabaseRole < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabaseRole--;
}

core.int buildCounterDelete = 0;
api.Delete buildDelete() {
  final o = api.Delete();
  buildCounterDelete++;
  if (buildCounterDelete < 3) {
    o.keySet = buildKeySet();
    o.table = 'foo';
  }
  buildCounterDelete--;
  return o;
}

void checkDelete(api.Delete o) {
  buildCounterDelete++;
  if (buildCounterDelete < 3) {
    checkKeySet(o.keySet!);
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterDelete--;
}

core.int buildCounterDerivedMetric = 0;
api.DerivedMetric buildDerivedMetric() {
  final o = api.DerivedMetric();
  buildCounterDerivedMetric++;
  if (buildCounterDerivedMetric < 3) {
    o.denominator = buildLocalizedString();
    o.numerator = buildLocalizedString();
  }
  buildCounterDerivedMetric--;
  return o;
}

void checkDerivedMetric(api.DerivedMetric o) {
  buildCounterDerivedMetric++;
  if (buildCounterDerivedMetric < 3) {
    checkLocalizedString(o.denominator!);
    checkLocalizedString(o.numerator!);
  }
  buildCounterDerivedMetric--;
}

core.int buildCounterDiagnosticMessage = 0;
api.DiagnosticMessage buildDiagnosticMessage() {
  final o = api.DiagnosticMessage();
  buildCounterDiagnosticMessage++;
  if (buildCounterDiagnosticMessage < 3) {
    o.info = buildLocalizedString();
    o.metric = buildLocalizedString();
    o.metricSpecific = true;
    o.severity = 'foo';
    o.shortMessage = buildLocalizedString();
  }
  buildCounterDiagnosticMessage--;
  return o;
}

void checkDiagnosticMessage(api.DiagnosticMessage o) {
  buildCounterDiagnosticMessage++;
  if (buildCounterDiagnosticMessage < 3) {
    checkLocalizedString(o.info!);
    checkLocalizedString(o.metric!);
    unittest.expect(o.metricSpecific!, unittest.isTrue);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    checkLocalizedString(o.shortMessage!);
  }
  buildCounterDiagnosticMessage--;
}

core.int buildCounterDirectedReadOptions = 0;
api.DirectedReadOptions buildDirectedReadOptions() {
  final o = api.DirectedReadOptions();
  buildCounterDirectedReadOptions++;
  if (buildCounterDirectedReadOptions < 3) {
    o.excludeReplicas = buildExcludeReplicas();
    o.includeReplicas = buildIncludeReplicas();
  }
  buildCounterDirectedReadOptions--;
  return o;
}

void checkDirectedReadOptions(api.DirectedReadOptions o) {
  buildCounterDirectedReadOptions++;
  if (buildCounterDirectedReadOptions < 3) {
    checkExcludeReplicas(o.excludeReplicas!);
    checkIncludeReplicas(o.includeReplicas!);
  }
  buildCounterDirectedReadOptions--;
}

core.int buildCounterDualRegionQuorum = 0;
api.DualRegionQuorum buildDualRegionQuorum() {
  final o = api.DualRegionQuorum();
  buildCounterDualRegionQuorum++;
  if (buildCounterDualRegionQuorum < 3) {}
  buildCounterDualRegionQuorum--;
  return o;
}

void checkDualRegionQuorum(api.DualRegionQuorum o) {
  buildCounterDualRegionQuorum++;
  if (buildCounterDualRegionQuorum < 3) {}
  buildCounterDualRegionQuorum--;
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

core.int buildCounterEncryptionConfig = 0;
api.EncryptionConfig buildEncryptionConfig() {
  final o = api.EncryptionConfig();
  buildCounterEncryptionConfig++;
  if (buildCounterEncryptionConfig < 3) {
    o.kmsKeyName = 'foo';
    o.kmsKeyNames = buildUnnamed11();
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
    checkUnnamed11(o.kmsKeyNames!);
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

core.List<api.ReplicaSelection> buildUnnamed12() => [
      buildReplicaSelection(),
      buildReplicaSelection(),
    ];

void checkUnnamed12(core.List<api.ReplicaSelection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplicaSelection(o[0]);
  checkReplicaSelection(o[1]);
}

core.int buildCounterExcludeReplicas = 0;
api.ExcludeReplicas buildExcludeReplicas() {
  final o = api.ExcludeReplicas();
  buildCounterExcludeReplicas++;
  if (buildCounterExcludeReplicas < 3) {
    o.replicaSelections = buildUnnamed12();
  }
  buildCounterExcludeReplicas--;
  return o;
}

void checkExcludeReplicas(api.ExcludeReplicas o) {
  buildCounterExcludeReplicas++;
  if (buildCounterExcludeReplicas < 3) {
    checkUnnamed12(o.replicaSelections!);
  }
  buildCounterExcludeReplicas--;
}

core.List<api.Statement> buildUnnamed13() => [
      buildStatement(),
      buildStatement(),
    ];

void checkUnnamed13(core.List<api.Statement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatement(o[0]);
  checkStatement(o[1]);
}

core.int buildCounterExecuteBatchDmlRequest = 0;
api.ExecuteBatchDmlRequest buildExecuteBatchDmlRequest() {
  final o = api.ExecuteBatchDmlRequest();
  buildCounterExecuteBatchDmlRequest++;
  if (buildCounterExecuteBatchDmlRequest < 3) {
    o.requestOptions = buildRequestOptions();
    o.seqno = 'foo';
    o.statements = buildUnnamed13();
    o.transaction = buildTransactionSelector();
  }
  buildCounterExecuteBatchDmlRequest--;
  return o;
}

void checkExecuteBatchDmlRequest(api.ExecuteBatchDmlRequest o) {
  buildCounterExecuteBatchDmlRequest++;
  if (buildCounterExecuteBatchDmlRequest < 3) {
    checkRequestOptions(o.requestOptions!);
    unittest.expect(
      o.seqno!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.statements!);
    checkTransactionSelector(o.transaction!);
  }
  buildCounterExecuteBatchDmlRequest--;
}

core.List<api.ResultSet> buildUnnamed14() => [
      buildResultSet(),
      buildResultSet(),
    ];

void checkUnnamed14(core.List<api.ResultSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultSet(o[0]);
  checkResultSet(o[1]);
}

core.int buildCounterExecuteBatchDmlResponse = 0;
api.ExecuteBatchDmlResponse buildExecuteBatchDmlResponse() {
  final o = api.ExecuteBatchDmlResponse();
  buildCounterExecuteBatchDmlResponse++;
  if (buildCounterExecuteBatchDmlResponse < 3) {
    o.resultSets = buildUnnamed14();
    o.status = buildStatus();
  }
  buildCounterExecuteBatchDmlResponse--;
  return o;
}

void checkExecuteBatchDmlResponse(api.ExecuteBatchDmlResponse o) {
  buildCounterExecuteBatchDmlResponse++;
  if (buildCounterExecuteBatchDmlResponse < 3) {
    checkUnnamed14(o.resultSets!);
    checkStatus(o.status!);
  }
  buildCounterExecuteBatchDmlResponse--;
}

core.Map<core.String, api.Type> buildUnnamed15() => {
      'x': buildType(),
      'y': buildType(),
    };

void checkUnnamed15(core.Map<core.String, api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o['x']!);
  checkType(o['y']!);
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterExecuteSqlRequest = 0;
api.ExecuteSqlRequest buildExecuteSqlRequest() {
  final o = api.ExecuteSqlRequest();
  buildCounterExecuteSqlRequest++;
  if (buildCounterExecuteSqlRequest < 3) {
    o.dataBoostEnabled = true;
    o.directedReadOptions = buildDirectedReadOptions();
    o.paramTypes = buildUnnamed15();
    o.params = buildUnnamed16();
    o.partitionToken = 'foo';
    o.queryMode = 'foo';
    o.queryOptions = buildQueryOptions();
    o.requestOptions = buildRequestOptions();
    o.resumeToken = 'foo';
    o.seqno = 'foo';
    o.sql = 'foo';
    o.transaction = buildTransactionSelector();
  }
  buildCounterExecuteSqlRequest--;
  return o;
}

void checkExecuteSqlRequest(api.ExecuteSqlRequest o) {
  buildCounterExecuteSqlRequest++;
  if (buildCounterExecuteSqlRequest < 3) {
    unittest.expect(o.dataBoostEnabled!, unittest.isTrue);
    checkDirectedReadOptions(o.directedReadOptions!);
    checkUnnamed15(o.paramTypes!);
    checkUnnamed16(o.params!);
    unittest.expect(
      o.partitionToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.queryMode!,
      unittest.equals('foo'),
    );
    checkQueryOptions(o.queryOptions!);
    checkRequestOptions(o.requestOptions!);
    unittest.expect(
      o.resumeToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.seqno!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sql!,
      unittest.equals('foo'),
    );
    checkTransactionSelector(o.transaction!);
  }
  buildCounterExecuteSqlRequest--;
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

core.int buildCounterField = 0;
api.Field buildField() {
  final o = api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.name = 'foo';
    o.type = buildType();
  }
  buildCounterField--;
  return o;
}

void checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkType(o.type!);
  }
  buildCounterField--;
}

core.int buildCounterFreeInstanceMetadata = 0;
api.FreeInstanceMetadata buildFreeInstanceMetadata() {
  final o = api.FreeInstanceMetadata();
  buildCounterFreeInstanceMetadata++;
  if (buildCounterFreeInstanceMetadata < 3) {
    o.expireBehavior = 'foo';
    o.expireTime = 'foo';
    o.upgradeTime = 'foo';
  }
  buildCounterFreeInstanceMetadata--;
  return o;
}

void checkFreeInstanceMetadata(api.FreeInstanceMetadata o) {
  buildCounterFreeInstanceMetadata++;
  if (buildCounterFreeInstanceMetadata < 3) {
    unittest.expect(
      o.expireBehavior!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.upgradeTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterFreeInstanceMetadata--;
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.int buildCounterGetDatabaseDdlResponse = 0;
api.GetDatabaseDdlResponse buildGetDatabaseDdlResponse() {
  final o = api.GetDatabaseDdlResponse();
  buildCounterGetDatabaseDdlResponse++;
  if (buildCounterGetDatabaseDdlResponse < 3) {
    o.protoDescriptors = 'foo';
    o.statements = buildUnnamed17();
  }
  buildCounterGetDatabaseDdlResponse--;
  return o;
}

void checkGetDatabaseDdlResponse(api.GetDatabaseDdlResponse o) {
  buildCounterGetDatabaseDdlResponse++;
  if (buildCounterGetDatabaseDdlResponse < 3) {
    unittest.expect(
      o.protoDescriptors!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.statements!);
  }
  buildCounterGetDatabaseDdlResponse--;
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

core.List<api.ReplicaSelection> buildUnnamed18() => [
      buildReplicaSelection(),
      buildReplicaSelection(),
    ];

void checkUnnamed18(core.List<api.ReplicaSelection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplicaSelection(o[0]);
  checkReplicaSelection(o[1]);
}

core.int buildCounterIncludeReplicas = 0;
api.IncludeReplicas buildIncludeReplicas() {
  final o = api.IncludeReplicas();
  buildCounterIncludeReplicas++;
  if (buildCounterIncludeReplicas < 3) {
    o.autoFailoverDisabled = true;
    o.replicaSelections = buildUnnamed18();
  }
  buildCounterIncludeReplicas--;
  return o;
}

void checkIncludeReplicas(api.IncludeReplicas o) {
  buildCounterIncludeReplicas++;
  if (buildCounterIncludeReplicas < 3) {
    unittest.expect(o.autoFailoverDisabled!, unittest.isTrue);
    checkUnnamed18(o.replicaSelections!);
  }
  buildCounterIncludeReplicas--;
}

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.int buildCounterIndexAdvice = 0;
api.IndexAdvice buildIndexAdvice() {
  final o = api.IndexAdvice();
  buildCounterIndexAdvice++;
  if (buildCounterIndexAdvice < 3) {
    o.ddl = buildUnnamed19();
    o.improvementFactor = 42.0;
  }
  buildCounterIndexAdvice--;
  return o;
}

void checkIndexAdvice(api.IndexAdvice o) {
  buildCounterIndexAdvice++;
  if (buildCounterIndexAdvice < 3) {
    checkUnnamed19(o.ddl!);
    unittest.expect(
      o.improvementFactor!,
      unittest.equals(42.0),
    );
  }
  buildCounterIndexAdvice--;
}

core.Map<core.String, core.int> buildUnnamed20() => {
      'x': 42,
      'y': 42,
    };

void checkUnnamed20(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42),
  );
}

core.int buildCounterIndexedHotKey = 0;
api.IndexedHotKey buildIndexedHotKey() {
  final o = api.IndexedHotKey();
  buildCounterIndexedHotKey++;
  if (buildCounterIndexedHotKey < 3) {
    o.sparseHotKeys = buildUnnamed20();
  }
  buildCounterIndexedHotKey--;
  return o;
}

void checkIndexedHotKey(api.IndexedHotKey o) {
  buildCounterIndexedHotKey++;
  if (buildCounterIndexedHotKey < 3) {
    checkUnnamed20(o.sparseHotKeys!);
  }
  buildCounterIndexedHotKey--;
}

core.Map<core.String, api.KeyRangeInfos> buildUnnamed21() => {
      'x': buildKeyRangeInfos(),
      'y': buildKeyRangeInfos(),
    };

void checkUnnamed21(core.Map<core.String, api.KeyRangeInfos> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeInfos(o['x']!);
  checkKeyRangeInfos(o['y']!);
}

core.int buildCounterIndexedKeyRangeInfos = 0;
api.IndexedKeyRangeInfos buildIndexedKeyRangeInfos() {
  final o = api.IndexedKeyRangeInfos();
  buildCounterIndexedKeyRangeInfos++;
  if (buildCounterIndexedKeyRangeInfos < 3) {
    o.keyRangeInfos = buildUnnamed21();
  }
  buildCounterIndexedKeyRangeInfos--;
  return o;
}

void checkIndexedKeyRangeInfos(api.IndexedKeyRangeInfos o) {
  buildCounterIndexedKeyRangeInfos++;
  if (buildCounterIndexedKeyRangeInfos < 3) {
    checkUnnamed21(o.keyRangeInfos!);
  }
  buildCounterIndexedKeyRangeInfos--;
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

core.Map<core.String, core.String> buildUnnamed23() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed23(core.Map<core.String, core.String> o) {
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
    o.autoscalingConfig = buildAutoscalingConfig();
    o.config = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.endpointUris = buildUnnamed22();
    o.freeInstanceMetadata = buildFreeInstanceMetadata();
    o.instanceType = 'foo';
    o.labels = buildUnnamed23();
    o.name = 'foo';
    o.nodeCount = 42;
    o.processingUnits = 42;
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    checkAutoscalingConfig(o.autoscalingConfig!);
    unittest.expect(
      o.config!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.endpointUris!);
    checkFreeInstanceMetadata(o.freeInstanceMetadata!);
    unittest.expect(
      o.instanceType!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.processingUnits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstance--;
}

core.Map<core.String, core.String> buildUnnamed24() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed24(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.List<api.ReplicaInfo> buildUnnamed26() => [
      buildReplicaInfo(),
      buildReplicaInfo(),
    ];

void checkUnnamed26(core.List<api.ReplicaInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplicaInfo(o[0]);
  checkReplicaInfo(o[1]);
}

core.List<api.ReplicaInfo> buildUnnamed27() => [
      buildReplicaInfo(),
      buildReplicaInfo(),
    ];

void checkUnnamed27(core.List<api.ReplicaInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplicaInfo(o[0]);
  checkReplicaInfo(o[1]);
}

core.int buildCounterInstanceConfig = 0;
api.InstanceConfig buildInstanceConfig() {
  final o = api.InstanceConfig();
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    o.baseConfig = 'foo';
    o.configType = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.freeInstanceAvailability = 'foo';
    o.labels = buildUnnamed24();
    o.leaderOptions = buildUnnamed25();
    o.name = 'foo';
    o.optionalReplicas = buildUnnamed26();
    o.quorumType = 'foo';
    o.reconciling = true;
    o.replicas = buildUnnamed27();
    o.state = 'foo';
    o.storageLimitPerProcessingUnit = 'foo';
  }
  buildCounterInstanceConfig--;
  return o;
}

void checkInstanceConfig(api.InstanceConfig o) {
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    unittest.expect(
      o.baseConfig!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.configType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.freeInstanceAvailability!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.labels!);
    checkUnnamed25(o.leaderOptions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.optionalReplicas!);
    unittest.expect(
      o.quorumType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkUnnamed27(o.replicas!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageLimitPerProcessingUnit!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceConfig--;
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

core.int buildCounterInstancePartition = 0;
api.InstancePartition buildInstancePartition() {
  final o = api.InstancePartition();
  buildCounterInstancePartition++;
  if (buildCounterInstancePartition < 3) {
    o.config = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.nodeCount = 42;
    o.processingUnits = 42;
    o.referencingBackups = buildUnnamed28();
    o.referencingDatabases = buildUnnamed29();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterInstancePartition--;
  return o;
}

void checkInstancePartition(api.InstancePartition o) {
  buildCounterInstancePartition++;
  if (buildCounterInstancePartition < 3) {
    unittest.expect(
      o.config!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.processingUnits!,
      unittest.equals(42),
    );
    checkUnnamed28(o.referencingBackups!);
    checkUnnamed29(o.referencingDatabases!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstancePartition--;
}

core.List<core.Object?> buildUnnamed30() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed30(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map;
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
  var casted4 = (o[1]) as core.Map;
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

core.List<core.Object?> buildUnnamed31() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed31(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o[0]) as core.Map;
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
  var casted6 = (o[1]) as core.Map;
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

core.List<core.Object?> buildUnnamed32() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed32(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o[0]) as core.Map;
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
  var casted8 = (o[1]) as core.Map;
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

core.List<core.Object?> buildUnnamed33() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed33(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o[0]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o[1]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterKeyRange = 0;
api.KeyRange buildKeyRange() {
  final o = api.KeyRange();
  buildCounterKeyRange++;
  if (buildCounterKeyRange < 3) {
    o.endClosed = buildUnnamed30();
    o.endOpen = buildUnnamed31();
    o.startClosed = buildUnnamed32();
    o.startOpen = buildUnnamed33();
  }
  buildCounterKeyRange--;
  return o;
}

void checkKeyRange(api.KeyRange o) {
  buildCounterKeyRange++;
  if (buildCounterKeyRange < 3) {
    checkUnnamed30(o.endClosed!);
    checkUnnamed31(o.endOpen!);
    checkUnnamed32(o.startClosed!);
    checkUnnamed33(o.startOpen!);
  }
  buildCounterKeyRange--;
}

core.List<api.ContextValue> buildUnnamed34() => [
      buildContextValue(),
      buildContextValue(),
    ];

void checkUnnamed34(core.List<api.ContextValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContextValue(o[0]);
  checkContextValue(o[1]);
}

core.int buildCounterKeyRangeInfo = 0;
api.KeyRangeInfo buildKeyRangeInfo() {
  final o = api.KeyRangeInfo();
  buildCounterKeyRangeInfo++;
  if (buildCounterKeyRangeInfo < 3) {
    o.contextValues = buildUnnamed34();
    o.endKeyIndex = 42;
    o.info = buildLocalizedString();
    o.keysCount = 'foo';
    o.metric = buildLocalizedString();
    o.startKeyIndex = 42;
    o.timeOffset = 'foo';
    o.unit = buildLocalizedString();
    o.value = 42.0;
  }
  buildCounterKeyRangeInfo--;
  return o;
}

void checkKeyRangeInfo(api.KeyRangeInfo o) {
  buildCounterKeyRangeInfo++;
  if (buildCounterKeyRangeInfo < 3) {
    checkUnnamed34(o.contextValues!);
    unittest.expect(
      o.endKeyIndex!,
      unittest.equals(42),
    );
    checkLocalizedString(o.info!);
    unittest.expect(
      o.keysCount!,
      unittest.equals('foo'),
    );
    checkLocalizedString(o.metric!);
    unittest.expect(
      o.startKeyIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
    checkLocalizedString(o.unit!);
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterKeyRangeInfo--;
}

core.List<api.KeyRangeInfo> buildUnnamed35() => [
      buildKeyRangeInfo(),
      buildKeyRangeInfo(),
    ];

void checkUnnamed35(core.List<api.KeyRangeInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeInfo(o[0]);
  checkKeyRangeInfo(o[1]);
}

core.int buildCounterKeyRangeInfos = 0;
api.KeyRangeInfos buildKeyRangeInfos() {
  final o = api.KeyRangeInfos();
  buildCounterKeyRangeInfos++;
  if (buildCounterKeyRangeInfos < 3) {
    o.infos = buildUnnamed35();
    o.totalSize = 42;
  }
  buildCounterKeyRangeInfos--;
  return o;
}

void checkKeyRangeInfos(api.KeyRangeInfos o) {
  buildCounterKeyRangeInfos++;
  if (buildCounterKeyRangeInfos < 3) {
    checkUnnamed35(o.infos!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterKeyRangeInfos--;
}

core.List<core.Object?> buildUnnamed36() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed36(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o[0]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o[1]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.List<core.List<core.Object?>> buildUnnamed37() => [
      buildUnnamed36(),
      buildUnnamed36(),
    ];

void checkUnnamed37(core.List<core.List<core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed36(o[0]);
  checkUnnamed36(o[1]);
}

core.List<api.KeyRange> buildUnnamed38() => [
      buildKeyRange(),
      buildKeyRange(),
    ];

void checkUnnamed38(core.List<api.KeyRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRange(o[0]);
  checkKeyRange(o[1]);
}

core.int buildCounterKeySet = 0;
api.KeySet buildKeySet() {
  final o = api.KeySet();
  buildCounterKeySet++;
  if (buildCounterKeySet < 3) {
    o.all = true;
    o.keys = buildUnnamed37();
    o.ranges = buildUnnamed38();
  }
  buildCounterKeySet--;
  return o;
}

void checkKeySet(api.KeySet o) {
  buildCounterKeySet++;
  if (buildCounterKeySet < 3) {
    unittest.expect(o.all!, unittest.isTrue);
    checkUnnamed37(o.keys!);
    checkUnnamed38(o.ranges!);
  }
  buildCounterKeySet--;
}

core.List<api.Operation> buildUnnamed39() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed39(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListBackupOperationsResponse = 0;
api.ListBackupOperationsResponse buildListBackupOperationsResponse() {
  final o = api.ListBackupOperationsResponse();
  buildCounterListBackupOperationsResponse++;
  if (buildCounterListBackupOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed39();
  }
  buildCounterListBackupOperationsResponse--;
  return o;
}

void checkListBackupOperationsResponse(api.ListBackupOperationsResponse o) {
  buildCounterListBackupOperationsResponse++;
  if (buildCounterListBackupOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.operations!);
  }
  buildCounterListBackupOperationsResponse--;
}

core.List<api.Backup> buildUnnamed40() => [
      buildBackup(),
      buildBackup(),
    ];

void checkUnnamed40(core.List<api.Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackup(o[0]);
  checkBackup(o[1]);
}

core.int buildCounterListBackupsResponse = 0;
api.ListBackupsResponse buildListBackupsResponse() {
  final o = api.ListBackupsResponse();
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    o.backups = buildUnnamed40();
    o.nextPageToken = 'foo';
  }
  buildCounterListBackupsResponse--;
  return o;
}

void checkListBackupsResponse(api.ListBackupsResponse o) {
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    checkUnnamed40(o.backups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBackupsResponse--;
}

core.List<api.Operation> buildUnnamed41() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed41(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListDatabaseOperationsResponse = 0;
api.ListDatabaseOperationsResponse buildListDatabaseOperationsResponse() {
  final o = api.ListDatabaseOperationsResponse();
  buildCounterListDatabaseOperationsResponse++;
  if (buildCounterListDatabaseOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed41();
  }
  buildCounterListDatabaseOperationsResponse--;
  return o;
}

void checkListDatabaseOperationsResponse(api.ListDatabaseOperationsResponse o) {
  buildCounterListDatabaseOperationsResponse++;
  if (buildCounterListDatabaseOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.operations!);
  }
  buildCounterListDatabaseOperationsResponse--;
}

core.List<api.DatabaseRole> buildUnnamed42() => [
      buildDatabaseRole(),
      buildDatabaseRole(),
    ];

void checkUnnamed42(core.List<api.DatabaseRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseRole(o[0]);
  checkDatabaseRole(o[1]);
}

core.int buildCounterListDatabaseRolesResponse = 0;
api.ListDatabaseRolesResponse buildListDatabaseRolesResponse() {
  final o = api.ListDatabaseRolesResponse();
  buildCounterListDatabaseRolesResponse++;
  if (buildCounterListDatabaseRolesResponse < 3) {
    o.databaseRoles = buildUnnamed42();
    o.nextPageToken = 'foo';
  }
  buildCounterListDatabaseRolesResponse--;
  return o;
}

void checkListDatabaseRolesResponse(api.ListDatabaseRolesResponse o) {
  buildCounterListDatabaseRolesResponse++;
  if (buildCounterListDatabaseRolesResponse < 3) {
    checkUnnamed42(o.databaseRoles!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDatabaseRolesResponse--;
}

core.List<api.Database> buildUnnamed43() => [
      buildDatabase(),
      buildDatabase(),
    ];

void checkUnnamed43(core.List<api.Database> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabase(o[0]);
  checkDatabase(o[1]);
}

core.int buildCounterListDatabasesResponse = 0;
api.ListDatabasesResponse buildListDatabasesResponse() {
  final o = api.ListDatabasesResponse();
  buildCounterListDatabasesResponse++;
  if (buildCounterListDatabasesResponse < 3) {
    o.databases = buildUnnamed43();
    o.nextPageToken = 'foo';
  }
  buildCounterListDatabasesResponse--;
  return o;
}

void checkListDatabasesResponse(api.ListDatabasesResponse o) {
  buildCounterListDatabasesResponse++;
  if (buildCounterListDatabasesResponse < 3) {
    checkUnnamed43(o.databases!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDatabasesResponse--;
}

core.List<api.Operation> buildUnnamed44() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed44(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListInstanceConfigOperationsResponse = 0;
api.ListInstanceConfigOperationsResponse
    buildListInstanceConfigOperationsResponse() {
  final o = api.ListInstanceConfigOperationsResponse();
  buildCounterListInstanceConfigOperationsResponse++;
  if (buildCounterListInstanceConfigOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed44();
  }
  buildCounterListInstanceConfigOperationsResponse--;
  return o;
}

void checkListInstanceConfigOperationsResponse(
    api.ListInstanceConfigOperationsResponse o) {
  buildCounterListInstanceConfigOperationsResponse++;
  if (buildCounterListInstanceConfigOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.operations!);
  }
  buildCounterListInstanceConfigOperationsResponse--;
}

core.List<api.InstanceConfig> buildUnnamed45() => [
      buildInstanceConfig(),
      buildInstanceConfig(),
    ];

void checkUnnamed45(core.List<api.InstanceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceConfig(o[0]);
  checkInstanceConfig(o[1]);
}

core.int buildCounterListInstanceConfigsResponse = 0;
api.ListInstanceConfigsResponse buildListInstanceConfigsResponse() {
  final o = api.ListInstanceConfigsResponse();
  buildCounterListInstanceConfigsResponse++;
  if (buildCounterListInstanceConfigsResponse < 3) {
    o.instanceConfigs = buildUnnamed45();
    o.nextPageToken = 'foo';
  }
  buildCounterListInstanceConfigsResponse--;
  return o;
}

void checkListInstanceConfigsResponse(api.ListInstanceConfigsResponse o) {
  buildCounterListInstanceConfigsResponse++;
  if (buildCounterListInstanceConfigsResponse < 3) {
    checkUnnamed45(o.instanceConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListInstanceConfigsResponse--;
}

core.List<api.Operation> buildUnnamed46() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed46(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.int buildCounterListInstancePartitionOperationsResponse = 0;
api.ListInstancePartitionOperationsResponse
    buildListInstancePartitionOperationsResponse() {
  final o = api.ListInstancePartitionOperationsResponse();
  buildCounterListInstancePartitionOperationsResponse++;
  if (buildCounterListInstancePartitionOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed46();
    o.unreachableInstancePartitions = buildUnnamed47();
  }
  buildCounterListInstancePartitionOperationsResponse--;
  return o;
}

void checkListInstancePartitionOperationsResponse(
    api.ListInstancePartitionOperationsResponse o) {
  buildCounterListInstancePartitionOperationsResponse++;
  if (buildCounterListInstancePartitionOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.operations!);
    checkUnnamed47(o.unreachableInstancePartitions!);
  }
  buildCounterListInstancePartitionOperationsResponse--;
}

core.List<api.InstancePartition> buildUnnamed48() => [
      buildInstancePartition(),
      buildInstancePartition(),
    ];

void checkUnnamed48(core.List<api.InstancePartition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstancePartition(o[0]);
  checkInstancePartition(o[1]);
}

core.List<core.String> buildUnnamed49() => [
      'foo',
      'foo',
    ];

void checkUnnamed49(core.List<core.String> o) {
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

core.int buildCounterListInstancePartitionsResponse = 0;
api.ListInstancePartitionsResponse buildListInstancePartitionsResponse() {
  final o = api.ListInstancePartitionsResponse();
  buildCounterListInstancePartitionsResponse++;
  if (buildCounterListInstancePartitionsResponse < 3) {
    o.instancePartitions = buildUnnamed48();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed49();
  }
  buildCounterListInstancePartitionsResponse--;
  return o;
}

void checkListInstancePartitionsResponse(api.ListInstancePartitionsResponse o) {
  buildCounterListInstancePartitionsResponse++;
  if (buildCounterListInstancePartitionsResponse < 3) {
    checkUnnamed48(o.instancePartitions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.unreachable!);
  }
  buildCounterListInstancePartitionsResponse--;
}

core.List<api.Instance> buildUnnamed50() => [
      buildInstance(),
      buildInstance(),
    ];

void checkUnnamed50(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.List<core.String> buildUnnamed51() => [
      'foo',
      'foo',
    ];

void checkUnnamed51(core.List<core.String> o) {
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
    o.instances = buildUnnamed50();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed51();
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed50(o.instances!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.unreachable!);
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Operation> buildUnnamed52() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed52(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed52();
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
    checkUnnamed52(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Scan> buildUnnamed53() => [
      buildScan(),
      buildScan(),
    ];

void checkUnnamed53(core.List<api.Scan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScan(o[0]);
  checkScan(o[1]);
}

core.int buildCounterListScansResponse = 0;
api.ListScansResponse buildListScansResponse() {
  final o = api.ListScansResponse();
  buildCounterListScansResponse++;
  if (buildCounterListScansResponse < 3) {
    o.nextPageToken = 'foo';
    o.scans = buildUnnamed53();
  }
  buildCounterListScansResponse--;
  return o;
}

void checkListScansResponse(api.ListScansResponse o) {
  buildCounterListScansResponse++;
  if (buildCounterListScansResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.scans!);
  }
  buildCounterListScansResponse--;
}

core.List<api.Session> buildUnnamed54() => [
      buildSession(),
      buildSession(),
    ];

void checkUnnamed54(core.List<api.Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSession(o[0]);
  checkSession(o[1]);
}

core.int buildCounterListSessionsResponse = 0;
api.ListSessionsResponse buildListSessionsResponse() {
  final o = api.ListSessionsResponse();
  buildCounterListSessionsResponse++;
  if (buildCounterListSessionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sessions = buildUnnamed54();
  }
  buildCounterListSessionsResponse--;
  return o;
}

void checkListSessionsResponse(api.ListSessionsResponse o) {
  buildCounterListSessionsResponse++;
  if (buildCounterListSessionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.sessions!);
  }
  buildCounterListSessionsResponse--;
}

core.Map<core.String, core.String> buildUnnamed55() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed55(core.Map<core.String, core.String> o) {
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

core.int buildCounterLocalizedString = 0;
api.LocalizedString buildLocalizedString() {
  final o = api.LocalizedString();
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    o.args = buildUnnamed55();
    o.message = 'foo';
    o.token = 'foo';
  }
  buildCounterLocalizedString--;
  return o;
}

void checkLocalizedString(api.LocalizedString o) {
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    checkUnnamed55(o.args!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalizedString--;
}

core.Map<core.String, api.IndexedHotKey> buildUnnamed56() => {
      'x': buildIndexedHotKey(),
      'y': buildIndexedHotKey(),
    };

void checkUnnamed56(core.Map<core.String, api.IndexedHotKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIndexedHotKey(o['x']!);
  checkIndexedHotKey(o['y']!);
}

core.Map<core.String, api.IndexedKeyRangeInfos> buildUnnamed57() => {
      'x': buildIndexedKeyRangeInfos(),
      'y': buildIndexedKeyRangeInfos(),
    };

void checkUnnamed57(core.Map<core.String, api.IndexedKeyRangeInfos> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIndexedKeyRangeInfos(o['x']!);
  checkIndexedKeyRangeInfos(o['y']!);
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  final o = api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.aggregation = 'foo';
    o.category = buildLocalizedString();
    o.derived = buildDerivedMetric();
    o.displayLabel = buildLocalizedString();
    o.hasNonzeroData = true;
    o.hotValue = 42.0;
    o.indexedHotKeys = buildUnnamed56();
    o.indexedKeyRangeInfos = buildUnnamed57();
    o.info = buildLocalizedString();
    o.matrix = buildMetricMatrix();
    o.unit = buildLocalizedString();
    o.visible = true;
  }
  buildCounterMetric--;
  return o;
}

void checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    unittest.expect(
      o.aggregation!,
      unittest.equals('foo'),
    );
    checkLocalizedString(o.category!);
    checkDerivedMetric(o.derived!);
    checkLocalizedString(o.displayLabel!);
    unittest.expect(o.hasNonzeroData!, unittest.isTrue);
    unittest.expect(
      o.hotValue!,
      unittest.equals(42.0),
    );
    checkUnnamed56(o.indexedHotKeys!);
    checkUnnamed57(o.indexedKeyRangeInfos!);
    checkLocalizedString(o.info!);
    checkMetricMatrix(o.matrix!);
    checkLocalizedString(o.unit!);
    unittest.expect(o.visible!, unittest.isTrue);
  }
  buildCounterMetric--;
}

core.List<api.MetricMatrixRow> buildUnnamed58() => [
      buildMetricMatrixRow(),
      buildMetricMatrixRow(),
    ];

void checkUnnamed58(core.List<api.MetricMatrixRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricMatrixRow(o[0]);
  checkMetricMatrixRow(o[1]);
}

core.int buildCounterMetricMatrix = 0;
api.MetricMatrix buildMetricMatrix() {
  final o = api.MetricMatrix();
  buildCounterMetricMatrix++;
  if (buildCounterMetricMatrix < 3) {
    o.rows = buildUnnamed58();
  }
  buildCounterMetricMatrix--;
  return o;
}

void checkMetricMatrix(api.MetricMatrix o) {
  buildCounterMetricMatrix++;
  if (buildCounterMetricMatrix < 3) {
    checkUnnamed58(o.rows!);
  }
  buildCounterMetricMatrix--;
}

core.List<core.double> buildUnnamed59() => [
      42.0,
      42.0,
    ];

void checkUnnamed59(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterMetricMatrixRow = 0;
api.MetricMatrixRow buildMetricMatrixRow() {
  final o = api.MetricMatrixRow();
  buildCounterMetricMatrixRow++;
  if (buildCounterMetricMatrixRow < 3) {
    o.cols = buildUnnamed59();
  }
  buildCounterMetricMatrixRow--;
  return o;
}

void checkMetricMatrixRow(api.MetricMatrixRow o) {
  buildCounterMetricMatrixRow++;
  if (buildCounterMetricMatrixRow < 3) {
    checkUnnamed59(o.cols!);
  }
  buildCounterMetricMatrixRow--;
}

core.int buildCounterMoveInstanceRequest = 0;
api.MoveInstanceRequest buildMoveInstanceRequest() {
  final o = api.MoveInstanceRequest();
  buildCounterMoveInstanceRequest++;
  if (buildCounterMoveInstanceRequest < 3) {
    o.targetConfig = 'foo';
  }
  buildCounterMoveInstanceRequest--;
  return o;
}

void checkMoveInstanceRequest(api.MoveInstanceRequest o) {
  buildCounterMoveInstanceRequest++;
  if (buildCounterMoveInstanceRequest < 3) {
    unittest.expect(
      o.targetConfig!,
      unittest.equals('foo'),
    );
  }
  buildCounterMoveInstanceRequest--;
}

core.int buildCounterMutation = 0;
api.Mutation buildMutation() {
  final o = api.Mutation();
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    o.delete = buildDelete();
    o.insert = buildWrite();
    o.insertOrUpdate = buildWrite();
    o.replace = buildWrite();
    o.update = buildWrite();
  }
  buildCounterMutation--;
  return o;
}

void checkMutation(api.Mutation o) {
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    checkDelete(o.delete!);
    checkWrite(o.insert!);
    checkWrite(o.insertOrUpdate!);
    checkWrite(o.replace!);
    checkWrite(o.update!);
  }
  buildCounterMutation--;
}

core.List<api.Mutation> buildUnnamed60() => [
      buildMutation(),
      buildMutation(),
    ];

void checkUnnamed60(core.List<api.Mutation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutation(o[0]);
  checkMutation(o[1]);
}

core.int buildCounterMutationGroup = 0;
api.MutationGroup buildMutationGroup() {
  final o = api.MutationGroup();
  buildCounterMutationGroup++;
  if (buildCounterMutationGroup < 3) {
    o.mutations = buildUnnamed60();
  }
  buildCounterMutationGroup--;
  return o;
}

void checkMutationGroup(api.MutationGroup o) {
  buildCounterMutationGroup++;
  if (buildCounterMutationGroup < 3) {
    checkUnnamed60(o.mutations!);
  }
  buildCounterMutationGroup--;
}

core.Map<core.String, core.Object?> buildUnnamed61() => {
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

void checkUnnamed61(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(
    casted13['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted13['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted13['string'],
    unittest.equals('foo'),
  );
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(
    casted14['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted14['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted14['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed62() => {
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

void checkUnnamed62(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(
    casted15['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted15['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted15['string'],
    unittest.equals('foo'),
  );
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(
    casted16['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted16['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted16['string'],
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
    o.metadata = buildUnnamed61();
    o.name = 'foo';
    o.response = buildUnnamed62();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed61(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.Object?> buildUnnamed63() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed63(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o[0]) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(
    casted17['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted17['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted17['string'],
    unittest.equals('foo'),
  );
  var casted18 = (o[1]) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(
    casted18['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted18['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted18['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterPartialResultSet = 0;
api.PartialResultSet buildPartialResultSet() {
  final o = api.PartialResultSet();
  buildCounterPartialResultSet++;
  if (buildCounterPartialResultSet < 3) {
    o.chunkedValue = true;
    o.metadata = buildResultSetMetadata();
    o.resumeToken = 'foo';
    o.stats = buildResultSetStats();
    o.values = buildUnnamed63();
  }
  buildCounterPartialResultSet--;
  return o;
}

void checkPartialResultSet(api.PartialResultSet o) {
  buildCounterPartialResultSet++;
  if (buildCounterPartialResultSet < 3) {
    unittest.expect(o.chunkedValue!, unittest.isTrue);
    checkResultSetMetadata(o.metadata!);
    unittest.expect(
      o.resumeToken!,
      unittest.equals('foo'),
    );
    checkResultSetStats(o.stats!);
    checkUnnamed63(o.values!);
  }
  buildCounterPartialResultSet--;
}

core.int buildCounterPartition = 0;
api.Partition buildPartition() {
  final o = api.Partition();
  buildCounterPartition++;
  if (buildCounterPartition < 3) {
    o.partitionToken = 'foo';
  }
  buildCounterPartition--;
  return o;
}

void checkPartition(api.Partition o) {
  buildCounterPartition++;
  if (buildCounterPartition < 3) {
    unittest.expect(
      o.partitionToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterPartition--;
}

core.int buildCounterPartitionOptions = 0;
api.PartitionOptions buildPartitionOptions() {
  final o = api.PartitionOptions();
  buildCounterPartitionOptions++;
  if (buildCounterPartitionOptions < 3) {
    o.maxPartitions = 'foo';
    o.partitionSizeBytes = 'foo';
  }
  buildCounterPartitionOptions--;
  return o;
}

void checkPartitionOptions(api.PartitionOptions o) {
  buildCounterPartitionOptions++;
  if (buildCounterPartitionOptions < 3) {
    unittest.expect(
      o.maxPartitions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partitionSizeBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterPartitionOptions--;
}

core.Map<core.String, api.Type> buildUnnamed64() => {
      'x': buildType(),
      'y': buildType(),
    };

void checkUnnamed64(core.Map<core.String, api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o['x']!);
  checkType(o['y']!);
}

core.Map<core.String, core.Object?> buildUnnamed65() => {
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

void checkUnnamed65(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o['x']!) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(
    casted19['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted19['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted19['string'],
    unittest.equals('foo'),
  );
  var casted20 = (o['y']!) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(
    casted20['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted20['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted20['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterPartitionQueryRequest = 0;
api.PartitionQueryRequest buildPartitionQueryRequest() {
  final o = api.PartitionQueryRequest();
  buildCounterPartitionQueryRequest++;
  if (buildCounterPartitionQueryRequest < 3) {
    o.paramTypes = buildUnnamed64();
    o.params = buildUnnamed65();
    o.partitionOptions = buildPartitionOptions();
    o.sql = 'foo';
    o.transaction = buildTransactionSelector();
  }
  buildCounterPartitionQueryRequest--;
  return o;
}

void checkPartitionQueryRequest(api.PartitionQueryRequest o) {
  buildCounterPartitionQueryRequest++;
  if (buildCounterPartitionQueryRequest < 3) {
    checkUnnamed64(o.paramTypes!);
    checkUnnamed65(o.params!);
    checkPartitionOptions(o.partitionOptions!);
    unittest.expect(
      o.sql!,
      unittest.equals('foo'),
    );
    checkTransactionSelector(o.transaction!);
  }
  buildCounterPartitionQueryRequest--;
}

core.List<core.String> buildUnnamed66() => [
      'foo',
      'foo',
    ];

void checkUnnamed66(core.List<core.String> o) {
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

core.int buildCounterPartitionReadRequest = 0;
api.PartitionReadRequest buildPartitionReadRequest() {
  final o = api.PartitionReadRequest();
  buildCounterPartitionReadRequest++;
  if (buildCounterPartitionReadRequest < 3) {
    o.columns = buildUnnamed66();
    o.index = 'foo';
    o.keySet = buildKeySet();
    o.partitionOptions = buildPartitionOptions();
    o.table = 'foo';
    o.transaction = buildTransactionSelector();
  }
  buildCounterPartitionReadRequest--;
  return o;
}

void checkPartitionReadRequest(api.PartitionReadRequest o) {
  buildCounterPartitionReadRequest++;
  if (buildCounterPartitionReadRequest < 3) {
    checkUnnamed66(o.columns!);
    unittest.expect(
      o.index!,
      unittest.equals('foo'),
    );
    checkKeySet(o.keySet!);
    checkPartitionOptions(o.partitionOptions!);
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
    checkTransactionSelector(o.transaction!);
  }
  buildCounterPartitionReadRequest--;
}

core.List<api.Partition> buildUnnamed67() => [
      buildPartition(),
      buildPartition(),
    ];

void checkUnnamed67(core.List<api.Partition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartition(o[0]);
  checkPartition(o[1]);
}

core.int buildCounterPartitionResponse = 0;
api.PartitionResponse buildPartitionResponse() {
  final o = api.PartitionResponse();
  buildCounterPartitionResponse++;
  if (buildCounterPartitionResponse < 3) {
    o.partitions = buildUnnamed67();
    o.transaction = buildTransaction();
  }
  buildCounterPartitionResponse--;
  return o;
}

void checkPartitionResponse(api.PartitionResponse o) {
  buildCounterPartitionResponse++;
  if (buildCounterPartitionResponse < 3) {
    checkUnnamed67(o.partitions!);
    checkTransaction(o.transaction!);
  }
  buildCounterPartitionResponse--;
}

core.int buildCounterPartitionedDml = 0;
api.PartitionedDml buildPartitionedDml() {
  final o = api.PartitionedDml();
  buildCounterPartitionedDml++;
  if (buildCounterPartitionedDml < 3) {}
  buildCounterPartitionedDml--;
  return o;
}

void checkPartitionedDml(api.PartitionedDml o) {
  buildCounterPartitionedDml++;
  if (buildCounterPartitionedDml < 3) {}
  buildCounterPartitionedDml--;
}

core.List<api.ChildLink> buildUnnamed68() => [
      buildChildLink(),
      buildChildLink(),
    ];

void checkUnnamed68(core.List<api.ChildLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChildLink(o[0]);
  checkChildLink(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed69() => {
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

void checkUnnamed69(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']!) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(
    casted21['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted21['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted21['string'],
    unittest.equals('foo'),
  );
  var casted22 = (o['y']!) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(
    casted22['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted22['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted22['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed70() => {
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

void checkUnnamed70(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o['x']!) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(
    casted23['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted23['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted23['string'],
    unittest.equals('foo'),
  );
  var casted24 = (o['y']!) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(
    casted24['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted24['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted24['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterPlanNode = 0;
api.PlanNode buildPlanNode() {
  final o = api.PlanNode();
  buildCounterPlanNode++;
  if (buildCounterPlanNode < 3) {
    o.childLinks = buildUnnamed68();
    o.displayName = 'foo';
    o.executionStats = buildUnnamed69();
    o.index = 42;
    o.kind = 'foo';
    o.metadata = buildUnnamed70();
    o.shortRepresentation = buildShortRepresentation();
  }
  buildCounterPlanNode--;
  return o;
}

void checkPlanNode(api.PlanNode o) {
  buildCounterPlanNode++;
  if (buildCounterPlanNode < 3) {
    checkUnnamed68(o.childLinks!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed69(o.executionStats!);
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed70(o.metadata!);
    checkShortRepresentation(o.shortRepresentation!);
  }
  buildCounterPlanNode--;
}

core.List<api.Binding> buildUnnamed71() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed71(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed71();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed71(o.bindings!);
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

core.int buildCounterPrefixNode = 0;
api.PrefixNode buildPrefixNode() {
  final o = api.PrefixNode();
  buildCounterPrefixNode++;
  if (buildCounterPrefixNode < 3) {
    o.dataSourceNode = true;
    o.depth = 42;
    o.endIndex = 42;
    o.startIndex = 42;
    o.word = 'foo';
  }
  buildCounterPrefixNode--;
  return o;
}

void checkPrefixNode(api.PrefixNode o) {
  buildCounterPrefixNode++;
  if (buildCounterPrefixNode < 3) {
    unittest.expect(o.dataSourceNode!, unittest.isTrue);
    unittest.expect(
      o.depth!,
      unittest.equals(42),
    );
    unittest.expect(
      o.endIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.word!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrefixNode--;
}

core.List<api.IndexAdvice> buildUnnamed72() => [
      buildIndexAdvice(),
      buildIndexAdvice(),
    ];

void checkUnnamed72(core.List<api.IndexAdvice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIndexAdvice(o[0]);
  checkIndexAdvice(o[1]);
}

core.int buildCounterQueryAdvisorResult = 0;
api.QueryAdvisorResult buildQueryAdvisorResult() {
  final o = api.QueryAdvisorResult();
  buildCounterQueryAdvisorResult++;
  if (buildCounterQueryAdvisorResult < 3) {
    o.indexAdvice = buildUnnamed72();
  }
  buildCounterQueryAdvisorResult--;
  return o;
}

void checkQueryAdvisorResult(api.QueryAdvisorResult o) {
  buildCounterQueryAdvisorResult++;
  if (buildCounterQueryAdvisorResult < 3) {
    checkUnnamed72(o.indexAdvice!);
  }
  buildCounterQueryAdvisorResult--;
}

core.int buildCounterQueryOptions = 0;
api.QueryOptions buildQueryOptions() {
  final o = api.QueryOptions();
  buildCounterQueryOptions++;
  if (buildCounterQueryOptions < 3) {
    o.optimizerStatisticsPackage = 'foo';
    o.optimizerVersion = 'foo';
  }
  buildCounterQueryOptions--;
  return o;
}

void checkQueryOptions(api.QueryOptions o) {
  buildCounterQueryOptions++;
  if (buildCounterQueryOptions < 3) {
    unittest.expect(
      o.optimizerStatisticsPackage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.optimizerVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryOptions--;
}

core.List<api.PlanNode> buildUnnamed73() => [
      buildPlanNode(),
      buildPlanNode(),
    ];

void checkUnnamed73(core.List<api.PlanNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlanNode(o[0]);
  checkPlanNode(o[1]);
}

core.int buildCounterQueryPlan = 0;
api.QueryPlan buildQueryPlan() {
  final o = api.QueryPlan();
  buildCounterQueryPlan++;
  if (buildCounterQueryPlan < 3) {
    o.planNodes = buildUnnamed73();
    o.queryAdvice = buildQueryAdvisorResult();
  }
  buildCounterQueryPlan--;
  return o;
}

void checkQueryPlan(api.QueryPlan o) {
  buildCounterQueryPlan++;
  if (buildCounterQueryPlan < 3) {
    checkUnnamed73(o.planNodes!);
    checkQueryAdvisorResult(o.queryAdvice!);
  }
  buildCounterQueryPlan--;
}

core.int buildCounterQuorumInfo = 0;
api.QuorumInfo buildQuorumInfo() {
  final o = api.QuorumInfo();
  buildCounterQuorumInfo++;
  if (buildCounterQuorumInfo < 3) {
    o.etag = 'foo';
    o.initiator = 'foo';
    o.quorumType = buildQuorumType();
    o.startTime = 'foo';
  }
  buildCounterQuorumInfo--;
  return o;
}

void checkQuorumInfo(api.QuorumInfo o) {
  buildCounterQuorumInfo++;
  if (buildCounterQuorumInfo < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.initiator!,
      unittest.equals('foo'),
    );
    checkQuorumType(o.quorumType!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterQuorumInfo--;
}

core.int buildCounterQuorumType = 0;
api.QuorumType buildQuorumType() {
  final o = api.QuorumType();
  buildCounterQuorumType++;
  if (buildCounterQuorumType < 3) {
    o.dualRegion = buildDualRegionQuorum();
    o.singleRegion = buildSingleRegionQuorum();
  }
  buildCounterQuorumType--;
  return o;
}

void checkQuorumType(api.QuorumType o) {
  buildCounterQuorumType++;
  if (buildCounterQuorumType < 3) {
    checkDualRegionQuorum(o.dualRegion!);
    checkSingleRegionQuorum(o.singleRegion!);
  }
  buildCounterQuorumType--;
}

core.int buildCounterReadOnly = 0;
api.ReadOnly buildReadOnly() {
  final o = api.ReadOnly();
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {
    o.exactStaleness = 'foo';
    o.maxStaleness = 'foo';
    o.minReadTimestamp = 'foo';
    o.readTimestamp = 'foo';
    o.returnReadTimestamp = true;
    o.strong = true;
  }
  buildCounterReadOnly--;
  return o;
}

void checkReadOnly(api.ReadOnly o) {
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {
    unittest.expect(
      o.exactStaleness!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxStaleness!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minReadTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(o.returnReadTimestamp!, unittest.isTrue);
    unittest.expect(o.strong!, unittest.isTrue);
  }
  buildCounterReadOnly--;
}

core.List<core.String> buildUnnamed74() => [
      'foo',
      'foo',
    ];

void checkUnnamed74(core.List<core.String> o) {
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

core.int buildCounterReadRequest = 0;
api.ReadRequest buildReadRequest() {
  final o = api.ReadRequest();
  buildCounterReadRequest++;
  if (buildCounterReadRequest < 3) {
    o.columns = buildUnnamed74();
    o.dataBoostEnabled = true;
    o.directedReadOptions = buildDirectedReadOptions();
    o.index = 'foo';
    o.keySet = buildKeySet();
    o.limit = 'foo';
    o.partitionToken = 'foo';
    o.requestOptions = buildRequestOptions();
    o.resumeToken = 'foo';
    o.table = 'foo';
    o.transaction = buildTransactionSelector();
  }
  buildCounterReadRequest--;
  return o;
}

void checkReadRequest(api.ReadRequest o) {
  buildCounterReadRequest++;
  if (buildCounterReadRequest < 3) {
    checkUnnamed74(o.columns!);
    unittest.expect(o.dataBoostEnabled!, unittest.isTrue);
    checkDirectedReadOptions(o.directedReadOptions!);
    unittest.expect(
      o.index!,
      unittest.equals('foo'),
    );
    checkKeySet(o.keySet!);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partitionToken!,
      unittest.equals('foo'),
    );
    checkRequestOptions(o.requestOptions!);
    unittest.expect(
      o.resumeToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
    checkTransactionSelector(o.transaction!);
  }
  buildCounterReadRequest--;
}

core.int buildCounterReadWrite = 0;
api.ReadWrite buildReadWrite() {
  final o = api.ReadWrite();
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
    o.readLockMode = 'foo';
  }
  buildCounterReadWrite--;
  return o;
}

void checkReadWrite(api.ReadWrite o) {
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
    unittest.expect(
      o.readLockMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterReadWrite--;
}

core.int buildCounterReplicaInfo = 0;
api.ReplicaInfo buildReplicaInfo() {
  final o = api.ReplicaInfo();
  buildCounterReplicaInfo++;
  if (buildCounterReplicaInfo < 3) {
    o.defaultLeaderLocation = true;
    o.location = 'foo';
    o.type = 'foo';
  }
  buildCounterReplicaInfo--;
  return o;
}

void checkReplicaInfo(api.ReplicaInfo o) {
  buildCounterReplicaInfo++;
  if (buildCounterReplicaInfo < 3) {
    unittest.expect(o.defaultLeaderLocation!, unittest.isTrue);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplicaInfo--;
}

core.int buildCounterReplicaSelection = 0;
api.ReplicaSelection buildReplicaSelection() {
  final o = api.ReplicaSelection();
  buildCounterReplicaSelection++;
  if (buildCounterReplicaSelection < 3) {
    o.location = 'foo';
    o.type = 'foo';
  }
  buildCounterReplicaSelection--;
  return o;
}

void checkReplicaSelection(api.ReplicaSelection o) {
  buildCounterReplicaSelection++;
  if (buildCounterReplicaSelection < 3) {
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplicaSelection--;
}

core.int buildCounterRequestOptions = 0;
api.RequestOptions buildRequestOptions() {
  final o = api.RequestOptions();
  buildCounterRequestOptions++;
  if (buildCounterRequestOptions < 3) {
    o.priority = 'foo';
    o.requestTag = 'foo';
    o.transactionTag = 'foo';
  }
  buildCounterRequestOptions--;
  return o;
}

void checkRequestOptions(api.RequestOptions o) {
  buildCounterRequestOptions++;
  if (buildCounterRequestOptions < 3) {
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestTag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transactionTag!,
      unittest.equals('foo'),
    );
  }
  buildCounterRequestOptions--;
}

core.List<core.String> buildUnnamed75() => [
      'foo',
      'foo',
    ];

void checkUnnamed75(core.List<core.String> o) {
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

core.int buildCounterRestoreDatabaseEncryptionConfig = 0;
api.RestoreDatabaseEncryptionConfig buildRestoreDatabaseEncryptionConfig() {
  final o = api.RestoreDatabaseEncryptionConfig();
  buildCounterRestoreDatabaseEncryptionConfig++;
  if (buildCounterRestoreDatabaseEncryptionConfig < 3) {
    o.encryptionType = 'foo';
    o.kmsKeyName = 'foo';
    o.kmsKeyNames = buildUnnamed75();
  }
  buildCounterRestoreDatabaseEncryptionConfig--;
  return o;
}

void checkRestoreDatabaseEncryptionConfig(
    api.RestoreDatabaseEncryptionConfig o) {
  buildCounterRestoreDatabaseEncryptionConfig++;
  if (buildCounterRestoreDatabaseEncryptionConfig < 3) {
    unittest.expect(
      o.encryptionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    checkUnnamed75(o.kmsKeyNames!);
  }
  buildCounterRestoreDatabaseEncryptionConfig--;
}

core.int buildCounterRestoreDatabaseRequest = 0;
api.RestoreDatabaseRequest buildRestoreDatabaseRequest() {
  final o = api.RestoreDatabaseRequest();
  buildCounterRestoreDatabaseRequest++;
  if (buildCounterRestoreDatabaseRequest < 3) {
    o.backup = 'foo';
    o.databaseId = 'foo';
    o.encryptionConfig = buildRestoreDatabaseEncryptionConfig();
  }
  buildCounterRestoreDatabaseRequest--;
  return o;
}

void checkRestoreDatabaseRequest(api.RestoreDatabaseRequest o) {
  buildCounterRestoreDatabaseRequest++;
  if (buildCounterRestoreDatabaseRequest < 3) {
    unittest.expect(
      o.backup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseId!,
      unittest.equals('foo'),
    );
    checkRestoreDatabaseEncryptionConfig(o.encryptionConfig!);
  }
  buildCounterRestoreDatabaseRequest--;
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

core.List<core.Object?> buildUnnamed76() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed76(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o[0]) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(
    casted25['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted25['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted25['string'],
    unittest.equals('foo'),
  );
  var casted26 = (o[1]) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(
    casted26['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted26['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted26['string'],
    unittest.equals('foo'),
  );
}

core.List<core.List<core.Object?>> buildUnnamed77() => [
      buildUnnamed76(),
      buildUnnamed76(),
    ];

void checkUnnamed77(core.List<core.List<core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed76(o[0]);
  checkUnnamed76(o[1]);
}

core.int buildCounterResultSet = 0;
api.ResultSet buildResultSet() {
  final o = api.ResultSet();
  buildCounterResultSet++;
  if (buildCounterResultSet < 3) {
    o.metadata = buildResultSetMetadata();
    o.rows = buildUnnamed77();
    o.stats = buildResultSetStats();
  }
  buildCounterResultSet--;
  return o;
}

void checkResultSet(api.ResultSet o) {
  buildCounterResultSet++;
  if (buildCounterResultSet < 3) {
    checkResultSetMetadata(o.metadata!);
    checkUnnamed77(o.rows!);
    checkResultSetStats(o.stats!);
  }
  buildCounterResultSet--;
}

core.int buildCounterResultSetMetadata = 0;
api.ResultSetMetadata buildResultSetMetadata() {
  final o = api.ResultSetMetadata();
  buildCounterResultSetMetadata++;
  if (buildCounterResultSetMetadata < 3) {
    o.rowType = buildStructType();
    o.transaction = buildTransaction();
    o.undeclaredParameters = buildStructType();
  }
  buildCounterResultSetMetadata--;
  return o;
}

void checkResultSetMetadata(api.ResultSetMetadata o) {
  buildCounterResultSetMetadata++;
  if (buildCounterResultSetMetadata < 3) {
    checkStructType(o.rowType!);
    checkTransaction(o.transaction!);
    checkStructType(o.undeclaredParameters!);
  }
  buildCounterResultSetMetadata--;
}

core.Map<core.String, core.Object?> buildUnnamed78() => {
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

void checkUnnamed78(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o['x']!) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(
    casted27['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted27['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted27['string'],
    unittest.equals('foo'),
  );
  var casted28 = (o['y']!) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(
    casted28['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted28['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted28['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterResultSetStats = 0;
api.ResultSetStats buildResultSetStats() {
  final o = api.ResultSetStats();
  buildCounterResultSetStats++;
  if (buildCounterResultSetStats < 3) {
    o.queryPlan = buildQueryPlan();
    o.queryStats = buildUnnamed78();
    o.rowCountExact = 'foo';
    o.rowCountLowerBound = 'foo';
  }
  buildCounterResultSetStats--;
  return o;
}

void checkResultSetStats(api.ResultSetStats o) {
  buildCounterResultSetStats++;
  if (buildCounterResultSetStats < 3) {
    checkQueryPlan(o.queryPlan!);
    checkUnnamed78(o.queryStats!);
    unittest.expect(
      o.rowCountExact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rowCountLowerBound!,
      unittest.equals('foo'),
    );
  }
  buildCounterResultSetStats--;
}

core.int buildCounterRollbackRequest = 0;
api.RollbackRequest buildRollbackRequest() {
  final o = api.RollbackRequest();
  buildCounterRollbackRequest++;
  if (buildCounterRollbackRequest < 3) {
    o.transactionId = 'foo';
  }
  buildCounterRollbackRequest--;
  return o;
}

void checkRollbackRequest(api.RollbackRequest o) {
  buildCounterRollbackRequest++;
  if (buildCounterRollbackRequest < 3) {
    unittest.expect(
      o.transactionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRollbackRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed79() => {
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

void checkUnnamed79(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted29 = (o['x']!) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(
    casted29['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted29['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted29['string'],
    unittest.equals('foo'),
  );
  var casted30 = (o['y']!) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(
    casted30['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted30['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted30['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterScan = 0;
api.Scan buildScan() {
  final o = api.Scan();
  buildCounterScan++;
  if (buildCounterScan < 3) {
    o.details = buildUnnamed79();
    o.endTime = 'foo';
    o.name = 'foo';
    o.scanData = buildScanData();
    o.startTime = 'foo';
  }
  buildCounterScan--;
  return o;
}

void checkScan(api.Scan o) {
  buildCounterScan++;
  if (buildCounterScan < 3) {
    checkUnnamed79(o.details!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkScanData(o.scanData!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterScan--;
}

core.int buildCounterScanData = 0;
api.ScanData buildScanData() {
  final o = api.ScanData();
  buildCounterScanData++;
  if (buildCounterScanData < 3) {
    o.data = buildVisualizationData();
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterScanData--;
  return o;
}

void checkScanData(api.ScanData o) {
  buildCounterScanData++;
  if (buildCounterScanData < 3) {
    checkVisualizationData(o.data!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterScanData--;
}

core.Map<core.String, core.String> buildUnnamed80() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed80(core.Map<core.String, core.String> o) {
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

core.int buildCounterSession = 0;
api.Session buildSession() {
  final o = api.Session();
  buildCounterSession++;
  if (buildCounterSession < 3) {
    o.approximateLastUseTime = 'foo';
    o.createTime = 'foo';
    o.creatorRole = 'foo';
    o.labels = buildUnnamed80();
    o.multiplexed = true;
    o.name = 'foo';
  }
  buildCounterSession--;
  return o;
}

void checkSession(api.Session o) {
  buildCounterSession++;
  if (buildCounterSession < 3) {
    unittest.expect(
      o.approximateLastUseTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creatorRole!,
      unittest.equals('foo'),
    );
    checkUnnamed80(o.labels!);
    unittest.expect(o.multiplexed!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterSession--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.int> buildUnnamed81() => {
      'x': 42,
      'y': 42,
    };

void checkUnnamed81(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42),
  );
}

core.int buildCounterShortRepresentation = 0;
api.ShortRepresentation buildShortRepresentation() {
  final o = api.ShortRepresentation();
  buildCounterShortRepresentation++;
  if (buildCounterShortRepresentation < 3) {
    o.description = 'foo';
    o.subqueries = buildUnnamed81();
  }
  buildCounterShortRepresentation--;
  return o;
}

void checkShortRepresentation(api.ShortRepresentation o) {
  buildCounterShortRepresentation++;
  if (buildCounterShortRepresentation < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed81(o.subqueries!);
  }
  buildCounterShortRepresentation--;
}

core.int buildCounterSingleRegionQuorum = 0;
api.SingleRegionQuorum buildSingleRegionQuorum() {
  final o = api.SingleRegionQuorum();
  buildCounterSingleRegionQuorum++;
  if (buildCounterSingleRegionQuorum < 3) {
    o.servingLocation = 'foo';
  }
  buildCounterSingleRegionQuorum--;
  return o;
}

void checkSingleRegionQuorum(api.SingleRegionQuorum o) {
  buildCounterSingleRegionQuorum++;
  if (buildCounterSingleRegionQuorum < 3) {
    unittest.expect(
      o.servingLocation!,
      unittest.equals('foo'),
    );
  }
  buildCounterSingleRegionQuorum--;
}

core.Map<core.String, api.Type> buildUnnamed82() => {
      'x': buildType(),
      'y': buildType(),
    };

void checkUnnamed82(core.Map<core.String, api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o['x']!);
  checkType(o['y']!);
}

core.Map<core.String, core.Object?> buildUnnamed83() => {
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

void checkUnnamed83(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted31 = (o['x']!) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(
    casted31['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted31['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted31['string'],
    unittest.equals('foo'),
  );
  var casted32 = (o['y']!) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(
    casted32['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted32['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted32['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterStatement = 0;
api.Statement buildStatement() {
  final o = api.Statement();
  buildCounterStatement++;
  if (buildCounterStatement < 3) {
    o.paramTypes = buildUnnamed82();
    o.params = buildUnnamed83();
    o.sql = 'foo';
  }
  buildCounterStatement--;
  return o;
}

void checkStatement(api.Statement o) {
  buildCounterStatement++;
  if (buildCounterStatement < 3) {
    checkUnnamed82(o.paramTypes!);
    checkUnnamed83(o.params!);
    unittest.expect(
      o.sql!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatement--;
}

core.Map<core.String, core.Object?> buildUnnamed84() => {
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

void checkUnnamed84(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted33 = (o['x']!) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(
    casted33['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted33['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted33['string'],
    unittest.equals('foo'),
  );
  var casted34 = (o['y']!) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(
    casted34['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted34['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted34['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed85() => [
      buildUnnamed84(),
      buildUnnamed84(),
    ];

void checkUnnamed85(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed84(o[0]);
  checkUnnamed84(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed85();
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
    checkUnnamed85(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.Field> buildUnnamed86() => [
      buildField(),
      buildField(),
    ];

void checkUnnamed86(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

core.int buildCounterStructType = 0;
api.StructType buildStructType() {
  final o = api.StructType();
  buildCounterStructType++;
  if (buildCounterStructType < 3) {
    o.fields = buildUnnamed86();
  }
  buildCounterStructType--;
  return o;
}

void checkStructType(api.StructType o) {
  buildCounterStructType++;
  if (buildCounterStructType < 3) {
    checkUnnamed86(o.fields!);
  }
  buildCounterStructType--;
}

core.List<core.String> buildUnnamed87() => [
      'foo',
      'foo',
    ];

void checkUnnamed87(core.List<core.String> o) {
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
    o.permissions = buildUnnamed87();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed87(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed88() => [
      'foo',
      'foo',
    ];

void checkUnnamed88(core.List<core.String> o) {
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
    o.permissions = buildUnnamed88();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed88(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTransaction = 0;
api.Transaction buildTransaction() {
  final o = api.Transaction();
  buildCounterTransaction++;
  if (buildCounterTransaction < 3) {
    o.id = 'foo';
    o.readTimestamp = 'foo';
  }
  buildCounterTransaction--;
  return o;
}

void checkTransaction(api.Transaction o) {
  buildCounterTransaction++;
  if (buildCounterTransaction < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readTimestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterTransaction--;
}

core.int buildCounterTransactionOptions = 0;
api.TransactionOptions buildTransactionOptions() {
  final o = api.TransactionOptions();
  buildCounterTransactionOptions++;
  if (buildCounterTransactionOptions < 3) {
    o.excludeTxnFromChangeStreams = true;
    o.partitionedDml = buildPartitionedDml();
    o.readOnly = buildReadOnly();
    o.readWrite = buildReadWrite();
  }
  buildCounterTransactionOptions--;
  return o;
}

void checkTransactionOptions(api.TransactionOptions o) {
  buildCounterTransactionOptions++;
  if (buildCounterTransactionOptions < 3) {
    unittest.expect(o.excludeTxnFromChangeStreams!, unittest.isTrue);
    checkPartitionedDml(o.partitionedDml!);
    checkReadOnly(o.readOnly!);
    checkReadWrite(o.readWrite!);
  }
  buildCounterTransactionOptions--;
}

core.int buildCounterTransactionSelector = 0;
api.TransactionSelector buildTransactionSelector() {
  final o = api.TransactionSelector();
  buildCounterTransactionSelector++;
  if (buildCounterTransactionSelector < 3) {
    o.begin = buildTransactionOptions();
    o.id = 'foo';
    o.singleUse = buildTransactionOptions();
  }
  buildCounterTransactionSelector--;
  return o;
}

void checkTransactionSelector(api.TransactionSelector o) {
  buildCounterTransactionSelector++;
  if (buildCounterTransactionSelector < 3) {
    checkTransactionOptions(o.begin!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkTransactionOptions(o.singleUse!);
  }
  buildCounterTransactionSelector--;
}

core.int buildCounterType = 0;
api.Type buildType() {
  final o = api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.arrayElementType = buildType();
    o.code = 'foo';
    o.protoTypeFqn = 'foo';
    o.structType = buildStructType();
    o.typeAnnotation = 'foo';
  }
  buildCounterType--;
  return o;
}

void checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkType(o.arrayElementType!);
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protoTypeFqn!,
      unittest.equals('foo'),
    );
    checkStructType(o.structType!);
    unittest.expect(
      o.typeAnnotation!,
      unittest.equals('foo'),
    );
  }
  buildCounterType--;
}

core.List<core.String> buildUnnamed89() => [
      'foo',
      'foo',
    ];

void checkUnnamed89(core.List<core.String> o) {
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

core.int buildCounterUpdateDatabaseDdlRequest = 0;
api.UpdateDatabaseDdlRequest buildUpdateDatabaseDdlRequest() {
  final o = api.UpdateDatabaseDdlRequest();
  buildCounterUpdateDatabaseDdlRequest++;
  if (buildCounterUpdateDatabaseDdlRequest < 3) {
    o.operationId = 'foo';
    o.protoDescriptors = 'foo';
    o.statements = buildUnnamed89();
  }
  buildCounterUpdateDatabaseDdlRequest--;
  return o;
}

void checkUpdateDatabaseDdlRequest(api.UpdateDatabaseDdlRequest o) {
  buildCounterUpdateDatabaseDdlRequest++;
  if (buildCounterUpdateDatabaseDdlRequest < 3) {
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protoDescriptors!,
      unittest.equals('foo'),
    );
    checkUnnamed89(o.statements!);
  }
  buildCounterUpdateDatabaseDdlRequest--;
}

core.int buildCounterUpdateInstanceConfigRequest = 0;
api.UpdateInstanceConfigRequest buildUpdateInstanceConfigRequest() {
  final o = api.UpdateInstanceConfigRequest();
  buildCounterUpdateInstanceConfigRequest++;
  if (buildCounterUpdateInstanceConfigRequest < 3) {
    o.instanceConfig = buildInstanceConfig();
    o.updateMask = 'foo';
    o.validateOnly = true;
  }
  buildCounterUpdateInstanceConfigRequest--;
  return o;
}

void checkUpdateInstanceConfigRequest(api.UpdateInstanceConfigRequest o) {
  buildCounterUpdateInstanceConfigRequest++;
  if (buildCounterUpdateInstanceConfigRequest < 3) {
    checkInstanceConfig(o.instanceConfig!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterUpdateInstanceConfigRequest--;
}

core.int buildCounterUpdateInstancePartitionRequest = 0;
api.UpdateInstancePartitionRequest buildUpdateInstancePartitionRequest() {
  final o = api.UpdateInstancePartitionRequest();
  buildCounterUpdateInstancePartitionRequest++;
  if (buildCounterUpdateInstancePartitionRequest < 3) {
    o.fieldMask = 'foo';
    o.instancePartition = buildInstancePartition();
  }
  buildCounterUpdateInstancePartitionRequest--;
  return o;
}

void checkUpdateInstancePartitionRequest(api.UpdateInstancePartitionRequest o) {
  buildCounterUpdateInstancePartitionRequest++;
  if (buildCounterUpdateInstancePartitionRequest < 3) {
    unittest.expect(
      o.fieldMask!,
      unittest.equals('foo'),
    );
    checkInstancePartition(o.instancePartition!);
  }
  buildCounterUpdateInstancePartitionRequest--;
}

core.int buildCounterUpdateInstanceRequest = 0;
api.UpdateInstanceRequest buildUpdateInstanceRequest() {
  final o = api.UpdateInstanceRequest();
  buildCounterUpdateInstanceRequest++;
  if (buildCounterUpdateInstanceRequest < 3) {
    o.fieldMask = 'foo';
    o.instance = buildInstance();
  }
  buildCounterUpdateInstanceRequest--;
  return o;
}

void checkUpdateInstanceRequest(api.UpdateInstanceRequest o) {
  buildCounterUpdateInstanceRequest++;
  if (buildCounterUpdateInstanceRequest < 3) {
    unittest.expect(
      o.fieldMask!,
      unittest.equals('foo'),
    );
    checkInstance(o.instance!);
  }
  buildCounterUpdateInstanceRequest--;
}

core.List<api.DiagnosticMessage> buildUnnamed90() => [
      buildDiagnosticMessage(),
      buildDiagnosticMessage(),
    ];

void checkUnnamed90(core.List<api.DiagnosticMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiagnosticMessage(o[0]);
  checkDiagnosticMessage(o[1]);
}

core.List<core.String> buildUnnamed91() => [
      'foo',
      'foo',
    ];

void checkUnnamed91(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed92() => [
      'foo',
      'foo',
    ];

void checkUnnamed92(core.List<core.String> o) {
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

core.List<api.Metric> buildUnnamed93() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed93(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.PrefixNode> buildUnnamed94() => [
      buildPrefixNode(),
      buildPrefixNode(),
    ];

void checkUnnamed94(core.List<api.PrefixNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrefixNode(o[0]);
  checkPrefixNode(o[1]);
}

core.int buildCounterVisualizationData = 0;
api.VisualizationData buildVisualizationData() {
  final o = api.VisualizationData();
  buildCounterVisualizationData++;
  if (buildCounterVisualizationData < 3) {
    o.dataSourceEndToken = 'foo';
    o.dataSourceSeparatorToken = 'foo';
    o.diagnosticMessages = buildUnnamed90();
    o.endKeyStrings = buildUnnamed91();
    o.hasPii = true;
    o.indexedKeys = buildUnnamed92();
    o.keySeparator = 'foo';
    o.keyUnit = 'foo';
    o.metrics = buildUnnamed93();
    o.prefixNodes = buildUnnamed94();
  }
  buildCounterVisualizationData--;
  return o;
}

void checkVisualizationData(api.VisualizationData o) {
  buildCounterVisualizationData++;
  if (buildCounterVisualizationData < 3) {
    unittest.expect(
      o.dataSourceEndToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataSourceSeparatorToken!,
      unittest.equals('foo'),
    );
    checkUnnamed90(o.diagnosticMessages!);
    checkUnnamed91(o.endKeyStrings!);
    unittest.expect(o.hasPii!, unittest.isTrue);
    checkUnnamed92(o.indexedKeys!);
    unittest.expect(
      o.keySeparator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyUnit!,
      unittest.equals('foo'),
    );
    checkUnnamed93(o.metrics!);
    checkUnnamed94(o.prefixNodes!);
  }
  buildCounterVisualizationData--;
}

core.List<core.String> buildUnnamed95() => [
      'foo',
      'foo',
    ];

void checkUnnamed95(core.List<core.String> o) {
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

core.List<core.Object?> buildUnnamed96() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed96(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted35 = (o[0]) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(
    casted35['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted35['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted35['string'],
    unittest.equals('foo'),
  );
  var casted36 = (o[1]) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(
    casted36['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted36['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted36['string'],
    unittest.equals('foo'),
  );
}

core.List<core.List<core.Object?>> buildUnnamed97() => [
      buildUnnamed96(),
      buildUnnamed96(),
    ];

void checkUnnamed97(core.List<core.List<core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed96(o[0]);
  checkUnnamed96(o[1]);
}

core.int buildCounterWrite = 0;
api.Write buildWrite() {
  final o = api.Write();
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    o.columns = buildUnnamed95();
    o.table = 'foo';
    o.values = buildUnnamed97();
  }
  buildCounterWrite--;
  return o;
}

void checkWrite(api.Write o) {
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    checkUnnamed95(o.columns!);
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
    checkUnnamed97(o.values!);
  }
  buildCounterWrite--;
}

core.List<core.String> buildUnnamed98() => [
      'foo',
      'foo',
    ];

void checkUnnamed98(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-AutoscalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoscalingConfig(od);
    });
  });

  unittest.group('obj-schema-AutoscalingLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingLimits.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoscalingLimits(od);
    });
  });

  unittest.group('obj-schema-AutoscalingTargets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingTargets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingTargets.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoscalingTargets(od);
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

  unittest.group('obj-schema-BatchCreateSessionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateSessionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateSessionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateSessionsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateSessionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateSessionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateSessionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateSessionsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchWriteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchWriteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchWriteRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchWriteRequest(od);
    });
  });

  unittest.group('obj-schema-BatchWriteResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchWriteResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchWriteResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchWriteResponse(od);
    });
  });

  unittest.group('obj-schema-BeginTransactionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBeginTransactionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BeginTransactionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBeginTransactionRequest(od);
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

  unittest.group('obj-schema-ChangeQuorumRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChangeQuorumRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChangeQuorumRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChangeQuorumRequest(od);
    });
  });

  unittest.group('obj-schema-ChildLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ChildLink.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChildLink(od);
    });
  });

  unittest.group('obj-schema-CommitRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommitRequest(od);
    });
  });

  unittest.group('obj-schema-CommitResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommitResponse(od);
    });
  });

  unittest.group('obj-schema-CommitStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommitStats(od);
    });
  });

  unittest.group('obj-schema-ContextValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContextValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContextValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContextValue(od);
    });
  });

  unittest.group('obj-schema-CopyBackupEncryptionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCopyBackupEncryptionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CopyBackupEncryptionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCopyBackupEncryptionConfig(od);
    });
  });

  unittest.group('obj-schema-CopyBackupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCopyBackupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CopyBackupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCopyBackupRequest(od);
    });
  });

  unittest.group('obj-schema-CreateDatabaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateDatabaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateDatabaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateDatabaseRequest(od);
    });
  });

  unittest.group('obj-schema-CreateInstanceConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateInstanceConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateInstanceConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateInstanceConfigRequest(od);
    });
  });

  unittest.group('obj-schema-CreateInstancePartitionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateInstancePartitionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateInstancePartitionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateInstancePartitionRequest(od);
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

  unittest.group('obj-schema-CreateSessionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateSessionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateSessionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateSessionRequest(od);
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

  unittest.group('obj-schema-DatabaseRole', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseRole.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseRole(od);
    });
  });

  unittest.group('obj-schema-Delete', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDelete();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Delete.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDelete(od);
    });
  });

  unittest.group('obj-schema-DerivedMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDerivedMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DerivedMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDerivedMetric(od);
    });
  });

  unittest.group('obj-schema-DiagnosticMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiagnosticMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiagnosticMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiagnosticMessage(od);
    });
  });

  unittest.group('obj-schema-DirectedReadOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectedReadOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectedReadOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDirectedReadOptions(od);
    });
  });

  unittest.group('obj-schema-DualRegionQuorum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDualRegionQuorum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DualRegionQuorum.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDualRegionQuorum(od);
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

  unittest.group('obj-schema-ExcludeReplicas', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExcludeReplicas();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExcludeReplicas.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExcludeReplicas(od);
    });
  });

  unittest.group('obj-schema-ExecuteBatchDmlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteBatchDmlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteBatchDmlRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecuteBatchDmlRequest(od);
    });
  });

  unittest.group('obj-schema-ExecuteBatchDmlResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteBatchDmlResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteBatchDmlResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecuteBatchDmlResponse(od);
    });
  });

  unittest.group('obj-schema-ExecuteSqlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteSqlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteSqlRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecuteSqlRequest(od);
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

  unittest.group('obj-schema-Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Field.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkField(od);
    });
  });

  unittest.group('obj-schema-FreeInstanceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFreeInstanceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FreeInstanceMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFreeInstanceMetadata(od);
    });
  });

  unittest.group('obj-schema-GetDatabaseDdlResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetDatabaseDdlResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetDatabaseDdlResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetDatabaseDdlResponse(od);
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

  unittest.group('obj-schema-IncludeReplicas', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIncludeReplicas();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IncludeReplicas.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIncludeReplicas(od);
    });
  });

  unittest.group('obj-schema-IndexAdvice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIndexAdvice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IndexAdvice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIndexAdvice(od);
    });
  });

  unittest.group('obj-schema-IndexedHotKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIndexedHotKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IndexedHotKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIndexedHotKey(od);
    });
  });

  unittest.group('obj-schema-IndexedKeyRangeInfos', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIndexedKeyRangeInfos();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IndexedKeyRangeInfos.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIndexedKeyRangeInfos(od);
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

  unittest.group('obj-schema-InstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-InstancePartition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancePartition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancePartition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancePartition(od);
    });
  });

  unittest.group('obj-schema-KeyRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.KeyRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyRange(od);
    });
  });

  unittest.group('obj-schema-KeyRangeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyRangeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeyRangeInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyRangeInfo(od);
    });
  });

  unittest.group('obj-schema-KeyRangeInfos', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyRangeInfos();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeyRangeInfos.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyRangeInfos(od);
    });
  });

  unittest.group('obj-schema-KeySet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeySet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.KeySet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeySet(od);
    });
  });

  unittest.group('obj-schema-ListBackupOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackupOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackupOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBackupOperationsResponse(od);
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

  unittest.group('obj-schema-ListDatabaseOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDatabaseOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDatabaseOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDatabaseOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDatabaseRolesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDatabaseRolesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDatabaseRolesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDatabaseRolesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDatabasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDatabasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDatabasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDatabasesResponse(od);
    });
  });

  unittest.group('obj-schema-ListInstanceConfigOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInstanceConfigOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInstanceConfigOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInstanceConfigOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListInstanceConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInstanceConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInstanceConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInstanceConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListInstancePartitionOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInstancePartitionOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInstancePartitionOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInstancePartitionOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListInstancePartitionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInstancePartitionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInstancePartitionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInstancePartitionsResponse(od);
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

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListScansResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListScansResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListScansResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListScansResponse(od);
    });
  });

  unittest.group('obj-schema-ListSessionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSessionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSessionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSessionsResponse(od);
    });
  });

  unittest.group('obj-schema-LocalizedString', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalizedString();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalizedString.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalizedString(od);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metric.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetric(od);
    });
  });

  unittest.group('obj-schema-MetricMatrix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricMatrix(od);
    });
  });

  unittest.group('obj-schema-MetricMatrixRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricMatrixRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricMatrixRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricMatrixRow(od);
    });
  });

  unittest.group('obj-schema-MoveInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMoveInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-Mutation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMutation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Mutation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMutation(od);
    });
  });

  unittest.group('obj-schema-MutationGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMutationGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MutationGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMutationGroup(od);
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

  unittest.group('obj-schema-PartialResultSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartialResultSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartialResultSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartialResultSet(od);
    });
  });

  unittest.group('obj-schema-Partition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Partition.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPartition(od);
    });
  });

  unittest.group('obj-schema-PartitionOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionOptions(od);
    });
  });

  unittest.group('obj-schema-PartitionQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionQueryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionQueryRequest(od);
    });
  });

  unittest.group('obj-schema-PartitionReadRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionReadRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionReadRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionReadRequest(od);
    });
  });

  unittest.group('obj-schema-PartitionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionResponse(od);
    });
  });

  unittest.group('obj-schema-PartitionedDml', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionedDml();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionedDml.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionedDml(od);
    });
  });

  unittest.group('obj-schema-PlanNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlanNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PlanNode.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPlanNode(od);
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

  unittest.group('obj-schema-PrefixNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrefixNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PrefixNode.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPrefixNode(od);
    });
  });

  unittest.group('obj-schema-QueryAdvisorResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryAdvisorResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryAdvisorResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryAdvisorResult(od);
    });
  });

  unittest.group('obj-schema-QueryOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryOptions(od);
    });
  });

  unittest.group('obj-schema-QueryPlan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryPlan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.QueryPlan.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQueryPlan(od);
    });
  });

  unittest.group('obj-schema-QuorumInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuorumInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.QuorumInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuorumInfo(od);
    });
  });

  unittest.group('obj-schema-QuorumType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuorumType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.QuorumType.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuorumType(od);
    });
  });

  unittest.group('obj-schema-ReadOnly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadOnly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReadOnly.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReadOnly(od);
    });
  });

  unittest.group('obj-schema-ReadRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReadRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReadRequest(od);
    });
  });

  unittest.group('obj-schema-ReadWrite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadWrite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReadWrite.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReadWrite(od);
    });
  });

  unittest.group('obj-schema-ReplicaInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplicaInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplicaInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplicaInfo(od);
    });
  });

  unittest.group('obj-schema-ReplicaSelection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplicaSelection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplicaSelection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplicaSelection(od);
    });
  });

  unittest.group('obj-schema-RequestOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestOptions(od);
    });
  });

  unittest.group('obj-schema-RestoreDatabaseEncryptionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreDatabaseEncryptionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreDatabaseEncryptionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreDatabaseEncryptionConfig(od);
    });
  });

  unittest.group('obj-schema-RestoreDatabaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreDatabaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreDatabaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreDatabaseRequest(od);
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

  unittest.group('obj-schema-ResultSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ResultSet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResultSet(od);
    });
  });

  unittest.group('obj-schema-ResultSetMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultSetMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultSetMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultSetMetadata(od);
    });
  });

  unittest.group('obj-schema-ResultSetStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultSetStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultSetStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultSetStats(od);
    });
  });

  unittest.group('obj-schema-RollbackRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRollbackRequest(od);
    });
  });

  unittest.group('obj-schema-Scan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Scan.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkScan(od);
    });
  });

  unittest.group('obj-schema-ScanData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScanData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ScanData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkScanData(od);
    });
  });

  unittest.group('obj-schema-Session', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSession();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Session.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSession(od);
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

  unittest.group('obj-schema-ShortRepresentation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShortRepresentation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShortRepresentation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShortRepresentation(od);
    });
  });

  unittest.group('obj-schema-SingleRegionQuorum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSingleRegionQuorum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SingleRegionQuorum.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSingleRegionQuorum(od);
    });
  });

  unittest.group('obj-schema-Statement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Statement.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatement(od);
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

  unittest.group('obj-schema-StructType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.StructType.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStructType(od);
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

  unittest.group('obj-schema-Transaction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransaction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Transaction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransaction(od);
    });
  });

  unittest.group('obj-schema-TransactionOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransactionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransactionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransactionOptions(od);
    });
  });

  unittest.group('obj-schema-TransactionSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransactionSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransactionSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransactionSelector(od);
    });
  });

  unittest.group('obj-schema-Type', () {
    unittest.test('to-json--from-json', () async {
      final o = buildType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Type.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkType(od);
    });
  });

  unittest.group('obj-schema-UpdateDatabaseDdlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDatabaseDdlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDatabaseDdlRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDatabaseDdlRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateInstanceConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateInstanceConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateInstanceConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateInstanceConfigRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateInstancePartitionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateInstancePartitionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateInstancePartitionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateInstancePartitionRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-VisualizationData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVisualizationData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VisualizationData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVisualizationData(od);
    });
  });

  unittest.group('obj-schema-Write', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWrite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Write.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWrite(od);
    });
  });

  unittest.group('resource-ProjectsInstanceConfigOperationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instanceConfigOperations;
      final arg_parent = 'foo';
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
        final resp =
            convert.json.encode(buildListInstanceConfigOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInstanceConfigOperationsResponse(
          response as api.ListInstanceConfigOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsInstanceConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instanceConfigs;
      final arg_request = buildCreateInstanceConfigRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateInstanceConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateInstanceConfigRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
      final res = api.SpannerApi(mock).projects.instanceConfigs;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
          etag: arg_etag, validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instanceConfigs;
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
        final resp = convert.json.encode(buildInstanceConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInstanceConfig(response as api.InstanceConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instanceConfigs;
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
        final resp = convert.json.encode(buildListInstanceConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInstanceConfigsResponse(
          response as api.ListInstanceConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instanceConfigs;
      final arg_request = buildUpdateInstanceConfigRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateInstanceConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateInstanceConfigRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsInstanceConfigsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instanceConfigs.operations;
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
      final res = api.SpannerApi(mock).projects.instanceConfigs.operations;
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
      final res = api.SpannerApi(mock).projects.instanceConfigs.operations;
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
      final res = api.SpannerApi(mock).projects.instanceConfigs.operations;
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

  unittest.group('resource-ProjectsInstanceConfigsSsdCachesOperationsResource',
      () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.SpannerApi(mock).projects.instanceConfigs.ssdCaches.operations;
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
      final res =
          api.SpannerApi(mock).projects.instanceConfigs.ssdCaches.operations;
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
      final res =
          api.SpannerApi(mock).projects.instanceConfigs.ssdCaches.operations;
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
      final res =
          api.SpannerApi(mock).projects.instanceConfigs.ssdCaches.operations;
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

  unittest.group('resource-ProjectsInstancesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances;
      final arg_request = buildCreateInstanceRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
      final res = api.SpannerApi(mock).projects.instances;
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
      final res = api.SpannerApi(mock).projects.instances;
      final arg_name = 'foo';
      final arg_fieldMask = 'foo';
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
          queryMap['fieldMask']!.first,
          unittest.equals(arg_fieldMask),
        );
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
      final response = await res.get(arg_name,
          fieldMask: arg_fieldMask, $fields: arg_$fields);
      checkInstance(response as api.Instance);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
      final res = api.SpannerApi(mock).projects.instances;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_instanceDeadline = 'foo';
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
          queryMap['instanceDeadline']!.first,
          unittest.equals(arg_instanceDeadline),
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
        final resp = convert.json.encode(buildListInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          instanceDeadline: arg_instanceDeadline,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInstancesResponse(response as api.ListInstancesResponse);
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances;
      final arg_request = buildMoveInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MoveInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMoveInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
          await res.move(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances;
      final arg_request = buildUpdateInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
      final res = api.SpannerApi(mock).projects.instances;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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

  unittest.group('resource-ProjectsInstancesBackupOperationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.backupOperations;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListBackupOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBackupOperationsResponse(
          response as api.ListBackupOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsInstancesBackupsResource', () {
    unittest.test('method--copy', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.backups;
      final arg_request = buildCopyBackupRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CopyBackupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
          await res.copy(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.backups;
      final arg_request = buildBackup();
      final arg_parent = 'foo';
      final arg_backupId = 'foo';
      final arg_encryptionConfig_encryptionType = 'foo';
      final arg_encryptionConfig_kmsKeyName = 'foo';
      final arg_encryptionConfig_kmsKeyNames = buildUnnamed98();
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
          queryMap['encryptionConfig.encryptionType']!.first,
          unittest.equals(arg_encryptionConfig_encryptionType),
        );
        unittest.expect(
          queryMap['encryptionConfig.kmsKeyName']!.first,
          unittest.equals(arg_encryptionConfig_kmsKeyName),
        );
        unittest.expect(
          queryMap['encryptionConfig.kmsKeyNames']!,
          unittest.equals(arg_encryptionConfig_kmsKeyNames),
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
          backupId: arg_backupId,
          encryptionConfig_encryptionType: arg_encryptionConfig_encryptionType,
          encryptionConfig_kmsKeyName: arg_encryptionConfig_kmsKeyName,
          encryptionConfig_kmsKeyNames: arg_encryptionConfig_kmsKeyNames,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.backups;
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
      final res = api.SpannerApi(mock).projects.instances.backups;
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

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.backups;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
      final res = api.SpannerApi(mock).projects.instances.backups;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListBackupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBackupsResponse(response as api.ListBackupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.backups;
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
        final resp = convert.json.encode(buildBackup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkBackup(response as api.Backup);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.backups;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
      final res = api.SpannerApi(mock).projects.instances.backups;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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

  unittest.group('resource-ProjectsInstancesBackupsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.backups.operations;
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
      final res = api.SpannerApi(mock).projects.instances.backups.operations;
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
      final res = api.SpannerApi(mock).projects.instances.backups.operations;
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
      final res = api.SpannerApi(mock).projects.instances.backups.operations;
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

  unittest.group('resource-ProjectsInstancesDatabaseOperationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databaseOperations;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListDatabaseOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDatabaseOperationsResponse(
          response as api.ListDatabaseOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsInstancesDatabasesResource', () {
    unittest.test('method--changequorum', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
      final arg_request = buildChangeQuorumRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ChangeQuorumRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChangeQuorumRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
          await res.changequorum(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
      final arg_request = buildCreateDatabaseRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateDatabaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateDatabaseRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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

    unittest.test('method--dropDatabase', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
          await res.dropDatabase(arg_database, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
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
        final resp = convert.json.encode(buildDatabase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDatabase(response as api.Database);
    });

    unittest.test('method--getDdl', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildGetDatabaseDdlResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getDdl(arg_database, $fields: arg_$fields);
      checkGetDatabaseDdlResponse(response as api.GetDatabaseDdlResponse);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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

    unittest.test('method--getScans', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
      final arg_name = 'foo';
      final arg_endTime = 'foo';
      final arg_startTime = 'foo';
      final arg_view = 'foo';
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
          queryMap['endTime']!.first,
          unittest.equals(arg_endTime),
        );
        unittest.expect(
          queryMap['startTime']!.first,
          unittest.equals(arg_startTime),
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
        final resp = convert.json.encode(buildScan());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getScans(arg_name,
          endTime: arg_endTime,
          startTime: arg_startTime,
          view: arg_view,
          $fields: arg_$fields);
      checkScan(response as api.Scan);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
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
        final resp = convert.json.encode(buildListDatabasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDatabasesResponse(response as api.ListDatabasesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
      final arg_request = buildDatabase();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
      final arg_request = buildRestoreDatabaseRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RestoreDatabaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestoreDatabaseRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
      final res = api.SpannerApi(mock).projects.instances.databases;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
      final res = api.SpannerApi(mock).projects.instances.databases;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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

    unittest.test('method--updateDdl', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
      final arg_request = buildUpdateDatabaseDdlRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateDatabaseDdlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateDatabaseDdlRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
          await res.updateDdl(arg_request, arg_database, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsInstancesDatabasesDatabaseRolesResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SpannerApi(mock).projects.instances.databases.databaseRoles;
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
        final resp = convert.json.encode(buildListDatabaseRolesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDatabaseRolesResponse(response as api.ListDatabaseRolesResponse);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.SpannerApi(mock).projects.instances.databases.databaseRoles;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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

  unittest.group('resource-ProjectsInstancesDatabasesOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.operations;
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
      final res = api.SpannerApi(mock).projects.instances.databases.operations;
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
      final res = api.SpannerApi(mock).projects.instances.databases.operations;
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
      final res = api.SpannerApi(mock).projects.instances.databases.operations;
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

  unittest.group('resource-ProjectsInstancesDatabasesSessionsResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildBatchCreateSessionsRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreateSessionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateSessionsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildBatchCreateSessionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchCreate(arg_request, arg_database,
          $fields: arg_$fields);
      checkBatchCreateSessionsResponse(
          response as api.BatchCreateSessionsResponse);
    });

    unittest.test('method--batchWrite', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildBatchWriteRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchWriteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchWriteRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildBatchWriteResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchWrite(arg_request, arg_session, $fields: arg_$fields);
      checkBatchWriteResponse(response as api.BatchWriteResponse);
    });

    unittest.test('method--beginTransaction', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildBeginTransactionRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BeginTransactionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBeginTransactionRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildTransaction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.beginTransaction(arg_request, arg_session,
          $fields: arg_$fields);
      checkTransaction(response as api.Transaction);
    });

    unittest.test('method--commit', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildCommitRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CommitRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCommitRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildCommitResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.commit(arg_request, arg_session, $fields: arg_$fields);
      checkCommitResponse(response as api.CommitResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildCreateSessionRequest();
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateSessionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateSessionRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildSession());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_database, $fields: arg_$fields);
      checkSession(response as api.Session);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
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

    unittest.test('method--executeBatchDml', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildExecuteBatchDmlRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExecuteBatchDmlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExecuteBatchDmlRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildExecuteBatchDmlResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.executeBatchDml(arg_request, arg_session,
          $fields: arg_$fields);
      checkExecuteBatchDmlResponse(response as api.ExecuteBatchDmlResponse);
    });

    unittest.test('method--executeSql', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildExecuteSqlRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExecuteSqlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExecuteSqlRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildResultSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.executeSql(arg_request, arg_session, $fields: arg_$fields);
      checkResultSet(response as api.ResultSet);
    });

    unittest.test('method--executeStreamingSql', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildExecuteSqlRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExecuteSqlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExecuteSqlRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildPartialResultSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.executeStreamingSql(arg_request, arg_session,
          $fields: arg_$fields);
      checkPartialResultSet(response as api.PartialResultSet);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
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
        final resp = convert.json.encode(buildSession());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSession(response as api.Session);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_database = 'foo';
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
        final resp = convert.json.encode(buildListSessionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_database,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSessionsResponse(response as api.ListSessionsResponse);
    });

    unittest.test('method--partitionQuery', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildPartitionQueryRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PartitionQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPartitionQueryRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildPartitionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.partitionQuery(arg_request, arg_session,
          $fields: arg_$fields);
      checkPartitionResponse(response as api.PartitionResponse);
    });

    unittest.test('method--partitionRead', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildPartitionReadRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PartitionReadRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPartitionReadRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildPartitionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.partitionRead(arg_request, arg_session,
          $fields: arg_$fields);
      checkPartitionResponse(response as api.PartitionResponse);
    });

    unittest.test('method--read', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildReadRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReadRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReadRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildResultSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.read(arg_request, arg_session, $fields: arg_$fields);
      checkResultSet(response as api.ResultSet);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildRollbackRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RollbackRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRollbackRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
          await res.rollback(arg_request, arg_session, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--streamingRead', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.sessions;
      final arg_request = buildReadRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReadRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReadRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
        final resp = convert.json.encode(buildPartialResultSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.streamingRead(arg_request, arg_session,
          $fields: arg_$fields);
      checkPartialResultSet(response as api.PartialResultSet);
    });
  });

  unittest.group(
      'resource-ProjectsInstancesInstancePartitionOperationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SpannerApi(mock).projects.instances.instancePartitionOperations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_instancePartitionDeadline = 'foo';
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
          queryMap['instancePartitionDeadline']!.first,
          unittest.equals(arg_instancePartitionDeadline),
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
        final resp =
            convert.json.encode(buildListInstancePartitionOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          instancePartitionDeadline: arg_instancePartitionDeadline,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInstancePartitionOperationsResponse(
          response as api.ListInstancePartitionOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsInstancesInstancePartitionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.instancePartitions;
      final arg_request = buildCreateInstancePartitionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateInstancePartitionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateInstancePartitionRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
      final res = api.SpannerApi(mock).projects.instances.instancePartitions;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
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
      final response =
          await res.delete(arg_name, etag: arg_etag, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.instancePartitions;
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
        final resp = convert.json.encode(buildInstancePartition());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInstancePartition(response as api.InstancePartition);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.instancePartitions;
      final arg_parent = 'foo';
      final arg_instancePartitionDeadline = 'foo';
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
          queryMap['instancePartitionDeadline']!.first,
          unittest.equals(arg_instancePartitionDeadline),
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
        final resp = convert.json.encode(buildListInstancePartitionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          instancePartitionDeadline: arg_instancePartitionDeadline,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInstancePartitionsResponse(
          response as api.ListInstancePartitionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.instancePartitions;
      final arg_request = buildUpdateInstancePartitionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateInstancePartitionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateInstancePartitionRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
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
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsInstancesInstancePartitionsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.SpannerApi(mock).projects.instances.instancePartitions.operations;
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
      final res =
          api.SpannerApi(mock).projects.instances.instancePartitions.operations;
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
      final res =
          api.SpannerApi(mock).projects.instances.instancePartitions.operations;
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
      final res =
          api.SpannerApi(mock).projects.instances.instancePartitions.operations;
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

  unittest.group('resource-ProjectsInstancesOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.operations;
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
      final res = api.SpannerApi(mock).projects.instances.operations;
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
      final res = api.SpannerApi(mock).projects.instances.operations;
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
      final res = api.SpannerApi(mock).projects.instances.operations;
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

  unittest.group('resource-ScansResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).scans;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
        final resp = convert.json.encode(buildListScansResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListScansResponse(response as api.ListScansResponse);
    });
  });
}
