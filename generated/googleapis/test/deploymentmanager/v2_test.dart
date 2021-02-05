// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/deploymentmanager/v2.dart' as api;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed4382() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed4382(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed4382();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed4382(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed4383() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4383(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed4383();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed4383(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed4384() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4384(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed4384();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition as api.Expr);
    checkUnnamed4384(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterConfigFile = 0;
api.ConfigFile buildConfigFile() {
  var o = api.ConfigFile();
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
    unittest.expect(o.content, unittest.equals('foo'));
  }
  buildCounterConfigFile--;
}

core.List<api.DeploymentLabelEntry> buildUnnamed4385() {
  var o = <api.DeploymentLabelEntry>[];
  o.add(buildDeploymentLabelEntry());
  o.add(buildDeploymentLabelEntry());
  return o;
}

void checkUnnamed4385(core.List<api.DeploymentLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentLabelEntry(o[0] as api.DeploymentLabelEntry);
  checkDeploymentLabelEntry(o[1] as api.DeploymentLabelEntry);
}

core.int buildCounterDeployment = 0;
api.Deployment buildDeployment() {
  var o = api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.description = 'foo';
    o.fingerprint = 'foo';
    o.id = 'foo';
    o.insertTime = 'foo';
    o.labels = buildUnnamed4385();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    checkUnnamed4385(o.labels);
    unittest.expect(o.manifest, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkOperation(o.operation as api.Operation);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkTargetConfiguration(o.target as api.TargetConfiguration);
    checkDeploymentUpdate(o.update as api.DeploymentUpdate);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterDeployment--;
}

core.int buildCounterDeploymentLabelEntry = 0;
api.DeploymentLabelEntry buildDeploymentLabelEntry() {
  var o = api.DeploymentLabelEntry();
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
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDeploymentLabelEntry--;
}

core.List<api.DeploymentUpdateLabelEntry> buildUnnamed4386() {
  var o = <api.DeploymentUpdateLabelEntry>[];
  o.add(buildDeploymentUpdateLabelEntry());
  o.add(buildDeploymentUpdateLabelEntry());
  return o;
}

void checkUnnamed4386(core.List<api.DeploymentUpdateLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentUpdateLabelEntry(o[0] as api.DeploymentUpdateLabelEntry);
  checkDeploymentUpdateLabelEntry(o[1] as api.DeploymentUpdateLabelEntry);
}

core.int buildCounterDeploymentUpdate = 0;
api.DeploymentUpdate buildDeploymentUpdate() {
  var o = api.DeploymentUpdate();
  buildCounterDeploymentUpdate++;
  if (buildCounterDeploymentUpdate < 3) {
    o.description = 'foo';
    o.labels = buildUnnamed4386();
    o.manifest = 'foo';
  }
  buildCounterDeploymentUpdate--;
  return o;
}

void checkDeploymentUpdate(api.DeploymentUpdate o) {
  buildCounterDeploymentUpdate++;
  if (buildCounterDeploymentUpdate < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed4386(o.labels);
    unittest.expect(o.manifest, unittest.equals('foo'));
  }
  buildCounterDeploymentUpdate--;
}

core.int buildCounterDeploymentUpdateLabelEntry = 0;
api.DeploymentUpdateLabelEntry buildDeploymentUpdateLabelEntry() {
  var o = api.DeploymentUpdateLabelEntry();
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
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDeploymentUpdateLabelEntry--;
}

core.int buildCounterDeploymentsCancelPreviewRequest = 0;
api.DeploymentsCancelPreviewRequest buildDeploymentsCancelPreviewRequest() {
  var o = api.DeploymentsCancelPreviewRequest();
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
    unittest.expect(o.fingerprint, unittest.equals('foo'));
  }
  buildCounterDeploymentsCancelPreviewRequest--;
}

core.List<api.Deployment> buildUnnamed4387() {
  var o = <api.Deployment>[];
  o.add(buildDeployment());
  o.add(buildDeployment());
  return o;
}

void checkUnnamed4387(core.List<api.Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployment(o[0] as api.Deployment);
  checkDeployment(o[1] as api.Deployment);
}

core.int buildCounterDeploymentsListResponse = 0;
api.DeploymentsListResponse buildDeploymentsListResponse() {
  var o = api.DeploymentsListResponse();
  buildCounterDeploymentsListResponse++;
  if (buildCounterDeploymentsListResponse < 3) {
    o.deployments = buildUnnamed4387();
    o.nextPageToken = 'foo';
  }
  buildCounterDeploymentsListResponse--;
  return o;
}

