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

import 'package:googleapis/deploymentmanager/alpha.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAsyncOptions = 0;
api.AsyncOptions buildAsyncOptions() {
  final o = api.AsyncOptions();
  buildCounterAsyncOptions++;
  if (buildCounterAsyncOptions < 3) {
    o.methodMatch = 'foo';
    o.pollingOptions = buildPollingOptions();
  }
  buildCounterAsyncOptions--;
  return o;
}

void checkAsyncOptions(api.AsyncOptions o) {
  buildCounterAsyncOptions++;
  if (buildCounterAsyncOptions < 3) {
    unittest.expect(o.methodMatch!, unittest.equals('foo'));
    checkPollingOptions(o.pollingOptions!);
  }
  buildCounterAsyncOptions--;
}

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
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<api.CollectionOverride> buildUnnamed2() => [
  buildCollectionOverride(),
  buildCollectionOverride(),
];

void checkUnnamed2(core.List<api.CollectionOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionOverride(o[0]);
  checkCollectionOverride(o[1]);
}

core.int buildCounterBaseType = 0;
api.BaseType buildBaseType() {
  final o = api.BaseType();
  buildCounterBaseType++;
  if (buildCounterBaseType < 3) {
    o.collectionOverrides = buildUnnamed2();
    o.credential = buildCredential();
    o.descriptorUrl = 'foo';
    o.options = buildOptions();
  }
  buildCounterBaseType--;
  return o;
}

void checkBaseType(api.BaseType o) {
  buildCounterBaseType++;
  if (buildCounterBaseType < 3) {
    checkUnnamed2(o.collectionOverrides!);
    checkCredential(o.credential!);
    unittest.expect(o.descriptorUrl!, unittest.equals('foo'));
    checkOptions(o.options!);
  }
  buildCounterBaseType--;
}

core.int buildCounterBasicAuth = 0;
api.BasicAuth buildBasicAuth() {
  final o = api.BasicAuth();
  buildCounterBasicAuth++;
  if (buildCounterBasicAuth < 3) {
    o.password = 'foo';
    o.user = 'foo';
  }
  buildCounterBasicAuth--;
  return o;
}

void checkBasicAuth(api.BasicAuth o) {
  buildCounterBasicAuth++;
  if (buildCounterBasicAuth < 3) {
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.user!, unittest.equals('foo'));
  }
  buildCounterBasicAuth--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
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
    o.members = buildUnnamed3();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed3(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterBulkInsertOperationStatus = 0;
api.BulkInsertOperationStatus buildBulkInsertOperationStatus() {
  final o = api.BulkInsertOperationStatus();
  buildCounterBulkInsertOperationStatus++;
  if (buildCounterBulkInsertOperationStatus < 3) {
    o.createdVmCount = 42;
    o.deletedVmCount = 42;
    o.failedToCreateVmCount = 42;
    o.status = 'foo';
    o.targetVmCount = 42;
  }
  buildCounterBulkInsertOperationStatus--;
  return o;
}

void checkBulkInsertOperationStatus(api.BulkInsertOperationStatus o) {
  buildCounterBulkInsertOperationStatus++;
  if (buildCounterBulkInsertOperationStatus < 3) {
    unittest.expect(o.createdVmCount!, unittest.equals(42));
    unittest.expect(o.deletedVmCount!, unittest.equals(42));
    unittest.expect(o.failedToCreateVmCount!, unittest.equals(42));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.targetVmCount!, unittest.equals(42));
  }
  buildCounterBulkInsertOperationStatus--;
}

core.int buildCounterCollectionOverride = 0;
api.CollectionOverride buildCollectionOverride() {
  final o = api.CollectionOverride();
  buildCounterCollectionOverride++;
  if (buildCounterCollectionOverride < 3) {
    o.collection = 'foo';
    o.methodMap = buildMethodMap();
    o.options = buildOptions();
  }
  buildCounterCollectionOverride--;
  return o;
}

void checkCollectionOverride(api.CollectionOverride o) {
  buildCounterCollectionOverride++;
  if (buildCounterCollectionOverride < 3) {
    unittest.expect(o.collection!, unittest.equals('foo'));
    checkMethodMap(o.methodMap!);
    checkOptions(o.options!);
  }
  buildCounterCollectionOverride--;
}

core.List<api.CompositeTypeLabelEntry> buildUnnamed4() => [
  buildCompositeTypeLabelEntry(),
  buildCompositeTypeLabelEntry(),
];

void checkUnnamed4(core.List<api.CompositeTypeLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompositeTypeLabelEntry(o[0]);
  checkCompositeTypeLabelEntry(o[1]);
}

core.int buildCounterCompositeType = 0;
api.CompositeType buildCompositeType() {
  final o = api.CompositeType();
  buildCounterCompositeType++;
  if (buildCounterCompositeType < 3) {
    o.description = 'foo';
    o.id = 'foo';
    o.insertTime = 'foo';
    o.labels = buildUnnamed4();
    o.name = 'foo';
    o.operation = buildOperation();
    o.selfLink = 'foo';
    o.status = 'foo';
    o.templateContents = buildTemplateContents();
  }
  buildCounterCompositeType--;
  return o;
}

