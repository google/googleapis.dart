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

import 'package:googleapis/dataform/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterActionErrorTable = 0;
api.ActionErrorTable buildActionErrorTable() {
  final o = api.ActionErrorTable();
  buildCounterActionErrorTable++;
  if (buildCounterActionErrorTable < 3) {
    o.retentionDays = 42;
    o.target = buildTarget();
  }
  buildCounterActionErrorTable--;
  return o;
}

void checkActionErrorTable(api.ActionErrorTable o) {
  buildCounterActionErrorTable++;
  if (buildCounterActionErrorTable < 3) {
    unittest.expect(o.retentionDays!, unittest.equals(42));
    checkTarget(o.target!);
  }
  buildCounterActionErrorTable--;
}

core.int buildCounterActionIncrementalLoadMode = 0;
api.ActionIncrementalLoadMode buildActionIncrementalLoadMode() {
  final o = api.ActionIncrementalLoadMode();
  buildCounterActionIncrementalLoadMode++;
  if (buildCounterActionIncrementalLoadMode < 3) {
    o.column = 'foo';
  }
  buildCounterActionIncrementalLoadMode--;
  return o;
}

void checkActionIncrementalLoadMode(api.ActionIncrementalLoadMode o) {
  buildCounterActionIncrementalLoadMode++;
  if (buildCounterActionIncrementalLoadMode < 3) {
    unittest.expect(o.column!, unittest.equals('foo'));
  }
  buildCounterActionIncrementalLoadMode--;
}

core.int buildCounterActionLoadConfig = 0;
api.ActionLoadConfig buildActionLoadConfig() {
  final o = api.ActionLoadConfig();
  buildCounterActionLoadConfig++;
  if (buildCounterActionLoadConfig < 3) {
    o.append = buildActionSimpleLoadMode();
    o.maximum = buildActionIncrementalLoadMode();
    o.replace = buildActionSimpleLoadMode();
    o.unique = buildActionIncrementalLoadMode();
  }
  buildCounterActionLoadConfig--;
  return o;
}

void checkActionLoadConfig(api.ActionLoadConfig o) {
  buildCounterActionLoadConfig++;
  if (buildCounterActionLoadConfig < 3) {
    checkActionSimpleLoadMode(o.append!);
    checkActionIncrementalLoadMode(o.maximum!);
    checkActionSimpleLoadMode(o.replace!);
    checkActionIncrementalLoadMode(o.unique!);
  }
  buildCounterActionLoadConfig--;
}

core.int buildCounterActionSimpleLoadMode = 0;
api.ActionSimpleLoadMode buildActionSimpleLoadMode() {
  final o = api.ActionSimpleLoadMode();
  buildCounterActionSimpleLoadMode++;
  if (buildCounterActionSimpleLoadMode < 3) {}
  buildCounterActionSimpleLoadMode--;
  return o;
}

void checkActionSimpleLoadMode(api.ActionSimpleLoadMode o) {
  buildCounterActionSimpleLoadMode++;
  if (buildCounterActionSimpleLoadMode < 3) {}
  buildCounterActionSimpleLoadMode--;
}

core.int buildCounterActionSqlDefinition = 0;
api.ActionSqlDefinition buildActionSqlDefinition() {
  final o = api.ActionSqlDefinition();
  buildCounterActionSqlDefinition++;
  if (buildCounterActionSqlDefinition < 3) {
    o.errorTable = buildActionErrorTable();
    o.loadConfig = buildActionLoadConfig();
    o.query = 'foo';
  }
  buildCounterActionSqlDefinition--;
  return o;
}