void checkDeploymentsListResponse(api.DeploymentsListResponse o) {
  buildCounterDeploymentsListResponse++;
  if (buildCounterDeploymentsListResponse < 3) {
    checkUnnamed4387(o.deployments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDeploymentsListResponse--;
}

core.int buildCounterDeploymentsStopRequest = 0;
api.DeploymentsStopRequest buildDeploymentsStopRequest() {
  var o = api.DeploymentsStopRequest();
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
    unittest.expect(o.fingerprint, unittest.equals('foo'));
  }
  buildCounterDeploymentsStopRequest--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  var o = api.Expr();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.List<api.Binding> buildUnnamed4388() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed4388(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterGlobalSetPolicyRequest = 0;
api.GlobalSetPolicyRequest buildGlobalSetPolicyRequest() {
  var o = api.GlobalSetPolicyRequest();
  buildCounterGlobalSetPolicyRequest++;
  if (buildCounterGlobalSetPolicyRequest < 3) {
    o.bindings = buildUnnamed4388();
    o.etag = 'foo';
    o.policy = buildPolicy();
  }
  buildCounterGlobalSetPolicyRequest--;
  return o;
}

void checkGlobalSetPolicyRequest(api.GlobalSetPolicyRequest o) {
  buildCounterGlobalSetPolicyRequest++;
  if (buildCounterGlobalSetPolicyRequest < 3) {
    checkUnnamed4388(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkPolicy(o.policy as api.Policy);
  }
  buildCounterGlobalSetPolicyRequest--;
}

core.int buildCounterImportFile = 0;
api.ImportFile buildImportFile() {
  var o = api.ImportFile();
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
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterImportFile--;
}

core.List<api.ImportFile> buildUnnamed4389() {
  var o = <api.ImportFile>[];
  o.add(buildImportFile());
  o.add(buildImportFile());
  return o;
}

void checkUnnamed4389(core.List<api.ImportFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportFile(o[0] as api.ImportFile);
  checkImportFile(o[1] as api.ImportFile);
}

core.int buildCounterManifest = 0;
api.Manifest buildManifest() {
  var o = api.Manifest();
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    o.config = buildConfigFile();
    o.expandedConfig = 'foo';
    o.id = 'foo';
    o.imports = buildUnnamed4389();
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
    checkConfigFile(o.config as api.ConfigFile);
    unittest.expect(o.expandedConfig, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed4389(o.imports);
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.layout, unittest.equals('foo'));
    unittest.expect(o.manifestSizeBytes, unittest.equals('foo'));
    unittest.expect(o.manifestSizeLimitBytes, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterManifest--;
}

core.List<api.Manifest> buildUnnamed4390() {
  var o = <api.Manifest>[];
  o.add(buildManifest());
  o.add(buildManifest());
  return o;
}

void checkUnnamed4390(core.List<api.Manifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManifest(o[0] as api.Manifest);
  checkManifest(o[1] as api.Manifest);
}

core.int buildCounterManifestsListResponse = 0;
api.ManifestsListResponse buildManifestsListResponse() {
  var o = api.ManifestsListResponse();
  buildCounterManifestsListResponse++;
  if (buildCounterManifestsListResponse < 3) {
    o.manifests = buildUnnamed4390();
    o.nextPageToken = 'foo';
  }
  buildCounterManifestsListResponse--;
  return o;
}

void checkManifestsListResponse(api.ManifestsListResponse o) {
  buildCounterManifestsListResponse++;
  if (buildCounterManifestsListResponse < 3) {
    checkUnnamed4390(o.manifests);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterManifestsListResponse--;
}

core.int buildCounterOperationErrorErrors = 0;
api.OperationErrorErrors buildOperationErrorErrors() {
  var o = api.OperationErrorErrors();
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
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationErrorErrors--;
}

core.List<api.OperationErrorErrors> buildUnnamed4391() {
  var o = <api.OperationErrorErrors>[];
  o.add(buildOperationErrorErrors());
  o.add(buildOperationErrorErrors());
  return o;
}

void checkUnnamed4391(core.List<api.OperationErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationErrorErrors(o[0] as api.OperationErrorErrors);
  checkOperationErrorErrors(o[1] as api.OperationErrorErrors);
}

core.int buildCounterOperationError = 0;
api.OperationError buildOperationError() {
  var o = api.OperationError();
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    o.errors = buildUnnamed4391();
  }
  buildCounterOperationError--;
  return o;
}

void checkOperationError(api.OperationError o) {
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    checkUnnamed4391(o.errors);
  }
  buildCounterOperationError--;
}

core.int buildCounterOperationWarningsData = 0;
api.OperationWarningsData buildOperationWarningsData() {
  var o = api.OperationWarningsData();
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
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOperationWarningsData--;
}

core.List<api.OperationWarningsData> buildUnnamed4392() {
  var o = <api.OperationWarningsData>[];
  o.add(buildOperationWarningsData());
  o.add(buildOperationWarningsData());
  return o;
}

void checkUnnamed4392(core.List<api.OperationWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationWarningsData(o[0] as api.OperationWarningsData);
  checkOperationWarningsData(o[1] as api.OperationWarningsData);
}

core.int buildCounterOperationWarnings = 0;
api.OperationWarnings buildOperationWarnings() {
  var o = api.OperationWarnings();
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    o.code = 'foo';
    o.data = buildUnnamed4392();
    o.message = 'foo';
  }
  buildCounterOperationWarnings--;
  return o;
}

void checkOperationWarnings(api.OperationWarnings o) {
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed4392(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationWarnings--;
}

core.List<api.OperationWarnings> buildUnnamed4393() {
  var o = <api.OperationWarnings>[];
  o.add(buildOperationWarnings());
  o.add(buildOperationWarnings());
  return o;
}

void checkUnnamed4393(core.List<api.OperationWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationWarnings(o[0] as api.OperationWarnings);
  checkOperationWarnings(o[1] as api.OperationWarnings);
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
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
    o.warnings = buildUnnamed4393();
    o.zone = 'foo';
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.clientOperationId, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkOperationError(o.error as api.OperationError);
    unittest.expect(o.httpErrorMessage, unittest.equals('foo'));
    unittest.expect(o.httpErrorStatusCode, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.progress, unittest.equals(42));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.targetId, unittest.equals('foo'));
    unittest.expect(o.targetLink, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
    checkUnnamed4393(o.warnings);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterOperation--;
}

core.List<api.Operation> buildUnnamed4394() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed4394(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterOperationsListResponse = 0;
api.OperationsListResponse buildOperationsListResponse() {
  var o = api.OperationsListResponse();
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed4394();
  }
  buildCounterOperationsListResponse--;
  return o;
}

void checkOperationsListResponse(api.OperationsListResponse o) {
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4394(o.operations);
  }
  buildCounterOperationsListResponse--;
}

core.List<api.AuditConfig> buildUnnamed4395() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed4395(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed4396() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed4396(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed4395();
    o.bindings = buildUnnamed4396();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed4395(o.auditConfigs);
    checkUnnamed4396(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterResourceWarningsData = 0;
api.ResourceWarningsData buildResourceWarningsData() {
  var o = api.ResourceWarningsData();
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
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterResourceWarningsData--;
}

core.List<api.ResourceWarningsData> buildUnnamed4397() {
  var o = <api.ResourceWarningsData>[];
  o.add(buildResourceWarningsData());
  o.add(buildResourceWarningsData());
  return o;
}

void checkUnnamed4397(core.List<api.ResourceWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceWarningsData(o[0] as api.ResourceWarningsData);
  checkResourceWarningsData(o[1] as api.ResourceWarningsData);
}

core.int buildCounterResourceWarnings = 0;
api.ResourceWarnings buildResourceWarnings() {
  var o = api.ResourceWarnings();
  buildCounterResourceWarnings++;
  if (buildCounterResourceWarnings < 3) {
    o.code = 'foo';
    o.data = buildUnnamed4397();
    o.message = 'foo';
  }
  buildCounterResourceWarnings--;
  return o;
}

void checkResourceWarnings(api.ResourceWarnings o) {
  buildCounterResourceWarnings++;
  if (buildCounterResourceWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed4397(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterResourceWarnings--;
}

core.List<api.ResourceWarnings> buildUnnamed4398() {
  var o = <api.ResourceWarnings>[];
  o.add(buildResourceWarnings());
  o.add(buildResourceWarnings());
  return o;
}

void checkUnnamed4398(core.List<api.ResourceWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceWarnings(o[0] as api.ResourceWarnings);
  checkResourceWarnings(o[1] as api.ResourceWarnings);
}

core.int buildCounterResource = 0;
api.Resource buildResource() {
  var o = api.Resource();
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
    o.warnings = buildUnnamed4398();
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkResourceAccessControl(o.accessControl as api.ResourceAccessControl);
    unittest.expect(o.finalProperties, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.manifest, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.properties, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    checkResourceUpdate(o.update as api.ResourceUpdate);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
    checkUnnamed4398(o.warnings);
  }
  buildCounterResource--;
}

core.int buildCounterResourceAccessControl = 0;
api.ResourceAccessControl buildResourceAccessControl() {
  var o = api.ResourceAccessControl();
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
    unittest.expect(o.gcpIamPolicy, unittest.equals('foo'));
  }
  buildCounterResourceAccessControl--;
}

core.int buildCounterResourceUpdateErrorErrors = 0;
api.ResourceUpdateErrorErrors buildResourceUpdateErrorErrors() {
  var o = api.ResourceUpdateErrorErrors();
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
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterResourceUpdateErrorErrors--;
}

core.List<api.ResourceUpdateErrorErrors> buildUnnamed4399() {
  var o = <api.ResourceUpdateErrorErrors>[];
  o.add(buildResourceUpdateErrorErrors());
  o.add(buildResourceUpdateErrorErrors());
  return o;
}

void checkUnnamed4399(core.List<api.ResourceUpdateErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateErrorErrors(o[0] as api.ResourceUpdateErrorErrors);
  checkResourceUpdateErrorErrors(o[1] as api.ResourceUpdateErrorErrors);
}

core.int buildCounterResourceUpdateError = 0;
api.ResourceUpdateError buildResourceUpdateError() {
  var o = api.ResourceUpdateError();
  buildCounterResourceUpdateError++;
  if (buildCounterResourceUpdateError < 3) {
    o.errors = buildUnnamed4399();
  }
  buildCounterResourceUpdateError--;
  return o;
}

void checkResourceUpdateError(api.ResourceUpdateError o) {
  buildCounterResourceUpdateError++;
  if (buildCounterResourceUpdateError < 3) {
    checkUnnamed4399(o.errors);
  }
  buildCounterResourceUpdateError--;
}

core.int buildCounterResourceUpdateWarningsData = 0;
api.ResourceUpdateWarningsData buildResourceUpdateWarningsData() {
  var o = api.ResourceUpdateWarningsData();
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
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterResourceUpdateWarningsData--;
}

core.List<api.ResourceUpdateWarningsData> buildUnnamed4400() {
  var o = <api.ResourceUpdateWarningsData>[];
  o.add(buildResourceUpdateWarningsData());
  o.add(buildResourceUpdateWarningsData());
  return o;
}

void checkUnnamed4400(core.List<api.ResourceUpdateWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateWarningsData(o[0] as api.ResourceUpdateWarningsData);
  checkResourceUpdateWarningsData(o[1] as api.ResourceUpdateWarningsData);
}

core.int buildCounterResourceUpdateWarnings = 0;
api.ResourceUpdateWarnings buildResourceUpdateWarnings() {
  var o = api.ResourceUpdateWarnings();
  buildCounterResourceUpdateWarnings++;
  if (buildCounterResourceUpdateWarnings < 3) {
    o.code = 'foo';
    o.data = buildUnnamed4400();
    o.message = 'foo';
  }
  buildCounterResourceUpdateWarnings--;
  return o;
}

void checkResourceUpdateWarnings(api.ResourceUpdateWarnings o) {
  buildCounterResourceUpdateWarnings++;
  if (buildCounterResourceUpdateWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed4400(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterResourceUpdateWarnings--;
}

core.List<api.ResourceUpdateWarnings> buildUnnamed4401() {
  var o = <api.ResourceUpdateWarnings>[];
  o.add(buildResourceUpdateWarnings());
  o.add(buildResourceUpdateWarnings());
  return o;
}

void checkUnnamed4401(core.List<api.ResourceUpdateWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateWarnings(o[0] as api.ResourceUpdateWarnings);
  checkResourceUpdateWarnings(o[1] as api.ResourceUpdateWarnings);
}

core.int buildCounterResourceUpdate = 0;
api.ResourceUpdate buildResourceUpdate() {
  var o = api.ResourceUpdate();
  buildCounterResourceUpdate++;
  if (buildCounterResourceUpdate < 3) {
    o.accessControl = buildResourceAccessControl();
    o.error = buildResourceUpdateError();
    o.finalProperties = 'foo';
    o.intent = 'foo';
    o.manifest = 'foo';
    o.properties = 'foo';
    o.state = 'foo';
    o.warnings = buildUnnamed4401();
  }
  buildCounterResourceUpdate--;
  return o;
}

void checkResourceUpdate(api.ResourceUpdate o) {
  buildCounterResourceUpdate++;
  if (buildCounterResourceUpdate < 3) {
    checkResourceAccessControl(o.accessControl as api.ResourceAccessControl);
    checkResourceUpdateError(o.error as api.ResourceUpdateError);
    unittest.expect(o.finalProperties, unittest.equals('foo'));
    unittest.expect(o.intent, unittest.equals('foo'));
    unittest.expect(o.manifest, unittest.equals('foo'));
    unittest.expect(o.properties, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed4401(o.warnings);
  }
  buildCounterResourceUpdate--;
}

core.List<api.Resource> buildUnnamed4402() {
  var o = <api.Resource>[];
  o.add(buildResource());
  o.add(buildResource());
  return o;
}

void checkUnnamed4402(core.List<api.Resource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResource(o[0] as api.Resource);
  checkResource(o[1] as api.Resource);
}

core.int buildCounterResourcesListResponse = 0;
api.ResourcesListResponse buildResourcesListResponse() {
  var o = api.ResourcesListResponse();
  buildCounterResourcesListResponse++;
  if (buildCounterResourcesListResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4402();
  }
  buildCounterResourcesListResponse--;
  return o;
}

void checkResourcesListResponse(api.ResourcesListResponse o) {
  buildCounterResourcesListResponse++;
  if (buildCounterResourcesListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4402(o.resources);
  }
  buildCounterResourcesListResponse--;
}

core.List<api.ImportFile> buildUnnamed4403() {
  var o = <api.ImportFile>[];
  o.add(buildImportFile());
  o.add(buildImportFile());
  return o;
}

void checkUnnamed4403(core.List<api.ImportFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportFile(o[0] as api.ImportFile);
  checkImportFile(o[1] as api.ImportFile);
}

core.int buildCounterTargetConfiguration = 0;
api.TargetConfiguration buildTargetConfiguration() {
  var o = api.TargetConfiguration();
  buildCounterTargetConfiguration++;
  if (buildCounterTargetConfiguration < 3) {
    o.config = buildConfigFile();
    o.imports = buildUnnamed4403();
  }
  buildCounterTargetConfiguration--;
  return o;
}

void checkTargetConfiguration(api.TargetConfiguration o) {
  buildCounterTargetConfiguration++;
  if (buildCounterTargetConfiguration < 3) {
    checkConfigFile(o.config as api.ConfigFile);
    checkUnnamed4403(o.imports);
  }
  buildCounterTargetConfiguration--;
}

core.List<core.String> buildUnnamed4404() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4404(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestPermissionsRequest = 0;
api.TestPermissionsRequest buildTestPermissionsRequest() {
  var o = api.TestPermissionsRequest();
  buildCounterTestPermissionsRequest++;
  if (buildCounterTestPermissionsRequest < 3) {
    o.permissions = buildUnnamed4404();
  }
  buildCounterTestPermissionsRequest--;
  return o;
}

void checkTestPermissionsRequest(api.TestPermissionsRequest o) {
  buildCounterTestPermissionsRequest++;
  if (buildCounterTestPermissionsRequest < 3) {
    checkUnnamed4404(o.permissions);
  }
  buildCounterTestPermissionsRequest--;
}

core.List<core.String> buildUnnamed4405() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4405(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestPermissionsResponse = 0;
api.TestPermissionsResponse buildTestPermissionsResponse() {
  var o = api.TestPermissionsResponse();
  buildCounterTestPermissionsResponse++;
  if (buildCounterTestPermissionsResponse < 3) {
    o.permissions = buildUnnamed4405();
  }
  buildCounterTestPermissionsResponse--;
  return o;
}

void checkTestPermissionsResponse(api.TestPermissionsResponse o) {
  buildCounterTestPermissionsResponse++;
  if (buildCounterTestPermissionsResponse < 3) {
    checkUnnamed4405(o.permissions);
  }
  buildCounterTestPermissionsResponse--;
}

core.int buildCounterType = 0;
api.Type buildType() {
  var o = api.Type();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkOperation(o.operation as api.Operation);
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterType--;
}

core.List<api.Type> buildUnnamed4406() {
  var o = <api.Type>[];
  o.add(buildType());
  o.add(buildType());
  return o;
}

void checkUnnamed4406(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0] as api.Type);
  checkType(o[1] as api.Type);
}

core.int buildCounterTypesListResponse = 0;
api.TypesListResponse buildTypesListResponse() {
  var o = api.TypesListResponse();
  buildCounterTypesListResponse++;
  if (buildCounterTypesListResponse < 3) {
    o.nextPageToken = 'foo';
    o.types = buildUnnamed4406();
  }
  buildCounterTypesListResponse--;
  return o;
}

void checkTypesListResponse(api.TypesListResponse o) {
  buildCounterTypesListResponse++;
  if (buildCounterTypesListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4406(o.types);
  }
  buildCounterTypesListResponse--;
}

void main() {
  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditConfig();
      var od = api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od as api.AuditConfig);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditLogConfig();
      var od = api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od as api.AuditLogConfig);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-ConfigFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigFile();
      var od = api.ConfigFile.fromJson(o.toJson());
      checkConfigFile(od as api.ConfigFile);
    });
  });

  unittest.group('obj-schema-Deployment', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeployment();
      var od = api.Deployment.fromJson(o.toJson());
      checkDeployment(od as api.Deployment);
    });
  });

  unittest.group('obj-schema-DeploymentLabelEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeploymentLabelEntry();
      var od = api.DeploymentLabelEntry.fromJson(o.toJson());
      checkDeploymentLabelEntry(od as api.DeploymentLabelEntry);
    });
  });

  unittest.group('obj-schema-DeploymentUpdate', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeploymentUpdate();
      var od = api.DeploymentUpdate.fromJson(o.toJson());
      checkDeploymentUpdate(od as api.DeploymentUpdate);
    });
  });

  unittest.group('obj-schema-DeploymentUpdateLabelEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeploymentUpdateLabelEntry();
      var od = api.DeploymentUpdateLabelEntry.fromJson(o.toJson());
      checkDeploymentUpdateLabelEntry(od as api.DeploymentUpdateLabelEntry);
    });
  });

  unittest.group('obj-schema-DeploymentsCancelPreviewRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeploymentsCancelPreviewRequest();
      var od = api.DeploymentsCancelPreviewRequest.fromJson(o.toJson());
      checkDeploymentsCancelPreviewRequest(
          od as api.DeploymentsCancelPreviewRequest);
    });
  });

  unittest.group('obj-schema-DeploymentsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeploymentsListResponse();
      var od = api.DeploymentsListResponse.fromJson(o.toJson());
      checkDeploymentsListResponse(od as api.DeploymentsListResponse);
    });
  });

  unittest.group('obj-schema-DeploymentsStopRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeploymentsStopRequest();
      var od = api.DeploymentsStopRequest.fromJson(o.toJson());
      checkDeploymentsStopRequest(od as api.DeploymentsStopRequest);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-GlobalSetPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGlobalSetPolicyRequest();
      var od = api.GlobalSetPolicyRequest.fromJson(o.toJson());
      checkGlobalSetPolicyRequest(od as api.GlobalSetPolicyRequest);
    });
  });

  unittest.group('obj-schema-ImportFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildImportFile();
      var od = api.ImportFile.fromJson(o.toJson());
      checkImportFile(od as api.ImportFile);
    });
  });

  unittest.group('obj-schema-Manifest', () {
    unittest.test('to-json--from-json', () {
      var o = buildManifest();
      var od = api.Manifest.fromJson(o.toJson());
      checkManifest(od as api.Manifest);
    });
  });

  unittest.group('obj-schema-ManifestsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildManifestsListResponse();
      var od = api.ManifestsListResponse.fromJson(o.toJson());
      checkManifestsListResponse(od as api.ManifestsListResponse);
    });
  });

  unittest.group('obj-schema-OperationErrorErrors', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationErrorErrors();
      var od = api.OperationErrorErrors.fromJson(o.toJson());
      checkOperationErrorErrors(od as api.OperationErrorErrors);
    });
  });

  unittest.group('obj-schema-OperationError', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationError();
      var od = api.OperationError.fromJson(o.toJson());
      checkOperationError(od as api.OperationError);
    });
  });

  unittest.group('obj-schema-OperationWarningsData', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationWarningsData();
      var od = api.OperationWarningsData.fromJson(o.toJson());
      checkOperationWarningsData(od as api.OperationWarningsData);
    });
  });

  unittest.group('obj-schema-OperationWarnings', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationWarnings();
      var od = api.OperationWarnings.fromJson(o.toJson());
      checkOperationWarnings(od as api.OperationWarnings);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationsListResponse();
      var od = api.OperationsListResponse.fromJson(o.toJson());
      checkOperationsListResponse(od as api.OperationsListResponse);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-ResourceWarningsData', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceWarningsData();
      var od = api.ResourceWarningsData.fromJson(o.toJson());
      checkResourceWarningsData(od as api.ResourceWarningsData);
    });
  });

  unittest.group('obj-schema-ResourceWarnings', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceWarnings();
      var od = api.ResourceWarnings.fromJson(o.toJson());
      checkResourceWarnings(od as api.ResourceWarnings);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () {
      var o = buildResource();
      var od = api.Resource.fromJson(o.toJson());
      checkResource(od as api.Resource);
    });
  });

  unittest.group('obj-schema-ResourceAccessControl', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceAccessControl();
      var od = api.ResourceAccessControl.fromJson(o.toJson());
      checkResourceAccessControl(od as api.ResourceAccessControl);
    });
  });

  unittest.group('obj-schema-ResourceUpdateErrorErrors', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUpdateErrorErrors();
      var od = api.ResourceUpdateErrorErrors.fromJson(o.toJson());
      checkResourceUpdateErrorErrors(od as api.ResourceUpdateErrorErrors);
    });
  });

  unittest.group('obj-schema-ResourceUpdateError', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUpdateError();
      var od = api.ResourceUpdateError.fromJson(o.toJson());
      checkResourceUpdateError(od as api.ResourceUpdateError);
    });
  });

  unittest.group('obj-schema-ResourceUpdateWarningsData', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUpdateWarningsData();
      var od = api.ResourceUpdateWarningsData.fromJson(o.toJson());
      checkResourceUpdateWarningsData(od as api.ResourceUpdateWarningsData);
    });
  });

  unittest.group('obj-schema-ResourceUpdateWarnings', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUpdateWarnings();
      var od = api.ResourceUpdateWarnings.fromJson(o.toJson());
      checkResourceUpdateWarnings(od as api.ResourceUpdateWarnings);
    });
  });

  unittest.group('obj-schema-ResourceUpdate', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUpdate();
      var od = api.ResourceUpdate.fromJson(o.toJson());
      checkResourceUpdate(od as api.ResourceUpdate);
    });
  });

  unittest.group('obj-schema-ResourcesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourcesListResponse();
      var od = api.ResourcesListResponse.fromJson(o.toJson());
      checkResourcesListResponse(od as api.ResourcesListResponse);
    });
  });

  unittest.group('obj-schema-TargetConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetConfiguration();
      var od = api.TargetConfiguration.fromJson(o.toJson());
      checkTargetConfiguration(od as api.TargetConfiguration);
    });
  });

  unittest.group('obj-schema-TestPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestPermissionsRequest();
      var od = api.TestPermissionsRequest.fromJson(o.toJson());
      checkTestPermissionsRequest(od as api.TestPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestPermissionsResponse();
      var od = api.TestPermissionsResponse.fromJson(o.toJson());
      checkTestPermissionsResponse(od as api.TestPermissionsResponse);
    });
  });

  unittest.group('obj-schema-Type', () {
    unittest.test('to-json--from-json', () {
      var o = buildType();
      var od = api.Type.fromJson(o.toJson());
      checkType(od as api.Type);
    });
  });

  unittest.group('obj-schema-TypesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTypesListResponse();
      var od = api.TypesListResponse.fromJson(o.toJson());
      checkTypesListResponse(od as api.TypesListResponse);
    });
  });

  unittest.group('resource-DeploymentsResource', () {
    unittest.test('method--cancelPreview', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).deployments;
      var arg_request = buildDeploymentsCancelPreviewRequest();
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DeploymentsCancelPreviewRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeploymentsCancelPreviewRequest(
            obj as api.DeploymentsCancelPreviewRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        index = path.indexOf('/cancelPreview', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deployment'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/cancelPreview"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancelPreview(arg_request, arg_project, arg_deployment,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).deployments;
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_deletePolicy = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_deployment'));

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
            queryMap["deletePolicy"].first, unittest.equals(arg_deletePolicy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_deployment,
              deletePolicy: arg_deletePolicy, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).deployments;
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_deployment'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_deployment, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeployment(response as api.Deployment);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).deployments;
      var arg_project = 'foo';
      var arg_resource = 'foo';
      var arg_optionsRequestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        index = path.indexOf('/getIamPolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_resource'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/getIamPolicy"));
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
            core.int.parse(queryMap["optionsRequestedPolicyVersion"].first),
            unittest.equals(arg_optionsRequestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_project, arg_resource,
              optionsRequestedPolicyVersion: arg_optionsRequestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).deployments;
      var arg_request = buildDeployment();
      var arg_project = 'foo';
      var arg_createPolicy = 'foo';
      var arg_preview = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeployment(obj as api.Deployment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/global/deployments"));
        pathOffset += 19;

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
            queryMap["createPolicy"].first, unittest.equals(arg_createPolicy));
        unittest.expect(
            queryMap["preview"].first, unittest.equals("$arg_preview"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project,
              createPolicy: arg_createPolicy,
              preview: arg_preview,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).deployments;
      var arg_project = 'foo';
      var arg_filter = 'foo';
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/global/deployments"));
        pathOffset += 19;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeploymentsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeploymentsListResponse(response as api.DeploymentsListResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).deployments;
      var arg_request = buildDeployment();
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_createPolicy = 'foo';
      var arg_deletePolicy = 'foo';
      var arg_preview = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeployment(obj as api.Deployment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_deployment'));

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
            queryMap["createPolicy"].first, unittest.equals(arg_createPolicy));
        unittest.expect(
            queryMap["deletePolicy"].first, unittest.equals(arg_deletePolicy));
        unittest.expect(
            queryMap["preview"].first, unittest.equals("$arg_preview"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_deployment,
              createPolicy: arg_createPolicy,
              deletePolicy: arg_deletePolicy,
              preview: arg_preview,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).deployments;
      var arg_request = buildGlobalSetPolicyRequest();
      var arg_project = 'foo';
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GlobalSetPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGlobalSetPolicyRequest(obj as api.GlobalSetPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        index = path.indexOf('/setIamPolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_resource'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/setIamPolicy"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_project, arg_resource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--stop', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).deployments;
      var arg_request = buildDeploymentsStopRequest();
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DeploymentsStopRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeploymentsStopRequest(obj as api.DeploymentsStopRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        index = path.indexOf('/stop', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deployment'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/stop"));
        pathOffset += 5;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, arg_project, arg_deployment, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).deployments;
      var arg_request = buildTestPermissionsRequest();
      var arg_project = 'foo';
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestPermissionsRequest(obj as api.TestPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        index = path.indexOf('/testIamPermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_resource'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/testIamPermissions"));
        pathOffset += 19;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_project, arg_resource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestPermissionsResponse(response as api.TestPermissionsResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).deployments;
      var arg_request = buildDeployment();
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_createPolicy = 'foo';
      var arg_deletePolicy = 'foo';
      var arg_preview = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeployment(obj as api.Deployment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_deployment'));

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
            queryMap["createPolicy"].first, unittest.equals(arg_createPolicy));
        unittest.expect(
            queryMap["deletePolicy"].first, unittest.equals(arg_deletePolicy));
        unittest.expect(
            queryMap["preview"].first, unittest.equals("$arg_preview"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_deployment,
              createPolicy: arg_createPolicy,
              deletePolicy: arg_deletePolicy,
              preview: arg_preview,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-ManifestsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).manifests;
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_manifest = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        index = path.indexOf('/manifests/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deployment'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/manifests/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_manifest'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildManifest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_deployment, arg_manifest, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManifest(response as api.Manifest);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).manifests;
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_filter = 'foo';
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        index = path.indexOf('/manifests', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deployment'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/manifests"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildManifestsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_deployment,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManifestsListResponse(response as api.ManifestsListResponse);
      })));
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).operations;
      var arg_project = 'foo';
      var arg_operation = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/global/operations/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_operation'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_operation, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).operations;
      var arg_project = 'foo';
      var arg_filter = 'foo';
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/operations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/global/operations"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperationsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperationsListResponse(response as api.OperationsListResponse);
      })));
    });
  });

  unittest.group('resource-ResourcesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).resources;
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        index = path.indexOf('/resources/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deployment'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/resources/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_resource'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_deployment, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResource(response as api.Resource);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).resources;
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_filter = 'foo';
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/deployments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/global/deployments/"));
        pathOffset += 20;
        index = path.indexOf('/resources', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deployment'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/resources"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildResourcesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_deployment,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResourcesListResponse(response as api.ResourcesListResponse);
      })));
    });
  });

  unittest.group('resource-TypesResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DeploymentManagerApi(mock).types;
      var arg_project = 'foo';
      var arg_filter = 'foo';
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("deploymentmanager/v2/projects/"));
        pathOffset += 30;
        index = path.indexOf('/global/types', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/global/types"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTypesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTypesListResponse(response as api.TypesListResponse);
      })));
    });
  });
}
