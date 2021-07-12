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

import 'package:googleapis/spanner/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed1955() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1955(core.List<core.String> o) {
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
    o.encryptionInfo = buildEncryptionInfo();
    o.expireTime = 'foo';
    o.name = 'foo';
    o.referencingDatabases = buildUnnamed1955();
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
    checkEncryptionInfo(o.encryptionInfo!);
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1955(o.referencingDatabases!);
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

core.List<api.Session> buildUnnamed1956() {
  final o = <api.Session>[];
  o.add(buildSession());
  o.add(buildSession());
  return o;
}

void checkUnnamed1956(core.List<api.Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSession(o[0]);
  checkSession(o[1]);
}

core.int buildCounterBatchCreateSessionsResponse = 0;
api.BatchCreateSessionsResponse buildBatchCreateSessionsResponse() {
  final o = api.BatchCreateSessionsResponse();
  buildCounterBatchCreateSessionsResponse++;
  if (buildCounterBatchCreateSessionsResponse < 3) {
    o.session = buildUnnamed1956();
  }
  buildCounterBatchCreateSessionsResponse--;
  return o;
}

void checkBatchCreateSessionsResponse(api.BatchCreateSessionsResponse o) {
  buildCounterBatchCreateSessionsResponse++;
  if (buildCounterBatchCreateSessionsResponse < 3) {
    checkUnnamed1956(o.session!);
  }
  buildCounterBatchCreateSessionsResponse--;
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

core.List<core.String> buildUnnamed1957() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1957(core.List<core.String> o) {
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
    o.members = buildUnnamed1957();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed1957(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
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

core.List<api.Mutation> buildUnnamed1958() {
  final o = <api.Mutation>[];
  o.add(buildMutation());
  o.add(buildMutation());
  return o;
}

void checkUnnamed1958(core.List<api.Mutation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutation(o[0]);
  checkMutation(o[1]);
}

core.int buildCounterCommitRequest = 0;
api.CommitRequest buildCommitRequest() {
  final o = api.CommitRequest();
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    o.mutations = buildUnnamed1958();
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
    checkUnnamed1958(o.mutations!);
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

core.int buildCounterCreateBackupMetadata = 0;
api.CreateBackupMetadata buildCreateBackupMetadata() {
  final o = api.CreateBackupMetadata();
  buildCounterCreateBackupMetadata++;
  if (buildCounterCreateBackupMetadata < 3) {
    o.cancelTime = 'foo';
    o.database = 'foo';
    o.name = 'foo';
    o.progress = buildOperationProgress();
  }
  buildCounterCreateBackupMetadata--;
  return o;
}

void checkCreateBackupMetadata(api.CreateBackupMetadata o) {
  buildCounterCreateBackupMetadata++;
  if (buildCounterCreateBackupMetadata < 3) {
    unittest.expect(
      o.cancelTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOperationProgress(o.progress!);
  }
  buildCounterCreateBackupMetadata--;
}

core.int buildCounterCreateDatabaseMetadata = 0;
api.CreateDatabaseMetadata buildCreateDatabaseMetadata() {
  final o = api.CreateDatabaseMetadata();
  buildCounterCreateDatabaseMetadata++;
  if (buildCounterCreateDatabaseMetadata < 3) {
    o.database = 'foo';
  }
  buildCounterCreateDatabaseMetadata--;
  return o;
}

void checkCreateDatabaseMetadata(api.CreateDatabaseMetadata o) {
  buildCounterCreateDatabaseMetadata++;
  if (buildCounterCreateDatabaseMetadata < 3) {
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateDatabaseMetadata--;
}

core.List<core.String> buildUnnamed1959() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1959(core.List<core.String> o) {
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
    o.encryptionConfig = buildEncryptionConfig();
    o.extraStatements = buildUnnamed1959();
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
    checkEncryptionConfig(o.encryptionConfig!);
    checkUnnamed1959(o.extraStatements!);
  }
  buildCounterCreateDatabaseRequest--;
}

core.int buildCounterCreateInstanceMetadata = 0;
api.CreateInstanceMetadata buildCreateInstanceMetadata() {
  final o = api.CreateInstanceMetadata();
  buildCounterCreateInstanceMetadata++;
  if (buildCounterCreateInstanceMetadata < 3) {
    o.cancelTime = 'foo';
    o.endTime = 'foo';
    o.instance = buildInstance();
    o.startTime = 'foo';
  }
  buildCounterCreateInstanceMetadata--;
  return o;
}

void checkCreateInstanceMetadata(api.CreateInstanceMetadata o) {
  buildCounterCreateInstanceMetadata++;
  if (buildCounterCreateInstanceMetadata < 3) {
    unittest.expect(
      o.cancelTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkInstance(o.instance!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateInstanceMetadata--;
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

core.List<api.EncryptionInfo> buildUnnamed1960() {
  final o = <api.EncryptionInfo>[];
  o.add(buildEncryptionInfo());
  o.add(buildEncryptionInfo());
  return o;
}

void checkUnnamed1960(core.List<api.EncryptionInfo> o) {
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
    o.earliestVersionTime = 'foo';
    o.encryptionConfig = buildEncryptionConfig();
    o.encryptionInfo = buildUnnamed1960();
    o.name = 'foo';
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
      o.earliestVersionTime!,
      unittest.equals('foo'),
    );
    checkEncryptionConfig(o.encryptionConfig!);
    checkUnnamed1960(o.encryptionInfo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
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

core.List<api.Statement> buildUnnamed1961() {
  final o = <api.Statement>[];
  o.add(buildStatement());
  o.add(buildStatement());
  return o;
}

void checkUnnamed1961(core.List<api.Statement> o) {
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
    o.statements = buildUnnamed1961();
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
    checkUnnamed1961(o.statements!);
    checkTransactionSelector(o.transaction!);
  }
  buildCounterExecuteBatchDmlRequest--;
}

core.List<api.ResultSet> buildUnnamed1962() {
  final o = <api.ResultSet>[];
  o.add(buildResultSet());
  o.add(buildResultSet());
  return o;
}

void checkUnnamed1962(core.List<api.ResultSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultSet(o[0]);
  checkResultSet(o[1]);
}

core.int buildCounterExecuteBatchDmlResponse = 0;
api.ExecuteBatchDmlResponse buildExecuteBatchDmlResponse() {
  final o = api.ExecuteBatchDmlResponse();
  buildCounterExecuteBatchDmlResponse++;
  if (buildCounterExecuteBatchDmlResponse < 3) {
    o.resultSets = buildUnnamed1962();
    o.status = buildStatus();
  }
  buildCounterExecuteBatchDmlResponse--;
  return o;
}

void checkExecuteBatchDmlResponse(api.ExecuteBatchDmlResponse o) {
  buildCounterExecuteBatchDmlResponse++;
  if (buildCounterExecuteBatchDmlResponse < 3) {
    checkUnnamed1962(o.resultSets!);
    checkStatus(o.status!);
  }
  buildCounterExecuteBatchDmlResponse--;
}

core.Map<core.String, api.Type> buildUnnamed1963() {
  final o = <core.String, api.Type>{};
  o['x'] = buildType();
  o['y'] = buildType();
  return o;
}

void checkUnnamed1963(core.Map<core.String, api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o['x']!);
  checkType(o['y']!);
}

core.Map<core.String, core.Object> buildUnnamed1964() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed1964(core.Map<core.String, core.Object> o) {
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
    o.paramTypes = buildUnnamed1963();
    o.params = buildUnnamed1964();
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
    checkUnnamed1963(o.paramTypes!);
    checkUnnamed1964(o.params!);
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

core.List<core.String> buildUnnamed1965() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1965(core.List<core.String> o) {
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
    o.statements = buildUnnamed1965();
  }
  buildCounterGetDatabaseDdlResponse--;
  return o;
}

void checkGetDatabaseDdlResponse(api.GetDatabaseDdlResponse o) {
  buildCounterGetDatabaseDdlResponse++;
  if (buildCounterGetDatabaseDdlResponse < 3) {
    checkUnnamed1965(o.statements!);
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

core.Map<core.String, core.int> buildUnnamed1966() {
  final o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed1966(core.Map<core.String, core.int> o) {
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
    o.sparseHotKeys = buildUnnamed1966();
  }
  buildCounterIndexedHotKey--;
  return o;
}

void checkIndexedHotKey(api.IndexedHotKey o) {
  buildCounterIndexedHotKey++;
  if (buildCounterIndexedHotKey < 3) {
    checkUnnamed1966(o.sparseHotKeys!);
  }
  buildCounterIndexedHotKey--;
}

core.Map<core.String, api.KeyRangeInfos> buildUnnamed1967() {
  final o = <core.String, api.KeyRangeInfos>{};
  o['x'] = buildKeyRangeInfos();
  o['y'] = buildKeyRangeInfos();
  return o;
}

void checkUnnamed1967(core.Map<core.String, api.KeyRangeInfos> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeInfos(o['x']!);
  checkKeyRangeInfos(o['y']!);
}

core.int buildCounterIndexedKeyRangeInfos = 0;
api.IndexedKeyRangeInfos buildIndexedKeyRangeInfos() {
  final o = api.IndexedKeyRangeInfos();
  buildCounterIndexedKeyRangeInfos++;
  if (buildCounterIndexedKeyRangeInfos < 3) {
    o.keyRangeInfos = buildUnnamed1967();
  }
  buildCounterIndexedKeyRangeInfos--;
  return o;
}

void checkIndexedKeyRangeInfos(api.IndexedKeyRangeInfos o) {
  buildCounterIndexedKeyRangeInfos++;
  if (buildCounterIndexedKeyRangeInfos < 3) {
    checkUnnamed1967(o.keyRangeInfos!);
  }
  buildCounterIndexedKeyRangeInfos--;
}

core.List<core.String> buildUnnamed1968() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1968(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed1969() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1969(core.Map<core.String, core.String> o) {
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
    o.config = 'foo';
    o.displayName = 'foo';
    o.endpointUris = buildUnnamed1968();
    o.labels = buildUnnamed1969();
    o.name = 'foo';
    o.nodeCount = 42;
    o.processingUnits = 42;
    o.state = 'foo';
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(
      o.config!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed1968(o.endpointUris!);
    checkUnnamed1969(o.labels!);
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
  }
  buildCounterInstance--;
}

core.List<api.ReplicaInfo> buildUnnamed1970() {
  final o = <api.ReplicaInfo>[];
  o.add(buildReplicaInfo());
  o.add(buildReplicaInfo());
  return o;
}

void checkUnnamed1970(core.List<api.ReplicaInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplicaInfo(o[0]);
  checkReplicaInfo(o[1]);
}

core.int buildCounterInstanceConfig = 0;
api.InstanceConfig buildInstanceConfig() {
  final o = api.InstanceConfig();
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.replicas = buildUnnamed1970();
  }
  buildCounterInstanceConfig--;
  return o;
}

void checkInstanceConfig(api.InstanceConfig o) {
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1970(o.replicas!);
  }
  buildCounterInstanceConfig--;
}

core.List<core.Object> buildUnnamed1971() {
  final o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed1971(core.List<core.Object> o) {
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

core.List<core.Object> buildUnnamed1972() {
  final o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed1972(core.List<core.Object> o) {
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

core.List<core.Object> buildUnnamed1973() {
  final o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed1973(core.List<core.Object> o) {
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

core.List<core.Object> buildUnnamed1974() {
  final o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed1974(core.List<core.Object> o) {
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
    o.endClosed = buildUnnamed1971();
    o.endOpen = buildUnnamed1972();
    o.startClosed = buildUnnamed1973();
    o.startOpen = buildUnnamed1974();
  }
  buildCounterKeyRange--;
  return o;
}

void checkKeyRange(api.KeyRange o) {
  buildCounterKeyRange++;
  if (buildCounterKeyRange < 3) {
    checkUnnamed1971(o.endClosed!);
    checkUnnamed1972(o.endOpen!);
    checkUnnamed1973(o.startClosed!);
    checkUnnamed1974(o.startOpen!);
  }
  buildCounterKeyRange--;
}

core.List<api.ContextValue> buildUnnamed1975() {
  final o = <api.ContextValue>[];
  o.add(buildContextValue());
  o.add(buildContextValue());
  return o;
}

void checkUnnamed1975(core.List<api.ContextValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContextValue(o[0]);
  checkContextValue(o[1]);
}

core.int buildCounterKeyRangeInfo = 0;
api.KeyRangeInfo buildKeyRangeInfo() {
  final o = api.KeyRangeInfo();
  buildCounterKeyRangeInfo++;
  if (buildCounterKeyRangeInfo < 3) {
    o.contextValues = buildUnnamed1975();
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
    checkUnnamed1975(o.contextValues!);
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

core.List<api.KeyRangeInfo> buildUnnamed1976() {
  final o = <api.KeyRangeInfo>[];
  o.add(buildKeyRangeInfo());
  o.add(buildKeyRangeInfo());
  return o;
}

void checkUnnamed1976(core.List<api.KeyRangeInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeInfo(o[0]);
  checkKeyRangeInfo(o[1]);
}

core.int buildCounterKeyRangeInfos = 0;
api.KeyRangeInfos buildKeyRangeInfos() {
  final o = api.KeyRangeInfos();
  buildCounterKeyRangeInfos++;
  if (buildCounterKeyRangeInfos < 3) {
    o.infos = buildUnnamed1976();
    o.totalSize = 42;
  }
  buildCounterKeyRangeInfos--;
  return o;
}

void checkKeyRangeInfos(api.KeyRangeInfos o) {
  buildCounterKeyRangeInfos++;
  if (buildCounterKeyRangeInfos < 3) {
    checkUnnamed1976(o.infos!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterKeyRangeInfos--;
}

core.List<core.Object> buildUnnamed1977() {
  final o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed1977(core.List<core.Object> o) {
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

core.List<core.List<core.Object>> buildUnnamed1978() {
  final o = <core.List<core.Object>>[];
  o.add(buildUnnamed1977());
  o.add(buildUnnamed1977());
  return o;
}

void checkUnnamed1978(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1977(o[0]);
  checkUnnamed1977(o[1]);
}

core.List<api.KeyRange> buildUnnamed1979() {
  final o = <api.KeyRange>[];
  o.add(buildKeyRange());
  o.add(buildKeyRange());
  return o;
}

void checkUnnamed1979(core.List<api.KeyRange> o) {
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
    o.keys = buildUnnamed1978();
    o.ranges = buildUnnamed1979();
  }
  buildCounterKeySet--;
  return o;
}

void checkKeySet(api.KeySet o) {
  buildCounterKeySet++;
  if (buildCounterKeySet < 3) {
    unittest.expect(o.all!, unittest.isTrue);
    checkUnnamed1978(o.keys!);
    checkUnnamed1979(o.ranges!);
  }
  buildCounterKeySet--;
}

core.List<api.Operation> buildUnnamed1980() {
  final o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed1980(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed1980();
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
    checkUnnamed1980(o.operations!);
  }
  buildCounterListBackupOperationsResponse--;
}

core.List<api.Backup> buildUnnamed1981() {
  final o = <api.Backup>[];
  o.add(buildBackup());
  o.add(buildBackup());
  return o;
}

void checkUnnamed1981(core.List<api.Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackup(o[0]);
  checkBackup(o[1]);
}

core.int buildCounterListBackupsResponse = 0;
api.ListBackupsResponse buildListBackupsResponse() {
  final o = api.ListBackupsResponse();
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    o.backups = buildUnnamed1981();
    o.nextPageToken = 'foo';
  }
  buildCounterListBackupsResponse--;
  return o;
}

void checkListBackupsResponse(api.ListBackupsResponse o) {
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    checkUnnamed1981(o.backups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBackupsResponse--;
}

core.List<api.Operation> buildUnnamed1982() {
  final o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed1982(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed1982();
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
    checkUnnamed1982(o.operations!);
  }
  buildCounterListDatabaseOperationsResponse--;
}

core.List<api.Database> buildUnnamed1983() {
  final o = <api.Database>[];
  o.add(buildDatabase());
  o.add(buildDatabase());
  return o;
}

void checkUnnamed1983(core.List<api.Database> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabase(o[0]);
  checkDatabase(o[1]);
}

core.int buildCounterListDatabasesResponse = 0;
api.ListDatabasesResponse buildListDatabasesResponse() {
  final o = api.ListDatabasesResponse();
  buildCounterListDatabasesResponse++;
  if (buildCounterListDatabasesResponse < 3) {
    o.databases = buildUnnamed1983();
    o.nextPageToken = 'foo';
  }
  buildCounterListDatabasesResponse--;
  return o;
}

void checkListDatabasesResponse(api.ListDatabasesResponse o) {
  buildCounterListDatabasesResponse++;
  if (buildCounterListDatabasesResponse < 3) {
    checkUnnamed1983(o.databases!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDatabasesResponse--;
}

core.List<api.InstanceConfig> buildUnnamed1984() {
  final o = <api.InstanceConfig>[];
  o.add(buildInstanceConfig());
  o.add(buildInstanceConfig());
  return o;
}

void checkUnnamed1984(core.List<api.InstanceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceConfig(o[0]);
  checkInstanceConfig(o[1]);
}

core.int buildCounterListInstanceConfigsResponse = 0;
api.ListInstanceConfigsResponse buildListInstanceConfigsResponse() {
  final o = api.ListInstanceConfigsResponse();
  buildCounterListInstanceConfigsResponse++;
  if (buildCounterListInstanceConfigsResponse < 3) {
    o.instanceConfigs = buildUnnamed1984();
    o.nextPageToken = 'foo';
  }
  buildCounterListInstanceConfigsResponse--;
  return o;
}

void checkListInstanceConfigsResponse(api.ListInstanceConfigsResponse o) {
  buildCounterListInstanceConfigsResponse++;
  if (buildCounterListInstanceConfigsResponse < 3) {
    checkUnnamed1984(o.instanceConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListInstanceConfigsResponse--;
}

core.List<api.Instance> buildUnnamed1985() {
  final o = <api.Instance>[];
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

void checkUnnamed1985(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.List<core.String> buildUnnamed1986() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1986(core.List<core.String> o) {
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
    o.instances = buildUnnamed1985();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed1986();
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed1985(o.instances!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1986(o.unreachable!);
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Operation> buildUnnamed1987() {
  final o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed1987(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed1987();
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
    checkUnnamed1987(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Scan> buildUnnamed1988() {
  final o = <api.Scan>[];
  o.add(buildScan());
  o.add(buildScan());
  return o;
}

void checkUnnamed1988(core.List<api.Scan> o) {
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
    o.scans = buildUnnamed1988();
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
    checkUnnamed1988(o.scans!);
  }
  buildCounterListScansResponse--;
}

core.List<api.Session> buildUnnamed1989() {
  final o = <api.Session>[];
  o.add(buildSession());
  o.add(buildSession());
  return o;
}

void checkUnnamed1989(core.List<api.Session> o) {
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
    o.sessions = buildUnnamed1989();
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
    checkUnnamed1989(o.sessions!);
  }
  buildCounterListSessionsResponse--;
}

core.Map<core.String, core.String> buildUnnamed1990() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1990(core.Map<core.String, core.String> o) {
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
    o.args = buildUnnamed1990();
    o.message = 'foo';
    o.token = 'foo';
  }
  buildCounterLocalizedString--;
  return o;
}

void checkLocalizedString(api.LocalizedString o) {
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    checkUnnamed1990(o.args!);
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

core.Map<core.String, api.IndexedHotKey> buildUnnamed1991() {
  final o = <core.String, api.IndexedHotKey>{};
  o['x'] = buildIndexedHotKey();
  o['y'] = buildIndexedHotKey();
  return o;
}

void checkUnnamed1991(core.Map<core.String, api.IndexedHotKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIndexedHotKey(o['x']!);
  checkIndexedHotKey(o['y']!);
}

core.Map<core.String, api.IndexedKeyRangeInfos> buildUnnamed1992() {
  final o = <core.String, api.IndexedKeyRangeInfos>{};
  o['x'] = buildIndexedKeyRangeInfos();
  o['y'] = buildIndexedKeyRangeInfos();
  return o;
}

void checkUnnamed1992(core.Map<core.String, api.IndexedKeyRangeInfos> o) {
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
    o.indexedHotKeys = buildUnnamed1991();
    o.indexedKeyRangeInfos = buildUnnamed1992();
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
    checkUnnamed1991(o.indexedHotKeys!);
    checkUnnamed1992(o.indexedKeyRangeInfos!);
    checkLocalizedString(o.info!);
    checkMetricMatrix(o.matrix!);
    checkLocalizedString(o.unit!);
    unittest.expect(o.visible!, unittest.isTrue);
  }
  buildCounterMetric--;
}

core.List<api.MetricMatrixRow> buildUnnamed1993() {
  final o = <api.MetricMatrixRow>[];
  o.add(buildMetricMatrixRow());
  o.add(buildMetricMatrixRow());
  return o;
}

void checkUnnamed1993(core.List<api.MetricMatrixRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricMatrixRow(o[0]);
  checkMetricMatrixRow(o[1]);
}

core.int buildCounterMetricMatrix = 0;
api.MetricMatrix buildMetricMatrix() {
  final o = api.MetricMatrix();
  buildCounterMetricMatrix++;
  if (buildCounterMetricMatrix < 3) {
    o.rows = buildUnnamed1993();
  }
  buildCounterMetricMatrix--;
  return o;
}

void checkMetricMatrix(api.MetricMatrix o) {
  buildCounterMetricMatrix++;
  if (buildCounterMetricMatrix < 3) {
    checkUnnamed1993(o.rows!);
  }
  buildCounterMetricMatrix--;
}

core.List<core.double> buildUnnamed1994() {
  final o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed1994(core.List<core.double> o) {
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
    o.cols = buildUnnamed1994();
  }
  buildCounterMetricMatrixRow--;
  return o;
}

void checkMetricMatrixRow(api.MetricMatrixRow o) {
  buildCounterMetricMatrixRow++;
  if (buildCounterMetricMatrixRow < 3) {
    checkUnnamed1994(o.cols!);
  }
  buildCounterMetricMatrixRow--;
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

core.Map<core.String, core.Object> buildUnnamed1995() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed1995(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1996() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed1996(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed1995();
    o.name = 'foo';
    o.response = buildUnnamed1996();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed1995(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1996(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationProgress = 0;
api.OperationProgress buildOperationProgress() {
  final o = api.OperationProgress();
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    o.endTime = 'foo';
    o.progressPercent = 42;
    o.startTime = 'foo';
  }
  buildCounterOperationProgress--;
  return o;
}

void checkOperationProgress(api.OperationProgress o) {
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressPercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationProgress--;
}

core.int buildCounterOptimizeRestoredDatabaseMetadata = 0;
api.OptimizeRestoredDatabaseMetadata buildOptimizeRestoredDatabaseMetadata() {
  final o = api.OptimizeRestoredDatabaseMetadata();
  buildCounterOptimizeRestoredDatabaseMetadata++;
  if (buildCounterOptimizeRestoredDatabaseMetadata < 3) {
    o.name = 'foo';
    o.progress = buildOperationProgress();
  }
  buildCounterOptimizeRestoredDatabaseMetadata--;
  return o;
}

void checkOptimizeRestoredDatabaseMetadata(
    api.OptimizeRestoredDatabaseMetadata o) {
  buildCounterOptimizeRestoredDatabaseMetadata++;
  if (buildCounterOptimizeRestoredDatabaseMetadata < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOperationProgress(o.progress!);
  }
  buildCounterOptimizeRestoredDatabaseMetadata--;
}

core.List<core.Object> buildUnnamed1997() {
  final o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed1997(core.List<core.Object> o) {
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
    o.values = buildUnnamed1997();
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
    checkUnnamed1997(o.values!);
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

core.Map<core.String, api.Type> buildUnnamed1998() {
  final o = <core.String, api.Type>{};
  o['x'] = buildType();
  o['y'] = buildType();
  return o;
}

void checkUnnamed1998(core.Map<core.String, api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o['x']!);
  checkType(o['y']!);
}

core.Map<core.String, core.Object> buildUnnamed1999() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed1999(core.Map<core.String, core.Object> o) {
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
    o.paramTypes = buildUnnamed1998();
    o.params = buildUnnamed1999();
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
    checkUnnamed1998(o.paramTypes!);
    checkUnnamed1999(o.params!);
    checkPartitionOptions(o.partitionOptions!);
    unittest.expect(
      o.sql!,
      unittest.equals('foo'),
    );
    checkTransactionSelector(o.transaction!);
  }
  buildCounterPartitionQueryRequest--;
}

core.List<core.String> buildUnnamed2000() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2000(core.List<core.String> o) {
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
    o.columns = buildUnnamed2000();
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
    checkUnnamed2000(o.columns!);
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

core.List<api.Partition> buildUnnamed2001() {
  final o = <api.Partition>[];
  o.add(buildPartition());
  o.add(buildPartition());
  return o;
}

void checkUnnamed2001(core.List<api.Partition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartition(o[0]);
  checkPartition(o[1]);
}

core.int buildCounterPartitionResponse = 0;
api.PartitionResponse buildPartitionResponse() {
  final o = api.PartitionResponse();
  buildCounterPartitionResponse++;
  if (buildCounterPartitionResponse < 3) {
    o.partitions = buildUnnamed2001();
    o.transaction = buildTransaction();
  }
  buildCounterPartitionResponse--;
  return o;
}

void checkPartitionResponse(api.PartitionResponse o) {
  buildCounterPartitionResponse++;
  if (buildCounterPartitionResponse < 3) {
    checkUnnamed2001(o.partitions!);
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

core.List<api.ChildLink> buildUnnamed2002() {
  final o = <api.ChildLink>[];
  o.add(buildChildLink());
  o.add(buildChildLink());
  return o;
}

void checkUnnamed2002(core.List<api.ChildLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChildLink(o[0]);
  checkChildLink(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed2003() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2003(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed2004() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2004(core.Map<core.String, core.Object> o) {
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
    o.childLinks = buildUnnamed2002();
    o.displayName = 'foo';
    o.executionStats = buildUnnamed2003();
    o.index = 42;
    o.kind = 'foo';
    o.metadata = buildUnnamed2004();
    o.shortRepresentation = buildShortRepresentation();
  }
  buildCounterPlanNode--;
  return o;
}

void checkPlanNode(api.PlanNode o) {
  buildCounterPlanNode++;
  if (buildCounterPlanNode < 3) {
    checkUnnamed2002(o.childLinks!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed2003(o.executionStats!);
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2004(o.metadata!);
    checkShortRepresentation(o.shortRepresentation!);
  }
  buildCounterPlanNode--;
}

core.List<api.Binding> buildUnnamed2005() {
  final o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed2005(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed2005();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed2005(o.bindings!);
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

core.List<api.PlanNode> buildUnnamed2006() {
  final o = <api.PlanNode>[];
  o.add(buildPlanNode());
  o.add(buildPlanNode());
  return o;
}

void checkUnnamed2006(core.List<api.PlanNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlanNode(o[0]);
  checkPlanNode(o[1]);
}

core.int buildCounterQueryPlan = 0;
api.QueryPlan buildQueryPlan() {
  final o = api.QueryPlan();
  buildCounterQueryPlan++;
  if (buildCounterQueryPlan < 3) {
    o.planNodes = buildUnnamed2006();
  }
  buildCounterQueryPlan--;
  return o;
}

void checkQueryPlan(api.QueryPlan o) {
  buildCounterQueryPlan++;
  if (buildCounterQueryPlan < 3) {
    checkUnnamed2006(o.planNodes!);
  }
  buildCounterQueryPlan--;
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

core.List<core.String> buildUnnamed2007() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2007(core.List<core.String> o) {
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
    o.columns = buildUnnamed2007();
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
    checkUnnamed2007(o.columns!);
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
  if (buildCounterReadWrite < 3) {}
  buildCounterReadWrite--;
  return o;
}

void checkReadWrite(api.ReadWrite o) {
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {}
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

core.int buildCounterRestoreDatabaseEncryptionConfig = 0;
api.RestoreDatabaseEncryptionConfig buildRestoreDatabaseEncryptionConfig() {
  final o = api.RestoreDatabaseEncryptionConfig();
  buildCounterRestoreDatabaseEncryptionConfig++;
  if (buildCounterRestoreDatabaseEncryptionConfig < 3) {
    o.encryptionType = 'foo';
    o.kmsKeyName = 'foo';
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
  }
  buildCounterRestoreDatabaseEncryptionConfig--;
}

core.int buildCounterRestoreDatabaseMetadata = 0;
api.RestoreDatabaseMetadata buildRestoreDatabaseMetadata() {
  final o = api.RestoreDatabaseMetadata();
  buildCounterRestoreDatabaseMetadata++;
  if (buildCounterRestoreDatabaseMetadata < 3) {
    o.backupInfo = buildBackupInfo();
    o.cancelTime = 'foo';
    o.name = 'foo';
    o.optimizeDatabaseOperationName = 'foo';
    o.progress = buildOperationProgress();
    o.sourceType = 'foo';
  }
  buildCounterRestoreDatabaseMetadata--;
  return o;
}

void checkRestoreDatabaseMetadata(api.RestoreDatabaseMetadata o) {
  buildCounterRestoreDatabaseMetadata++;
  if (buildCounterRestoreDatabaseMetadata < 3) {
    checkBackupInfo(o.backupInfo!);
    unittest.expect(
      o.cancelTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.optimizeDatabaseOperationName!,
      unittest.equals('foo'),
    );
    checkOperationProgress(o.progress!);
    unittest.expect(
      o.sourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterRestoreDatabaseMetadata--;
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

core.List<core.Object> buildUnnamed2008() {
  final o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed2008(core.List<core.Object> o) {
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

core.List<core.List<core.Object>> buildUnnamed2009() {
  final o = <core.List<core.Object>>[];
  o.add(buildUnnamed2008());
  o.add(buildUnnamed2008());
  return o;
}

void checkUnnamed2009(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2008(o[0]);
  checkUnnamed2008(o[1]);
}

core.int buildCounterResultSet = 0;
api.ResultSet buildResultSet() {
  final o = api.ResultSet();
  buildCounterResultSet++;
  if (buildCounterResultSet < 3) {
    o.metadata = buildResultSetMetadata();
    o.rows = buildUnnamed2009();
    o.stats = buildResultSetStats();
  }
  buildCounterResultSet--;
  return o;
}

void checkResultSet(api.ResultSet o) {
  buildCounterResultSet++;
  if (buildCounterResultSet < 3) {
    checkResultSetMetadata(o.metadata!);
    checkUnnamed2009(o.rows!);
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
  }
  buildCounterResultSetMetadata--;
  return o;
}

void checkResultSetMetadata(api.ResultSetMetadata o) {
  buildCounterResultSetMetadata++;
  if (buildCounterResultSetMetadata < 3) {
    checkStructType(o.rowType!);
    checkTransaction(o.transaction!);
  }
  buildCounterResultSetMetadata--;
}

core.Map<core.String, core.Object> buildUnnamed2010() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2010(core.Map<core.String, core.Object> o) {
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
    o.queryStats = buildUnnamed2010();
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
    checkUnnamed2010(o.queryStats!);
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

core.Map<core.String, core.Object> buildUnnamed2011() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2011(core.Map<core.String, core.Object> o) {
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
    o.details = buildUnnamed2011();
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
    checkUnnamed2011(o.details!);
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

core.Map<core.String, core.String> buildUnnamed2012() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2012(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed2012();
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
    checkUnnamed2012(o.labels!);
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

core.Map<core.String, core.int> buildUnnamed2013() {
  final o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed2013(core.Map<core.String, core.int> o) {
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
    o.subqueries = buildUnnamed2013();
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
    checkUnnamed2013(o.subqueries!);
  }
  buildCounterShortRepresentation--;
}

core.Map<core.String, api.Type> buildUnnamed2014() {
  final o = <core.String, api.Type>{};
  o['x'] = buildType();
  o['y'] = buildType();
  return o;
}

void checkUnnamed2014(core.Map<core.String, api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o['x']!);
  checkType(o['y']!);
}

core.Map<core.String, core.Object> buildUnnamed2015() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2015(core.Map<core.String, core.Object> o) {
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
    o.paramTypes = buildUnnamed2014();
    o.params = buildUnnamed2015();
    o.sql = 'foo';
  }
  buildCounterStatement--;
  return o;
}

void checkStatement(api.Statement o) {
  buildCounterStatement++;
  if (buildCounterStatement < 3) {
    checkUnnamed2014(o.paramTypes!);
    checkUnnamed2015(o.params!);
    unittest.expect(
      o.sql!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatement--;
}

core.Map<core.String, core.Object> buildUnnamed2016() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2016(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed2017() {
  final o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2016());
  o.add(buildUnnamed2016());
  return o;
}

void checkUnnamed2017(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2016(o[0]);
  checkUnnamed2016(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2017();
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
    checkUnnamed2017(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.Field> buildUnnamed2018() {
  final o = <api.Field>[];
  o.add(buildField());
  o.add(buildField());
  return o;
}

void checkUnnamed2018(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

core.int buildCounterStructType = 0;
api.StructType buildStructType() {
  final o = api.StructType();
  buildCounterStructType++;
  if (buildCounterStructType < 3) {
    o.fields = buildUnnamed2018();
  }
  buildCounterStructType--;
  return o;
}

void checkStructType(api.StructType o) {
  buildCounterStructType++;
  if (buildCounterStructType < 3) {
    checkUnnamed2018(o.fields!);
  }
  buildCounterStructType--;
}

core.List<core.String> buildUnnamed2019() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2019(core.List<core.String> o) {
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
    o.permissions = buildUnnamed2019();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed2019(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed2020() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2020(core.List<core.String> o) {
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
    o.permissions = buildUnnamed2020();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed2020(o.permissions!);
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
    o.structType = buildStructType();
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
    checkStructType(o.structType!);
  }
  buildCounterType--;
}

core.List<core.String> buildUnnamed2021() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2021(core.List<core.String> o) {
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

core.List<api.OperationProgress> buildUnnamed2022() {
  final o = <api.OperationProgress>[];
  o.add(buildOperationProgress());
  o.add(buildOperationProgress());
  return o;
}

void checkUnnamed2022(core.List<api.OperationProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationProgress(o[0]);
  checkOperationProgress(o[1]);
}

core.List<core.String> buildUnnamed2023() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2023(core.List<core.String> o) {
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

core.int buildCounterUpdateDatabaseDdlMetadata = 0;
api.UpdateDatabaseDdlMetadata buildUpdateDatabaseDdlMetadata() {
  final o = api.UpdateDatabaseDdlMetadata();
  buildCounterUpdateDatabaseDdlMetadata++;
  if (buildCounterUpdateDatabaseDdlMetadata < 3) {
    o.commitTimestamps = buildUnnamed2021();
    o.database = 'foo';
    o.progress = buildUnnamed2022();
    o.statements = buildUnnamed2023();
    o.throttled = true;
  }
  buildCounterUpdateDatabaseDdlMetadata--;
  return o;
}

void checkUpdateDatabaseDdlMetadata(api.UpdateDatabaseDdlMetadata o) {
  buildCounterUpdateDatabaseDdlMetadata++;
  if (buildCounterUpdateDatabaseDdlMetadata < 3) {
    checkUnnamed2021(o.commitTimestamps!);
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
    checkUnnamed2022(o.progress!);
    checkUnnamed2023(o.statements!);
    unittest.expect(o.throttled!, unittest.isTrue);
  }
  buildCounterUpdateDatabaseDdlMetadata--;
}

core.List<core.String> buildUnnamed2024() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2024(core.List<core.String> o) {
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
    o.statements = buildUnnamed2024();
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
    checkUnnamed2024(o.statements!);
  }
  buildCounterUpdateDatabaseDdlRequest--;
}

core.int buildCounterUpdateInstanceMetadata = 0;
api.UpdateInstanceMetadata buildUpdateInstanceMetadata() {
  final o = api.UpdateInstanceMetadata();
  buildCounterUpdateInstanceMetadata++;
  if (buildCounterUpdateInstanceMetadata < 3) {
    o.cancelTime = 'foo';
    o.endTime = 'foo';
    o.instance = buildInstance();
    o.startTime = 'foo';
  }
  buildCounterUpdateInstanceMetadata--;
  return o;
}

void checkUpdateInstanceMetadata(api.UpdateInstanceMetadata o) {
  buildCounterUpdateInstanceMetadata++;
  if (buildCounterUpdateInstanceMetadata < 3) {
    unittest.expect(
      o.cancelTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkInstance(o.instance!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateInstanceMetadata--;
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

core.List<api.DiagnosticMessage> buildUnnamed2025() {
  final o = <api.DiagnosticMessage>[];
  o.add(buildDiagnosticMessage());
  o.add(buildDiagnosticMessage());
  return o;
}

void checkUnnamed2025(core.List<api.DiagnosticMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiagnosticMessage(o[0]);
  checkDiagnosticMessage(o[1]);
}

core.List<core.String> buildUnnamed2026() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2026(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2027() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2027(core.List<core.String> o) {
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

core.List<api.Metric> buildUnnamed2028() {
  final o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed2028(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.PrefixNode> buildUnnamed2029() {
  final o = <api.PrefixNode>[];
  o.add(buildPrefixNode());
  o.add(buildPrefixNode());
  return o;
}

void checkUnnamed2029(core.List<api.PrefixNode> o) {
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
    o.diagnosticMessages = buildUnnamed2025();
    o.endKeyStrings = buildUnnamed2026();
    o.hasPii = true;
    o.indexedKeys = buildUnnamed2027();
    o.keySeparator = 'foo';
    o.keyUnit = 'foo';
    o.metrics = buildUnnamed2028();
    o.prefixNodes = buildUnnamed2029();
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
    checkUnnamed2025(o.diagnosticMessages!);
    checkUnnamed2026(o.endKeyStrings!);
    unittest.expect(o.hasPii!, unittest.isTrue);
    checkUnnamed2027(o.indexedKeys!);
    unittest.expect(
      o.keySeparator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyUnit!,
      unittest.equals('foo'),
    );
    checkUnnamed2028(o.metrics!);
    checkUnnamed2029(o.prefixNodes!);
  }
  buildCounterVisualizationData--;
}

core.List<core.String> buildUnnamed2030() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2030(core.List<core.String> o) {
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

core.List<core.Object> buildUnnamed2031() {
  final o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed2031(core.List<core.Object> o) {
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

core.List<core.List<core.Object>> buildUnnamed2032() {
  final o = <core.List<core.Object>>[];
  o.add(buildUnnamed2031());
  o.add(buildUnnamed2031());
  return o;
}

void checkUnnamed2032(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2031(o[0]);
  checkUnnamed2031(o[1]);
}

core.int buildCounterWrite = 0;
api.Write buildWrite() {
  final o = api.Write();
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    o.columns = buildUnnamed2030();
    o.table = 'foo';
    o.values = buildUnnamed2032();
  }
  buildCounterWrite--;
  return o;
}

void checkWrite(api.Write o) {
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    checkUnnamed2030(o.columns!);
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
    checkUnnamed2032(o.values!);
  }
  buildCounterWrite--;
}

void main() {
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

  unittest.group('obj-schema-CreateBackupMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateBackupMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateBackupMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateBackupMetadata(od);
    });
  });

  unittest.group('obj-schema-CreateDatabaseMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateDatabaseMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateDatabaseMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateDatabaseMetadata(od);
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

  unittest.group('obj-schema-CreateInstanceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateInstanceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateInstanceMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateInstanceMetadata(od);
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

  unittest.group('obj-schema-ListDatabasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDatabasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDatabasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDatabasesResponse(od);
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

  unittest.group('obj-schema-Mutation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMutation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Mutation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMutation(od);
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

  unittest.group('obj-schema-OperationProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationProgress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationProgress(od);
    });
  });

  unittest.group('obj-schema-OptimizeRestoredDatabaseMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOptimizeRestoredDatabaseMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OptimizeRestoredDatabaseMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOptimizeRestoredDatabaseMetadata(od);
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

  unittest.group('obj-schema-RestoreDatabaseMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreDatabaseMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreDatabaseMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreDatabaseMetadata(od);
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

  unittest.group('obj-schema-UpdateDatabaseDdlMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDatabaseDdlMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDatabaseDdlMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDatabaseDdlMetadata(od);
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

  unittest.group('obj-schema-UpdateInstanceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateInstanceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateInstanceMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateInstanceMetadata(od);
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

  unittest.group('resource-ProjectsInstanceConfigsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instanceConfigs;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.backups;
      final arg_request = buildBackup();
      final arg_parent = 'foo';
      final arg_backupId = 'foo';
      final arg_encryptionConfig_encryptionType = 'foo';
      final arg_encryptionConfig_kmsKeyName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Backup.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBackup(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.backups;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--dropDatabase', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDatabase(response as api.Database);
    });

    unittest.test('method--getDdl', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          await res.updateDdl(arg_request, arg_database, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsInstancesDatabasesOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.databases.operations;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildBatchCreateSessionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchCreate(arg_request, arg_database,
          $fields: arg_$fields);
      checkBatchCreateSessionsResponse(
          response as api.BatchCreateSessionsResponse);
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildPartialResultSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.streamingRead(arg_request, arg_session,
          $fields: arg_$fields);
      checkPartialResultSet(response as api.PartialResultSet);
    });
  });

  unittest.group('resource-ProjectsInstancesOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.SpannerApi(mock).projects.instances.operations;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