void checkCompositeType(api.CompositeType o) {
  buildCounterCompositeType++;
  if (buildCounterCompositeType < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.insertTime!, unittest.equals('foo'));
    checkUnnamed4(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkOperation(o.operation!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    checkTemplateContents(o.templateContents!);
  }
  buildCounterCompositeType--;
}

core.int buildCounterCompositeTypeLabelEntry = 0;
api.CompositeTypeLabelEntry buildCompositeTypeLabelEntry() {
  final o = api.CompositeTypeLabelEntry();
  buildCounterCompositeTypeLabelEntry++;
  if (buildCounterCompositeTypeLabelEntry < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterCompositeTypeLabelEntry--;
  return o;
}

void checkCompositeTypeLabelEntry(api.CompositeTypeLabelEntry o) {
  buildCounterCompositeTypeLabelEntry++;
  if (buildCounterCompositeTypeLabelEntry < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterCompositeTypeLabelEntry--;
}

core.List<api.CompositeType> buildUnnamed5() => [
  buildCompositeType(),
  buildCompositeType(),
];

void checkUnnamed5(core.List<api.CompositeType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompositeType(o[0]);
  checkCompositeType(o[1]);
}

core.int buildCounterCompositeTypesListResponse = 0;
api.CompositeTypesListResponse buildCompositeTypesListResponse() {
  final o = api.CompositeTypesListResponse();
  buildCounterCompositeTypesListResponse++;
  if (buildCounterCompositeTypesListResponse < 3) {
    o.compositeTypes = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterCompositeTypesListResponse--;
  return o;
}

void checkCompositeTypesListResponse(api.CompositeTypesListResponse o) {
  buildCounterCompositeTypesListResponse++;
  if (buildCounterCompositeTypesListResponse < 3) {
    checkUnnamed5(o.compositeTypes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterCompositeTypesListResponse--;
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
    unittest.expect(o.content!, unittest.equals('foo'));
  }
  buildCounterConfigFile--;
}

core.int buildCounterCredential = 0;
api.Credential buildCredential() {
  final o = api.Credential();
  buildCounterCredential++;
  if (buildCounterCredential < 3) {
    o.basicAuth = buildBasicAuth();
    o.serviceAccount = buildServiceAccount();
    o.useProjectDefault = true;
  }
  buildCounterCredential--;
  return o;
}

void checkCredential(api.Credential o) {
  buildCounterCredential++;
  if (buildCounterCredential < 3) {
    checkBasicAuth(o.basicAuth!);
    checkServiceAccount(o.serviceAccount!);
    unittest.expect(o.useProjectDefault!, unittest.isTrue);
  }
  buildCounterCredential--;
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDebugInfo = 0;
api.DebugInfo buildDebugInfo() {
  final o = api.DebugInfo();
  buildCounterDebugInfo++;
  if (buildCounterDebugInfo < 3) {
    o.detail = 'foo';
    o.stackEntries = buildUnnamed6();
  }
  buildCounterDebugInfo--;
  return o;
}

void checkDebugInfo(api.DebugInfo o) {
  buildCounterDebugInfo++;
  if (buildCounterDebugInfo < 3) {
    unittest.expect(o.detail!, unittest.equals('foo'));
    checkUnnamed6(o.stackEntries!);
  }
  buildCounterDebugInfo--;
}

core.List<api.DeploymentLabelEntry> buildUnnamed7() => [
  buildDeploymentLabelEntry(),
  buildDeploymentLabelEntry(),
];

void checkUnnamed7(core.List<api.DeploymentLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentLabelEntry(o[0]);
  checkDeploymentLabelEntry(o[1]);
}

core.List<api.DeploymentOutputEntry> buildUnnamed8() => [
  buildDeploymentOutputEntry(),
  buildDeploymentOutputEntry(),
];

void checkUnnamed8(core.List<api.DeploymentOutputEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentOutputEntry(o[0]);
  checkDeploymentOutputEntry(o[1]);
}

core.int buildCounterDeployment = 0;
api.Deployment buildDeployment() {
  final o = api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.credential = buildCredential();
    o.description = 'foo';
    o.fingerprint = 'foo';
    o.id = 'foo';
    o.insertTime = 'foo';
    o.labels = buildUnnamed7();
    o.manifest = 'foo';
    o.name = 'foo';
    o.operation = buildOperation();
    o.outputs = buildUnnamed8();
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
    checkCredential(o.credential!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.fingerprint!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.insertTime!, unittest.equals('foo'));
    checkUnnamed7(o.labels!);
    unittest.expect(o.manifest!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkOperation(o.operation!);
    checkUnnamed8(o.outputs!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    checkTargetConfiguration(o.target!);
    checkDeploymentUpdate(o.update!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
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
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterDeploymentLabelEntry--;
}

core.int buildCounterDeploymentOutputEntry = 0;
api.DeploymentOutputEntry buildDeploymentOutputEntry() {
  final o = api.DeploymentOutputEntry();
  buildCounterDeploymentOutputEntry++;
  if (buildCounterDeploymentOutputEntry < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterDeploymentOutputEntry--;
  return o;
}

void checkDeploymentOutputEntry(api.DeploymentOutputEntry o) {
  buildCounterDeploymentOutputEntry++;
  if (buildCounterDeploymentOutputEntry < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterDeploymentOutputEntry--;
}

core.List<api.DeploymentUpdateLabelEntry> buildUnnamed9() => [
  buildDeploymentUpdateLabelEntry(),
  buildDeploymentUpdateLabelEntry(),
];

void checkUnnamed9(core.List<api.DeploymentUpdateLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentUpdateLabelEntry(o[0]);
  checkDeploymentUpdateLabelEntry(o[1]);
}

core.int buildCounterDeploymentUpdate = 0;
api.DeploymentUpdate buildDeploymentUpdate() {
  final o = api.DeploymentUpdate();
  buildCounterDeploymentUpdate++;
  if (buildCounterDeploymentUpdate < 3) {
    o.credential = buildCredential();
    o.description = 'foo';
    o.labels = buildUnnamed9();
    o.manifest = 'foo';
  }
  buildCounterDeploymentUpdate--;
  return o;
}

void checkDeploymentUpdate(api.DeploymentUpdate o) {
  buildCounterDeploymentUpdate++;
  if (buildCounterDeploymentUpdate < 3) {
    checkCredential(o.credential!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed9(o.labels!);
    unittest.expect(o.manifest!, unittest.equals('foo'));
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
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
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
  api.DeploymentsCancelPreviewRequest o,
) {
  buildCounterDeploymentsCancelPreviewRequest++;
  if (buildCounterDeploymentsCancelPreviewRequest < 3) {
    unittest.expect(o.fingerprint!, unittest.equals('foo'));
  }
  buildCounterDeploymentsCancelPreviewRequest--;
}

core.List<api.Deployment> buildUnnamed10() => [
  buildDeployment(),
  buildDeployment(),
];

void checkUnnamed10(core.List<api.Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployment(o[0]);
  checkDeployment(o[1]);
}

core.int buildCounterDeploymentsListResponse = 0;
api.DeploymentsListResponse buildDeploymentsListResponse() {
  final o = api.DeploymentsListResponse();
  buildCounterDeploymentsListResponse++;
  if (buildCounterDeploymentsListResponse < 3) {
    o.deployments = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterDeploymentsListResponse--;
  return o;
}

void checkDeploymentsListResponse(api.DeploymentsListResponse o) {
  buildCounterDeploymentsListResponse++;
  if (buildCounterDeploymentsListResponse < 3) {
    checkUnnamed10(o.deployments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
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
    unittest.expect(o.fingerprint!, unittest.equals('foo'));
  }
  buildCounterDeploymentsStopRequest--;
}

core.int buildCounterDiagnostic = 0;
api.Diagnostic buildDiagnostic() {
  final o = api.Diagnostic();
  buildCounterDiagnostic++;
  if (buildCounterDiagnostic < 3) {
    o.field = 'foo';
    o.level = 'foo';
  }
  buildCounterDiagnostic--;
  return o;
}

void checkDiagnostic(api.Diagnostic o) {
  buildCounterDiagnostic++;
  if (buildCounterDiagnostic < 3) {
    unittest.expect(o.field!, unittest.equals('foo'));
    unittest.expect(o.level!, unittest.equals('foo'));
  }
  buildCounterDiagnostic--;
}

core.Map<core.String, core.String> buildUnnamed11() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed11(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterErrorInfo = 0;
api.ErrorInfo buildErrorInfo() {
  final o = api.ErrorInfo();
  buildCounterErrorInfo++;
  if (buildCounterErrorInfo < 3) {
    o.domain = 'foo';
    o.metadatas = buildUnnamed11();
    o.reason = 'foo';
  }
  buildCounterErrorInfo--;
  return o;
}

void checkErrorInfo(api.ErrorInfo o) {
  buildCounterErrorInfo++;
  if (buildCounterErrorInfo < 3) {
    unittest.expect(o.domain!, unittest.equals('foo'));
    checkUnnamed11(o.metadatas!);
    unittest.expect(o.reason!, unittest.equals('foo'));
  }
  buildCounterErrorInfo--;
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

core.List<api.Binding> buildUnnamed12() => [buildBinding(), buildBinding()];

void checkUnnamed12(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterGlobalSetPolicyRequest = 0;
api.GlobalSetPolicyRequest buildGlobalSetPolicyRequest() {
  final o = api.GlobalSetPolicyRequest();
  buildCounterGlobalSetPolicyRequest++;
  if (buildCounterGlobalSetPolicyRequest < 3) {
    o.bindings = buildUnnamed12();
    o.etag = 'foo';
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterGlobalSetPolicyRequest--;
  return o;
}

void checkGlobalSetPolicyRequest(api.GlobalSetPolicyRequest o) {
  buildCounterGlobalSetPolicyRequest++;
  if (buildCounterGlobalSetPolicyRequest < 3) {
    checkUnnamed12(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkPolicy(o.policy!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGlobalSetPolicyRequest--;
}

core.List<api.HelpLink> buildUnnamed13() => [buildHelpLink(), buildHelpLink()];

void checkUnnamed13(core.List<api.HelpLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHelpLink(o[0]);
  checkHelpLink(o[1]);
}

core.int buildCounterHelp = 0;
api.Help buildHelp() {
  final o = api.Help();
  buildCounterHelp++;
  if (buildCounterHelp < 3) {
    o.links = buildUnnamed13();
  }
  buildCounterHelp--;
  return o;
}

void checkHelp(api.Help o) {
  buildCounterHelp++;
  if (buildCounterHelp < 3) {
    checkUnnamed13(o.links!);
  }
  buildCounterHelp--;
}

core.int buildCounterHelpLink = 0;
api.HelpLink buildHelpLink() {
  final o = api.HelpLink();
  buildCounterHelpLink++;
  if (buildCounterHelpLink < 3) {
    o.description = 'foo';
    o.url = 'foo';
  }
  buildCounterHelpLink--;
  return o;
}

void checkHelpLink(api.HelpLink o) {
  buildCounterHelpLink++;
  if (buildCounterHelpLink < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterHelpLink--;
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
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterImportFile--;
}

core.int buildCounterInputMapping = 0;
api.InputMapping buildInputMapping() {
  final o = api.InputMapping();
  buildCounterInputMapping++;
  if (buildCounterInputMapping < 3) {
    o.fieldName = 'foo';
    o.location = 'foo';
    o.methodMatch = 'foo';
    o.value = 'foo';
  }
  buildCounterInputMapping--;
  return o;
}

void checkInputMapping(api.InputMapping o) {
  buildCounterInputMapping++;
  if (buildCounterInputMapping < 3) {
    unittest.expect(o.fieldName!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.methodMatch!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterInputMapping--;
}

core.Map<core.String, api.BulkInsertOperationStatus> buildUnnamed14() => {
  'x': buildBulkInsertOperationStatus(),
  'y': buildBulkInsertOperationStatus(),
};

void checkUnnamed14(core.Map<core.String, api.BulkInsertOperationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBulkInsertOperationStatus(o['x']!);
  checkBulkInsertOperationStatus(o['y']!);
}

core.int buildCounterInstancesBulkInsertOperationMetadata = 0;
api.InstancesBulkInsertOperationMetadata
buildInstancesBulkInsertOperationMetadata() {
  final o = api.InstancesBulkInsertOperationMetadata();
  buildCounterInstancesBulkInsertOperationMetadata++;
  if (buildCounterInstancesBulkInsertOperationMetadata < 3) {
    o.machineType = 'foo';
    o.perLocationStatus = buildUnnamed14();
  }
  buildCounterInstancesBulkInsertOperationMetadata--;
  return o;
}

void checkInstancesBulkInsertOperationMetadata(
  api.InstancesBulkInsertOperationMetadata o,
) {
  buildCounterInstancesBulkInsertOperationMetadata++;
  if (buildCounterInstancesBulkInsertOperationMetadata < 3) {
    unittest.expect(o.machineType!, unittest.equals('foo'));
    checkUnnamed14(o.perLocationStatus!);
  }
  buildCounterInstancesBulkInsertOperationMetadata--;
}

core.int buildCounterLocalizedMessage = 0;
api.LocalizedMessage buildLocalizedMessage() {
  final o = api.LocalizedMessage();
  buildCounterLocalizedMessage++;
  if (buildCounterLocalizedMessage < 3) {
    o.locale = 'foo';
    o.message = 'foo';
  }
  buildCounterLocalizedMessage--;
  return o;
}

void checkLocalizedMessage(api.LocalizedMessage o) {
  buildCounterLocalizedMessage++;
  if (buildCounterLocalizedMessage < 3) {
    unittest.expect(o.locale!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterLocalizedMessage--;
}

core.List<api.ImportFile> buildUnnamed15() => [
  buildImportFile(),
  buildImportFile(),
];

void checkUnnamed15(core.List<api.ImportFile> o) {
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
    o.imports = buildUnnamed15();
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
    unittest.expect(o.expandedConfig!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed15(o.imports!);
    unittest.expect(o.insertTime!, unittest.equals('foo'));
    unittest.expect(o.layout!, unittest.equals('foo'));
    unittest.expect(o.manifestSizeBytes!, unittest.equals('foo'));
    unittest.expect(o.manifestSizeLimitBytes!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.selfLink!, unittest.equals('foo'));
  }
  buildCounterManifest--;
}

core.List<api.Manifest> buildUnnamed16() => [buildManifest(), buildManifest()];

void checkUnnamed16(core.List<api.Manifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManifest(o[0]);
  checkManifest(o[1]);
}

core.int buildCounterManifestsListResponse = 0;
api.ManifestsListResponse buildManifestsListResponse() {
  final o = api.ManifestsListResponse();
  buildCounterManifestsListResponse++;
  if (buildCounterManifestsListResponse < 3) {
    o.manifests = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterManifestsListResponse--;
  return o;
}

void checkManifestsListResponse(api.ManifestsListResponse o) {
  buildCounterManifestsListResponse++;
  if (buildCounterManifestsListResponse < 3) {
    checkUnnamed16(o.manifests!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterManifestsListResponse--;
}

core.int buildCounterMethodMap = 0;
api.MethodMap buildMethodMap() {
  final o = api.MethodMap();
  buildCounterMethodMap++;
  if (buildCounterMethodMap < 3) {
    o.create = 'foo';
    o.delete = 'foo';
    o.get = 'foo';
    o.setIamPolicy = 'foo';
    o.update = 'foo';
  }
  buildCounterMethodMap--;
  return o;
}

void checkMethodMap(api.MethodMap o) {
  buildCounterMethodMap++;
  if (buildCounterMethodMap < 3) {
    unittest.expect(o.create!, unittest.equals('foo'));
    unittest.expect(o.delete!, unittest.equals('foo'));
    unittest.expect(o.get!, unittest.equals('foo'));
    unittest.expect(o.setIamPolicy!, unittest.equals('foo'));
    unittest.expect(o.update!, unittest.equals('foo'));
  }
  buildCounterMethodMap--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOperationErrorErrorsErrorDetails = 0;
api.OperationErrorErrorsErrorDetails buildOperationErrorErrorsErrorDetails() {
  final o = api.OperationErrorErrorsErrorDetails();
  buildCounterOperationErrorErrorsErrorDetails++;
  if (buildCounterOperationErrorErrorsErrorDetails < 3) {
    o.errorInfo = buildErrorInfo();
    o.help = buildHelp();
    o.localizedMessage = buildLocalizedMessage();
    o.quotaInfo = buildQuotaExceededInfo();
  }
  buildCounterOperationErrorErrorsErrorDetails--;
  return o;
}

void checkOperationErrorErrorsErrorDetails(
  api.OperationErrorErrorsErrorDetails o,
) {
  buildCounterOperationErrorErrorsErrorDetails++;
  if (buildCounterOperationErrorErrorsErrorDetails < 3) {
    checkErrorInfo(o.errorInfo!);
    checkHelp(o.help!);
    checkLocalizedMessage(o.localizedMessage!);
    checkQuotaExceededInfo(o.quotaInfo!);
  }
  buildCounterOperationErrorErrorsErrorDetails--;
}

core.List<api.OperationErrorErrorsErrorDetails> buildUnnamed18() => [
  buildOperationErrorErrorsErrorDetails(),
  buildOperationErrorErrorsErrorDetails(),
];

void checkUnnamed18(core.List<api.OperationErrorErrorsErrorDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationErrorErrorsErrorDetails(o[0]);
  checkOperationErrorErrorsErrorDetails(o[1]);
}

core.int buildCounterOperationErrorErrors = 0;
api.OperationErrorErrors buildOperationErrorErrors() {
  final o = api.OperationErrorErrors();
  buildCounterOperationErrorErrors++;
  if (buildCounterOperationErrorErrors < 3) {
    o.arguments = buildUnnamed17();
    o.code = 'foo';
    o.debugInfo = buildDebugInfo();
    o.errorDetails = buildUnnamed18();
    o.location = 'foo';
    o.message = 'foo';
  }
  buildCounterOperationErrorErrors--;
  return o;
}

void checkOperationErrorErrors(api.OperationErrorErrors o) {
  buildCounterOperationErrorErrors++;
  if (buildCounterOperationErrorErrors < 3) {
    checkUnnamed17(o.arguments!);
    unittest.expect(o.code!, unittest.equals('foo'));
    checkDebugInfo(o.debugInfo!);
    checkUnnamed18(o.errorDetails!);
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterOperationErrorErrors--;
}

core.List<api.OperationErrorErrors> buildUnnamed19() => [
  buildOperationErrorErrors(),
  buildOperationErrorErrors(),
];

void checkUnnamed19(core.List<api.OperationErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationErrorErrors(o[0]);
  checkOperationErrorErrors(o[1]);
}

core.int buildCounterOperationError = 0;
api.OperationError buildOperationError() {
  final o = api.OperationError();
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    o.errors = buildUnnamed19();
  }
  buildCounterOperationError--;
  return o;
}

void checkOperationError(api.OperationError o) {
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    checkUnnamed19(o.errors!);
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
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterOperationWarningsData--;
}

core.List<api.OperationWarningsData> buildUnnamed20() => [
  buildOperationWarningsData(),
  buildOperationWarningsData(),
];

void checkUnnamed20(core.List<api.OperationWarningsData> o) {
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
    o.data = buildUnnamed20();
    o.message = 'foo';
  }
  buildCounterOperationWarnings--;
  return o;
}

void checkOperationWarnings(api.OperationWarnings o) {
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    checkUnnamed20(o.data!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterOperationWarnings--;
}

core.List<api.OperationWarnings> buildUnnamed21() => [
  buildOperationWarnings(),
  buildOperationWarnings(),
];

void checkUnnamed21(core.List<api.OperationWarnings> o) {
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
    o.instancesBulkInsertOperationMetadata =
        buildInstancesBulkInsertOperationMetadata();
    o.kind = 'foo';
    o.name = 'foo';
    o.operationGroupId = 'foo';
    o.operationType = 'foo';
    o.progress = 42;
    o.region = 'foo';
    o.selfLink = 'foo';
    o.selfLinkWithId = 'foo';
    o.setAutoscalerLinkOperationMetadata =
        buildSetAutoscalerLinkOperationMetadata();
    o.setCommonInstanceMetadataOperationMetadata =
        buildSetCommonInstanceMetadataOperationMetadata();
    o.startTime = 'foo';
    o.status = 'foo';
    o.statusMessage = 'foo';
    o.targetId = 'foo';
    o.targetLink = 'foo';
    o.user = 'foo';
    o.warnings = buildUnnamed21();
    o.zone = 'foo';
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.clientOperationId!, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    checkOperationError(o.error!);
    unittest.expect(o.httpErrorMessage!, unittest.equals('foo'));
    unittest.expect(o.httpErrorStatusCode!, unittest.equals(42));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.insertTime!, unittest.equals('foo'));
    checkInstancesBulkInsertOperationMetadata(
      o.instancesBulkInsertOperationMetadata!,
    );
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.operationGroupId!, unittest.equals('foo'));
    unittest.expect(o.operationType!, unittest.equals('foo'));
    unittest.expect(o.progress!, unittest.equals(42));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    unittest.expect(o.selfLinkWithId!, unittest.equals('foo'));
    checkSetAutoscalerLinkOperationMetadata(
      o.setAutoscalerLinkOperationMetadata!,
    );
    checkSetCommonInstanceMetadataOperationMetadata(
      o.setCommonInstanceMetadataOperationMetadata!,
    );
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.statusMessage!, unittest.equals('foo'));
    unittest.expect(o.targetId!, unittest.equals('foo'));
    unittest.expect(o.targetLink!, unittest.equals('foo'));
    unittest.expect(o.user!, unittest.equals('foo'));
    checkUnnamed21(o.warnings!);
    unittest.expect(o.zone!, unittest.equals('foo'));
  }
  buildCounterOperation--;
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

core.int buildCounterOperationsListResponse = 0;
api.OperationsListResponse buildOperationsListResponse() {
  final o = api.OperationsListResponse();
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed22();
  }
  buildCounterOperationsListResponse--;
  return o;
}

void checkOperationsListResponse(api.OperationsListResponse o) {
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed22(o.operations!);
  }
  buildCounterOperationsListResponse--;
}

core.List<api.AsyncOptions> buildUnnamed23() => [
  buildAsyncOptions(),
  buildAsyncOptions(),
];

void checkUnnamed23(core.List<api.AsyncOptions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsyncOptions(o[0]);
  checkAsyncOptions(o[1]);
}

core.List<api.InputMapping> buildUnnamed24() => [
  buildInputMapping(),
  buildInputMapping(),
];

void checkUnnamed24(core.List<api.InputMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInputMapping(o[0]);
  checkInputMapping(o[1]);
}

core.int buildCounterOptions = 0;
api.Options buildOptions() {
  final o = api.Options();
  buildCounterOptions++;
  if (buildCounterOptions < 3) {
    o.asyncOptions = buildUnnamed23();
    o.inputMappings = buildUnnamed24();
    o.nameProperty = 'foo';
    o.validationOptions = buildValidationOptions();
  }
  buildCounterOptions--;
  return o;
}

void checkOptions(api.Options o) {
  buildCounterOptions++;
  if (buildCounterOptions < 3) {
    checkUnnamed23(o.asyncOptions!);
    checkUnnamed24(o.inputMappings!);
    unittest.expect(o.nameProperty!, unittest.equals('foo'));
    checkValidationOptions(o.validationOptions!);
  }
  buildCounterOptions--;
}

core.List<api.AuditConfig> buildUnnamed25() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed25(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed26() => [buildBinding(), buildBinding()];

void checkUnnamed26(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed25();
    o.bindings = buildUnnamed26();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed25(o.auditConfigs!);
    checkUnnamed26(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<api.Diagnostic> buildUnnamed27() => [
  buildDiagnostic(),
  buildDiagnostic(),
];

void checkUnnamed27(core.List<api.Diagnostic> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiagnostic(o[0]);
  checkDiagnostic(o[1]);
}

core.int buildCounterPollingOptions = 0;
api.PollingOptions buildPollingOptions() {
  final o = api.PollingOptions();
  buildCounterPollingOptions++;
  if (buildCounterPollingOptions < 3) {
    o.diagnostics = buildUnnamed27();
    o.failCondition = 'foo';
    o.finishCondition = 'foo';
    o.pollingLink = 'foo';
    o.targetLink = 'foo';
  }
  buildCounterPollingOptions--;
  return o;
}

void checkPollingOptions(api.PollingOptions o) {
  buildCounterPollingOptions++;
  if (buildCounterPollingOptions < 3) {
    checkUnnamed27(o.diagnostics!);
    unittest.expect(o.failCondition!, unittest.equals('foo'));
    unittest.expect(o.finishCondition!, unittest.equals('foo'));
    unittest.expect(o.pollingLink!, unittest.equals('foo'));
    unittest.expect(o.targetLink!, unittest.equals('foo'));
  }
  buildCounterPollingOptions--;
}

core.Map<core.String, core.String> buildUnnamed28() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed28(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterQuotaExceededInfo = 0;
api.QuotaExceededInfo buildQuotaExceededInfo() {
  final o = api.QuotaExceededInfo();
  buildCounterQuotaExceededInfo++;
  if (buildCounterQuotaExceededInfo < 3) {
    o.dimensions = buildUnnamed28();
    o.futureLimit = 42.0;
    o.limit = 42.0;
    o.limitName = 'foo';
    o.metricName = 'foo';
    o.rolloutStatus = 'foo';
  }
  buildCounterQuotaExceededInfo--;
  return o;
}

void checkQuotaExceededInfo(api.QuotaExceededInfo o) {
  buildCounterQuotaExceededInfo++;
  if (buildCounterQuotaExceededInfo < 3) {
    checkUnnamed28(o.dimensions!);
    unittest.expect(o.futureLimit!, unittest.equals(42.0));
    unittest.expect(o.limit!, unittest.equals(42.0));
    unittest.expect(o.limitName!, unittest.equals('foo'));
    unittest.expect(o.metricName!, unittest.equals('foo'));
    unittest.expect(o.rolloutStatus!, unittest.equals('foo'));
  }
  buildCounterQuotaExceededInfo--;
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterResourceWarningsData--;
}

core.List<api.ResourceWarningsData> buildUnnamed30() => [
  buildResourceWarningsData(),
  buildResourceWarningsData(),
];

void checkUnnamed30(core.List<api.ResourceWarningsData> o) {
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
    o.data = buildUnnamed30();
    o.message = 'foo';
  }
  buildCounterResourceWarnings--;
  return o;
}

void checkResourceWarnings(api.ResourceWarnings o) {
  buildCounterResourceWarnings++;
  if (buildCounterResourceWarnings < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    checkUnnamed30(o.data!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterResourceWarnings--;
}

core.List<api.ResourceWarnings> buildUnnamed31() => [
  buildResourceWarnings(),
  buildResourceWarnings(),
];

void checkUnnamed31(core.List<api.ResourceWarnings> o) {
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
    o.lastUsedCredential = buildCredential();
    o.manifest = 'foo';
    o.name = 'foo';
    o.properties = 'foo';
    o.runtimePolicies = buildUnnamed29();
    o.type = 'foo';
    o.update = buildResourceUpdate();
    o.updateTime = 'foo';
    o.url = 'foo';
    o.warnings = buildUnnamed31();
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkResourceAccessControl(o.accessControl!);
    unittest.expect(o.finalProperties!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.insertTime!, unittest.equals('foo'));
    checkCredential(o.lastUsedCredential!);
    unittest.expect(o.manifest!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.properties!, unittest.equals('foo'));
    checkUnnamed29(o.runtimePolicies!);
    unittest.expect(o.type!, unittest.equals('foo'));
    checkResourceUpdate(o.update!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
    checkUnnamed31(o.warnings!);
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
    unittest.expect(o.gcpIamPolicy!, unittest.equals('foo'));
  }
  buildCounterResourceAccessControl--;
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceUpdateErrorErrorsErrorDetails = 0;
api.ResourceUpdateErrorErrorsErrorDetails
buildResourceUpdateErrorErrorsErrorDetails() {
  final o = api.ResourceUpdateErrorErrorsErrorDetails();
  buildCounterResourceUpdateErrorErrorsErrorDetails++;
  if (buildCounterResourceUpdateErrorErrorsErrorDetails < 3) {
    o.errorInfo = buildErrorInfo();
    o.help = buildHelp();
    o.localizedMessage = buildLocalizedMessage();
    o.quotaInfo = buildQuotaExceededInfo();
  }
  buildCounterResourceUpdateErrorErrorsErrorDetails--;
  return o;
}

void checkResourceUpdateErrorErrorsErrorDetails(
  api.ResourceUpdateErrorErrorsErrorDetails o,
) {
  buildCounterResourceUpdateErrorErrorsErrorDetails++;
  if (buildCounterResourceUpdateErrorErrorsErrorDetails < 3) {
    checkErrorInfo(o.errorInfo!);
    checkHelp(o.help!);
    checkLocalizedMessage(o.localizedMessage!);
    checkQuotaExceededInfo(o.quotaInfo!);
  }
  buildCounterResourceUpdateErrorErrorsErrorDetails--;
}

core.List<api.ResourceUpdateErrorErrorsErrorDetails> buildUnnamed33() => [
  buildResourceUpdateErrorErrorsErrorDetails(),
  buildResourceUpdateErrorErrorsErrorDetails(),
];

void checkUnnamed33(core.List<api.ResourceUpdateErrorErrorsErrorDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateErrorErrorsErrorDetails(o[0]);
  checkResourceUpdateErrorErrorsErrorDetails(o[1]);
}

core.int buildCounterResourceUpdateErrorErrors = 0;
api.ResourceUpdateErrorErrors buildResourceUpdateErrorErrors() {
  final o = api.ResourceUpdateErrorErrors();
  buildCounterResourceUpdateErrorErrors++;
  if (buildCounterResourceUpdateErrorErrors < 3) {
    o.arguments = buildUnnamed32();
    o.code = 'foo';
    o.debugInfo = buildDebugInfo();
    o.errorDetails = buildUnnamed33();
    o.location = 'foo';
    o.message = 'foo';
  }
  buildCounterResourceUpdateErrorErrors--;
  return o;
}

void checkResourceUpdateErrorErrors(api.ResourceUpdateErrorErrors o) {
  buildCounterResourceUpdateErrorErrors++;
  if (buildCounterResourceUpdateErrorErrors < 3) {
    checkUnnamed32(o.arguments!);
    unittest.expect(o.code!, unittest.equals('foo'));
    checkDebugInfo(o.debugInfo!);
    checkUnnamed33(o.errorDetails!);
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterResourceUpdateErrorErrors--;
}

core.List<api.ResourceUpdateErrorErrors> buildUnnamed34() => [
  buildResourceUpdateErrorErrors(),
  buildResourceUpdateErrorErrors(),
];

void checkUnnamed34(core.List<api.ResourceUpdateErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateErrorErrors(o[0]);
  checkResourceUpdateErrorErrors(o[1]);
}

core.int buildCounterResourceUpdateError = 0;
api.ResourceUpdateError buildResourceUpdateError() {
  final o = api.ResourceUpdateError();
  buildCounterResourceUpdateError++;
  if (buildCounterResourceUpdateError < 3) {
    o.errors = buildUnnamed34();
  }
  buildCounterResourceUpdateError--;
  return o;
}

void checkResourceUpdateError(api.ResourceUpdateError o) {
  buildCounterResourceUpdateError++;
  if (buildCounterResourceUpdateError < 3) {
    checkUnnamed34(o.errors!);
  }
  buildCounterResourceUpdateError--;
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterResourceUpdateWarningsData--;
}

core.List<api.ResourceUpdateWarningsData> buildUnnamed36() => [
  buildResourceUpdateWarningsData(),
  buildResourceUpdateWarningsData(),
];

void checkUnnamed36(core.List<api.ResourceUpdateWarningsData> o) {
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
    o.data = buildUnnamed36();
    o.message = 'foo';
  }
  buildCounterResourceUpdateWarnings--;
  return o;
}

void checkResourceUpdateWarnings(api.ResourceUpdateWarnings o) {
  buildCounterResourceUpdateWarnings++;
  if (buildCounterResourceUpdateWarnings < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    checkUnnamed36(o.data!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterResourceUpdateWarnings--;
}

core.List<api.ResourceUpdateWarnings> buildUnnamed37() => [
  buildResourceUpdateWarnings(),
  buildResourceUpdateWarnings(),
];

void checkUnnamed37(core.List<api.ResourceUpdateWarnings> o) {
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
    o.credential = buildCredential();
    o.error = buildResourceUpdateError();
    o.finalProperties = 'foo';
    o.intent = 'foo';
    o.manifest = 'foo';
    o.properties = 'foo';
    o.runtimePolicies = buildUnnamed35();
    o.state = 'foo';
    o.warnings = buildUnnamed37();
  }
  buildCounterResourceUpdate--;
  return o;
}

void checkResourceUpdate(api.ResourceUpdate o) {
  buildCounterResourceUpdate++;
  if (buildCounterResourceUpdate < 3) {
    checkResourceAccessControl(o.accessControl!);
    checkCredential(o.credential!);
    checkResourceUpdateError(o.error!);
    unittest.expect(o.finalProperties!, unittest.equals('foo'));
    unittest.expect(o.intent!, unittest.equals('foo'));
    unittest.expect(o.manifest!, unittest.equals('foo'));
    unittest.expect(o.properties!, unittest.equals('foo'));
    checkUnnamed35(o.runtimePolicies!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed37(o.warnings!);
  }
  buildCounterResourceUpdate--;
}

core.List<api.Resource> buildUnnamed38() => [buildResource(), buildResource()];

void checkUnnamed38(core.List<api.Resource> o) {
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
    o.resources = buildUnnamed38();
  }
  buildCounterResourcesListResponse--;
  return o;
}

void checkResourcesListResponse(api.ResourcesListResponse o) {
  buildCounterResourcesListResponse++;
  if (buildCounterResourcesListResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed38(o.resources!);
  }
  buildCounterResourcesListResponse--;
}

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  final o = api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.email = 'foo';
  }
  buildCounterServiceAccount--;
  return o;
}

void checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
  }
  buildCounterServiceAccount--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSetAutoscalerLinkOperationMetadata = 0;
api.SetAutoscalerLinkOperationMetadata
buildSetAutoscalerLinkOperationMetadata() {
  final o = api.SetAutoscalerLinkOperationMetadata();
  buildCounterSetAutoscalerLinkOperationMetadata++;
  if (buildCounterSetAutoscalerLinkOperationMetadata < 3) {
    o.zonalIgmIds = buildUnnamed39();
  }
  buildCounterSetAutoscalerLinkOperationMetadata--;
  return o;
}

void checkSetAutoscalerLinkOperationMetadata(
  api.SetAutoscalerLinkOperationMetadata o,
) {
  buildCounterSetAutoscalerLinkOperationMetadata++;
  if (buildCounterSetAutoscalerLinkOperationMetadata < 3) {
    checkUnnamed39(o.zonalIgmIds!);
  }
  buildCounterSetAutoscalerLinkOperationMetadata--;
}

core.Map<
  core.String,
  api.SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo
>
buildUnnamed40() => {
  'x':
      buildSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo(),
  'y':
      buildSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo(),
};

void checkUnnamed40(
  core.Map<
    core.String,
    api.SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo(
    o['x']!,
  );
  checkSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo(
    o['y']!,
  );
}

core.int buildCounterSetCommonInstanceMetadataOperationMetadata = 0;
api.SetCommonInstanceMetadataOperationMetadata
buildSetCommonInstanceMetadataOperationMetadata() {
  final o = api.SetCommonInstanceMetadataOperationMetadata();
  buildCounterSetCommonInstanceMetadataOperationMetadata++;
  if (buildCounterSetCommonInstanceMetadataOperationMetadata < 3) {
    o.clientOperationId = 'foo';
    o.perLocationOperations = buildUnnamed40();
  }
  buildCounterSetCommonInstanceMetadataOperationMetadata--;
  return o;
}

void checkSetCommonInstanceMetadataOperationMetadata(
  api.SetCommonInstanceMetadataOperationMetadata o,
) {
  buildCounterSetCommonInstanceMetadataOperationMetadata++;
  if (buildCounterSetCommonInstanceMetadataOperationMetadata < 3) {
    unittest.expect(o.clientOperationId!, unittest.equals('foo'));
    checkUnnamed40(o.perLocationOperations!);
  }
  buildCounterSetCommonInstanceMetadataOperationMetadata--;
}

core.int
buildCounterSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo =
    0;
api.SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo
buildSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo() {
  final o =
      api.SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo();
  buildCounterSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo++;
  if (buildCounterSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo <
      3) {
    o.error = buildStatus();
    o.state = 'foo';
  }
  buildCounterSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo--;
  return o;
}

void checkSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo(
  api.SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo o,
) {
  buildCounterSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo++;
  if (buildCounterSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo <
      3) {
    checkStatus(o.error!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo--;
}

core.Map<core.String, core.Object?> buildUnnamed41() => {
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

void checkUnnamed41(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed42() => [
  buildUnnamed41(),
  buildUnnamed41(),
];

void checkUnnamed42(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed41(o[0]);
  checkUnnamed41(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed42();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed42(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<api.ImportFile> buildUnnamed43() => [
  buildImportFile(),
  buildImportFile(),
];

void checkUnnamed43(core.List<api.ImportFile> o) {
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
    o.imports = buildUnnamed43();
  }
  buildCounterTargetConfiguration--;
  return o;
}

void checkTargetConfiguration(api.TargetConfiguration o) {
  buildCounterTargetConfiguration++;
  if (buildCounterTargetConfiguration < 3) {
    checkConfigFile(o.config!);
    checkUnnamed43(o.imports!);
  }
  buildCounterTargetConfiguration--;
}

core.List<api.ImportFile> buildUnnamed44() => [
  buildImportFile(),
  buildImportFile(),
];

void checkUnnamed44(core.List<api.ImportFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportFile(o[0]);
  checkImportFile(o[1]);
}

core.int buildCounterTemplateContents = 0;
api.TemplateContents buildTemplateContents() {
  final o = api.TemplateContents();
  buildCounterTemplateContents++;
  if (buildCounterTemplateContents < 3) {
    o.imports = buildUnnamed44();
    o.interpreter = 'foo';
    o.mainTemplate = 'foo';
    o.schema = 'foo';
    o.template = 'foo';
  }
  buildCounterTemplateContents--;
  return o;
}

void checkTemplateContents(api.TemplateContents o) {
  buildCounterTemplateContents++;
  if (buildCounterTemplateContents < 3) {
    checkUnnamed44(o.imports!);
    unittest.expect(o.interpreter!, unittest.equals('foo'));
    unittest.expect(o.mainTemplate!, unittest.equals('foo'));
    unittest.expect(o.schema!, unittest.equals('foo'));
    unittest.expect(o.template!, unittest.equals('foo'));
  }
  buildCounterTemplateContents--;
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestPermissionsRequest = 0;
api.TestPermissionsRequest buildTestPermissionsRequest() {
  final o = api.TestPermissionsRequest();
  buildCounterTestPermissionsRequest++;
  if (buildCounterTestPermissionsRequest < 3) {
    o.permissions = buildUnnamed45();
  }
  buildCounterTestPermissionsRequest--;
  return o;
}

void checkTestPermissionsRequest(api.TestPermissionsRequest o) {
  buildCounterTestPermissionsRequest++;
  if (buildCounterTestPermissionsRequest < 3) {
    checkUnnamed45(o.permissions!);
  }
  buildCounterTestPermissionsRequest--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestPermissionsResponse = 0;
api.TestPermissionsResponse buildTestPermissionsResponse() {
  final o = api.TestPermissionsResponse();
  buildCounterTestPermissionsResponse++;
  if (buildCounterTestPermissionsResponse < 3) {
    o.permissions = buildUnnamed46();
  }
  buildCounterTestPermissionsResponse--;
  return o;
}

void checkTestPermissionsResponse(api.TestPermissionsResponse o) {
  buildCounterTestPermissionsResponse++;
  if (buildCounterTestPermissionsResponse < 3) {
    checkUnnamed46(o.permissions!);
  }
  buildCounterTestPermissionsResponse--;
}

core.List<api.TypeLabelEntry> buildUnnamed47() => [
  buildTypeLabelEntry(),
  buildTypeLabelEntry(),
];

void checkUnnamed47(core.List<api.TypeLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTypeLabelEntry(o[0]);
  checkTypeLabelEntry(o[1]);
}

core.int buildCounterType = 0;
api.Type buildType() {
  final o = api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.base = buildBaseType();
    o.description = 'foo';
    o.id = 'foo';
    o.insertTime = 'foo';
    o.labels = buildUnnamed47();
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
    checkBaseType(o.base!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.insertTime!, unittest.equals('foo'));
    checkUnnamed47(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkOperation(o.operation!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
  }
  buildCounterType--;
}

core.int buildCounterTypeInfo = 0;
api.TypeInfo buildTypeInfo() {
  final o = api.TypeInfo();
  buildCounterTypeInfo++;
  if (buildCounterTypeInfo < 3) {
    o.description = 'foo';
    o.documentationLink = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.schema = buildTypeInfoSchemaInfo();
    o.selfLink = 'foo';
    o.title = 'foo';
  }
  buildCounterTypeInfo--;
  return o;
}

void checkTypeInfo(api.TypeInfo o) {
  buildCounterTypeInfo++;
  if (buildCounterTypeInfo < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.documentationLink!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkTypeInfoSchemaInfo(o.schema!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterTypeInfo--;
}

core.int buildCounterTypeInfoSchemaInfo = 0;
api.TypeInfoSchemaInfo buildTypeInfoSchemaInfo() {
  final o = api.TypeInfoSchemaInfo();
  buildCounterTypeInfoSchemaInfo++;
  if (buildCounterTypeInfoSchemaInfo < 3) {
    o.input = 'foo';
    o.output = 'foo';
  }
  buildCounterTypeInfoSchemaInfo--;
  return o;
}

void checkTypeInfoSchemaInfo(api.TypeInfoSchemaInfo o) {
  buildCounterTypeInfoSchemaInfo++;
  if (buildCounterTypeInfoSchemaInfo < 3) {
    unittest.expect(o.input!, unittest.equals('foo'));
    unittest.expect(o.output!, unittest.equals('foo'));
  }
  buildCounterTypeInfoSchemaInfo--;
}

core.int buildCounterTypeLabelEntry = 0;
api.TypeLabelEntry buildTypeLabelEntry() {
  final o = api.TypeLabelEntry();
  buildCounterTypeLabelEntry++;
  if (buildCounterTypeLabelEntry < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterTypeLabelEntry--;
  return o;
}

void checkTypeLabelEntry(api.TypeLabelEntry o) {
  buildCounterTypeLabelEntry++;
  if (buildCounterTypeLabelEntry < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterTypeLabelEntry--;
}

core.List<api.CollectionOverride> buildUnnamed48() => [
  buildCollectionOverride(),
  buildCollectionOverride(),
];

void checkUnnamed48(core.List<api.CollectionOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionOverride(o[0]);
  checkCollectionOverride(o[1]);
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TypeProviderLabelEntry> buildUnnamed50() => [
  buildTypeProviderLabelEntry(),
  buildTypeProviderLabelEntry(),
];

void checkUnnamed50(core.List<api.TypeProviderLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTypeProviderLabelEntry(o[0]);
  checkTypeProviderLabelEntry(o[1]);
}

core.int buildCounterTypeProvider = 0;
api.TypeProvider buildTypeProvider() {
  final o = api.TypeProvider();
  buildCounterTypeProvider++;
  if (buildCounterTypeProvider < 3) {
    o.collectionOverrides = buildUnnamed48();
    o.credential = buildCredential();
    o.customCertificateAuthorityRoots = buildUnnamed49();
    o.description = 'foo';
    o.descriptorUrl = 'foo';
    o.id = 'foo';
    o.insertTime = 'foo';
    o.labels = buildUnnamed50();
    o.name = 'foo';
    o.operation = buildOperation();
    o.options = buildOptions();
    o.selfLink = 'foo';
  }
  buildCounterTypeProvider--;
  return o;
}

void checkTypeProvider(api.TypeProvider o) {
  buildCounterTypeProvider++;
  if (buildCounterTypeProvider < 3) {
    checkUnnamed48(o.collectionOverrides!);
    checkCredential(o.credential!);
    checkUnnamed49(o.customCertificateAuthorityRoots!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.descriptorUrl!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.insertTime!, unittest.equals('foo'));
    checkUnnamed50(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkOperation(o.operation!);
    checkOptions(o.options!);
    unittest.expect(o.selfLink!, unittest.equals('foo'));
  }
  buildCounterTypeProvider--;
}

core.int buildCounterTypeProviderLabelEntry = 0;
api.TypeProviderLabelEntry buildTypeProviderLabelEntry() {
  final o = api.TypeProviderLabelEntry();
  buildCounterTypeProviderLabelEntry++;
  if (buildCounterTypeProviderLabelEntry < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterTypeProviderLabelEntry--;
  return o;
}

void checkTypeProviderLabelEntry(api.TypeProviderLabelEntry o) {
  buildCounterTypeProviderLabelEntry++;
  if (buildCounterTypeProviderLabelEntry < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterTypeProviderLabelEntry--;
}

core.List<api.TypeProvider> buildUnnamed51() => [
  buildTypeProvider(),
  buildTypeProvider(),
];

void checkUnnamed51(core.List<api.TypeProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTypeProvider(o[0]);
  checkTypeProvider(o[1]);
}

core.int buildCounterTypeProvidersListResponse = 0;
api.TypeProvidersListResponse buildTypeProvidersListResponse() {
  final o = api.TypeProvidersListResponse();
  buildCounterTypeProvidersListResponse++;
  if (buildCounterTypeProvidersListResponse < 3) {
    o.nextPageToken = 'foo';
    o.typeProviders = buildUnnamed51();
  }
  buildCounterTypeProvidersListResponse--;
  return o;
}

void checkTypeProvidersListResponse(api.TypeProvidersListResponse o) {
  buildCounterTypeProvidersListResponse++;
  if (buildCounterTypeProvidersListResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed51(o.typeProviders!);
  }
  buildCounterTypeProvidersListResponse--;
}

core.List<api.TypeInfo> buildUnnamed52() => [buildTypeInfo(), buildTypeInfo()];

void checkUnnamed52(core.List<api.TypeInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTypeInfo(o[0]);
  checkTypeInfo(o[1]);
}

core.int buildCounterTypeProvidersListTypesResponse = 0;
api.TypeProvidersListTypesResponse buildTypeProvidersListTypesResponse() {
  final o = api.TypeProvidersListTypesResponse();
  buildCounterTypeProvidersListTypesResponse++;
  if (buildCounterTypeProvidersListTypesResponse < 3) {
    o.nextPageToken = 'foo';
    o.types = buildUnnamed52();
  }
  buildCounterTypeProvidersListTypesResponse--;
  return o;
}

void checkTypeProvidersListTypesResponse(api.TypeProvidersListTypesResponse o) {
  buildCounterTypeProvidersListTypesResponse++;
  if (buildCounterTypeProvidersListTypesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed52(o.types!);
  }
  buildCounterTypeProvidersListTypesResponse--;
}

core.List<api.Type> buildUnnamed53() => [buildType(), buildType()];

void checkUnnamed53(core.List<api.Type> o) {
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
    o.types = buildUnnamed53();
  }
  buildCounterTypesListResponse--;
  return o;
}

void checkTypesListResponse(api.TypesListResponse o) {
  buildCounterTypesListResponse++;
  if (buildCounterTypesListResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed53(o.types!);
  }
  buildCounterTypesListResponse--;
}

core.int buildCounterValidationOptions = 0;
api.ValidationOptions buildValidationOptions() {
  final o = api.ValidationOptions();
  buildCounterValidationOptions++;
  if (buildCounterValidationOptions < 3) {
    o.schemaValidation = 'foo';
    o.undeclaredProperties = 'foo';
  }
  buildCounterValidationOptions--;
  return o;
}

void checkValidationOptions(api.ValidationOptions o) {
  buildCounterValidationOptions++;
  if (buildCounterValidationOptions < 3) {
    unittest.expect(o.schemaValidation!, unittest.equals('foo'));
    unittest.expect(o.undeclaredProperties!, unittest.equals('foo'));
  }
  buildCounterValidationOptions--;
}

void main() {
  unittest.group('obj-schema-AsyncOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsyncOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AsyncOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAsyncOptions(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-BaseType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBaseType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BaseType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBaseType(od);
    });
  });

  unittest.group('obj-schema-BasicAuth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicAuth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicAuth.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBasicAuth(od);
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

  unittest.group('obj-schema-BulkInsertOperationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkInsertOperationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkInsertOperationStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkInsertOperationStatus(od);
    });
  });

  unittest.group('obj-schema-CollectionOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollectionOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollectionOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCollectionOverride(od);
    });
  });

  unittest.group('obj-schema-CompositeType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompositeType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompositeType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompositeType(od);
    });
  });

  unittest.group('obj-schema-CompositeTypeLabelEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompositeTypeLabelEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompositeTypeLabelEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompositeTypeLabelEntry(od);
    });
  });

  unittest.group('obj-schema-CompositeTypesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompositeTypesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompositeTypesListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompositeTypesListResponse(od);
    });
  });

  unittest.group('obj-schema-ConfigFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConfigFile(od);
    });
  });

  unittest.group('obj-schema-Credential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Credential.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCredential(od);
    });
  });

  unittest.group('obj-schema-DebugInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDebugInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DebugInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDebugInfo(od);
    });
  });

  unittest.group('obj-schema-Deployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Deployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployment(od);
    });
  });

  unittest.group('obj-schema-DeploymentLabelEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentLabelEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentLabelEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeploymentLabelEntry(od);
    });
  });

  unittest.group('obj-schema-DeploymentOutputEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentOutputEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentOutputEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeploymentOutputEntry(od);
    });
  });

  unittest.group('obj-schema-DeploymentUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentUpdate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeploymentUpdate(od);
    });
  });

  unittest.group('obj-schema-DeploymentUpdateLabelEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentUpdateLabelEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentUpdateLabelEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeploymentUpdateLabelEntry(od);
    });
  });

  unittest.group('obj-schema-DeploymentsCancelPreviewRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentsCancelPreviewRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentsCancelPreviewRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeploymentsCancelPreviewRequest(od);
    });
  });

  unittest.group('obj-schema-DeploymentsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentsListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeploymentsListResponse(od);
    });
  });

  unittest.group('obj-schema-DeploymentsStopRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentsStopRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentsStopRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeploymentsStopRequest(od);
    });
  });

  unittest.group('obj-schema-Diagnostic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiagnostic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Diagnostic.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiagnostic(od);
    });
  });

  unittest.group('obj-schema-ErrorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkErrorInfo(od);
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

  unittest.group('obj-schema-GlobalSetPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlobalSetPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GlobalSetPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGlobalSetPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-Help', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHelp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Help.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHelp(od);
    });
  });

  unittest.group('obj-schema-HelpLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHelpLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HelpLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHelpLink(od);
    });
  });

  unittest.group('obj-schema-ImportFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportFile(od);
    });
  });

  unittest.group('obj-schema-InputMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputMapping.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInputMapping(od);
    });
  });

  unittest.group('obj-schema-InstancesBulkInsertOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesBulkInsertOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesBulkInsertOperationMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstancesBulkInsertOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-LocalizedMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalizedMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalizedMessage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocalizedMessage(od);
    });
  });

  unittest.group('obj-schema-Manifest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManifest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Manifest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManifest(od);
    });
  });

  unittest.group('obj-schema-ManifestsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManifestsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManifestsListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManifestsListResponse(od);
    });
  });

  unittest.group('obj-schema-MethodMap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMethodMap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MethodMap.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMethodMap(od);
    });
  });

  unittest.group('obj-schema-OperationErrorErrorsErrorDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationErrorErrorsErrorDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationErrorErrorsErrorDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperationErrorErrorsErrorDetails(od);
    });
  });

  unittest.group('obj-schema-OperationErrorErrors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationErrorErrors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationErrorErrors.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperationErrorErrors(od);
    });
  });

  unittest.group('obj-schema-OperationError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationError.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperationError(od);
    });
  });

  unittest.group('obj-schema-OperationWarningsData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationWarningsData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationWarningsData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperationWarningsData(od);
    });
  });

  unittest.group('obj-schema-OperationWarnings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationWarnings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationWarnings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperationWarnings(od);
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

  unittest.group('obj-schema-OperationsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationsListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperationsListResponse(od);
    });
  });

  unittest.group('obj-schema-Options', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Options.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOptions(od);
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

  unittest.group('obj-schema-PollingOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPollingOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PollingOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPollingOptions(od);
    });
  });

  unittest.group('obj-schema-QuotaExceededInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuotaExceededInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuotaExceededInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQuotaExceededInfo(od);
    });
  });

  unittest.group('obj-schema-ResourceWarningsData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceWarningsData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceWarningsData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceWarningsData(od);
    });
  });

  unittest.group('obj-schema-ResourceWarnings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceWarnings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceWarnings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceWarnings(od);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Resource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResource(od);
    });
  });

  unittest.group('obj-schema-ResourceAccessControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceAccessControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceAccessControl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceAccessControl(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateErrorErrorsErrorDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUpdateErrorErrorsErrorDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUpdateErrorErrorsErrorDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceUpdateErrorErrorsErrorDetails(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateErrorErrors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUpdateErrorErrors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUpdateErrorErrors.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceUpdateErrorErrors(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUpdateError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUpdateError.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceUpdateError(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateWarningsData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUpdateWarningsData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUpdateWarningsData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceUpdateWarningsData(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateWarnings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUpdateWarnings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUpdateWarnings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceUpdateWarnings(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUpdate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceUpdate(od);
    });
  });

  unittest.group('obj-schema-ResourcesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourcesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourcesListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourcesListResponse(od);
    });
  });

  unittest.group('obj-schema-ServiceAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceAccount(od);
    });
  });

  unittest.group('obj-schema-SetAutoscalerLinkOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetAutoscalerLinkOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetAutoscalerLinkOperationMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetAutoscalerLinkOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-SetCommonInstanceMetadataOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetCommonInstanceMetadataOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetCommonInstanceMetadataOperationMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetCommonInstanceMetadataOperationMetadata(od);
    });
  });

  unittest.group(
    'obj-schema-SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo(
          od,
        );
      });
    },
  );

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

  unittest.group('obj-schema-TargetConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetConfiguration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargetConfiguration(od);
    });
  });

  unittest.group('obj-schema-TemplateContents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTemplateContents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TemplateContents.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTemplateContents(od);
    });
  });

  unittest.group('obj-schema-TestPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-Type', () {
    unittest.test('to-json--from-json', () async {
      final o = buildType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Type.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkType(od);
    });
  });

  unittest.group('obj-schema-TypeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TypeInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTypeInfo(od);
    });
  });

  unittest.group('obj-schema-TypeInfoSchemaInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypeInfoSchemaInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TypeInfoSchemaInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTypeInfoSchemaInfo(od);
    });
  });

  unittest.group('obj-schema-TypeLabelEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypeLabelEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TypeLabelEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTypeLabelEntry(od);
    });
  });

  unittest.group('obj-schema-TypeProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypeProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TypeProvider.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTypeProvider(od);
    });
  });

  unittest.group('obj-schema-TypeProviderLabelEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypeProviderLabelEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TypeProviderLabelEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTypeProviderLabelEntry(od);
    });
  });

  unittest.group('obj-schema-TypeProvidersListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypeProvidersListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TypeProvidersListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTypeProvidersListResponse(od);
    });
  });

  unittest.group('obj-schema-TypeProvidersListTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypeProvidersListTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TypeProvidersListTypesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTypeProvidersListTypesResponse(od);
    });
  });

  unittest.group('obj-schema-TypesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TypesListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTypesListResponse(od);
    });
  });

  unittest.group('obj-schema-ValidationOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidationOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidationOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidationOptions(od);
    });
  });

  unittest.group('resource-CompositeTypesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).compositeTypes;
      final arg_project = 'foo';
      final arg_compositeType = 'foo';
      final arg_header_bypassBillingFilter = true;
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/compositeTypes/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('/global/compositeTypes/'),
          );
          pathOffset += 23;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_compositeType'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
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
        arg_project,
        arg_compositeType,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).compositeTypes;
      final arg_project = 'foo';
      final arg_compositeType = 'foo';
      final arg_header_bypassBillingFilter = true;
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/compositeTypes/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('/global/compositeTypes/'),
          );
          pathOffset += 23;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_compositeType'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCompositeType());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_project,
        arg_compositeType,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkCompositeType(response as api.CompositeType);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).compositeTypes;
      final arg_request = buildCompositeType();
      final arg_project = 'foo';
      final arg_header_bypassBillingFilter = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CompositeType.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCompositeType(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/compositeTypes', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('/global/compositeTypes'),
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
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
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
      final response = await res.insert(
        arg_request,
        arg_project,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).compositeTypes;
      final arg_project = 'foo';
      final arg_filter = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/compositeTypes', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('/global/compositeTypes'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCompositeTypesListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_project,
        filter: arg_filter,
        maxResults: arg_maxResults,
        orderBy: arg_orderBy,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkCompositeTypesListResponse(
        response as api.CompositeTypesListResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).compositeTypes;
      final arg_request = buildCompositeType();
      final arg_project = 'foo';
      final arg_compositeType = 'foo';
      final arg_header_bypassBillingFilter = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CompositeType.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCompositeType(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/compositeTypes/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('/global/compositeTypes/'),
          );
          pathOffset += 23;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_compositeType'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
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
        arg_project,
        arg_compositeType,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).compositeTypes;
      final arg_request = buildCompositeType();
      final arg_project = 'foo';
      final arg_compositeType = 'foo';
      final arg_header_bypassBillingFilter = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CompositeType.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCompositeType(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/compositeTypes/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('/global/compositeTypes/'),
          );
          pathOffset += 23;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_compositeType'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
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
      final response = await res.update(
        arg_request,
        arg_project,
        arg_compositeType,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeploymentsCancelPreviewRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeploymentsCancelPreviewRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          index = path.indexOf('/cancelPreview', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_deployment'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('/cancelPreview'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancelPreview(
        arg_request,
        arg_project,
        arg_deployment,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_project = 'foo';
      final arg_deployment = 'foo';
      final arg_deletePolicy = 'foo';
      final arg_header_bypassBillingFilter = true;
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_deployment'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
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
        arg_project,
        arg_deployment,
        deletePolicy: arg_deletePolicy,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_project = 'foo';
      final arg_deployment = 'foo';
      final arg_header_bypassBillingFilter = true;
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_deployment'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_project,
        arg_deployment,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkDeployment(response as api.Deployment);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_project = 'foo';
      final arg_resource = 'foo';
      final arg_header_bypassBillingFilter = true;
      final arg_optionsRequestedPolicyVersion = 42;
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          index = path.indexOf('/getIamPolicy', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resource'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('/getIamPolicy'),
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
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
          );
          unittest.expect(
            core.int.parse(queryMap['optionsRequestedPolicyVersion']!.first),
            unittest.equals(arg_optionsRequestedPolicyVersion),
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
        arg_project,
        arg_resource,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        optionsRequestedPolicyVersion: arg_optionsRequestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_request = buildDeployment();
      final arg_project = 'foo';
      final arg_createPolicy = 'foo';
      final arg_header_bypassBillingFilter = true;
      final arg_preview = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeployment(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('/global/deployments'),
          );
          pathOffset += 19;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
          );
          unittest.expect(
            queryMap['preview']!.first,
            unittest.equals('$arg_preview'),
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
      final response = await res.insert(
        arg_request,
        arg_project,
        createPolicy: arg_createPolicy,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        preview: arg_preview,
        $fields: arg_$fields,
      );
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('/global/deployments'),
          );
          pathOffset += 19;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDeploymentsListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_project,
        filter: arg_filter,
        maxResults: arg_maxResults,
        orderBy: arg_orderBy,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
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
      final arg_header_bypassBillingFilter = true;
      final arg_preview = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeployment(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_deployment'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
          );
          unittest.expect(
            queryMap['preview']!.first,
            unittest.equals('$arg_preview'),
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
        arg_project,
        arg_deployment,
        createPolicy: arg_createPolicy,
        deletePolicy: arg_deletePolicy,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        preview: arg_preview,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_request = buildGlobalSetPolicyRequest();
      final arg_project = 'foo';
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GlobalSetPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGlobalSetPolicyRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          index = path.indexOf('/setIamPolicy', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resource'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('/setIamPolicy'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_project,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_request = buildDeploymentsStopRequest();
      final arg_project = 'foo';
      final arg_deployment = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeploymentsStopRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeploymentsStopRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          index = path.indexOf('/stop', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_deployment'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 5),
            unittest.equals('/stop'),
          );
          pathOffset += 5;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
        arg_project,
        arg_deployment,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).deployments;
      final arg_request = buildTestPermissionsRequest();
      final arg_project = 'foo';
      final arg_resource = 'foo';
      final arg_header_bypassBillingFilter = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestPermissionsRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          index = path.indexOf('/testIamPermissions', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resource'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('/testIamPermissions'),
          );
          pathOffset += 19;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_project,
        arg_resource,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
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
      final arg_header_bypassBillingFilter = true;
      final arg_preview = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeployment(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_deployment'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
          );
          unittest.expect(
            queryMap['preview']!.first,
            unittest.equals('$arg_preview'),
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
      final response = await res.update(
        arg_request,
        arg_project,
        arg_deployment,
        createPolicy: arg_createPolicy,
        deletePolicy: arg_deletePolicy,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        preview: arg_preview,
        $fields: arg_$fields,
      );
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
      final arg_header_bypassBillingFilter = true;
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          index = path.indexOf('/manifests/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_deployment'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/manifests/'),
          );
          pathOffset += 11;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_manifest'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildManifest());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_project,
        arg_deployment,
        arg_manifest,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          index = path.indexOf('/manifests', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_deployment'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/manifests'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildManifestsListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_project,
        arg_deployment,
        filter: arg_filter,
        maxResults: arg_maxResults,
        orderBy: arg_orderBy,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkManifestsListResponse(response as api.ManifestsListResponse);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).operations;
      final arg_project = 'foo';
      final arg_operation = 'foo';
      final arg_header_bypassBillingFilter = true;
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/operations/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('/global/operations/'),
          );
          pathOffset += 19;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_operation'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
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
      final response = await res.get(
        arg_project,
        arg_operation,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/operations', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('/global/operations'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperationsListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_project,
        filter: arg_filter,
        maxResults: arg_maxResults,
        orderBy: arg_orderBy,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
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
      final arg_header_bypassBillingFilter = true;
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          index = path.indexOf('/resources/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_deployment'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/resources/'),
          );
          pathOffset += 11;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resource'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildResource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_project,
        arg_deployment,
        arg_resource,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/deployments/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('/global/deployments/'),
          );
          pathOffset += 20;
          index = path.indexOf('/resources', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_deployment'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/resources'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildResourcesListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_project,
        arg_deployment,
        filter: arg_filter,
        maxResults: arg_maxResults,
        orderBy: arg_orderBy,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkResourcesListResponse(response as api.ResourcesListResponse);
    });
  });

  unittest.group('resource-TypeProvidersResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).typeProviders;
      final arg_project = 'foo';
      final arg_typeProvider = 'foo';
      final arg_header_bypassBillingFilter = true;
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/typeProviders/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('/global/typeProviders/'),
          );
          pathOffset += 22;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_typeProvider'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
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
        arg_project,
        arg_typeProvider,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).typeProviders;
      final arg_project = 'foo';
      final arg_typeProvider = 'foo';
      final arg_header_bypassBillingFilter = true;
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/typeProviders/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('/global/typeProviders/'),
          );
          pathOffset += 22;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_typeProvider'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTypeProvider());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_project,
        arg_typeProvider,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkTypeProvider(response as api.TypeProvider);
    });

    unittest.test('method--getType', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).typeProviders;
      final arg_project = 'foo';
      final arg_typeProvider = 'foo';
      final arg_type = 'foo';
      final arg_header_bypassBillingFilter = true;
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/typeProviders/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('/global/typeProviders/'),
          );
          pathOffset += 22;
          index = path.indexOf('/types/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_typeProvider'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('/types/'),
          );
          pathOffset += 7;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_type'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTypeInfo());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getType(
        arg_project,
        arg_typeProvider,
        arg_type,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkTypeInfo(response as api.TypeInfo);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).typeProviders;
      final arg_request = buildTypeProvider();
      final arg_project = 'foo';
      final arg_header_bypassBillingFilter = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TypeProvider.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTypeProvider(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/typeProviders', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 21),
            unittest.equals('/global/typeProviders'),
          );
          pathOffset += 21;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
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
      final response = await res.insert(
        arg_request,
        arg_project,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).typeProviders;
      final arg_project = 'foo';
      final arg_filter = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/typeProviders', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 21),
            unittest.equals('/global/typeProviders'),
          );
          pathOffset += 21;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTypeProvidersListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_project,
        filter: arg_filter,
        maxResults: arg_maxResults,
        orderBy: arg_orderBy,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkTypeProvidersListResponse(response as api.TypeProvidersListResponse);
    });

    unittest.test('method--listTypes', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).typeProviders;
      final arg_project = 'foo';
      final arg_typeProvider = 'foo';
      final arg_filter = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/typeProviders/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('/global/typeProviders/'),
          );
          pathOffset += 22;
          index = path.indexOf('/types', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_typeProvider'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 6),
            unittest.equals('/types'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildTypeProvidersListTypesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listTypes(
        arg_project,
        arg_typeProvider,
        filter: arg_filter,
        maxResults: arg_maxResults,
        orderBy: arg_orderBy,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkTypeProvidersListTypesResponse(
        response as api.TypeProvidersListTypesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).typeProviders;
      final arg_request = buildTypeProvider();
      final arg_project = 'foo';
      final arg_typeProvider = 'foo';
      final arg_header_bypassBillingFilter = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TypeProvider.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTypeProvider(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/typeProviders/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('/global/typeProviders/'),
          );
          pathOffset += 22;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_typeProvider'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
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
        arg_project,
        arg_typeProvider,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).typeProviders;
      final arg_request = buildTypeProvider();
      final arg_project = 'foo';
      final arg_typeProvider = 'foo';
      final arg_header_bypassBillingFilter = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TypeProvider.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTypeProvider(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/typeProviders/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('/global/typeProviders/'),
          );
          pathOffset += 22;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_typeProvider'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
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
      final response = await res.update(
        arg_request,
        arg_project,
        arg_typeProvider,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-TypesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).types;
      final arg_project = 'foo';
      final arg_type = 'foo';
      final arg_header_bypassBillingFilter = true;
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/types/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('/global/types/'),
          );
          pathOffset += 14;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_type'));

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['header.bypassBillingFilter']!.first,
            unittest.equals('$arg_header_bypassBillingFilter'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildType());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_project,
        arg_type,
        header_bypassBillingFilter: arg_header_bypassBillingFilter,
        $fields: arg_$fields,
      );
      checkType(response as api.Type);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeploymentManagerApi(mock).types;
      final arg_project = 'foo';
      final arg_filter = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('deploymentmanager/alpha/projects/'),
          );
          pathOffset += 33;
          index = path.indexOf('/global/types', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_project'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('/global/types'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTypesListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_project,
        filter: arg_filter,
        maxResults: arg_maxResults,
        orderBy: arg_orderBy,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkTypesListResponse(response as api.TypesListResponse);
    });
  });
}
