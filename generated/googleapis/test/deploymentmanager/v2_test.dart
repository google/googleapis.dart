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

import 'package:googleapis/deploymentmanager/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed0() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed0(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed0();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed0(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
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
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterConfigFile = 0;
api.ConfigFile buildConfigFile() {
  final o = api.ConfigFile();
  buildCounterConfigFile++;
  if (buildCounterConfigFile < 3) {
    o.content = 'foo';
  }
  buildCounterConfigFile--;
  return o;
}

void checkConfigFile(api.ConfigFile o) {
  buildCounterConfigFile++;
  if (buildCounterConfigFile < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigFile--;
}

core.List<api.DeploymentLabelEntry> buildUnnamed3() => [
      buildDeploymentLabelEntry(),
      buildDeploymentLabelEntry(),
    ];

void checkUnnamed3(core.List<api.DeploymentLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentLabelEntry(o[0]);
  checkDeploymentLabelEntry(o[1]);
}

core.int buildCounterDeployment = 0;
api.Deployment buildDeployment() {
  final o = api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.description = 'foo';
    o.fingerprint = 'foo';
    o.id = 'foo';
    o.insertTime = 'foo';
    o.labels = buildUnnamed3();
    o.manifest = 'foo';
    o.name = 'foo';
    o.operation = buildOperation();
    o.selfLink = 'foo';
    o.target = buildTargetConfiguration();
    o.update = buildDeploymentUpdate();
    o.updateTime = 'foo';
  }
  buildCounterDeployment--;
  return o;
}

void checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.insertTime!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.labels!);
    unittest.expect(
      o.manifest!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOperation(o.operation!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkTargetConfiguration(o.target!);
    checkDeploymentUpdate(o.update!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeployment--;
}

core.int buildCounterDeploymentLabelEntry = 0;
api.DeploymentLabelEntry buildDeploymentLabelEntry() {
  final o = api.DeploymentLabelEntry();
  buildCounterDeploymentLabelEntry++;
  if (buildCounterDeploymentLabelEntry < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterDeploymentLabelEntry--;
  return o;
}

void checkDeploymentLabelEntry(api.DeploymentLabelEntry o) {
  buildCounterDeploymentLabelEntry++;
  if (buildCounterDeploymentLabelEntry < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeploymentLabelEntry--;
}

core.List<api.DeploymentUpdateLabelEntry> buildUnnamed4() => [
      buildDeploymentUpdateLabelEntry(),
      buildDeploymentUpdateLabelEntry(),
    ];

void checkUnnamed4(core.List<api.DeploymentUpdateLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentUpdateLabelEntry(o[0]);
  checkDeploymentUpdateLabelEntry(o[1]);
}

core.int buildCounterDeploymentUpdate = 0;
api.DeploymentUpdate buildDeploymentUpdate() {
  final o = api.DeploymentUpdate();
  buildCounterDeploymentUpdate++;
  if (buildCounterDeploymentUpdate < 3) {
    o.description = 'foo';
    o.labels = buildUnnamed4();
    o.manifest = 'foo';
  }
  buildCounterDeploymentUpdate--;
  return o;
}

void checkDeploymentUpdate(api.DeploymentUpdate o) {
  buildCounterDeploymentUpdate++;
  if (buildCounterDeploymentUpdate < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.labels!);
    unittest.expect(
      o.manifest!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeploymentUpdate--;
}

core.int buildCounterDeploymentUpdateLabelEntry = 0;
api.DeploymentUpdateLabelEntry buildDeploymentUpdateLabelEntry() {
  final o = api.DeploymentUpdateLabelEntry();
  buildCounterDeploymentUpdateLabelEntry++;
  if (buildCounterDeploymentUpdateLabelEntry < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterDeploymentUpdateLabelEntry--;
  return o;
}

void checkDeploymentUpdateLabelEntry(api.DeploymentUpdateLabelEntry o) {
  buildCounterDeploymentUpdateLabelEntry++;
  if (buildCounterDeploymentUpdateLabelEntry < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeploymentUpdateLabelEntry--;
}

core.int buildCounterDeploymentsCancelPreviewRequest = 0;
api.DeploymentsCancelPreviewRequest buildDeploymentsCancelPreviewRequest() {
  final o = api.DeploymentsCancelPreviewRequest();
  buildCounterDeploymentsCancelPreviewRequest++;
  if (buildCounterDeploymentsCancelPreviewRequest < 3) {
    o.fingerprint = 'foo';
  }
  buildCounterDeploymentsCancelPreviewRequest--;
  return o;
}

void checkDeploymentsCancelPreviewRequest(
    api.DeploymentsCancelPreviewRequest o) {
  buildCounterDeploymentsCancelPreviewRequest++;
  if (buildCounterDeploymentsCancelPreviewRequest < 3) {
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeploymentsCancelPreviewRequest--;
}

core.List<api.Deployment> buildUnnamed5() => [
      buildDeployment(),
      buildDeployment(),
    ];

void checkUnnamed5(core.List<api.Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployment(o[0]);
  checkDeployment(o[1]);
}

core.int buildCounterDeploymentsListResponse = 0;
api.DeploymentsListResponse buildDeploymentsListResponse() {
  final o = api.DeploymentsListResponse();
  buildCounterDeploymentsListResponse++;
  if (buildCounterDeploymentsListResponse < 3) {
    o.deployments = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterDeploymentsListResponse--;
  return o;
}

void checkDeploymentsListResponse(api.DeploymentsListResponse o) {
  buildCounterDeploymentsListResponse++;
  if (buildCounterDeploymentsListResponse < 3) {
    checkUnnamed5(o.deployments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeploymentsListResponse--;
}

core.int buildCounterDeploymentsStopRequest = 0;
api.DeploymentsStopRequest buildDeploymentsStopRequest() {
  final o = api.DeploymentsStopRequest();
  buildCounterDeploymentsStopRequest++;
  if (buildCounterDeploymentsStopRequest < 3) {
    o.fingerprint = 'foo';
  }
  buildCounterDeploymentsStopRequest--;
  return o;
}

void checkDeploymentsStopRequest(api.DeploymentsStopRequest o) {
  buildCounterDeploymentsStopRequest++;
  if (buildCounterDeploymentsStopRequest < 3) {
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeploymentsStopRequest--;
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

core.List<api.Binding> buildUnnamed6() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed6(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterGlobalSetPolicyRequest = 0;
api.GlobalSetPolicyRequest buildGlobalSetPolicyRequest() {
  final o = api.GlobalSetPolicyRequest();
  buildCounterGlobalSetPolicyRequest++;
  if (buildCounterGlobalSetPolicyRequest < 3) {
    o.bindings = buildUnnamed6();
    o.etag = 'foo';
    o.policy = buildPolicy();
  }
  buildCounterGlobalSetPolicyRequest--;
  return o;
}

void checkGlobalSetPolicyRequest(api.GlobalSetPolicyRequest o) {
  buildCounterGlobalSetPolicyRequest++;
  if (buildCounterGlobalSetPolicyRequest < 3) {
    checkUnnamed6(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkPolicy(o.policy!);
  }
  buildCounterGlobalSetPolicyRequest--;
}

core.int buildCounterImportFile = 0;
api.ImportFile buildImportFile() {
  final o = api.ImportFile();
  buildCounterImportFile++;
  if (buildCounterImportFile < 3) {
    o.content = 'foo';
    o.name = 'foo';
  }
  buildCounterImportFile--;
  return o;
}

void checkImportFile(api.ImportFile o) {
  buildCounterImportFile++;
  if (buildCounterImportFile < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterImportFile--;
}

core.List<api.ImportFile> buildUnnamed7() => [
      buildImportFile(),
      buildImportFile(),
    ];

void checkUnnamed7(core.List<api.ImportFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportFile(o[0]);
  checkImportFile(o[1]);
}

core.int buildCounterManifest = 0;
api.Manifest buildManifest() {
  final o = api.Manifest();
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    o.config = buildConfigFile();
    o.expandedConfig = 'foo';
    o.id = 'foo';
    o.imports = buildUnnamed7();
    o.insertTime = 'foo';
    o.layout = 'foo';
    o.manifestSizeBytes = 'foo';
    o.manifestSizeLimitBytes = 'foo';
    o.name = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterManifest--;
  return o;
}

void checkManifest(api.Manifest o) {
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    checkConfigFile(o.config!);
    unittest.expect(
      o.expandedConfig!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.imports!);
    unittest.expect(
      o.insertTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layout!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manifestSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manifestSizeLimitBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterManifest--;
}

core.List<api.Manifest> buildUnnamed8() => [
      buildManifest(),
      buildManifest(),
    ];

void checkUnnamed8(core.List<api.Manifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManifest(o[0]);
  checkManifest(o[1]);
}

core.int buildCounterManifestsListResponse = 0;
api.ManifestsListResponse buildManifestsListResponse() {
  final o = api.ManifestsListResponse();
  buildCounterManifestsListResponse++;
  if (buildCounterManifestsListResponse < 3) {
    o.manifests = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterManifestsListResponse--;
  return o;
}

void checkManifestsListResponse(api.ManifestsListResponse o) {
  buildCounterManifestsListResponse++;
  if (buildCounterManifestsListResponse < 3) {
    checkUnnamed8(o.manifests!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterManifestsListResponse--;
}

core.int buildCounterOperationErrorErrors = 0;
api.OperationErrorErrors buildOperationErrorErrors() {
  final o = api.OperationErrorErrors();
  buildCounterOperationErrorErrors++;
  if (buildCounterOperationErrorErrors < 3) {
    o.code = 'foo';
    o.location = 'foo';
    o.message = 'foo';
  }
  buildCounterOperationErrorErrors--;
  return o;
}

void checkOperationErrorErrors(api.OperationErrorErrors o) {
  buildCounterOperationErrorErrors++;
  if (buildCounterOperationErrorErrors < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationErrorErrors--;
}

core.List<api.OperationErrorErrors> buildUnnamed9() => [
      buildOperationErrorErrors(),
      buildOperationErrorErrors(),
    ];

void checkUnnamed9(core.List<api.OperationErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationErrorErrors(o[0]);
  checkOperationErrorErrors(o[1]);
}

core.int buildCounterOperationError = 0;
api.OperationError buildOperationError() {
  final o = api.OperationError();
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    o.errors = buildUnnamed9();
  }
  buildCounterOperationError--;
  return o;
}

void checkOperationError(api.OperationError o) {
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    checkUnnamed9(o.errors!);
  }
  buildCounterOperationError--;
}

core.int buildCounterOperationWarningsData = 0;
api.OperationWarningsData buildOperationWarningsData() {
  final o = api.OperationWarningsData();
  buildCounterOperationWarningsData++;
  if (buildCounterOperationWarningsData < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterOperationWarningsData--;
  return o;
}

void checkOperationWarningsData(api.OperationWarningsData o) {
  buildCounterOperationWarningsData++;
  if (buildCounterOperationWarningsData < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationWarningsData--;
}

core.List<api.OperationWarningsData> buildUnnamed10() => [
      buildOperationWarningsData(),
      buildOperationWarningsData(),
    ];

void checkUnnamed10(core.List<api.OperationWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationWarningsData(o[0]);
  checkOperationWarningsData(o[1]);
}

core.int buildCounterOperationWarnings = 0;
api.OperationWarnings buildOperationWarnings() {
  final o = api.OperationWarnings();
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    o.code = 'foo';
    o.data = buildUnnamed10();
    o.message = 'foo';
  }
  buildCounterOperationWarnings--;
  return o;
}

void checkOperationWarnings(api.OperationWarnings o) {
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.data!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationWarnings--;
}

core.List<api.OperationWarnings> buildUnnamed11() => [
      buildOperationWarnings(),
      buildOperationWarnings(),
    ];

void checkUnnamed11(core.List<api.OperationWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationWarnings(o[0]);
  checkOperationWarnings(o[1]);
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.clientOperationId = 'foo';
    o.creationTimestamp = 'foo';
    o.description = 'foo';
    o.endTime = 'foo';
    o.error = buildOperationError();
    o.httpErrorMessage = 'foo';
    o.httpErrorStatusCode = 42;
    o.id = 'foo';
    o.insertTime = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.operationGroupId = 'foo';
    o.operationType = 'foo';
    o.progress = 42;
    o.region = 'foo';
    o.selfLink = 'foo';
    o.startTime = 'foo';
    o.status = 'foo';
    o.statusMessage = 'foo';
    o.targetId = 'foo';
    o.targetLink = 'foo';
    o.user = 'foo';
    o.warnings = buildUnnamed11();
    o.zone = 'foo';
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(
      o.clientOperationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkOperationError(o.error!);
    unittest.expect(
      o.httpErrorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.httpErrorStatusCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
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
      o.operationGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progress!,
      unittest.equals(42),
    );
    unittest.expect(
      o.region!,
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
      o.statusMessage!,
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
      o.user!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.warnings!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperation--;
}

core.List<api.Operation> buildUnnamed12() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed12(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterOperationsListResponse = 0;
api.OperationsListResponse buildOperationsListResponse() {
  final o = api.OperationsListResponse();
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed12();
  }
  buildCounterOperationsListResponse--;
  return o;
}

void checkOperationsListResponse(api.OperationsListResponse o) {
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.operations!);
  }
  buildCounterOperationsListResponse--;
}

core.List<api.AuditConfig> buildUnnamed13() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed13(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed14() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed14(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed13();
    o.bindings = buildUnnamed14();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed13(o.auditConfigs!);
    checkUnnamed14(o.bindings!);
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

core.int buildCounterResourceWarningsData = 0;
api.ResourceWarningsData buildResourceWarningsData() {
  final o = api.ResourceWarningsData();
  buildCounterResourceWarningsData++;
  if (buildCounterResourceWarningsData < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterResourceWarningsData--;
  return o;
}

void checkResourceWarningsData(api.ResourceWarningsData o) {
  buildCounterResourceWarningsData++;
  if (buildCounterResourceWarningsData < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceWarningsData--;
}

core.List<api.ResourceWarningsData> buildUnnamed15() => [
      buildResourceWarningsData(),
      buildResourceWarningsData(),
    ];

void checkUnnamed15(core.List<api.ResourceWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceWarningsData(o[0]);
  checkResourceWarningsData(o[1]);
}

core.int buildCounterResourceWarnings = 0;
api.ResourceWarnings buildResourceWarnings() {
  final o = api.ResourceWarnings();
  buildCounterResourceWarnings++;
  if (buildCounterResourceWarnings < 3) {
    o.code = 'foo';
    o.data = buildUnnamed15();
    o.message = 'foo';
  }
  buildCounterResourceWarnings--;
  return o;
}

void checkResourceWarnings(api.ResourceWarnings o) {
  buildCounterResourceWarnings++;
  if (buildCounterResourceWarnings < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.data!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceWarnings--;
}

core.List<api.ResourceWarnings> buildUnnamed16() => [
      buildResourceWarnings(),
      buildResourceWarnings(),
    ];

void checkUnnamed16(core.List<api.ResourceWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceWarnings(o[0]);
  checkResourceWarnings(o[1]);
}

core.int buildCounterResource = 0;
api.Resource buildResource() {
  final o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.accessControl = buildResourceAccessControl();
    o.finalProperties = 'foo';
    o.id = 'foo';
    o.insertTime = 'foo';
    o.manifest = 'foo';
    o.name = 'foo';
    o.properties = 'foo';
    o.type = 'foo';
    o.update = buildResourceUpdate();
    o.updateTime = 'foo';
    o.url = 'foo';
    o.warnings = buildUnnamed16();
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkResourceAccessControl(o.accessControl!);
    unittest.expect(
      o.finalProperties!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.insertTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manifest!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.properties!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkResourceUpdate(o.update!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.warnings!);
  }
  buildCounterResource--;
}

core.int buildCounterResourceAccessControl = 0;
api.ResourceAccessControl buildResourceAccessControl() {
  final o = api.ResourceAccessControl();
  buildCounterResourceAccessControl++;
  if (buildCounterResourceAccessControl < 3) {
    o.gcpIamPolicy = 'foo';
  }
  buildCounterResourceAccessControl--;
  return o;
}

void checkResourceAccessControl(api.ResourceAccessControl o) {
  buildCounterResourceAccessControl++;
  if (buildCounterResourceAccessControl < 3) {
    unittest.expect(
      o.gcpIamPolicy!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceAccessControl--;
}

core.int buildCounterResourceUpdateErrorErrors = 0;
api.ResourceUpdateErrorErrors buildResourceUpdateErrorErrors() {
  final o = api.ResourceUpdateErrorErrors();
  buildCounterResourceUpdateErrorErrors++;
  if (buildCounterResourceUpdateErrorErrors < 3) {
    o.code = 'foo';
    o.location = 'foo';
    o.message = 'foo';
  }
  buildCounterResourceUpdateErrorErrors--;
  return o;
}

void checkResourceUpdateErrorErrors(api.ResourceUpdateErrorErrors o) {
  buildCounterResourceUpdateErrorErrors++;
  if (buildCounterResourceUpdateErrorErrors < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceUpdateErrorErrors--;
}

core.List<api.ResourceUpdateErrorErrors> buildUnnamed17() => [
      buildResourceUpdateErrorErrors(),
      buildResourceUpdateErrorErrors(),
    ];

void checkUnnamed17(core.List<api.ResourceUpdateErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateErrorErrors(o[0]);
  checkResourceUpdateErrorErrors(o[1]);
}

core.int buildCounterResourceUpdateError = 0;
api.ResourceUpdateError buildResourceUpdateError() {
  final o = api.ResourceUpdateError();
  buildCounterResourceUpdateError++;
  if (buildCounterResourceUpdateError < 3) {
    o.errors = buildUnnamed17();
  }
  buildCounterResourceUpdateError--;
  return o;
}

void checkResourceUpdateError(api.ResourceUpdateError o) {
  buildCounterResourceUpdateError++;
  if (buildCounterResourceUpdateError < 3) {
    checkUnnamed17(o.errors!);
  }
  buildCounterResourceUpdateError--;
}

core.int buildCounterResourceUpdateWarningsData = 0;
api.ResourceUpdateWarningsData buildResourceUpdateWarningsData() {
  final o = api.ResourceUpdateWarningsData();
  buildCounterResourceUpdateWarningsData++;
  if (buildCounterResourceUpdateWarningsData < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterResourceUpdateWarningsData--;
  return o;
}

void checkResourceUpdateWarningsData(api.ResourceUpdateWarningsData o) {
  buildCounterResourceUpdateWarningsData++;
  if (buildCounterResourceUpdateWarningsData < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceUpdateWarningsData--;
}

core.List<api.ResourceUpdateWarningsData> buildUnnamed18() => [
      buildResourceUpdateWarningsData(),
      buildResourceUpdateWarningsData(),
    ];

void checkUnnamed18(core.List<api.ResourceUpdateWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateWarningsData(o[0]);
  checkResourceUpdateWarningsData(o[1]);
}

core.int buildCounterResourceUpdateWarnings = 0;
api.ResourceUpdateWarnings buildResourceUpdateWarnings() {
  final o = api.ResourceUpdateWarnings();
  buildCounterResourceUpdateWarnings++;
  if (buildCounterResourceUpdateWarnings < 3) {
    o.code = 'foo';
    o.data = buildUnnamed18();
    o.message = 'foo';
  }
  buildCounterResourceUpdateWarnings--;
  return o;
}

void checkResourceUpdateWarnings(api.ResourceUpdateWarnings o) {
  buildCounterResourceUpdateWarnings++;
  if (buildCounterResourceUpdateWarnings < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.data!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceUpdateWarnings--;
}

core.List<api.ResourceUpdateWarnings> buildUnnamed19() => [
      buildResourceUpdateWarnings(),
      buildResourceUpdateWarnings(),
    ];

void checkUnnamed19(core.List<api.ResourceUpdateWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateWarnings(o[0]);
  checkResourceUpdateWarnings(o[1]);
}

core.int buildCounterResourceUpdate = 0;
api.ResourceUpdate buildResourceUpdate() {
  final o = api.ResourceUpdate();
  buildCounterResourceUpdate++;
  if (buildCounterResourceUpdate < 3) {
    o.accessControl = buildResourceAccessControl();
    o.error = buildResourceUpdateError();
    o.finalProperties = 'foo';
    o.intent = 'foo';
    o.manifest = 'foo';
    o.properties = 'foo';
    o.state = 'foo';
    o.warnings = buildUnnamed19();
  }
  buildCounterResourceUpdate--;
  return o;
}

void checkResourceUpdate(api.ResourceUpdate o) {
  buildCounterResourceUpdate++;
  if (buildCounterResourceUpdate < 3) {
    checkResourceAccessControl(o.accessControl!);
    checkResourceUpdateError(o.error!);
    unittest.expect(
      o.finalProperties!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.intent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manifest!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.properties!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.warnings!);
  }
  buildCounterResourceUpdate--;
}

core.List<api.Resource> buildUnnamed20() => [
      buildResource(),
      buildResource(),
    ];

void checkUnnamed20(core.List<api.Resource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResource(o[0]);
  checkResource(o[1]);
}

core.int buildCounterResourcesListResponse = 0;
api.ResourcesListResponse buildResourcesListResponse() {
  final o = api.ResourcesListResponse();
  buildCounterResourcesListResponse++;
  if (buildCounterResourcesListResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed20();
  }
  buildCounterResourcesListResponse--;
  return o;
}

void checkResourcesListResponse(api.ResourcesListResponse o) {
  buildCounterResourcesListResponse++;
  if (buildCounterResourcesListResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.resources!);
  }
  buildCounterResourcesListResponse--;
}

core.List<api.ImportFile> buildUnnamed21() => [
      buildImportFile(),
      buildImportFile(),
    ];

void checkUnnamed21(core.List<api.ImportFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportFile(o[0]);
  checkImportFile(o[1]);
}

core.int buildCounterTargetConfiguration = 0;
api.TargetConfiguration buildTargetConfiguration() {
  final o = api.TargetConfiguration();
  buildCounterTargetConfiguration++;
  if (buildCounterTargetConfiguration < 3) {
    o.config = buildConfigFile();
    o.imports = buildUnnamed21();
  }
  buildCounterTargetConfiguration--;
  return o;
}

void checkTargetConfiguration(api.TargetConfiguration o) {
  buildCounterTargetConfiguration++;
  if (buildCounterTargetConfiguration < 3) {
    checkConfigFile(o.config!);
    checkUnnamed21(o.imports!);
  }
  buildCounterTargetConfiguration--;
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

core.int buildCounterTestPermissionsRequest = 0;
api.TestPermissionsRequest buildTestPermissionsRequest() {
  final o = api.TestPermissionsRequest();
  buildCounterTestPermissionsRequest++;
  if (buildCounterTestPermissionsRequest < 3) {
    o.permissions = buildUnnamed22();
  }
  buildCounterTestPermissionsRequest--;
  return o;
}

void checkTestPermissionsRequest(api.TestPermissionsRequest o) {
  buildCounterTestPermissionsRequest++;
  if (buildCounterTestPermissionsRequest < 3) {
    checkUnnamed22(o.permissions!);
  }
  buildCounterTestPermissionsRequest--;
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

core.int buildCounterTestPermissionsResponse = 0;
api.TestPermissionsResponse buildTestPermissionsResponse() {
  final o = api.TestPermissionsResponse();
  buildCounterTestPermissionsResponse++;
  if (buildCounterTestPermissionsResponse < 3) {
    o.permissions = buildUnnamed23();
  }
  buildCounterTestPermissionsResponse--;
  return o;
}

void checkTestPermissionsResponse(api.TestPermissionsResponse o) {
  buildCounterTestPermissionsResponse++;
  if (buildCounterTestPermissionsResponse < 3) {
    checkUnnamed23(o.permissions!);
  }
  buildCounterTestPermissionsResponse--;
}

core.int buildCounterType = 0;
api.Type buildType() {
  final o = api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.id = 'foo';
    o.insertTime = 'foo';
    o.name = 'foo';
    o.operation = buildOperation();
    o.selfLink = 'foo';
  }
  buildCounterType--;
  return o;
}

void checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.insertTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOperation(o.operation!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterType--;
}

core.List<api.Type> buildUnnamed24() => [
      buildType(),
      buildType(),
    ];

void checkUnnamed24(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

core.int buildCounterTypesListResponse = 0;
api.TypesListResponse buildTypesListResponse() {
  final o = api.TypesListResponse();
  buildCounterTypesListResponse++;
  if (buildCounterTypesListResponse < 3) {
    o.nextPageToken = 'foo';
    o.types = buildUnnamed24();
  }
  buildCounterTypesListResponse--;
  return o;
}

void checkTypesListResponse(api.TypesListResponse o) {
  buildCounterTypesListResponse++;
  if (buildCounterTypesListResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.types!);
  }
  buildCounterTypesListResponse--;
}

void main() {
  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od);
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

  unittest.group('obj-schema-ConfigFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ConfigFile.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConfigFile(od);
    });
  });

  unittest.group('obj-schema-Deployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Deployment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeployment(od);
    });
  });

  unittest.group('obj-schema-DeploymentLabelEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentLabelEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentLabelEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeploymentLabelEntry(od);
    });
  });

  unittest.group('obj-schema-DeploymentUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeploymentUpdate(od);
    });
  });

  unittest.group('obj-schema-DeploymentUpdateLabelEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentUpdateLabelEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentUpdateLabelEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeploymentUpdateLabelEntry(od);
    });
  });

  unittest.group('obj-schema-DeploymentsCancelPreviewRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentsCancelPreviewRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentsCancelPreviewRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeploymentsCancelPreviewRequest(od);
    });
  });

  unittest.group('obj-schema-DeploymentsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeploymentsListResponse(od);
    });
  });

  unittest.group('obj-schema-DeploymentsStopRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentsStopRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentsStopRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeploymentsStopRequest(od);
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

  unittest.group('obj-schema-GlobalSetPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlobalSetPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GlobalSetPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGlobalSetPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-ImportFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ImportFile.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImportFile(od);
    });
  });

  unittest.group('obj-schema-Manifest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManifest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Manifest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkManifest(od);
    });
  });

  unittest.group('obj-schema-ManifestsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManifestsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManifestsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManifestsListResponse(od);
    });
  });

  unittest.group('obj-schema-OperationErrorErrors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationErrorErrors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationErrorErrors.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationErrorErrors(od);
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

  unittest.group('obj-schema-OperationWarningsData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationWarningsData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationWarningsData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationWarningsData(od);
    });
  });

  unittest.group('obj-schema-OperationWarnings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationWarnings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationWarnings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationWarnings(od);
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

  unittest.group('obj-schema-OperationsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationsListResponse(od);
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

  unittest.group('obj-schema-ResourceWarningsData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceWarningsData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceWarningsData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceWarningsData(od);
    });
  });

  unittest.group('obj-schema-ResourceWarnings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceWarnings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceWarnings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceWarnings(od);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Resource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResource(od);
    });
  });

  unittest.group('obj-schema-ResourceAccessControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceAccessControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceAccessControl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceAccessControl(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateErrorErrors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUpdateErrorErrors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUpdateErrorErrors.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceUpdateErrorErrors(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUpdateError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUpdateError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceUpdateError(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateWarningsData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUpdateWarningsData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUpdateWarningsData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceUpdateWarningsData(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateWarnings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUpdateWarnings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUpdateWarnings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceUpdateWarnings(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceUpdate(od);
    });
  });

  unittest.group('obj-schema-ResourcesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourcesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourcesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourcesListResponse(od);
    });
  });

  unittest.group('obj-schema-TargetConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetConfiguration(od);
    });
  });

  unittest.group('obj-schema-TestPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestPermissionsResponse(od);
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

  unittest.group('obj-schema-TypesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TypesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTypesListResponse(od);
    });
  });

  unittest.group('resource-DeploymentsResource', () {
    unittest.test('method--cancelPreview', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_request = buildDeploymentsCancelPreviewRequest();
      final arg_project = 'foo';
      final arg_deployment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeploymentsCancelPreviewRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeploymentsCancelPreviewRequest(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        index = path.indexOf('/cancelPreview', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deployment'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/cancelPreview'),
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
      final response = await res.cancelPreview(
          arg_request, arg_project, arg_deployment,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_project = 'foo';
      final arg_deployment = 'foo';
      final arg_deletePolicy = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deployment'),
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
          queryMap['deletePolicy']!.first,
          unittest.equals(arg_deletePolicy),
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
      final response = await res.delete(arg_project, arg_deployment,
          deletePolicy: arg_deletePolicy, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_project = 'foo';
      final arg_deployment = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deployment'),
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
        final resp = convert.json.encode(buildDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_project, arg_deployment, $fields: arg_$fields);
      checkDeployment(response as api.Deployment);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_project = 'foo';
      final arg_resource = 'foo';
      final arg_optionsRequestedPolicyVersion = 42;
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        index = path.indexOf('/getIamPolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_resource'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/getIamPolicy'),
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
          core.int.parse(queryMap['optionsRequestedPolicyVersion']!.first),
          unittest.equals(arg_optionsRequestedPolicyVersion),
        );
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
      final response = await res.getIamPolicy(arg_project, arg_resource,
          optionsRequestedPolicyVersion: arg_optionsRequestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_request = buildDeployment();
      final arg_project = 'foo';
      final arg_createPolicy = 'foo';
      final arg_preview = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeployment(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/global/deployments'),
        );
        pathOffset += 19;

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
          queryMap['createPolicy']!.first,
          unittest.equals(arg_createPolicy),
        );
        unittest.expect(
          queryMap['preview']!.first,
          unittest.equals('$arg_preview'),
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
      final response = await res.insert(arg_request, arg_project,
          createPolicy: arg_createPolicy,
          preview: arg_preview,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_project = 'foo';
      final arg_filter = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/global/deployments'),
        );
        pathOffset += 19;

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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildDeploymentsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project,
          filter: arg_filter,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkDeploymentsListResponse(response as api.DeploymentsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_request = buildDeployment();
      final arg_project = 'foo';
      final arg_deployment = 'foo';
      final arg_createPolicy = 'foo';
      final arg_deletePolicy = 'foo';
      final arg_preview = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeployment(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deployment'),
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
          queryMap['createPolicy']!.first,
          unittest.equals(arg_createPolicy),
        );
        unittest.expect(
          queryMap['deletePolicy']!.first,
          unittest.equals(arg_deletePolicy),
        );
        unittest.expect(
          queryMap['preview']!.first,
          unittest.equals('$arg_preview'),
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
      final response = await res.patch(arg_request, arg_project, arg_deployment,
          createPolicy: arg_createPolicy,
          deletePolicy: arg_deletePolicy,
          preview: arg_preview,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_request = buildGlobalSetPolicyRequest();
      final arg_project = 'foo';
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GlobalSetPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGlobalSetPolicyRequest(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        index = path.indexOf('/setIamPolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_resource'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/setIamPolicy'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(
          arg_request, arg_project, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_request = buildDeploymentsStopRequest();
      final arg_project = 'foo';
      final arg_deployment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeploymentsStopRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeploymentsStopRequest(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        index = path.indexOf('/stop', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deployment'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/stop'),
        );
        pathOffset += 5;

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
      final response = await res.stop(arg_request, arg_project, arg_deployment,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_request = buildTestPermissionsRequest();
      final arg_project = 'foo';
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestPermissionsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        index = path.indexOf('/testIamPermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_resource'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/testIamPermissions'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildTestPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(
          arg_request, arg_project, arg_resource,
          $fields: arg_$fields);
      checkTestPermissionsResponse(response as api.TestPermissionsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_request = buildDeployment();
      final arg_project = 'foo';
      final arg_deployment = 'foo';
      final arg_createPolicy = 'foo';
      final arg_deletePolicy = 'foo';
      final arg_preview = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeployment(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deployment'),
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
          queryMap['createPolicy']!.first,
          unittest.equals(arg_createPolicy),
        );
        unittest.expect(
          queryMap['deletePolicy']!.first,
          unittest.equals(arg_deletePolicy),
        );
        unittest.expect(
          queryMap['preview']!.first,
          unittest.equals('$arg_preview'),
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
      final response = await res.update(
          arg_request, arg_project, arg_deployment,
          createPolicy: arg_createPolicy,
          deletePolicy: arg_deletePolicy,
          preview: arg_preview,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ManifestsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).manifests;
      final arg_project = 'foo';
      final arg_deployment = 'foo';
      final arg_manifest = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        index = path.indexOf('/manifests/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deployment'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/manifests/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_manifest'),
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
        final resp = convert.json.encode(buildManifest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_project, arg_deployment, arg_manifest,
          $fields: arg_$fields);
      checkManifest(response as api.Manifest);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).manifests;
      final arg_project = 'foo';
      final arg_deployment = 'foo';
      final arg_filter = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        index = path.indexOf('/manifests', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deployment'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/manifests'),
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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildManifestsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project, arg_deployment,
          filter: arg_filter,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkManifestsListResponse(response as api.ManifestsListResponse);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).operations;
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/global/operations/'),
        );
        pathOffset += 19;
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
      final res = api.DeploymentManagerApi(mock).operations;
      final arg_project = 'foo';
      final arg_filter = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/operations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/global/operations'),
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
          filter: arg_filter,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkOperationsListResponse(response as api.OperationsListResponse);
    });
  });

  unittest.group('resource-ResourcesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).resources;
      final arg_project = 'foo';
      final arg_deployment = 'foo';
      final arg_resource = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        index = path.indexOf('/resources/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deployment'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/resources/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_resource'),
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
        final resp = convert.json.encode(buildResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_project, arg_deployment, arg_resource,
          $fields: arg_$fields);
      checkResource(response as api.Resource);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).resources;
      final arg_project = 'foo';
      final arg_deployment = 'foo';
      final arg_filter = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/global/deployments/'),
        );
        pathOffset += 20;
        index = path.indexOf('/resources', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deployment'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/resources'),
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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildResourcesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project, arg_deployment,
          filter: arg_filter,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkResourcesListResponse(response as api.ResourcesListResponse);
    });
  });

  unittest.group('resource-TypesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).types;
      final arg_project = 'foo';
      final arg_filter = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('deploymentmanager/v2/projects/'),
        );
        pathOffset += 30;
        index = path.indexOf('/global/types', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/global/types'),
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildTypesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project,
          filter: arg_filter,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkTypesListResponse(response as api.TypesListResponse);
    });
  });
}