void checkActionSqlDefinition(api.ActionSqlDefinition o) {
  buildCounterActionSqlDefinition++;
  if (buildCounterActionSqlDefinition < 3) {
    checkActionErrorTable(o.errorTable!);
    checkActionLoadConfig(o.loadConfig!);
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterActionSqlDefinition--;
}

core.List<api.Target> buildUnnamed0() => [buildTarget(), buildTarget()];

void checkUnnamed0(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAssertion = 0;
api.Assertion buildAssertion() {
  final o = api.Assertion();
  buildCounterAssertion++;
  if (buildCounterAssertion < 3) {
    o.dependencyTargets = buildUnnamed0();
    o.disabled = true;
    o.parentAction = buildTarget();
    o.relationDescriptor = buildRelationDescriptor();
    o.selectQuery = 'foo';
    o.tags = buildUnnamed1();
  }
  buildCounterAssertion--;
  return o;
}

void checkAssertion(api.Assertion o) {
  buildCounterAssertion++;
  if (buildCounterAssertion < 3) {
    checkUnnamed0(o.dependencyTargets!);
    unittest.expect(o.disabled!, unittest.isTrue);
    checkTarget(o.parentAction!);
    checkRelationDescriptor(o.relationDescriptor!);
    unittest.expect(o.selectQuery!, unittest.equals('foo'));
    checkUnnamed1(o.tags!);
  }
  buildCounterAssertion--;
}

core.int buildCounterBigQueryAction = 0;
api.BigQueryAction buildBigQueryAction() {
  final o = api.BigQueryAction();
  buildCounterBigQueryAction++;
  if (buildCounterBigQueryAction < 3) {
    o.jobId = 'foo';
    o.sqlScript = 'foo';
  }
  buildCounterBigQueryAction--;
  return o;
}

void checkBigQueryAction(api.BigQueryAction o) {
  buildCounterBigQueryAction++;
  if (buildCounterBigQueryAction < 3) {
    unittest.expect(o.jobId!, unittest.equals('foo'));
    unittest.expect(o.sqlScript!, unittest.equals('foo'));
  }
  buildCounterBigQueryAction--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed2(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
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

core.int buildCounterCancelWorkflowInvocationRequest = 0;
api.CancelWorkflowInvocationRequest buildCancelWorkflowInvocationRequest() {
  final o = api.CancelWorkflowInvocationRequest();
  buildCounterCancelWorkflowInvocationRequest++;
  if (buildCounterCancelWorkflowInvocationRequest < 3) {}
  buildCounterCancelWorkflowInvocationRequest--;
  return o;
}

void checkCancelWorkflowInvocationRequest(
  api.CancelWorkflowInvocationRequest o,
) {
  buildCounterCancelWorkflowInvocationRequest++;
  if (buildCounterCancelWorkflowInvocationRequest < 3) {}
  buildCounterCancelWorkflowInvocationRequest--;
}

core.int buildCounterCancelWorkflowInvocationResponse = 0;
api.CancelWorkflowInvocationResponse buildCancelWorkflowInvocationResponse() {
  final o = api.CancelWorkflowInvocationResponse();
  buildCounterCancelWorkflowInvocationResponse++;
  if (buildCounterCancelWorkflowInvocationResponse < 3) {}
  buildCounterCancelWorkflowInvocationResponse--;
  return o;
}

void checkCancelWorkflowInvocationResponse(
  api.CancelWorkflowInvocationResponse o,
) {
  buildCounterCancelWorkflowInvocationResponse++;
  if (buildCounterCancelWorkflowInvocationResponse < 3) {}
  buildCounterCancelWorkflowInvocationResponse--;
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCodeCompilationConfig = 0;
api.CodeCompilationConfig buildCodeCompilationConfig() {
  final o = api.CodeCompilationConfig();
  buildCounterCodeCompilationConfig++;
  if (buildCounterCodeCompilationConfig < 3) {
    o.assertionSchema = 'foo';
    o.builtinAssertionNamePrefix = 'foo';
    o.databaseSuffix = 'foo';
    o.defaultDatabase = 'foo';
    o.defaultLocation = 'foo';
    o.defaultNotebookRuntimeOptions = buildNotebookRuntimeOptions();
    o.defaultSchema = 'foo';
    o.schemaSuffix = 'foo';
    o.tablePrefix = 'foo';
    o.vars = buildUnnamed3();
  }
  buildCounterCodeCompilationConfig--;
  return o;
}

void checkCodeCompilationConfig(api.CodeCompilationConfig o) {
  buildCounterCodeCompilationConfig++;
  if (buildCounterCodeCompilationConfig < 3) {
    unittest.expect(o.assertionSchema!, unittest.equals('foo'));
    unittest.expect(o.builtinAssertionNamePrefix!, unittest.equals('foo'));
    unittest.expect(o.databaseSuffix!, unittest.equals('foo'));
    unittest.expect(o.defaultDatabase!, unittest.equals('foo'));
    unittest.expect(o.defaultLocation!, unittest.equals('foo'));
    checkNotebookRuntimeOptions(o.defaultNotebookRuntimeOptions!);
    unittest.expect(o.defaultSchema!, unittest.equals('foo'));
    unittest.expect(o.schemaSuffix!, unittest.equals('foo'));
    unittest.expect(o.tablePrefix!, unittest.equals('foo'));
    checkUnnamed3(o.vars!);
  }
  buildCounterCodeCompilationConfig--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterColumnDescriptor = 0;
api.ColumnDescriptor buildColumnDescriptor() {
  final o = api.ColumnDescriptor();
  buildCounterColumnDescriptor++;
  if (buildCounterColumnDescriptor < 3) {
    o.bigqueryPolicyTags = buildUnnamed4();
    o.description = 'foo';
    o.path = buildUnnamed5();
  }
  buildCounterColumnDescriptor--;
  return o;
}

void checkColumnDescriptor(api.ColumnDescriptor o) {
  buildCounterColumnDescriptor++;
  if (buildCounterColumnDescriptor < 3) {
    checkUnnamed4(o.bigqueryPolicyTags!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed5(o.path!);
  }
  buildCounterColumnDescriptor--;
}

core.int buildCounterCommitAuthor = 0;
api.CommitAuthor buildCommitAuthor() {
  final o = api.CommitAuthor();
  buildCounterCommitAuthor++;
  if (buildCounterCommitAuthor < 3) {
    o.emailAddress = 'foo';
    o.name = 'foo';
  }
  buildCounterCommitAuthor--;
  return o;
}

void checkCommitAuthor(api.CommitAuthor o) {
  buildCounterCommitAuthor++;
  if (buildCounterCommitAuthor < 3) {
    unittest.expect(o.emailAddress!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterCommitAuthor--;
}

core.int buildCounterCommitLogEntry = 0;
api.CommitLogEntry buildCommitLogEntry() {
  final o = api.CommitLogEntry();
  buildCounterCommitLogEntry++;
  if (buildCounterCommitLogEntry < 3) {
    o.author = buildCommitAuthor();
    o.commitMessage = 'foo';
    o.commitSha = 'foo';
    o.commitTime = 'foo';
  }
  buildCounterCommitLogEntry--;
  return o;
}

void checkCommitLogEntry(api.CommitLogEntry o) {
  buildCounterCommitLogEntry++;
  if (buildCounterCommitLogEntry < 3) {
    checkCommitAuthor(o.author!);
    unittest.expect(o.commitMessage!, unittest.equals('foo'));
    unittest.expect(o.commitSha!, unittest.equals('foo'));
    unittest.expect(o.commitTime!, unittest.equals('foo'));
  }
  buildCounterCommitLogEntry--;
}

core.int buildCounterCommitMetadata = 0;
api.CommitMetadata buildCommitMetadata() {
  final o = api.CommitMetadata();
  buildCounterCommitMetadata++;
  if (buildCounterCommitMetadata < 3) {
    o.author = buildCommitAuthor();
    o.commitMessage = 'foo';
  }
  buildCounterCommitMetadata--;
  return o;
}

void checkCommitMetadata(api.CommitMetadata o) {
  buildCounterCommitMetadata++;
  if (buildCounterCommitMetadata < 3) {
    checkCommitAuthor(o.author!);
    unittest.expect(o.commitMessage!, unittest.equals('foo'));
  }
  buildCounterCommitMetadata--;
}

core.Map<core.String, api.FileOperation> buildUnnamed6() => {
  'x': buildFileOperation(),
  'y': buildFileOperation(),
};

void checkUnnamed6(core.Map<core.String, api.FileOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileOperation(o['x']!);
  checkFileOperation(o['y']!);
}

core.int buildCounterCommitRepositoryChangesRequest = 0;
api.CommitRepositoryChangesRequest buildCommitRepositoryChangesRequest() {
  final o = api.CommitRepositoryChangesRequest();
  buildCounterCommitRepositoryChangesRequest++;
  if (buildCounterCommitRepositoryChangesRequest < 3) {
    o.commitMetadata = buildCommitMetadata();
    o.fileOperations = buildUnnamed6();
    o.requiredHeadCommitSha = 'foo';
  }
  buildCounterCommitRepositoryChangesRequest--;
  return o;
}

void checkCommitRepositoryChangesRequest(api.CommitRepositoryChangesRequest o) {
  buildCounterCommitRepositoryChangesRequest++;
  if (buildCounterCommitRepositoryChangesRequest < 3) {
    checkCommitMetadata(o.commitMetadata!);
    checkUnnamed6(o.fileOperations!);
    unittest.expect(o.requiredHeadCommitSha!, unittest.equals('foo'));
  }
  buildCounterCommitRepositoryChangesRequest--;
}

core.int buildCounterCommitRepositoryChangesResponse = 0;
api.CommitRepositoryChangesResponse buildCommitRepositoryChangesResponse() {
  final o = api.CommitRepositoryChangesResponse();
  buildCounterCommitRepositoryChangesResponse++;
  if (buildCounterCommitRepositoryChangesResponse < 3) {
    o.commitSha = 'foo';
  }
  buildCounterCommitRepositoryChangesResponse--;
  return o;
}

void checkCommitRepositoryChangesResponse(
  api.CommitRepositoryChangesResponse o,
) {
  buildCounterCommitRepositoryChangesResponse++;
  if (buildCounterCommitRepositoryChangesResponse < 3) {
    unittest.expect(o.commitSha!, unittest.equals('foo'));
  }
  buildCounterCommitRepositoryChangesResponse--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCommitWorkspaceChangesRequest = 0;
api.CommitWorkspaceChangesRequest buildCommitWorkspaceChangesRequest() {
  final o = api.CommitWorkspaceChangesRequest();
  buildCounterCommitWorkspaceChangesRequest++;
  if (buildCounterCommitWorkspaceChangesRequest < 3) {
    o.author = buildCommitAuthor();
    o.commitMessage = 'foo';
    o.paths = buildUnnamed7();
  }
  buildCounterCommitWorkspaceChangesRequest--;
  return o;
}

void checkCommitWorkspaceChangesRequest(api.CommitWorkspaceChangesRequest o) {
  buildCounterCommitWorkspaceChangesRequest++;
  if (buildCounterCommitWorkspaceChangesRequest < 3) {
    checkCommitAuthor(o.author!);
    unittest.expect(o.commitMessage!, unittest.equals('foo'));
    checkUnnamed7(o.paths!);
  }
  buildCounterCommitWorkspaceChangesRequest--;
}

core.int buildCounterCommitWorkspaceChangesResponse = 0;
api.CommitWorkspaceChangesResponse buildCommitWorkspaceChangesResponse() {
  final o = api.CommitWorkspaceChangesResponse();
  buildCounterCommitWorkspaceChangesResponse++;
  if (buildCounterCommitWorkspaceChangesResponse < 3) {}
  buildCounterCommitWorkspaceChangesResponse--;
  return o;
}

void checkCommitWorkspaceChangesResponse(api.CommitWorkspaceChangesResponse o) {
  buildCounterCommitWorkspaceChangesResponse++;
  if (buildCounterCommitWorkspaceChangesResponse < 3) {}
  buildCounterCommitWorkspaceChangesResponse--;
}

core.int buildCounterCompilationError = 0;
api.CompilationError buildCompilationError() {
  final o = api.CompilationError();
  buildCounterCompilationError++;
  if (buildCounterCompilationError < 3) {
    o.actionTarget = buildTarget();
    o.message = 'foo';
    o.path = 'foo';
    o.stack = 'foo';
  }
  buildCounterCompilationError--;
  return o;
}

void checkCompilationError(api.CompilationError o) {
  buildCounterCompilationError++;
  if (buildCounterCompilationError < 3) {
    checkTarget(o.actionTarget!);
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.stack!, unittest.equals('foo'));
  }
  buildCounterCompilationError--;
}

core.List<api.CompilationError> buildUnnamed8() => [
  buildCompilationError(),
  buildCompilationError(),
];

void checkUnnamed8(core.List<api.CompilationError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompilationError(o[0]);
  checkCompilationError(o[1]);
}

core.int buildCounterCompilationResult = 0;
api.CompilationResult buildCompilationResult() {
  final o = api.CompilationResult();
  buildCounterCompilationResult++;
  if (buildCounterCompilationResult < 3) {
    o.codeCompilationConfig = buildCodeCompilationConfig();
    o.compilationErrors = buildUnnamed8();
    o.createTime = 'foo';
    o.dataEncryptionState = buildDataEncryptionState();
    o.dataformCoreVersion = 'foo';
    o.gitCommitish = 'foo';
    o.internalMetadata = 'foo';
    o.name = 'foo';
    o.privateResourceMetadata = buildPrivateResourceMetadata();
    o.releaseConfig = 'foo';
    o.resolvedGitCommitSha = 'foo';
    o.workspace = 'foo';
  }
  buildCounterCompilationResult--;
  return o;
}

void checkCompilationResult(api.CompilationResult o) {
  buildCounterCompilationResult++;
  if (buildCounterCompilationResult < 3) {
    checkCodeCompilationConfig(o.codeCompilationConfig!);
    checkUnnamed8(o.compilationErrors!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDataEncryptionState(o.dataEncryptionState!);
    unittest.expect(o.dataformCoreVersion!, unittest.equals('foo'));
    unittest.expect(o.gitCommitish!, unittest.equals('foo'));
    unittest.expect(o.internalMetadata!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPrivateResourceMetadata(o.privateResourceMetadata!);
    unittest.expect(o.releaseConfig!, unittest.equals('foo'));
    unittest.expect(o.resolvedGitCommitSha!, unittest.equals('foo'));
    unittest.expect(o.workspace!, unittest.equals('foo'));
  }
  buildCounterCompilationResult--;
}

core.int buildCounterCompilationResultAction = 0;
api.CompilationResultAction buildCompilationResultAction() {
  final o = api.CompilationResultAction();
  buildCounterCompilationResultAction++;
  if (buildCounterCompilationResultAction < 3) {
    o.assertion = buildAssertion();
    o.canonicalTarget = buildTarget();
    o.dataPreparation = buildDataPreparation();
    o.declaration = buildDeclaration();
    o.filePath = 'foo';
    o.internalMetadata = 'foo';
    o.notebook = buildNotebook();
    o.operations = buildOperations();
    o.relation = buildRelation();
    o.target = buildTarget();
  }
  buildCounterCompilationResultAction--;
  return o;
}

void checkCompilationResultAction(api.CompilationResultAction o) {
  buildCounterCompilationResultAction++;
  if (buildCounterCompilationResultAction < 3) {
    checkAssertion(o.assertion!);
    checkTarget(o.canonicalTarget!);
    checkDataPreparation(o.dataPreparation!);
    checkDeclaration(o.declaration!);
    unittest.expect(o.filePath!, unittest.equals('foo'));
    unittest.expect(o.internalMetadata!, unittest.equals('foo'));
    checkNotebook(o.notebook!);
    checkOperations(o.operations!);
    checkRelation(o.relation!);
    checkTarget(o.target!);
  }
  buildCounterCompilationResultAction--;
}

core.int buildCounterComputeRepositoryAccessTokenStatusResponse = 0;
api.ComputeRepositoryAccessTokenStatusResponse
buildComputeRepositoryAccessTokenStatusResponse() {
  final o = api.ComputeRepositoryAccessTokenStatusResponse();
  buildCounterComputeRepositoryAccessTokenStatusResponse++;
  if (buildCounterComputeRepositoryAccessTokenStatusResponse < 3) {
    o.tokenStatus = 'foo';
  }
  buildCounterComputeRepositoryAccessTokenStatusResponse--;
  return o;
}

void checkComputeRepositoryAccessTokenStatusResponse(
  api.ComputeRepositoryAccessTokenStatusResponse o,
) {
  buildCounterComputeRepositoryAccessTokenStatusResponse++;
  if (buildCounterComputeRepositoryAccessTokenStatusResponse < 3) {
    unittest.expect(o.tokenStatus!, unittest.equals('foo'));
  }
  buildCounterComputeRepositoryAccessTokenStatusResponse--;
}

core.int buildCounterConfig = 0;
api.Config buildConfig() {
  final o = api.Config();
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    o.defaultKmsKeyName = 'foo';
    o.internalMetadata = 'foo';
    o.name = 'foo';
  }
  buildCounterConfig--;
  return o;
}

void checkConfig(api.Config o) {
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    unittest.expect(o.defaultKmsKeyName!, unittest.equals('foo'));
    unittest.expect(o.internalMetadata!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterConfig--;
}

core.int buildCounterDataEncryptionState = 0;
api.DataEncryptionState buildDataEncryptionState() {
  final o = api.DataEncryptionState();
  buildCounterDataEncryptionState++;
  if (buildCounterDataEncryptionState < 3) {
    o.kmsKeyVersionName = 'foo';
  }
  buildCounterDataEncryptionState--;
  return o;
}

void checkDataEncryptionState(api.DataEncryptionState o) {
  buildCounterDataEncryptionState++;
  if (buildCounterDataEncryptionState < 3) {
    unittest.expect(o.kmsKeyVersionName!, unittest.equals('foo'));
  }
  buildCounterDataEncryptionState--;
}

core.List<api.Target> buildUnnamed9() => [buildTarget(), buildTarget()];

void checkUnnamed9(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDataPreparation = 0;
api.DataPreparation buildDataPreparation() {
  final o = api.DataPreparation();
  buildCounterDataPreparation++;
  if (buildCounterDataPreparation < 3) {
    o.contentsSql = buildSqlDefinition();
    o.contentsYaml = 'foo';
    o.dependencyTargets = buildUnnamed9();
    o.disabled = true;
    o.tags = buildUnnamed10();
  }
  buildCounterDataPreparation--;
  return o;
}

void checkDataPreparation(api.DataPreparation o) {
  buildCounterDataPreparation++;
  if (buildCounterDataPreparation < 3) {
    checkSqlDefinition(o.contentsSql!);
    unittest.expect(o.contentsYaml!, unittest.equals('foo'));
    checkUnnamed9(o.dependencyTargets!);
    unittest.expect(o.disabled!, unittest.isTrue);
    checkUnnamed10(o.tags!);
  }
  buildCounterDataPreparation--;
}

core.int buildCounterDataPreparationAction = 0;
api.DataPreparationAction buildDataPreparationAction() {
  final o = api.DataPreparationAction();
  buildCounterDataPreparationAction++;
  if (buildCounterDataPreparationAction < 3) {
    o.contentsSql = buildActionSqlDefinition();
    o.contentsYaml = 'foo';
    o.generatedSql = 'foo';
    o.jobId = 'foo';
  }
  buildCounterDataPreparationAction--;
  return o;
}

void checkDataPreparationAction(api.DataPreparationAction o) {
  buildCounterDataPreparationAction++;
  if (buildCounterDataPreparationAction < 3) {
    checkActionSqlDefinition(o.contentsSql!);
    unittest.expect(o.contentsYaml!, unittest.equals('foo'));
    unittest.expect(o.generatedSql!, unittest.equals('foo'));
    unittest.expect(o.jobId!, unittest.equals('foo'));
  }
  buildCounterDataPreparationAction--;
}

core.int buildCounterDeclaration = 0;
api.Declaration buildDeclaration() {
  final o = api.Declaration();
  buildCounterDeclaration++;
  if (buildCounterDeclaration < 3) {
    o.relationDescriptor = buildRelationDescriptor();
  }
  buildCounterDeclaration--;
  return o;
}

void checkDeclaration(api.Declaration o) {
  buildCounterDeclaration++;
  if (buildCounterDeclaration < 3) {
    checkRelationDescriptor(o.relationDescriptor!);
  }
  buildCounterDeclaration--;
}

core.int buildCounterDeleteFile = 0;
api.DeleteFile buildDeleteFile() {
  final o = api.DeleteFile();
  buildCounterDeleteFile++;
  if (buildCounterDeleteFile < 3) {}
  buildCounterDeleteFile--;
  return o;
}

void checkDeleteFile(api.DeleteFile o) {
  buildCounterDeleteFile++;
  if (buildCounterDeleteFile < 3) {}
  buildCounterDeleteFile--;
}

core.int buildCounterDirectoryEntry = 0;
api.DirectoryEntry buildDirectoryEntry() {
  final o = api.DirectoryEntry();
  buildCounterDirectoryEntry++;
  if (buildCounterDirectoryEntry < 3) {
    o.directory = 'foo';
    o.file = 'foo';
  }
  buildCounterDirectoryEntry--;
  return o;
}

void checkDirectoryEntry(api.DirectoryEntry o) {
  buildCounterDirectoryEntry++;
  if (buildCounterDirectoryEntry < 3) {
    unittest.expect(o.directory!, unittest.equals('foo'));
    unittest.expect(o.file!, unittest.equals('foo'));
  }
  buildCounterDirectoryEntry--;
}

core.int buildCounterDirectorySearchResult = 0;
api.DirectorySearchResult buildDirectorySearchResult() {
  final o = api.DirectorySearchResult();
  buildCounterDirectorySearchResult++;
  if (buildCounterDirectorySearchResult < 3) {
    o.path = 'foo';
  }
  buildCounterDirectorySearchResult--;
  return o;
}

void checkDirectorySearchResult(api.DirectorySearchResult o) {
  buildCounterDirectorySearchResult++;
  if (buildCounterDirectorySearchResult < 3) {
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterDirectorySearchResult--;
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

core.int buildCounterErrorTable = 0;
api.ErrorTable buildErrorTable() {
  final o = api.ErrorTable();
  buildCounterErrorTable++;
  if (buildCounterErrorTable < 3) {
    o.retentionDays = 42;
    o.target = buildTarget();
  }
  buildCounterErrorTable--;
  return o;
}

void checkErrorTable(api.ErrorTable o) {
  buildCounterErrorTable++;
  if (buildCounterErrorTable < 3) {
    unittest.expect(o.retentionDays!, unittest.equals(42));
    checkTarget(o.target!);
  }
  buildCounterErrorTable--;
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterFetchFileDiffResponse = 0;
api.FetchFileDiffResponse buildFetchFileDiffResponse() {
  final o = api.FetchFileDiffResponse();
  buildCounterFetchFileDiffResponse++;
  if (buildCounterFetchFileDiffResponse < 3) {
    o.formattedDiff = 'foo';
  }
  buildCounterFetchFileDiffResponse--;
  return o;
}

void checkFetchFileDiffResponse(api.FetchFileDiffResponse o) {
  buildCounterFetchFileDiffResponse++;
  if (buildCounterFetchFileDiffResponse < 3) {
    unittest.expect(o.formattedDiff!, unittest.equals('foo'));
  }
  buildCounterFetchFileDiffResponse--;
}

core.List<api.UncommittedFileChange> buildUnnamed11() => [
  buildUncommittedFileChange(),
  buildUncommittedFileChange(),
];

void checkUnnamed11(core.List<api.UncommittedFileChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUncommittedFileChange(o[0]);
  checkUncommittedFileChange(o[1]);
}

core.int buildCounterFetchFileGitStatusesResponse = 0;
api.FetchFileGitStatusesResponse buildFetchFileGitStatusesResponse() {
  final o = api.FetchFileGitStatusesResponse();
  buildCounterFetchFileGitStatusesResponse++;
  if (buildCounterFetchFileGitStatusesResponse < 3) {
    o.uncommittedFileChanges = buildUnnamed11();
  }
  buildCounterFetchFileGitStatusesResponse--;
  return o;
}

void checkFetchFileGitStatusesResponse(api.FetchFileGitStatusesResponse o) {
  buildCounterFetchFileGitStatusesResponse++;
  if (buildCounterFetchFileGitStatusesResponse < 3) {
    checkUnnamed11(o.uncommittedFileChanges!);
  }
  buildCounterFetchFileGitStatusesResponse--;
}

core.int buildCounterFetchGitAheadBehindResponse = 0;
api.FetchGitAheadBehindResponse buildFetchGitAheadBehindResponse() {
  final o = api.FetchGitAheadBehindResponse();
  buildCounterFetchGitAheadBehindResponse++;
  if (buildCounterFetchGitAheadBehindResponse < 3) {
    o.commitsAhead = 42;
    o.commitsBehind = 42;
  }
  buildCounterFetchGitAheadBehindResponse--;
  return o;
}

void checkFetchGitAheadBehindResponse(api.FetchGitAheadBehindResponse o) {
  buildCounterFetchGitAheadBehindResponse++;
  if (buildCounterFetchGitAheadBehindResponse < 3) {
    unittest.expect(o.commitsAhead!, unittest.equals(42));
    unittest.expect(o.commitsBehind!, unittest.equals(42));
  }
  buildCounterFetchGitAheadBehindResponse--;
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFetchRemoteBranchesResponse = 0;
api.FetchRemoteBranchesResponse buildFetchRemoteBranchesResponse() {
  final o = api.FetchRemoteBranchesResponse();
  buildCounterFetchRemoteBranchesResponse++;
  if (buildCounterFetchRemoteBranchesResponse < 3) {
    o.branches = buildUnnamed12();
  }
  buildCounterFetchRemoteBranchesResponse--;
  return o;
}

void checkFetchRemoteBranchesResponse(api.FetchRemoteBranchesResponse o) {
  buildCounterFetchRemoteBranchesResponse++;
  if (buildCounterFetchRemoteBranchesResponse < 3) {
    checkUnnamed12(o.branches!);
  }
  buildCounterFetchRemoteBranchesResponse--;
}

core.List<api.CommitLogEntry> buildUnnamed13() => [
  buildCommitLogEntry(),
  buildCommitLogEntry(),
];

void checkUnnamed13(core.List<api.CommitLogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommitLogEntry(o[0]);
  checkCommitLogEntry(o[1]);
}

core.int buildCounterFetchRepositoryHistoryResponse = 0;
api.FetchRepositoryHistoryResponse buildFetchRepositoryHistoryResponse() {
  final o = api.FetchRepositoryHistoryResponse();
  buildCounterFetchRepositoryHistoryResponse++;
  if (buildCounterFetchRepositoryHistoryResponse < 3) {
    o.commits = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterFetchRepositoryHistoryResponse--;
  return o;
}

void checkFetchRepositoryHistoryResponse(api.FetchRepositoryHistoryResponse o) {
  buildCounterFetchRepositoryHistoryResponse++;
  if (buildCounterFetchRepositoryHistoryResponse < 3) {
    checkUnnamed13(o.commits!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterFetchRepositoryHistoryResponse--;
}

core.int buildCounterFileOperation = 0;
api.FileOperation buildFileOperation() {
  final o = api.FileOperation();
  buildCounterFileOperation++;
  if (buildCounterFileOperation < 3) {
    o.deleteFile = buildDeleteFile();
    o.writeFile = buildWriteFile();
  }
  buildCounterFileOperation--;
  return o;
}

void checkFileOperation(api.FileOperation o) {
  buildCounterFileOperation++;
  if (buildCounterFileOperation < 3) {
    checkDeleteFile(o.deleteFile!);
    checkWriteFile(o.writeFile!);
  }
  buildCounterFileOperation--;
}

core.int buildCounterFileSearchResult = 0;
api.FileSearchResult buildFileSearchResult() {
  final o = api.FileSearchResult();
  buildCounterFileSearchResult++;
  if (buildCounterFileSearchResult < 3) {
    o.path = 'foo';
  }
  buildCounterFileSearchResult--;
  return o;
}

void checkFileSearchResult(api.FileSearchResult o) {
  buildCounterFileSearchResult++;
  if (buildCounterFileSearchResult < 3) {
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterFileSearchResult--;
}

core.int buildCounterGitRemoteSettings = 0;
api.GitRemoteSettings buildGitRemoteSettings() {
  final o = api.GitRemoteSettings();
  buildCounterGitRemoteSettings++;
  if (buildCounterGitRemoteSettings < 3) {
    o.authenticationTokenSecretVersion = 'foo';
    o.defaultBranch = 'foo';
    o.sshAuthenticationConfig = buildSshAuthenticationConfig();
    o.tokenStatus = 'foo';
    o.url = 'foo';
  }
  buildCounterGitRemoteSettings--;
  return o;
}

void checkGitRemoteSettings(api.GitRemoteSettings o) {
  buildCounterGitRemoteSettings++;
  if (buildCounterGitRemoteSettings < 3) {
    unittest.expect(
      o.authenticationTokenSecretVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.defaultBranch!, unittest.equals('foo'));
    checkSshAuthenticationConfig(o.sshAuthenticationConfig!);
    unittest.expect(o.tokenStatus!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterGitRemoteSettings--;
}

core.int buildCounterIncrementalLoadMode = 0;
api.IncrementalLoadMode buildIncrementalLoadMode() {
  final o = api.IncrementalLoadMode();
  buildCounterIncrementalLoadMode++;
  if (buildCounterIncrementalLoadMode < 3) {
    o.column = 'foo';
  }
  buildCounterIncrementalLoadMode--;
  return o;
}

void checkIncrementalLoadMode(api.IncrementalLoadMode o) {
  buildCounterIncrementalLoadMode++;
  if (buildCounterIncrementalLoadMode < 3) {
    unittest.expect(o.column!, unittest.equals('foo'));
  }
  buildCounterIncrementalLoadMode--;
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

core.int buildCounterIncrementalTableConfig = 0;
api.IncrementalTableConfig buildIncrementalTableConfig() {
  final o = api.IncrementalTableConfig();
  buildCounterIncrementalTableConfig++;
  if (buildCounterIncrementalTableConfig < 3) {
    o.incrementalPostOperations = buildUnnamed14();
    o.incrementalPreOperations = buildUnnamed15();
    o.incrementalSelectQuery = 'foo';
    o.refreshDisabled = true;
    o.uniqueKeyParts = buildUnnamed16();
    o.updatePartitionFilter = 'foo';
  }
  buildCounterIncrementalTableConfig--;
  return o;
}

void checkIncrementalTableConfig(api.IncrementalTableConfig o) {
  buildCounterIncrementalTableConfig++;
  if (buildCounterIncrementalTableConfig < 3) {
    checkUnnamed14(o.incrementalPostOperations!);
    checkUnnamed15(o.incrementalPreOperations!);
    unittest.expect(o.incrementalSelectQuery!, unittest.equals('foo'));
    unittest.expect(o.refreshDisabled!, unittest.isTrue);
    checkUnnamed16(o.uniqueKeyParts!);
    unittest.expect(o.updatePartitionFilter!, unittest.equals('foo'));
  }
  buildCounterIncrementalTableConfig--;
}

core.int buildCounterInstallNpmPackagesRequest = 0;
api.InstallNpmPackagesRequest buildInstallNpmPackagesRequest() {
  final o = api.InstallNpmPackagesRequest();
  buildCounterInstallNpmPackagesRequest++;
  if (buildCounterInstallNpmPackagesRequest < 3) {}
  buildCounterInstallNpmPackagesRequest--;
  return o;
}

void checkInstallNpmPackagesRequest(api.InstallNpmPackagesRequest o) {
  buildCounterInstallNpmPackagesRequest++;
  if (buildCounterInstallNpmPackagesRequest < 3) {}
  buildCounterInstallNpmPackagesRequest--;
}

core.int buildCounterInstallNpmPackagesResponse = 0;
api.InstallNpmPackagesResponse buildInstallNpmPackagesResponse() {
  final o = api.InstallNpmPackagesResponse();
  buildCounterInstallNpmPackagesResponse++;
  if (buildCounterInstallNpmPackagesResponse < 3) {}
  buildCounterInstallNpmPackagesResponse--;
  return o;
}

void checkInstallNpmPackagesResponse(api.InstallNpmPackagesResponse o) {
  buildCounterInstallNpmPackagesResponse++;
  if (buildCounterInstallNpmPackagesResponse < 3) {}
  buildCounterInstallNpmPackagesResponse--;
}

core.int buildCounterInterval = 0;
api.Interval buildInterval() {
  final o = api.Interval();
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterInterval--;
  return o;
}

void checkInterval(api.Interval o) {
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterInterval--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Target> buildUnnamed18() => [buildTarget(), buildTarget()];

void checkUnnamed18(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
}

core.int buildCounterInvocationConfig = 0;
api.InvocationConfig buildInvocationConfig() {
  final o = api.InvocationConfig();
  buildCounterInvocationConfig++;
  if (buildCounterInvocationConfig < 3) {
    o.fullyRefreshIncrementalTablesEnabled = true;
    o.includedTags = buildUnnamed17();
    o.includedTargets = buildUnnamed18();
    o.queryPriority = 'foo';
    o.serviceAccount = 'foo';
    o.transitiveDependenciesIncluded = true;
    o.transitiveDependentsIncluded = true;
  }
  buildCounterInvocationConfig--;
  return o;
}

void checkInvocationConfig(api.InvocationConfig o) {
  buildCounterInvocationConfig++;
  if (buildCounterInvocationConfig < 3) {
    unittest.expect(o.fullyRefreshIncrementalTablesEnabled!, unittest.isTrue);
    checkUnnamed17(o.includedTags!);
    checkUnnamed18(o.includedTargets!);
    unittest.expect(o.queryPriority!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.transitiveDependenciesIncluded!, unittest.isTrue);
    unittest.expect(o.transitiveDependentsIncluded!, unittest.isTrue);
  }
  buildCounterInvocationConfig--;
}

core.List<api.CompilationResult> buildUnnamed19() => [
  buildCompilationResult(),
  buildCompilationResult(),
];

void checkUnnamed19(core.List<api.CompilationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompilationResult(o[0]);
  checkCompilationResult(o[1]);
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListCompilationResultsResponse = 0;
api.ListCompilationResultsResponse buildListCompilationResultsResponse() {
  final o = api.ListCompilationResultsResponse();
  buildCounterListCompilationResultsResponse++;
  if (buildCounterListCompilationResultsResponse < 3) {
    o.compilationResults = buildUnnamed19();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed20();
  }
  buildCounterListCompilationResultsResponse--;
  return o;
}

void checkListCompilationResultsResponse(api.ListCompilationResultsResponse o) {
  buildCounterListCompilationResultsResponse++;
  if (buildCounterListCompilationResultsResponse < 3) {
    checkUnnamed19(o.compilationResults!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed20(o.unreachable!);
  }
  buildCounterListCompilationResultsResponse--;
}

core.List<api.Location> buildUnnamed21() => [buildLocation(), buildLocation()];

void checkUnnamed21(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed21();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed21(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed22() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed22(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
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
    o.operations = buildUnnamed22();
    o.unreachable = buildUnnamed23();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed22(o.operations!);
    checkUnnamed23(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ReleaseConfig> buildUnnamed24() => [
  buildReleaseConfig(),
  buildReleaseConfig(),
];

void checkUnnamed24(core.List<api.ReleaseConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReleaseConfig(o[0]);
  checkReleaseConfig(o[1]);
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListReleaseConfigsResponse = 0;
api.ListReleaseConfigsResponse buildListReleaseConfigsResponse() {
  final o = api.ListReleaseConfigsResponse();
  buildCounterListReleaseConfigsResponse++;
  if (buildCounterListReleaseConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.releaseConfigs = buildUnnamed24();
    o.unreachable = buildUnnamed25();
  }
  buildCounterListReleaseConfigsResponse--;
  return o;
}

void checkListReleaseConfigsResponse(api.ListReleaseConfigsResponse o) {
  buildCounterListReleaseConfigsResponse++;
  if (buildCounterListReleaseConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed24(o.releaseConfigs!);
    checkUnnamed25(o.unreachable!);
  }
  buildCounterListReleaseConfigsResponse--;
}

core.List<api.Repository> buildUnnamed26() => [
  buildRepository(),
  buildRepository(),
];

void checkUnnamed26(core.List<api.Repository> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepository(o[0]);
  checkRepository(o[1]);
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListRepositoriesResponse = 0;
api.ListRepositoriesResponse buildListRepositoriesResponse() {
  final o = api.ListRepositoriesResponse();
  buildCounterListRepositoriesResponse++;
  if (buildCounterListRepositoriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.repositories = buildUnnamed26();
    o.unreachable = buildUnnamed27();
  }
  buildCounterListRepositoriesResponse--;
  return o;
}

void checkListRepositoriesResponse(api.ListRepositoriesResponse o) {
  buildCounterListRepositoriesResponse++;
  if (buildCounterListRepositoriesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed26(o.repositories!);
    checkUnnamed27(o.unreachable!);
  }
  buildCounterListRepositoriesResponse--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.WorkflowConfig> buildUnnamed29() => [
  buildWorkflowConfig(),
  buildWorkflowConfig(),
];

void checkUnnamed29(core.List<api.WorkflowConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkflowConfig(o[0]);
  checkWorkflowConfig(o[1]);
}

core.int buildCounterListWorkflowConfigsResponse = 0;
api.ListWorkflowConfigsResponse buildListWorkflowConfigsResponse() {
  final o = api.ListWorkflowConfigsResponse();
  buildCounterListWorkflowConfigsResponse++;
  if (buildCounterListWorkflowConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed28();
    o.workflowConfigs = buildUnnamed29();
  }
  buildCounterListWorkflowConfigsResponse--;
  return o;
}

void checkListWorkflowConfigsResponse(api.ListWorkflowConfigsResponse o) {
  buildCounterListWorkflowConfigsResponse++;
  if (buildCounterListWorkflowConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed28(o.unreachable!);
    checkUnnamed29(o.workflowConfigs!);
  }
  buildCounterListWorkflowConfigsResponse--;
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.WorkflowInvocation> buildUnnamed31() => [
  buildWorkflowInvocation(),
  buildWorkflowInvocation(),
];

void checkUnnamed31(core.List<api.WorkflowInvocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkflowInvocation(o[0]);
  checkWorkflowInvocation(o[1]);
}

core.int buildCounterListWorkflowInvocationsResponse = 0;
api.ListWorkflowInvocationsResponse buildListWorkflowInvocationsResponse() {
  final o = api.ListWorkflowInvocationsResponse();
  buildCounterListWorkflowInvocationsResponse++;
  if (buildCounterListWorkflowInvocationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed30();
    o.workflowInvocations = buildUnnamed31();
  }
  buildCounterListWorkflowInvocationsResponse--;
  return o;
}

void checkListWorkflowInvocationsResponse(
  api.ListWorkflowInvocationsResponse o,
) {
  buildCounterListWorkflowInvocationsResponse++;
  if (buildCounterListWorkflowInvocationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed30(o.unreachable!);
    checkUnnamed31(o.workflowInvocations!);
  }
  buildCounterListWorkflowInvocationsResponse--;
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Workspace> buildUnnamed33() => [
  buildWorkspace(),
  buildWorkspace(),
];

void checkUnnamed33(core.List<api.Workspace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkspace(o[0]);
  checkWorkspace(o[1]);
}

core.int buildCounterListWorkspacesResponse = 0;
api.ListWorkspacesResponse buildListWorkspacesResponse() {
  final o = api.ListWorkspacesResponse();
  buildCounterListWorkspacesResponse++;
  if (buildCounterListWorkspacesResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed32();
    o.workspaces = buildUnnamed33();
  }
  buildCounterListWorkspacesResponse--;
  return o;
}

void checkListWorkspacesResponse(api.ListWorkspacesResponse o) {
  buildCounterListWorkspacesResponse++;
  if (buildCounterListWorkspacesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed32(o.unreachable!);
    checkUnnamed33(o.workspaces!);
  }
  buildCounterListWorkspacesResponse--;
}

core.int buildCounterLoadConfig = 0;
api.LoadConfig buildLoadConfig() {
  final o = api.LoadConfig();
  buildCounterLoadConfig++;
  if (buildCounterLoadConfig < 3) {
    o.append = buildSimpleLoadMode();
    o.maximum = buildIncrementalLoadMode();
    o.replace = buildSimpleLoadMode();
    o.unique = buildIncrementalLoadMode();
  }
  buildCounterLoadConfig--;
  return o;
}

void checkLoadConfig(api.LoadConfig o) {
  buildCounterLoadConfig++;
  if (buildCounterLoadConfig < 3) {
    checkSimpleLoadMode(o.append!);
    checkIncrementalLoadMode(o.maximum!);
    checkSimpleLoadMode(o.replace!);
    checkIncrementalLoadMode(o.unique!);
  }
  buildCounterLoadConfig--;
}

core.Map<core.String, core.String> buildUnnamed34() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed34(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
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
    o.labels = buildUnnamed34();
    o.locationId = 'foo';
    o.metadata = buildUnnamed35();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed34(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed35(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterMakeDirectoryRequest = 0;
api.MakeDirectoryRequest buildMakeDirectoryRequest() {
  final o = api.MakeDirectoryRequest();
  buildCounterMakeDirectoryRequest++;
  if (buildCounterMakeDirectoryRequest < 3) {
    o.path = 'foo';
  }
  buildCounterMakeDirectoryRequest--;
  return o;
}

void checkMakeDirectoryRequest(api.MakeDirectoryRequest o) {
  buildCounterMakeDirectoryRequest++;
  if (buildCounterMakeDirectoryRequest < 3) {
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterMakeDirectoryRequest--;
}

core.int buildCounterMakeDirectoryResponse = 0;
api.MakeDirectoryResponse buildMakeDirectoryResponse() {
  final o = api.MakeDirectoryResponse();
  buildCounterMakeDirectoryResponse++;
  if (buildCounterMakeDirectoryResponse < 3) {}
  buildCounterMakeDirectoryResponse--;
  return o;
}

void checkMakeDirectoryResponse(api.MakeDirectoryResponse o) {
  buildCounterMakeDirectoryResponse++;
  if (buildCounterMakeDirectoryResponse < 3) {}
  buildCounterMakeDirectoryResponse--;
}

core.int buildCounterMoveDirectoryRequest = 0;
api.MoveDirectoryRequest buildMoveDirectoryRequest() {
  final o = api.MoveDirectoryRequest();
  buildCounterMoveDirectoryRequest++;
  if (buildCounterMoveDirectoryRequest < 3) {
    o.newPath = 'foo';
    o.path = 'foo';
  }
  buildCounterMoveDirectoryRequest--;
  return o;
}

void checkMoveDirectoryRequest(api.MoveDirectoryRequest o) {
  buildCounterMoveDirectoryRequest++;
  if (buildCounterMoveDirectoryRequest < 3) {
    unittest.expect(o.newPath!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterMoveDirectoryRequest--;
}

core.int buildCounterMoveDirectoryResponse = 0;
api.MoveDirectoryResponse buildMoveDirectoryResponse() {
  final o = api.MoveDirectoryResponse();
  buildCounterMoveDirectoryResponse++;
  if (buildCounterMoveDirectoryResponse < 3) {}
  buildCounterMoveDirectoryResponse--;
  return o;
}

void checkMoveDirectoryResponse(api.MoveDirectoryResponse o) {
  buildCounterMoveDirectoryResponse++;
  if (buildCounterMoveDirectoryResponse < 3) {}
  buildCounterMoveDirectoryResponse--;
}

core.int buildCounterMoveFileRequest = 0;
api.MoveFileRequest buildMoveFileRequest() {
  final o = api.MoveFileRequest();
  buildCounterMoveFileRequest++;
  if (buildCounterMoveFileRequest < 3) {
    o.newPath = 'foo';
    o.path = 'foo';
  }
  buildCounterMoveFileRequest--;
  return o;
}

void checkMoveFileRequest(api.MoveFileRequest o) {
  buildCounterMoveFileRequest++;
  if (buildCounterMoveFileRequest < 3) {
    unittest.expect(o.newPath!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterMoveFileRequest--;
}

core.int buildCounterMoveFileResponse = 0;
api.MoveFileResponse buildMoveFileResponse() {
  final o = api.MoveFileResponse();
  buildCounterMoveFileResponse++;
  if (buildCounterMoveFileResponse < 3) {}
  buildCounterMoveFileResponse--;
  return o;
}

void checkMoveFileResponse(api.MoveFileResponse o) {
  buildCounterMoveFileResponse++;
  if (buildCounterMoveFileResponse < 3) {}
  buildCounterMoveFileResponse--;
}

core.List<api.Target> buildUnnamed36() => [buildTarget(), buildTarget()];

void checkUnnamed36(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNotebook = 0;
api.Notebook buildNotebook() {
  final o = api.Notebook();
  buildCounterNotebook++;
  if (buildCounterNotebook < 3) {
    o.contents = 'foo';
    o.dependencyTargets = buildUnnamed36();
    o.disabled = true;
    o.tags = buildUnnamed37();
  }
  buildCounterNotebook--;
  return o;
}

void checkNotebook(api.Notebook o) {
  buildCounterNotebook++;
  if (buildCounterNotebook < 3) {
    unittest.expect(o.contents!, unittest.equals('foo'));
    checkUnnamed36(o.dependencyTargets!);
    unittest.expect(o.disabled!, unittest.isTrue);
    checkUnnamed37(o.tags!);
  }
  buildCounterNotebook--;
}

core.int buildCounterNotebookAction = 0;
api.NotebookAction buildNotebookAction() {
  final o = api.NotebookAction();
  buildCounterNotebookAction++;
  if (buildCounterNotebookAction < 3) {
    o.contents = 'foo';
    o.jobId = 'foo';
  }
  buildCounterNotebookAction--;
  return o;
}

void checkNotebookAction(api.NotebookAction o) {
  buildCounterNotebookAction++;
  if (buildCounterNotebookAction < 3) {
    unittest.expect(o.contents!, unittest.equals('foo'));
    unittest.expect(o.jobId!, unittest.equals('foo'));
  }
  buildCounterNotebookAction--;
}

core.int buildCounterNotebookRuntimeOptions = 0;
api.NotebookRuntimeOptions buildNotebookRuntimeOptions() {
  final o = api.NotebookRuntimeOptions();
  buildCounterNotebookRuntimeOptions++;
  if (buildCounterNotebookRuntimeOptions < 3) {
    o.aiPlatformNotebookRuntimeTemplate = 'foo';
    o.gcsOutputBucket = 'foo';
  }
  buildCounterNotebookRuntimeOptions--;
  return o;
}

void checkNotebookRuntimeOptions(api.NotebookRuntimeOptions o) {
  buildCounterNotebookRuntimeOptions++;
  if (buildCounterNotebookRuntimeOptions < 3) {
    unittest.expect(
      o.aiPlatformNotebookRuntimeTemplate!,
      unittest.equals('foo'),
    );
    unittest.expect(o.gcsOutputBucket!, unittest.equals('foo'));
  }
  buildCounterNotebookRuntimeOptions--;
}

core.Map<core.String, core.Object?> buildUnnamed38() => {
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

void checkUnnamed38(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed39() => {
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

void checkUnnamed39(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed38();
    o.name = 'foo';
    o.response = buildUnnamed39();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed38(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed39(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.Target> buildUnnamed40() => [buildTarget(), buildTarget()];

void checkUnnamed40(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed42() => ['foo', 'foo'];

void checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOperations = 0;
api.Operations buildOperations() {
  final o = api.Operations();
  buildCounterOperations++;
  if (buildCounterOperations < 3) {
    o.dependencyTargets = buildUnnamed40();
    o.disabled = true;
    o.hasOutput = true;
    o.queries = buildUnnamed41();
    o.relationDescriptor = buildRelationDescriptor();
    o.tags = buildUnnamed42();
  }
  buildCounterOperations--;
  return o;
}

void checkOperations(api.Operations o) {
  buildCounterOperations++;
  if (buildCounterOperations < 3) {
    checkUnnamed40(o.dependencyTargets!);
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.hasOutput!, unittest.isTrue);
    checkUnnamed41(o.queries!);
    checkRelationDescriptor(o.relationDescriptor!);
    checkUnnamed42(o.tags!);
  }
  buildCounterOperations--;
}

core.List<api.Binding> buildUnnamed43() => [buildBinding(), buildBinding()];

void checkUnnamed43(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed43();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed43(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPrivateResourceMetadata = 0;
api.PrivateResourceMetadata buildPrivateResourceMetadata() {
  final o = api.PrivateResourceMetadata();
  buildCounterPrivateResourceMetadata++;
  if (buildCounterPrivateResourceMetadata < 3) {
    o.userScoped = true;
  }
  buildCounterPrivateResourceMetadata--;
  return o;
}

void checkPrivateResourceMetadata(api.PrivateResourceMetadata o) {
  buildCounterPrivateResourceMetadata++;
  if (buildCounterPrivateResourceMetadata < 3) {
    unittest.expect(o.userScoped!, unittest.isTrue);
  }
  buildCounterPrivateResourceMetadata--;
}

core.int buildCounterPullGitCommitsRequest = 0;
api.PullGitCommitsRequest buildPullGitCommitsRequest() {
  final o = api.PullGitCommitsRequest();
  buildCounterPullGitCommitsRequest++;
  if (buildCounterPullGitCommitsRequest < 3) {
    o.author = buildCommitAuthor();
    o.remoteBranch = 'foo';
  }
  buildCounterPullGitCommitsRequest--;
  return o;
}

void checkPullGitCommitsRequest(api.PullGitCommitsRequest o) {
  buildCounterPullGitCommitsRequest++;
  if (buildCounterPullGitCommitsRequest < 3) {
    checkCommitAuthor(o.author!);
    unittest.expect(o.remoteBranch!, unittest.equals('foo'));
  }
  buildCounterPullGitCommitsRequest--;
}

core.int buildCounterPullGitCommitsResponse = 0;
api.PullGitCommitsResponse buildPullGitCommitsResponse() {
  final o = api.PullGitCommitsResponse();
  buildCounterPullGitCommitsResponse++;
  if (buildCounterPullGitCommitsResponse < 3) {}
  buildCounterPullGitCommitsResponse--;
  return o;
}

void checkPullGitCommitsResponse(api.PullGitCommitsResponse o) {
  buildCounterPullGitCommitsResponse++;
  if (buildCounterPullGitCommitsResponse < 3) {}
  buildCounterPullGitCommitsResponse--;
}

core.int buildCounterPushGitCommitsRequest = 0;
api.PushGitCommitsRequest buildPushGitCommitsRequest() {
  final o = api.PushGitCommitsRequest();
  buildCounterPushGitCommitsRequest++;
  if (buildCounterPushGitCommitsRequest < 3) {
    o.remoteBranch = 'foo';
  }
  buildCounterPushGitCommitsRequest--;
  return o;
}

void checkPushGitCommitsRequest(api.PushGitCommitsRequest o) {
  buildCounterPushGitCommitsRequest++;
  if (buildCounterPushGitCommitsRequest < 3) {
    unittest.expect(o.remoteBranch!, unittest.equals('foo'));
  }
  buildCounterPushGitCommitsRequest--;
}

core.int buildCounterPushGitCommitsResponse = 0;
api.PushGitCommitsResponse buildPushGitCommitsResponse() {
  final o = api.PushGitCommitsResponse();
  buildCounterPushGitCommitsResponse++;
  if (buildCounterPushGitCommitsResponse < 3) {}
  buildCounterPushGitCommitsResponse--;
  return o;
}

void checkPushGitCommitsResponse(api.PushGitCommitsResponse o) {
  buildCounterPushGitCommitsResponse++;
  if (buildCounterPushGitCommitsResponse < 3) {}
  buildCounterPushGitCommitsResponse--;
}

core.List<api.CompilationResultAction> buildUnnamed44() => [
  buildCompilationResultAction(),
  buildCompilationResultAction(),
];

void checkUnnamed44(core.List<api.CompilationResultAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompilationResultAction(o[0]);
  checkCompilationResultAction(o[1]);
}

core.int buildCounterQueryCompilationResultActionsResponse = 0;
api.QueryCompilationResultActionsResponse
buildQueryCompilationResultActionsResponse() {
  final o = api.QueryCompilationResultActionsResponse();
  buildCounterQueryCompilationResultActionsResponse++;
  if (buildCounterQueryCompilationResultActionsResponse < 3) {
    o.compilationResultActions = buildUnnamed44();
    o.nextPageToken = 'foo';
  }
  buildCounterQueryCompilationResultActionsResponse--;
  return o;
}

void checkQueryCompilationResultActionsResponse(
  api.QueryCompilationResultActionsResponse o,
) {
  buildCounterQueryCompilationResultActionsResponse++;
  if (buildCounterQueryCompilationResultActionsResponse < 3) {
    checkUnnamed44(o.compilationResultActions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterQueryCompilationResultActionsResponse--;
}

core.List<api.DirectoryEntry> buildUnnamed45() => [
  buildDirectoryEntry(),
  buildDirectoryEntry(),
];

void checkUnnamed45(core.List<api.DirectoryEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDirectoryEntry(o[0]);
  checkDirectoryEntry(o[1]);
}

core.int buildCounterQueryDirectoryContentsResponse = 0;
api.QueryDirectoryContentsResponse buildQueryDirectoryContentsResponse() {
  final o = api.QueryDirectoryContentsResponse();
  buildCounterQueryDirectoryContentsResponse++;
  if (buildCounterQueryDirectoryContentsResponse < 3) {
    o.directoryEntries = buildUnnamed45();
    o.nextPageToken = 'foo';
  }
  buildCounterQueryDirectoryContentsResponse--;
  return o;
}

void checkQueryDirectoryContentsResponse(api.QueryDirectoryContentsResponse o) {
  buildCounterQueryDirectoryContentsResponse++;
  if (buildCounterQueryDirectoryContentsResponse < 3) {
    checkUnnamed45(o.directoryEntries!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterQueryDirectoryContentsResponse--;
}

core.List<api.DirectoryEntry> buildUnnamed46() => [
  buildDirectoryEntry(),
  buildDirectoryEntry(),
];

void checkUnnamed46(core.List<api.DirectoryEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDirectoryEntry(o[0]);
  checkDirectoryEntry(o[1]);
}

core.int buildCounterQueryRepositoryDirectoryContentsResponse = 0;
api.QueryRepositoryDirectoryContentsResponse
buildQueryRepositoryDirectoryContentsResponse() {
  final o = api.QueryRepositoryDirectoryContentsResponse();
  buildCounterQueryRepositoryDirectoryContentsResponse++;
  if (buildCounterQueryRepositoryDirectoryContentsResponse < 3) {
    o.directoryEntries = buildUnnamed46();
    o.nextPageToken = 'foo';
  }
  buildCounterQueryRepositoryDirectoryContentsResponse--;
  return o;
}

void checkQueryRepositoryDirectoryContentsResponse(
  api.QueryRepositoryDirectoryContentsResponse o,
) {
  buildCounterQueryRepositoryDirectoryContentsResponse++;
  if (buildCounterQueryRepositoryDirectoryContentsResponse < 3) {
    checkUnnamed46(o.directoryEntries!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterQueryRepositoryDirectoryContentsResponse--;
}

core.List<api.WorkflowInvocationAction> buildUnnamed47() => [
  buildWorkflowInvocationAction(),
  buildWorkflowInvocationAction(),
];

void checkUnnamed47(core.List<api.WorkflowInvocationAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkflowInvocationAction(o[0]);
  checkWorkflowInvocationAction(o[1]);
}

core.int buildCounterQueryWorkflowInvocationActionsResponse = 0;
api.QueryWorkflowInvocationActionsResponse
buildQueryWorkflowInvocationActionsResponse() {
  final o = api.QueryWorkflowInvocationActionsResponse();
  buildCounterQueryWorkflowInvocationActionsResponse++;
  if (buildCounterQueryWorkflowInvocationActionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.workflowInvocationActions = buildUnnamed47();
  }
  buildCounterQueryWorkflowInvocationActionsResponse--;
  return o;
}

void checkQueryWorkflowInvocationActionsResponse(
  api.QueryWorkflowInvocationActionsResponse o,
) {
  buildCounterQueryWorkflowInvocationActionsResponse++;
  if (buildCounterQueryWorkflowInvocationActionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed47(o.workflowInvocationActions!);
  }
  buildCounterQueryWorkflowInvocationActionsResponse--;
}

core.int buildCounterReadFileResponse = 0;
api.ReadFileResponse buildReadFileResponse() {
  final o = api.ReadFileResponse();
  buildCounterReadFileResponse++;
  if (buildCounterReadFileResponse < 3) {
    o.fileContents = 'foo';
  }
  buildCounterReadFileResponse--;
  return o;
}

void checkReadFileResponse(api.ReadFileResponse o) {
  buildCounterReadFileResponse++;
  if (buildCounterReadFileResponse < 3) {
    unittest.expect(o.fileContents!, unittest.equals('foo'));
  }
  buildCounterReadFileResponse--;
}

core.int buildCounterReadRepositoryFileResponse = 0;
api.ReadRepositoryFileResponse buildReadRepositoryFileResponse() {
  final o = api.ReadRepositoryFileResponse();
  buildCounterReadRepositoryFileResponse++;
  if (buildCounterReadRepositoryFileResponse < 3) {
    o.contents = 'foo';
  }
  buildCounterReadRepositoryFileResponse--;
  return o;
}

void checkReadRepositoryFileResponse(api.ReadRepositoryFileResponse o) {
  buildCounterReadRepositoryFileResponse++;
  if (buildCounterReadRepositoryFileResponse < 3) {
    unittest.expect(o.contents!, unittest.equals('foo'));
  }
  buildCounterReadRepositoryFileResponse--;
}

core.Map<core.String, core.String> buildUnnamed48() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed48(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Target> buildUnnamed50() => [buildTarget(), buildTarget()];

void checkUnnamed50(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed52() => ['foo', 'foo'];

void checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRelation = 0;
api.Relation buildRelation() {
  final o = api.Relation();
  buildCounterRelation++;
  if (buildCounterRelation < 3) {
    o.additionalOptions = buildUnnamed48();
    o.clusterExpressions = buildUnnamed49();
    o.connection = 'foo';
    o.dependencyTargets = buildUnnamed50();
    o.disabled = true;
    o.fileFormat = 'foo';
    o.incrementalTableConfig = buildIncrementalTableConfig();
    o.partitionExpirationDays = 42;
    o.partitionExpression = 'foo';
    o.postOperations = buildUnnamed51();
    o.preOperations = buildUnnamed52();
    o.relationDescriptor = buildRelationDescriptor();
    o.relationType = 'foo';
    o.requirePartitionFilter = true;
    o.selectQuery = 'foo';
    o.storageUri = 'foo';
    o.tableFormat = 'foo';
    o.tags = buildUnnamed53();
  }
  buildCounterRelation--;
  return o;
}

void checkRelation(api.Relation o) {
  buildCounterRelation++;
  if (buildCounterRelation < 3) {
    checkUnnamed48(o.additionalOptions!);
    checkUnnamed49(o.clusterExpressions!);
    unittest.expect(o.connection!, unittest.equals('foo'));
    checkUnnamed50(o.dependencyTargets!);
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.fileFormat!, unittest.equals('foo'));
    checkIncrementalTableConfig(o.incrementalTableConfig!);
    unittest.expect(o.partitionExpirationDays!, unittest.equals(42));
    unittest.expect(o.partitionExpression!, unittest.equals('foo'));
    checkUnnamed51(o.postOperations!);
    checkUnnamed52(o.preOperations!);
    checkRelationDescriptor(o.relationDescriptor!);
    unittest.expect(o.relationType!, unittest.equals('foo'));
    unittest.expect(o.requirePartitionFilter!, unittest.isTrue);
    unittest.expect(o.selectQuery!, unittest.equals('foo'));
    unittest.expect(o.storageUri!, unittest.equals('foo'));
    unittest.expect(o.tableFormat!, unittest.equals('foo'));
    checkUnnamed53(o.tags!);
  }
  buildCounterRelation--;
}

core.Map<core.String, core.String> buildUnnamed54() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed54(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.ColumnDescriptor> buildUnnamed55() => [
  buildColumnDescriptor(),
  buildColumnDescriptor(),
];

void checkUnnamed55(core.List<api.ColumnDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumnDescriptor(o[0]);
  checkColumnDescriptor(o[1]);
}

core.int buildCounterRelationDescriptor = 0;
api.RelationDescriptor buildRelationDescriptor() {
  final o = api.RelationDescriptor();
  buildCounterRelationDescriptor++;
  if (buildCounterRelationDescriptor < 3) {
    o.bigqueryLabels = buildUnnamed54();
    o.columns = buildUnnamed55();
    o.description = 'foo';
  }
  buildCounterRelationDescriptor--;
  return o;
}

void checkRelationDescriptor(api.RelationDescriptor o) {
  buildCounterRelationDescriptor++;
  if (buildCounterRelationDescriptor < 3) {
    checkUnnamed54(o.bigqueryLabels!);
    checkUnnamed55(o.columns!);
    unittest.expect(o.description!, unittest.equals('foo'));
  }
  buildCounterRelationDescriptor--;
}

core.List<api.ScheduledReleaseRecord> buildUnnamed56() => [
  buildScheduledReleaseRecord(),
  buildScheduledReleaseRecord(),
];

void checkUnnamed56(core.List<api.ScheduledReleaseRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScheduledReleaseRecord(o[0]);
  checkScheduledReleaseRecord(o[1]);
}

core.int buildCounterReleaseConfig = 0;
api.ReleaseConfig buildReleaseConfig() {
  final o = api.ReleaseConfig();
  buildCounterReleaseConfig++;
  if (buildCounterReleaseConfig < 3) {
    o.codeCompilationConfig = buildCodeCompilationConfig();
    o.cronSchedule = 'foo';
    o.disabled = true;
    o.gitCommitish = 'foo';
    o.internalMetadata = 'foo';
    o.name = 'foo';
    o.recentScheduledReleaseRecords = buildUnnamed56();
    o.releaseCompilationResult = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterReleaseConfig--;
  return o;
}

void checkReleaseConfig(api.ReleaseConfig o) {
  buildCounterReleaseConfig++;
  if (buildCounterReleaseConfig < 3) {
    checkCodeCompilationConfig(o.codeCompilationConfig!);
    unittest.expect(o.cronSchedule!, unittest.equals('foo'));
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.gitCommitish!, unittest.equals('foo'));
    unittest.expect(o.internalMetadata!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed56(o.recentScheduledReleaseRecords!);
    unittest.expect(o.releaseCompilationResult!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterReleaseConfig--;
}

core.int buildCounterRemoveDirectoryRequest = 0;
api.RemoveDirectoryRequest buildRemoveDirectoryRequest() {
  final o = api.RemoveDirectoryRequest();
  buildCounterRemoveDirectoryRequest++;
  if (buildCounterRemoveDirectoryRequest < 3) {
    o.path = 'foo';
  }
  buildCounterRemoveDirectoryRequest--;
  return o;
}

void checkRemoveDirectoryRequest(api.RemoveDirectoryRequest o) {
  buildCounterRemoveDirectoryRequest++;
  if (buildCounterRemoveDirectoryRequest < 3) {
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterRemoveDirectoryRequest--;
}

core.int buildCounterRemoveDirectoryResponse = 0;
api.RemoveDirectoryResponse buildRemoveDirectoryResponse() {
  final o = api.RemoveDirectoryResponse();
  buildCounterRemoveDirectoryResponse++;
  if (buildCounterRemoveDirectoryResponse < 3) {}
  buildCounterRemoveDirectoryResponse--;
  return o;
}

void checkRemoveDirectoryResponse(api.RemoveDirectoryResponse o) {
  buildCounterRemoveDirectoryResponse++;
  if (buildCounterRemoveDirectoryResponse < 3) {}
  buildCounterRemoveDirectoryResponse--;
}

core.int buildCounterRemoveFileRequest = 0;
api.RemoveFileRequest buildRemoveFileRequest() {
  final o = api.RemoveFileRequest();
  buildCounterRemoveFileRequest++;
  if (buildCounterRemoveFileRequest < 3) {
    o.path = 'foo';
  }
  buildCounterRemoveFileRequest--;
  return o;
}

void checkRemoveFileRequest(api.RemoveFileRequest o) {
  buildCounterRemoveFileRequest++;
  if (buildCounterRemoveFileRequest < 3) {
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterRemoveFileRequest--;
}

core.int buildCounterRemoveFileResponse = 0;
api.RemoveFileResponse buildRemoveFileResponse() {
  final o = api.RemoveFileResponse();
  buildCounterRemoveFileResponse++;
  if (buildCounterRemoveFileResponse < 3) {}
  buildCounterRemoveFileResponse--;
  return o;
}

void checkRemoveFileResponse(api.RemoveFileResponse o) {
  buildCounterRemoveFileResponse++;
  if (buildCounterRemoveFileResponse < 3) {}
  buildCounterRemoveFileResponse--;
}

core.Map<core.String, core.String> buildUnnamed57() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed57(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterRepository = 0;
api.Repository buildRepository() {
  final o = api.Repository();
  buildCounterRepository++;
  if (buildCounterRepository < 3) {
    o.createTime = 'foo';
    o.dataEncryptionState = buildDataEncryptionState();
    o.displayName = 'foo';
    o.gitRemoteSettings = buildGitRemoteSettings();
    o.internalMetadata = 'foo';
    o.kmsKeyName = 'foo';
    o.labels = buildUnnamed57();
    o.name = 'foo';
    o.npmrcEnvironmentVariablesSecretVersion = 'foo';
    o.serviceAccount = 'foo';
    o.setAuthenticatedUserAdmin = true;
    o.workspaceCompilationOverrides = buildWorkspaceCompilationOverrides();
  }
  buildCounterRepository--;
  return o;
}

void checkRepository(api.Repository o) {
  buildCounterRepository++;
  if (buildCounterRepository < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDataEncryptionState(o.dataEncryptionState!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGitRemoteSettings(o.gitRemoteSettings!);
    unittest.expect(o.internalMetadata!, unittest.equals('foo'));
    unittest.expect(o.kmsKeyName!, unittest.equals('foo'));
    checkUnnamed57(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(
      o.npmrcEnvironmentVariablesSecretVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.setAuthenticatedUserAdmin!, unittest.isTrue);
    checkWorkspaceCompilationOverrides(o.workspaceCompilationOverrides!);
  }
  buildCounterRepository--;
}

core.List<core.String> buildUnnamed58() => ['foo', 'foo'];

void checkUnnamed58(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResetWorkspaceChangesRequest = 0;
api.ResetWorkspaceChangesRequest buildResetWorkspaceChangesRequest() {
  final o = api.ResetWorkspaceChangesRequest();
  buildCounterResetWorkspaceChangesRequest++;
  if (buildCounterResetWorkspaceChangesRequest < 3) {
    o.clean = true;
    o.paths = buildUnnamed58();
  }
  buildCounterResetWorkspaceChangesRequest--;
  return o;
}

void checkResetWorkspaceChangesRequest(api.ResetWorkspaceChangesRequest o) {
  buildCounterResetWorkspaceChangesRequest++;
  if (buildCounterResetWorkspaceChangesRequest < 3) {
    unittest.expect(o.clean!, unittest.isTrue);
    checkUnnamed58(o.paths!);
  }
  buildCounterResetWorkspaceChangesRequest--;
}

core.int buildCounterResetWorkspaceChangesResponse = 0;
api.ResetWorkspaceChangesResponse buildResetWorkspaceChangesResponse() {
  final o = api.ResetWorkspaceChangesResponse();
  buildCounterResetWorkspaceChangesResponse++;
  if (buildCounterResetWorkspaceChangesResponse < 3) {}
  buildCounterResetWorkspaceChangesResponse--;
  return o;
}

void checkResetWorkspaceChangesResponse(api.ResetWorkspaceChangesResponse o) {
  buildCounterResetWorkspaceChangesResponse++;
  if (buildCounterResetWorkspaceChangesResponse < 3) {}
  buildCounterResetWorkspaceChangesResponse--;
}

core.int buildCounterScheduledExecutionRecord = 0;
api.ScheduledExecutionRecord buildScheduledExecutionRecord() {
  final o = api.ScheduledExecutionRecord();
  buildCounterScheduledExecutionRecord++;
  if (buildCounterScheduledExecutionRecord < 3) {
    o.errorStatus = buildStatus();
    o.executionTime = 'foo';
    o.workflowInvocation = 'foo';
  }
  buildCounterScheduledExecutionRecord--;
  return o;
}

void checkScheduledExecutionRecord(api.ScheduledExecutionRecord o) {
  buildCounterScheduledExecutionRecord++;
  if (buildCounterScheduledExecutionRecord < 3) {
    checkStatus(o.errorStatus!);
    unittest.expect(o.executionTime!, unittest.equals('foo'));
    unittest.expect(o.workflowInvocation!, unittest.equals('foo'));
  }
  buildCounterScheduledExecutionRecord--;
}

core.int buildCounterScheduledReleaseRecord = 0;
api.ScheduledReleaseRecord buildScheduledReleaseRecord() {
  final o = api.ScheduledReleaseRecord();
  buildCounterScheduledReleaseRecord++;
  if (buildCounterScheduledReleaseRecord < 3) {
    o.compilationResult = 'foo';
    o.errorStatus = buildStatus();
    o.releaseTime = 'foo';
  }
  buildCounterScheduledReleaseRecord--;
  return o;
}

void checkScheduledReleaseRecord(api.ScheduledReleaseRecord o) {
  buildCounterScheduledReleaseRecord++;
  if (buildCounterScheduledReleaseRecord < 3) {
    unittest.expect(o.compilationResult!, unittest.equals('foo'));
    checkStatus(o.errorStatus!);
    unittest.expect(o.releaseTime!, unittest.equals('foo'));
  }
  buildCounterScheduledReleaseRecord--;
}

core.List<api.SearchResult> buildUnnamed59() => [
  buildSearchResult(),
  buildSearchResult(),
];

void checkUnnamed59(core.List<api.SearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchResult(o[0]);
  checkSearchResult(o[1]);
}

core.int buildCounterSearchFilesResponse = 0;
api.SearchFilesResponse buildSearchFilesResponse() {
  final o = api.SearchFilesResponse();
  buildCounterSearchFilesResponse++;
  if (buildCounterSearchFilesResponse < 3) {
    o.nextPageToken = 'foo';
    o.searchResults = buildUnnamed59();
  }
  buildCounterSearchFilesResponse--;
  return o;
}

void checkSearchFilesResponse(api.SearchFilesResponse o) {
  buildCounterSearchFilesResponse++;
  if (buildCounterSearchFilesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed59(o.searchResults!);
  }
  buildCounterSearchFilesResponse--;
}

core.int buildCounterSearchResult = 0;
api.SearchResult buildSearchResult() {
  final o = api.SearchResult();
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    o.directory = buildDirectorySearchResult();
    o.file = buildFileSearchResult();
  }
  buildCounterSearchResult--;
  return o;
}

void checkSearchResult(api.SearchResult o) {
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    checkDirectorySearchResult(o.directory!);
    checkFileSearchResult(o.file!);
  }
  buildCounterSearchResult--;
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

core.int buildCounterSimpleLoadMode = 0;
api.SimpleLoadMode buildSimpleLoadMode() {
  final o = api.SimpleLoadMode();
  buildCounterSimpleLoadMode++;
  if (buildCounterSimpleLoadMode < 3) {}
  buildCounterSimpleLoadMode--;
  return o;
}

void checkSimpleLoadMode(api.SimpleLoadMode o) {
  buildCounterSimpleLoadMode++;
  if (buildCounterSimpleLoadMode < 3) {}
  buildCounterSimpleLoadMode--;
}

core.int buildCounterSqlDefinition = 0;
api.SqlDefinition buildSqlDefinition() {
  final o = api.SqlDefinition();
  buildCounterSqlDefinition++;
  if (buildCounterSqlDefinition < 3) {
    o.errorTable = buildErrorTable();
    o.load = buildLoadConfig();
    o.query = 'foo';
  }
  buildCounterSqlDefinition--;
  return o;
}

void checkSqlDefinition(api.SqlDefinition o) {
  buildCounterSqlDefinition++;
  if (buildCounterSqlDefinition < 3) {
    checkErrorTable(o.errorTable!);
    checkLoadConfig(o.load!);
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterSqlDefinition--;
}

core.int buildCounterSshAuthenticationConfig = 0;
api.SshAuthenticationConfig buildSshAuthenticationConfig() {
  final o = api.SshAuthenticationConfig();
  buildCounterSshAuthenticationConfig++;
  if (buildCounterSshAuthenticationConfig < 3) {
    o.hostPublicKey = 'foo';
    o.userPrivateKeySecretVersion = 'foo';
  }
  buildCounterSshAuthenticationConfig--;
  return o;
}

void checkSshAuthenticationConfig(api.SshAuthenticationConfig o) {
  buildCounterSshAuthenticationConfig++;
  if (buildCounterSshAuthenticationConfig < 3) {
    unittest.expect(o.hostPublicKey!, unittest.equals('foo'));
    unittest.expect(o.userPrivateKeySecretVersion!, unittest.equals('foo'));
  }
  buildCounterSshAuthenticationConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed60() => {
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

void checkUnnamed60(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed61() => [
  buildUnnamed60(),
  buildUnnamed60(),
];

void checkUnnamed61(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed60(o[0]);
  checkUnnamed60(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed61();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed61(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTarget = 0;
api.Target buildTarget() {
  final o = api.Target();
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    o.database = 'foo';
    o.name = 'foo';
    o.schema = 'foo';
  }
  buildCounterTarget--;
  return o;
}

void checkTarget(api.Target o) {
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    unittest.expect(o.database!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.schema!, unittest.equals('foo'));
  }
  buildCounterTarget--;
}

core.List<core.String> buildUnnamed62() => ['foo', 'foo'];

void checkUnnamed62(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed62();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed62(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed63() => ['foo', 'foo'];

void checkUnnamed63(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed63();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed63(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUncommittedFileChange = 0;
api.UncommittedFileChange buildUncommittedFileChange() {
  final o = api.UncommittedFileChange();
  buildCounterUncommittedFileChange++;
  if (buildCounterUncommittedFileChange < 3) {
    o.path = 'foo';
    o.state = 'foo';
  }
  buildCounterUncommittedFileChange--;
  return o;
}

void checkUncommittedFileChange(api.UncommittedFileChange o) {
  buildCounterUncommittedFileChange++;
  if (buildCounterUncommittedFileChange < 3) {
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterUncommittedFileChange--;
}

core.List<api.ScheduledExecutionRecord> buildUnnamed64() => [
  buildScheduledExecutionRecord(),
  buildScheduledExecutionRecord(),
];

void checkUnnamed64(core.List<api.ScheduledExecutionRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScheduledExecutionRecord(o[0]);
  checkScheduledExecutionRecord(o[1]);
}

core.int buildCounterWorkflowConfig = 0;
api.WorkflowConfig buildWorkflowConfig() {
  final o = api.WorkflowConfig();
  buildCounterWorkflowConfig++;
  if (buildCounterWorkflowConfig < 3) {
    o.createTime = 'foo';
    o.cronSchedule = 'foo';
    o.disabled = true;
    o.internalMetadata = 'foo';
    o.invocationConfig = buildInvocationConfig();
    o.name = 'foo';
    o.recentScheduledExecutionRecords = buildUnnamed64();
    o.releaseConfig = 'foo';
    o.timeZone = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterWorkflowConfig--;
  return o;
}

void checkWorkflowConfig(api.WorkflowConfig o) {
  buildCounterWorkflowConfig++;
  if (buildCounterWorkflowConfig < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.cronSchedule!, unittest.equals('foo'));
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.internalMetadata!, unittest.equals('foo'));
    checkInvocationConfig(o.invocationConfig!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed64(o.recentScheduledExecutionRecords!);
    unittest.expect(o.releaseConfig!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterWorkflowConfig--;
}

core.int buildCounterWorkflowInvocation = 0;
api.WorkflowInvocation buildWorkflowInvocation() {
  final o = api.WorkflowInvocation();
  buildCounterWorkflowInvocation++;
  if (buildCounterWorkflowInvocation < 3) {
    o.compilationResult = 'foo';
    o.dataEncryptionState = buildDataEncryptionState();
    o.internalMetadata = 'foo';
    o.invocationConfig = buildInvocationConfig();
    o.invocationTiming = buildInterval();
    o.name = 'foo';
    o.privateResourceMetadata = buildPrivateResourceMetadata();
    o.resolvedCompilationResult = 'foo';
    o.state = 'foo';
    o.workflowConfig = 'foo';
  }
  buildCounterWorkflowInvocation--;
  return o;
}

void checkWorkflowInvocation(api.WorkflowInvocation o) {
  buildCounterWorkflowInvocation++;
  if (buildCounterWorkflowInvocation < 3) {
    unittest.expect(o.compilationResult!, unittest.equals('foo'));
    checkDataEncryptionState(o.dataEncryptionState!);
    unittest.expect(o.internalMetadata!, unittest.equals('foo'));
    checkInvocationConfig(o.invocationConfig!);
    checkInterval(o.invocationTiming!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPrivateResourceMetadata(o.privateResourceMetadata!);
    unittest.expect(o.resolvedCompilationResult!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.workflowConfig!, unittest.equals('foo'));
  }
  buildCounterWorkflowInvocation--;
}

core.int buildCounterWorkflowInvocationAction = 0;
api.WorkflowInvocationAction buildWorkflowInvocationAction() {
  final o = api.WorkflowInvocationAction();
  buildCounterWorkflowInvocationAction++;
  if (buildCounterWorkflowInvocationAction < 3) {
    o.bigqueryAction = buildBigQueryAction();
    o.canonicalTarget = buildTarget();
    o.dataPreparationAction = buildDataPreparationAction();
    o.failureReason = 'foo';
    o.internalMetadata = 'foo';
    o.invocationTiming = buildInterval();
    o.notebookAction = buildNotebookAction();
    o.state = 'foo';
    o.target = buildTarget();
  }
  buildCounterWorkflowInvocationAction--;
  return o;
}

void checkWorkflowInvocationAction(api.WorkflowInvocationAction o) {
  buildCounterWorkflowInvocationAction++;
  if (buildCounterWorkflowInvocationAction < 3) {
    checkBigQueryAction(o.bigqueryAction!);
    checkTarget(o.canonicalTarget!);
    checkDataPreparationAction(o.dataPreparationAction!);
    unittest.expect(o.failureReason!, unittest.equals('foo'));
    unittest.expect(o.internalMetadata!, unittest.equals('foo'));
    checkInterval(o.invocationTiming!);
    checkNotebookAction(o.notebookAction!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkTarget(o.target!);
  }
  buildCounterWorkflowInvocationAction--;
}

core.int buildCounterWorkspace = 0;
api.Workspace buildWorkspace() {
  final o = api.Workspace();
  buildCounterWorkspace++;
  if (buildCounterWorkspace < 3) {
    o.createTime = 'foo';
    o.dataEncryptionState = buildDataEncryptionState();
    o.internalMetadata = 'foo';
    o.name = 'foo';
    o.privateResourceMetadata = buildPrivateResourceMetadata();
  }
  buildCounterWorkspace--;
  return o;
}

void checkWorkspace(api.Workspace o) {
  buildCounterWorkspace++;
  if (buildCounterWorkspace < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDataEncryptionState(o.dataEncryptionState!);
    unittest.expect(o.internalMetadata!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPrivateResourceMetadata(o.privateResourceMetadata!);
  }
  buildCounterWorkspace--;
}

core.int buildCounterWorkspaceCompilationOverrides = 0;
api.WorkspaceCompilationOverrides buildWorkspaceCompilationOverrides() {
  final o = api.WorkspaceCompilationOverrides();
  buildCounterWorkspaceCompilationOverrides++;
  if (buildCounterWorkspaceCompilationOverrides < 3) {
    o.defaultDatabase = 'foo';
    o.schemaSuffix = 'foo';
    o.tablePrefix = 'foo';
  }
  buildCounterWorkspaceCompilationOverrides--;
  return o;
}

void checkWorkspaceCompilationOverrides(api.WorkspaceCompilationOverrides o) {
  buildCounterWorkspaceCompilationOverrides++;
  if (buildCounterWorkspaceCompilationOverrides < 3) {
    unittest.expect(o.defaultDatabase!, unittest.equals('foo'));
    unittest.expect(o.schemaSuffix!, unittest.equals('foo'));
    unittest.expect(o.tablePrefix!, unittest.equals('foo'));
  }
  buildCounterWorkspaceCompilationOverrides--;
}

core.int buildCounterWriteFile = 0;
api.WriteFile buildWriteFile() {
  final o = api.WriteFile();
  buildCounterWriteFile++;
  if (buildCounterWriteFile < 3) {
    o.contents = 'foo';
  }
  buildCounterWriteFile--;
  return o;
}

void checkWriteFile(api.WriteFile o) {
  buildCounterWriteFile++;
  if (buildCounterWriteFile < 3) {
    unittest.expect(o.contents!, unittest.equals('foo'));
  }
  buildCounterWriteFile--;
}

core.int buildCounterWriteFileRequest = 0;
api.WriteFileRequest buildWriteFileRequest() {
  final o = api.WriteFileRequest();
  buildCounterWriteFileRequest++;
  if (buildCounterWriteFileRequest < 3) {
    o.contents = 'foo';
    o.path = 'foo';
  }
  buildCounterWriteFileRequest--;
  return o;
}

void checkWriteFileRequest(api.WriteFileRequest o) {
  buildCounterWriteFileRequest++;
  if (buildCounterWriteFileRequest < 3) {
    unittest.expect(o.contents!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterWriteFileRequest--;
}

core.int buildCounterWriteFileResponse = 0;
api.WriteFileResponse buildWriteFileResponse() {
  final o = api.WriteFileResponse();
  buildCounterWriteFileResponse++;
  if (buildCounterWriteFileResponse < 3) {}
  buildCounterWriteFileResponse--;
  return o;
}

void checkWriteFileResponse(api.WriteFileResponse o) {
  buildCounterWriteFileResponse++;
  if (buildCounterWriteFileResponse < 3) {}
  buildCounterWriteFileResponse--;
}

core.List<core.String> buildUnnamed65() => ['foo', 'foo'];

void checkUnnamed65(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-ActionErrorTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionErrorTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionErrorTable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActionErrorTable(od);
    });
  });

  unittest.group('obj-schema-ActionIncrementalLoadMode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionIncrementalLoadMode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionIncrementalLoadMode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActionIncrementalLoadMode(od);
    });
  });

  unittest.group('obj-schema-ActionLoadConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionLoadConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionLoadConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActionLoadConfig(od);
    });
  });

  unittest.group('obj-schema-ActionSimpleLoadMode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionSimpleLoadMode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionSimpleLoadMode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActionSimpleLoadMode(od);
    });
  });

  unittest.group('obj-schema-ActionSqlDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionSqlDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionSqlDefinition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActionSqlDefinition(od);
    });
  });

  unittest.group('obj-schema-Assertion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssertion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Assertion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssertion(od);
    });
  });

  unittest.group('obj-schema-BigQueryAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBigQueryAction(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBinding(od);
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

  unittest.group('obj-schema-CancelWorkflowInvocationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelWorkflowInvocationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelWorkflowInvocationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelWorkflowInvocationRequest(od);
    });
  });

  unittest.group('obj-schema-CancelWorkflowInvocationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelWorkflowInvocationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelWorkflowInvocationResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelWorkflowInvocationResponse(od);
    });
  });

  unittest.group('obj-schema-CodeCompilationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCodeCompilationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CodeCompilationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCodeCompilationConfig(od);
    });
  });

  unittest.group('obj-schema-ColumnDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumnDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColumnDescriptor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkColumnDescriptor(od);
    });
  });

  unittest.group('obj-schema-CommitAuthor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitAuthor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitAuthor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommitAuthor(od);
    });
  });

  unittest.group('obj-schema-CommitLogEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitLogEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitLogEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommitLogEntry(od);
    });
  });

  unittest.group('obj-schema-CommitMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommitMetadata(od);
    });
  });

  unittest.group('obj-schema-CommitRepositoryChangesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitRepositoryChangesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitRepositoryChangesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommitRepositoryChangesRequest(od);
    });
  });

  unittest.group('obj-schema-CommitRepositoryChangesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitRepositoryChangesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitRepositoryChangesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommitRepositoryChangesResponse(od);
    });
  });

  unittest.group('obj-schema-CommitWorkspaceChangesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitWorkspaceChangesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitWorkspaceChangesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommitWorkspaceChangesRequest(od);
    });
  });

  unittest.group('obj-schema-CommitWorkspaceChangesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitWorkspaceChangesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitWorkspaceChangesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommitWorkspaceChangesResponse(od);
    });
  });

  unittest.group('obj-schema-CompilationError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompilationError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompilationError.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompilationError(od);
    });
  });

  unittest.group('obj-schema-CompilationResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompilationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompilationResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompilationResult(od);
    });
  });

  unittest.group('obj-schema-CompilationResultAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompilationResultAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompilationResultAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompilationResultAction(od);
    });
  });

  unittest.group('obj-schema-ComputeRepositoryAccessTokenStatusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeRepositoryAccessTokenStatusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeRepositoryAccessTokenStatusResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComputeRepositoryAccessTokenStatusResponse(od);
    });
  });

  unittest.group('obj-schema-Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Config.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConfig(od);
    });
  });

  unittest.group('obj-schema-DataEncryptionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataEncryptionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataEncryptionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataEncryptionState(od);
    });
  });

  unittest.group('obj-schema-DataPreparation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataPreparation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataPreparation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataPreparation(od);
    });
  });

  unittest.group('obj-schema-DataPreparationAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataPreparationAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataPreparationAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataPreparationAction(od);
    });
  });

  unittest.group('obj-schema-Declaration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeclaration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Declaration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeclaration(od);
    });
  });

  unittest.group('obj-schema-DeleteFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteFile(od);
    });
  });

  unittest.group('obj-schema-DirectoryEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectoryEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectoryEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDirectoryEntry(od);
    });
  });

  unittest.group('obj-schema-DirectorySearchResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectorySearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectorySearchResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDirectorySearchResult(od);
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

  unittest.group('obj-schema-ErrorTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorTable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkErrorTable(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Expr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-FetchFileDiffResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchFileDiffResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchFileDiffResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchFileDiffResponse(od);
    });
  });

  unittest.group('obj-schema-FetchFileGitStatusesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchFileGitStatusesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchFileGitStatusesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchFileGitStatusesResponse(od);
    });
  });

  unittest.group('obj-schema-FetchGitAheadBehindResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchGitAheadBehindResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchGitAheadBehindResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchGitAheadBehindResponse(od);
    });
  });

  unittest.group('obj-schema-FetchRemoteBranchesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchRemoteBranchesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchRemoteBranchesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchRemoteBranchesResponse(od);
    });
  });

  unittest.group('obj-schema-FetchRepositoryHistoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchRepositoryHistoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchRepositoryHistoryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchRepositoryHistoryResponse(od);
    });
  });

  unittest.group('obj-schema-FileOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileOperation(od);
    });
  });

  unittest.group('obj-schema-FileSearchResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileSearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileSearchResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileSearchResult(od);
    });
  });

  unittest.group('obj-schema-GitRemoteSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitRemoteSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitRemoteSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGitRemoteSettings(od);
    });
  });

  unittest.group('obj-schema-IncrementalLoadMode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIncrementalLoadMode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IncrementalLoadMode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIncrementalLoadMode(od);
    });
  });

  unittest.group('obj-schema-IncrementalTableConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIncrementalTableConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IncrementalTableConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIncrementalTableConfig(od);
    });
  });

  unittest.group('obj-schema-InstallNpmPackagesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstallNpmPackagesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstallNpmPackagesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstallNpmPackagesRequest(od);
    });
  });

  unittest.group('obj-schema-InstallNpmPackagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstallNpmPackagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstallNpmPackagesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstallNpmPackagesResponse(od);
    });
  });

  unittest.group('obj-schema-Interval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Interval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterval(od);
    });
  });

  unittest.group('obj-schema-InvocationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInvocationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InvocationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInvocationConfig(od);
    });
  });

  unittest.group('obj-schema-ListCompilationResultsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCompilationResultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCompilationResultsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCompilationResultsResponse(od);
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

  unittest.group('obj-schema-ListReleaseConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReleaseConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReleaseConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListReleaseConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRepositoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRepositoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRepositoriesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListRepositoriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkflowConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkflowConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkflowConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListWorkflowConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkflowInvocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkflowInvocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkflowInvocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListWorkflowInvocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkspacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkspacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkspacesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListWorkspacesResponse(od);
    });
  });

  unittest.group('obj-schema-LoadConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoadConfig(od);
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

  unittest.group('obj-schema-MakeDirectoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMakeDirectoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MakeDirectoryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMakeDirectoryRequest(od);
    });
  });

  unittest.group('obj-schema-MakeDirectoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMakeDirectoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MakeDirectoryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMakeDirectoryResponse(od);
    });
  });

  unittest.group('obj-schema-MoveDirectoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveDirectoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveDirectoryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoveDirectoryRequest(od);
    });
  });

  unittest.group('obj-schema-MoveDirectoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveDirectoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveDirectoryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoveDirectoryResponse(od);
    });
  });

  unittest.group('obj-schema-MoveFileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveFileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveFileRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoveFileRequest(od);
    });
  });

  unittest.group('obj-schema-MoveFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveFileResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoveFileResponse(od);
    });
  });

  unittest.group('obj-schema-Notebook', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotebook();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Notebook.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNotebook(od);
    });
  });

  unittest.group('obj-schema-NotebookAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotebookAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotebookAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNotebookAction(od);
    });
  });

  unittest.group('obj-schema-NotebookRuntimeOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotebookRuntimeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotebookRuntimeOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNotebookRuntimeOptions(od);
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

  unittest.group('obj-schema-Operations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operations.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperations(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PrivateResourceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateResourceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateResourceMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrivateResourceMetadata(od);
    });
  });

  unittest.group('obj-schema-PullGitCommitsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullGitCommitsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullGitCommitsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPullGitCommitsRequest(od);
    });
  });

  unittest.group('obj-schema-PullGitCommitsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullGitCommitsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullGitCommitsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPullGitCommitsResponse(od);
    });
  });

  unittest.group('obj-schema-PushGitCommitsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPushGitCommitsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PushGitCommitsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPushGitCommitsRequest(od);
    });
  });

  unittest.group('obj-schema-PushGitCommitsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPushGitCommitsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PushGitCommitsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPushGitCommitsResponse(od);
    });
  });

  unittest.group('obj-schema-QueryCompilationResultActionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryCompilationResultActionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryCompilationResultActionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryCompilationResultActionsResponse(od);
    });
  });

  unittest.group('obj-schema-QueryDirectoryContentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryDirectoryContentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryDirectoryContentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryDirectoryContentsResponse(od);
    });
  });

  unittest.group('obj-schema-QueryRepositoryDirectoryContentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryRepositoryDirectoryContentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryRepositoryDirectoryContentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryRepositoryDirectoryContentsResponse(od);
    });
  });

  unittest.group('obj-schema-QueryWorkflowInvocationActionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryWorkflowInvocationActionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryWorkflowInvocationActionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryWorkflowInvocationActionsResponse(od);
    });
  });

  unittest.group('obj-schema-ReadFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReadFileResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReadFileResponse(od);
    });
  });

  unittest.group('obj-schema-ReadRepositoryFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadRepositoryFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReadRepositoryFileResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReadRepositoryFileResponse(od);
    });
  });

  unittest.group('obj-schema-Relation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Relation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRelation(od);
    });
  });

  unittest.group('obj-schema-RelationDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelationDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelationDescriptor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRelationDescriptor(od);
    });
  });

  unittest.group('obj-schema-ReleaseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReleaseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReleaseConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReleaseConfig(od);
    });
  });

  unittest.group('obj-schema-RemoveDirectoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveDirectoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveDirectoryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveDirectoryRequest(od);
    });
  });

  unittest.group('obj-schema-RemoveDirectoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveDirectoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveDirectoryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveDirectoryResponse(od);
    });
  });

  unittest.group('obj-schema-RemoveFileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveFileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveFileRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveFileRequest(od);
    });
  });

  unittest.group('obj-schema-RemoveFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveFileResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveFileResponse(od);
    });
  });

  unittest.group('obj-schema-Repository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Repository.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRepository(od);
    });
  });

  unittest.group('obj-schema-ResetWorkspaceChangesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetWorkspaceChangesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetWorkspaceChangesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResetWorkspaceChangesRequest(od);
    });
  });

  unittest.group('obj-schema-ResetWorkspaceChangesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetWorkspaceChangesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetWorkspaceChangesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResetWorkspaceChangesResponse(od);
    });
  });

  unittest.group('obj-schema-ScheduledExecutionRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScheduledExecutionRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScheduledExecutionRecord.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScheduledExecutionRecord(od);
    });
  });

  unittest.group('obj-schema-ScheduledReleaseRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScheduledReleaseRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScheduledReleaseRecord.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScheduledReleaseRecord(od);
    });
  });

  unittest.group('obj-schema-SearchFilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchFilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchFilesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchFilesResponse(od);
    });
  });

  unittest.group('obj-schema-SearchResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchResult(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SimpleLoadMode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSimpleLoadMode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SimpleLoadMode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSimpleLoadMode(od);
    });
  });

  unittest.group('obj-schema-SqlDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlDefinition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlDefinition(od);
    });
  });

  unittest.group('obj-schema-SshAuthenticationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSshAuthenticationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SshAuthenticationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSshAuthenticationConfig(od);
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

  unittest.group('obj-schema-Target', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Target.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTarget(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-UncommittedFileChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUncommittedFileChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UncommittedFileChange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUncommittedFileChange(od);
    });
  });

  unittest.group('obj-schema-WorkflowConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkflowConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkflowConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkflowConfig(od);
    });
  });

  unittest.group('obj-schema-WorkflowInvocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkflowInvocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkflowInvocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkflowInvocation(od);
    });
  });

  unittest.group('obj-schema-WorkflowInvocationAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkflowInvocationAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkflowInvocationAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkflowInvocationAction(od);
    });
  });

  unittest.group('obj-schema-Workspace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkspace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Workspace.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkspace(od);
    });
  });

  unittest.group('obj-schema-WorkspaceCompilationOverrides', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkspaceCompilationOverrides();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkspaceCompilationOverrides.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkspaceCompilationOverrides(od);
    });
  });

  unittest.group('obj-schema-WriteFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteFile(od);
    });
  });

  unittest.group('obj-schema-WriteFileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteFileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteFileRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteFileRequest(od);
    });
  });

  unittest.group('obj-schema-WriteFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteFileResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteFileResponse(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations;
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

    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations;
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
          final resp = convert.json.encode(buildConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkConfig(response as api.Config);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed65();
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

    unittest.test('method--updateConfig', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations;
      final arg_request = buildConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Config.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkConfig(response as api.Config);
    });
  });

  unittest.group('resource-ProjectsLocationsFoldersResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.folders;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.folders;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.folders;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.operations;
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
      final res = api.DataformApi(mock).projects.locations.operations;
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
      final res = api.DataformApi(mock).projects.locations.operations;
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
      final res = api.DataformApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsRepositoriesResource', () {
    unittest.test('method--commit', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
      final arg_request = buildCommitRepositoryChangesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CommitRepositoryChangesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCommitRepositoryChangesRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            buildCommitRepositoryChangesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.commit(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkCommitRepositoryChangesResponse(
        response as api.CommitRepositoryChangesResponse,
      );
    });

    unittest.test('method--computeAccessTokenStatus', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
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
            buildComputeRepositoryAccessTokenStatusResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.computeAccessTokenStatus(
        arg_name,
        $fields: arg_$fields,
      );
      checkComputeRepositoryAccessTokenStatusResponse(
        response as api.ComputeRepositoryAccessTokenStatusResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
      final arg_request = buildRepository();
      final arg_parent = 'foo';
      final arg_repositoryId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Repository.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRepository(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['repositoryId']!.first,
            unittest.equals(arg_repositoryId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRepository());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        repositoryId: arg_repositoryId,
        $fields: arg_$fields,
      );
      checkRepository(response as api.Repository);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
      final arg_name = 'foo';
      final arg_force = true;
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
        force: arg_force,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--fetchHistory', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
      final arg_name = 'foo';
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
            buildFetchRepositoryHistoryResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchHistory(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkFetchRepositoryHistoryResponse(
        response as api.FetchRepositoryHistoryResponse,
      );
    });

    unittest.test('method--fetchRemoteBranches', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
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
          final resp = convert.json.encode(buildFetchRemoteBranchesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchRemoteBranches(
        arg_name,
        $fields: arg_$fields,
      );
      checkFetchRemoteBranchesResponse(
        response as api.FetchRemoteBranchesResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
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
          final resp = convert.json.encode(buildRepository());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRepository(response as api.Repository);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
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
          final resp = convert.json.encode(buildListRepositoriesResponse());
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
      checkListRepositoriesResponse(response as api.ListRepositoriesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
      final arg_request = buildRepository();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Repository.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRepository(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRepository());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkRepository(response as api.Repository);
    });

    unittest.test('method--queryDirectoryContents', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
      final arg_name = 'foo';
      final arg_commitSha = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_path = 'foo';
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
            queryMap['commitSha']!.first,
            unittest.equals(arg_commitSha),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['path']!.first, unittest.equals(arg_path));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildQueryRepositoryDirectoryContentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryDirectoryContents(
        arg_name,
        commitSha: arg_commitSha,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        path: arg_path,
        $fields: arg_$fields,
      );
      checkQueryRepositoryDirectoryContentsResponse(
        response as api.QueryRepositoryDirectoryContentsResponse,
      );
    });

    unittest.test('method--readFile', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
      final arg_name = 'foo';
      final arg_commitSha = 'foo';
      final arg_path = 'foo';
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
            queryMap['commitSha']!.first,
            unittest.equals(arg_commitSha),
          );
          unittest.expect(queryMap['path']!.first, unittest.equals(arg_path));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildReadRepositoryFileResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.readFile(
        arg_name,
        commitSha: arg_commitSha,
        path: arg_path,
        $fields: arg_$fields,
      );
      checkReadRepositoryFileResponse(
        response as api.ReadRepositoryFileResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.repositories;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsRepositoriesCompilationResultsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.DataformApi(
              mock,
            ).projects.locations.repositories.compilationResults;
        final arg_request = buildCompilationResult();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.CompilationResult.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkCompilationResult(obj);

            final path = req.url.path;
            var pathOffset = 0;
            core.int index;
            core.String subPart;
            unittest.expect(
              path.substring(pathOffset, pathOffset + 1),
              unittest.equals('/'),
            );
            pathOffset += 1;
            unittest.expect(
              path.substring(pathOffset, pathOffset + 3),
              unittest.equals('v1/'),
            );
            pathOffset += 3;
            // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

            final query = req.url.query;
            var queryOffset = 0;
            final queryMap = <core.String, core.List<core.String>>{};
            void addQueryParam(core.String n, core.String v) =>
                queryMap.putIfAbsent(n, () => []).add(v);

            if (query.isNotEmpty) {
              for (var part in query.split('&')) {
                final keyValue = part.split('=');
                addQueryParam(
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
            final resp = convert.json.encode(buildCompilationResult());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkCompilationResult(response as api.CompilationResult);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.DataformApi(
              mock,
            ).projects.locations.repositories.compilationResults;
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
            final resp = convert.json.encode(buildCompilationResult());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkCompilationResult(response as api.CompilationResult);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.DataformApi(
              mock,
            ).projects.locations.repositories.compilationResults;
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
              buildListCompilationResultsResponse(),
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
        checkListCompilationResultsResponse(
          response as api.ListCompilationResultsResponse,
        );
      });

      unittest.test('method--query', () async {
        final mock = HttpServerMock();
        final res =
            api.DataformApi(
              mock,
            ).projects.locations.repositories.compilationResults;
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
            final resp = convert.json.encode(
              buildQueryCompilationResultActionsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.query(
          arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkQueryCompilationResultActionsResponse(
          response as api.QueryCompilationResultActionsResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsRepositoriesReleaseConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.releaseConfigs;
      final arg_request = buildReleaseConfig();
      final arg_parent = 'foo';
      final arg_releaseConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ReleaseConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReleaseConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['releaseConfigId']!.first,
            unittest.equals(arg_releaseConfigId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildReleaseConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        releaseConfigId: arg_releaseConfigId,
        $fields: arg_$fields,
      );
      checkReleaseConfig(response as api.ReleaseConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.releaseConfigs;
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
      final res =
          api.DataformApi(mock).projects.locations.repositories.releaseConfigs;
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
          final resp = convert.json.encode(buildReleaseConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReleaseConfig(response as api.ReleaseConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.releaseConfigs;
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
          final resp = convert.json.encode(buildListReleaseConfigsResponse());
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
      checkListReleaseConfigsResponse(
        response as api.ListReleaseConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.releaseConfigs;
      final arg_request = buildReleaseConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ReleaseConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReleaseConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildReleaseConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkReleaseConfig(response as api.ReleaseConfig);
    });
  });

  unittest.group('resource-ProjectsLocationsRepositoriesWorkflowConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workflowConfigs;
      final arg_request = buildWorkflowConfig();
      final arg_parent = 'foo';
      final arg_workflowConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkflowConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkflowConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['workflowConfigId']!.first,
            unittest.equals(arg_workflowConfigId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWorkflowConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        workflowConfigId: arg_workflowConfigId,
        $fields: arg_$fields,
      );
      checkWorkflowConfig(response as api.WorkflowConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workflowConfigs;
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
      final res =
          api.DataformApi(mock).projects.locations.repositories.workflowConfigs;
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
          final resp = convert.json.encode(buildWorkflowConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkflowConfig(response as api.WorkflowConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workflowConfigs;
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
          final resp = convert.json.encode(buildListWorkflowConfigsResponse());
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
      checkListWorkflowConfigsResponse(
        response as api.ListWorkflowConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workflowConfigs;
      final arg_request = buildWorkflowConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkflowConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkflowConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWorkflowConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkWorkflowConfig(response as api.WorkflowConfig);
    });
  });

  unittest.group('resource-ProjectsLocationsRepositoriesWorkflowInvocationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(
            mock,
          ).projects.locations.repositories.workflowInvocations;
      final arg_request = buildCancelWorkflowInvocationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelWorkflowInvocationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelWorkflowInvocationRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            buildCancelWorkflowInvocationResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkCancelWorkflowInvocationResponse(
        response as api.CancelWorkflowInvocationResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(
            mock,
          ).projects.locations.repositories.workflowInvocations;
      final arg_request = buildWorkflowInvocation();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkflowInvocation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkflowInvocation(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
          final resp = convert.json.encode(buildWorkflowInvocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkWorkflowInvocation(response as api.WorkflowInvocation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(
            mock,
          ).projects.locations.repositories.workflowInvocations;
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
      final res =
          api.DataformApi(
            mock,
          ).projects.locations.repositories.workflowInvocations;
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
          final resp = convert.json.encode(buildWorkflowInvocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkflowInvocation(response as api.WorkflowInvocation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(
            mock,
          ).projects.locations.repositories.workflowInvocations;
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
            buildListWorkflowInvocationsResponse(),
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
      checkListWorkflowInvocationsResponse(
        response as api.ListWorkflowInvocationsResponse,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(
            mock,
          ).projects.locations.repositories.workflowInvocations;
      final arg_name = 'foo';
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
            buildQueryWorkflowInvocationActionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkQueryWorkflowInvocationActionsResponse(
        response as api.QueryWorkflowInvocationActionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsRepositoriesWorkspacesResource', () {
    unittest.test('method--commit', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildCommitWorkspaceChangesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CommitWorkspaceChangesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCommitWorkspaceChangesRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            buildCommitWorkspaceChangesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.commit(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkCommitWorkspaceChangesResponse(
        response as api.CommitWorkspaceChangesResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildWorkspace();
      final arg_parent = 'foo';
      final arg_workspaceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Workspace.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkspace(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['workspaceId']!.first,
            unittest.equals(arg_workspaceId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWorkspace());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        workspaceId: arg_workspaceId,
        $fields: arg_$fields,
      );
      checkWorkspace(response as api.Workspace);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
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

    unittest.test('method--fetchFileDiff', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_workspace = 'foo';
      final arg_path = 'foo';
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
          unittest.expect(queryMap['path']!.first, unittest.equals(arg_path));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFetchFileDiffResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchFileDiff(
        arg_workspace,
        path: arg_path,
        $fields: arg_$fields,
      );
      checkFetchFileDiffResponse(response as api.FetchFileDiffResponse);
    });

    unittest.test('method--fetchFileGitStatuses', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
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
          final resp = convert.json.encode(buildFetchFileGitStatusesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchFileGitStatuses(
        arg_name,
        $fields: arg_$fields,
      );
      checkFetchFileGitStatusesResponse(
        response as api.FetchFileGitStatusesResponse,
      );
    });

    unittest.test('method--fetchGitAheadBehind', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_name = 'foo';
      final arg_remoteBranch = 'foo';
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
            queryMap['remoteBranch']!.first,
            unittest.equals(arg_remoteBranch),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFetchGitAheadBehindResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchGitAheadBehind(
        arg_name,
        remoteBranch: arg_remoteBranch,
        $fields: arg_$fields,
      );
      checkFetchGitAheadBehindResponse(
        response as api.FetchGitAheadBehindResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
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
          final resp = convert.json.encode(buildWorkspace());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkspace(response as api.Workspace);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--installNpmPackages', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildInstallNpmPackagesRequest();
      final arg_workspace = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InstallNpmPackagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInstallNpmPackagesRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
          final resp = convert.json.encode(buildInstallNpmPackagesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.installNpmPackages(
        arg_request,
        arg_workspace,
        $fields: arg_$fields,
      );
      checkInstallNpmPackagesResponse(
        response as api.InstallNpmPackagesResponse,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
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
          final resp = convert.json.encode(buildListWorkspacesResponse());
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
      checkListWorkspacesResponse(response as api.ListWorkspacesResponse);
    });

    unittest.test('method--makeDirectory', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildMakeDirectoryRequest();
      final arg_workspace = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MakeDirectoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMakeDirectoryRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
          final resp = convert.json.encode(buildMakeDirectoryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.makeDirectory(
        arg_request,
        arg_workspace,
        $fields: arg_$fields,
      );
      checkMakeDirectoryResponse(response as api.MakeDirectoryResponse);
    });

    unittest.test('method--moveDirectory', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildMoveDirectoryRequest();
      final arg_workspace = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MoveDirectoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMoveDirectoryRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
          final resp = convert.json.encode(buildMoveDirectoryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.moveDirectory(
        arg_request,
        arg_workspace,
        $fields: arg_$fields,
      );
      checkMoveDirectoryResponse(response as api.MoveDirectoryResponse);
    });

    unittest.test('method--moveFile', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildMoveFileRequest();
      final arg_workspace = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MoveFileRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMoveFileRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
          final resp = convert.json.encode(buildMoveFileResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.moveFile(
        arg_request,
        arg_workspace,
        $fields: arg_$fields,
      );
      checkMoveFileResponse(response as api.MoveFileResponse);
    });

    unittest.test('method--pull', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildPullGitCommitsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PullGitCommitsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPullGitCommitsRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
          final resp = convert.json.encode(buildPullGitCommitsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.pull(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPullGitCommitsResponse(response as api.PullGitCommitsResponse);
    });

    unittest.test('method--push', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildPushGitCommitsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PushGitCommitsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPushGitCommitsRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
          final resp = convert.json.encode(buildPushGitCommitsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.push(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPushGitCommitsResponse(response as api.PushGitCommitsResponse);
    });

    unittest.test('method--queryDirectoryContents', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_workspace = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_path = 'foo';
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
          unittest.expect(queryMap['path']!.first, unittest.equals(arg_path));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildQueryDirectoryContentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryDirectoryContents(
        arg_workspace,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        path: arg_path,
        $fields: arg_$fields,
      );
      checkQueryDirectoryContentsResponse(
        response as api.QueryDirectoryContentsResponse,
      );
    });

    unittest.test('method--readFile', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_workspace = 'foo';
      final arg_path = 'foo';
      final arg_revision = 'foo';
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
          unittest.expect(queryMap['path']!.first, unittest.equals(arg_path));
          unittest.expect(
            queryMap['revision']!.first,
            unittest.equals(arg_revision),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildReadFileResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.readFile(
        arg_workspace,
        path: arg_path,
        revision: arg_revision,
        $fields: arg_$fields,
      );
      checkReadFileResponse(response as api.ReadFileResponse);
    });

    unittest.test('method--removeDirectory', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildRemoveDirectoryRequest();
      final arg_workspace = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RemoveDirectoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRemoveDirectoryRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
          final resp = convert.json.encode(buildRemoveDirectoryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.removeDirectory(
        arg_request,
        arg_workspace,
        $fields: arg_$fields,
      );
      checkRemoveDirectoryResponse(response as api.RemoveDirectoryResponse);
    });

    unittest.test('method--removeFile', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildRemoveFileRequest();
      final arg_workspace = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RemoveFileRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRemoveFileRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
          final resp = convert.json.encode(buildRemoveFileResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.removeFile(
        arg_request,
        arg_workspace,
        $fields: arg_$fields,
      );
      checkRemoveFileResponse(response as api.RemoveFileResponse);
    });

    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildResetWorkspaceChangesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ResetWorkspaceChangesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkResetWorkspaceChangesRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            buildResetWorkspaceChangesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.reset(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkResetWorkspaceChangesResponse(
        response as api.ResetWorkspaceChangesResponse,
      );
    });

    unittest.test('method--searchFiles', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_workspace = 'foo';
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
          final resp = convert.json.encode(buildSearchFilesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchFiles(
        arg_workspace,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkSearchFilesResponse(response as api.SearchFilesResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });

    unittest.test('method--writeFile', () async {
      final mock = HttpServerMock();
      final res =
          api.DataformApi(mock).projects.locations.repositories.workspaces;
      final arg_request = buildWriteFileRequest();
      final arg_workspace = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WriteFileRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWriteFileRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
          final resp = convert.json.encode(buildWriteFileResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.writeFile(
        arg_request,
        arg_workspace,
        $fields: arg_$fields,
      );
      checkWriteFileResponse(response as api.WriteFileResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsTeamFoldersResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.teamFolders;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.teamFolders;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataformApi(mock).projects.locations.teamFolders;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });
}
