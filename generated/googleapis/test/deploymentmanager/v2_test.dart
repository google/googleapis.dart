// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.deploymentmanager.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/deploymentmanager/v2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<api.AuditLogConfig> buildUnnamed3922() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed3922(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.List<core.String> buildUnnamed3923() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3923(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed3922();
    o.exemptedMembers = buildUnnamed3923();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed3922(o.auditLogConfigs);
    checkUnnamed3923(o.exemptedMembers);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed3924() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3924(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed3924();
    o.ignoreChildExemptions = true;
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed3924(o.exemptedMembers);
    unittest.expect(o.ignoreChildExemptions, unittest.isTrue);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthorizationLoggingOptions = 0;
api.AuthorizationLoggingOptions buildAuthorizationLoggingOptions() {
  var o = api.AuthorizationLoggingOptions();
  buildCounterAuthorizationLoggingOptions++;
  if (buildCounterAuthorizationLoggingOptions < 3) {
    o.permissionType = 'foo';
  }
  buildCounterAuthorizationLoggingOptions--;
  return o;
}

void checkAuthorizationLoggingOptions(api.AuthorizationLoggingOptions o) {
  buildCounterAuthorizationLoggingOptions++;
  if (buildCounterAuthorizationLoggingOptions < 3) {
    unittest.expect(o.permissionType, unittest.equals('foo'));
  }
  buildCounterAuthorizationLoggingOptions--;
}

core.List<core.String> buildUnnamed3925() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3925(core.List<core.String> o) {
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
    o.members = buildUnnamed3925();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed3925(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.List<core.String> buildUnnamed3926() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3926(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCondition = 0;
api.Condition buildCondition() {
  var o = api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.iam = 'foo';
    o.op = 'foo';
    o.svc = 'foo';
    o.sys = 'foo';
    o.values = buildUnnamed3926();
  }
  buildCounterCondition--;
  return o;
}

void checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    unittest.expect(o.iam, unittest.equals('foo'));
    unittest.expect(o.op, unittest.equals('foo'));
    unittest.expect(o.svc, unittest.equals('foo'));
    unittest.expect(o.sys, unittest.equals('foo'));
    checkUnnamed3926(o.values);
  }
  buildCounterCondition--;
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

core.List<api.DeploymentLabelEntry> buildUnnamed3927() {
  var o = <api.DeploymentLabelEntry>[];
  o.add(buildDeploymentLabelEntry());
  o.add(buildDeploymentLabelEntry());
  return o;
}

void checkUnnamed3927(core.List<api.DeploymentLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentLabelEntry(o[0]);
  checkDeploymentLabelEntry(o[1]);
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
    o.labels = buildUnnamed3927();
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
    checkUnnamed3927(o.labels);
    unittest.expect(o.manifest, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkOperation(o.operation);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkTargetConfiguration(o.target);
    checkDeploymentUpdate(o.update);
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

core.List<api.DeploymentUpdateLabelEntry> buildUnnamed3928() {
  var o = <api.DeploymentUpdateLabelEntry>[];
  o.add(buildDeploymentUpdateLabelEntry());
  o.add(buildDeploymentUpdateLabelEntry());
  return o;
}

void checkUnnamed3928(core.List<api.DeploymentUpdateLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentUpdateLabelEntry(o[0]);
  checkDeploymentUpdateLabelEntry(o[1]);
}

core.int buildCounterDeploymentUpdate = 0;
api.DeploymentUpdate buildDeploymentUpdate() {
  var o = api.DeploymentUpdate();
  buildCounterDeploymentUpdate++;
  if (buildCounterDeploymentUpdate < 3) {
    o.description = 'foo';
    o.labels = buildUnnamed3928();
    o.manifest = 'foo';
  }
  buildCounterDeploymentUpdate--;
  return o;
}

void checkDeploymentUpdate(api.DeploymentUpdate o) {
  buildCounterDeploymentUpdate++;
  if (buildCounterDeploymentUpdate < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3928(o.labels);
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

core.List<api.Deployment> buildUnnamed3929() {
  var o = <api.Deployment>[];
  o.add(buildDeployment());
  o.add(buildDeployment());
  return o;
}

void checkUnnamed3929(core.List<api.Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployment(o[0]);
  checkDeployment(o[1]);
}

core.int buildCounterDeploymentsListResponse = 0;
api.DeploymentsListResponse buildDeploymentsListResponse() {
  var o = api.DeploymentsListResponse();
  buildCounterDeploymentsListResponse++;
  if (buildCounterDeploymentsListResponse < 3) {
    o.deployments = buildUnnamed3929();
    o.nextPageToken = 'foo';
  }
  buildCounterDeploymentsListResponse--;
  return o;
}

void checkDeploymentsListResponse(api.DeploymentsListResponse o) {
  buildCounterDeploymentsListResponse++;
  if (buildCounterDeploymentsListResponse < 3) {
    checkUnnamed3929(o.deployments);
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

core.List<api.Binding> buildUnnamed3930() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed3930(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterGlobalSetPolicyRequest = 0;
api.GlobalSetPolicyRequest buildGlobalSetPolicyRequest() {
  var o = api.GlobalSetPolicyRequest();
  buildCounterGlobalSetPolicyRequest++;
  if (buildCounterGlobalSetPolicyRequest < 3) {
    o.bindings = buildUnnamed3930();
    o.etag = 'foo';
    o.policy = buildPolicy();
  }
  buildCounterGlobalSetPolicyRequest--;
  return o;
}

void checkGlobalSetPolicyRequest(api.GlobalSetPolicyRequest o) {
  buildCounterGlobalSetPolicyRequest++;
  if (buildCounterGlobalSetPolicyRequest < 3) {
    checkUnnamed3930(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkPolicy(o.policy);
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

core.int buildCounterLogConfig = 0;
api.LogConfig buildLogConfig() {
  var o = api.LogConfig();
  buildCounterLogConfig++;
  if (buildCounterLogConfig < 3) {
    o.cloudAudit = buildLogConfigCloudAuditOptions();
    o.counter = buildLogConfigCounterOptions();
    o.dataAccess = buildLogConfigDataAccessOptions();
  }
  buildCounterLogConfig--;
  return o;
}

void checkLogConfig(api.LogConfig o) {
  buildCounterLogConfig++;
  if (buildCounterLogConfig < 3) {
    checkLogConfigCloudAuditOptions(o.cloudAudit);
    checkLogConfigCounterOptions(o.counter);
    checkLogConfigDataAccessOptions(o.dataAccess);
  }
  buildCounterLogConfig--;
}

core.int buildCounterLogConfigCloudAuditOptions = 0;
api.LogConfigCloudAuditOptions buildLogConfigCloudAuditOptions() {
  var o = api.LogConfigCloudAuditOptions();
  buildCounterLogConfigCloudAuditOptions++;
  if (buildCounterLogConfigCloudAuditOptions < 3) {
    o.authorizationLoggingOptions = buildAuthorizationLoggingOptions();
    o.logName = 'foo';
  }
  buildCounterLogConfigCloudAuditOptions--;
  return o;
}

void checkLogConfigCloudAuditOptions(api.LogConfigCloudAuditOptions o) {
  buildCounterLogConfigCloudAuditOptions++;
  if (buildCounterLogConfigCloudAuditOptions < 3) {
    checkAuthorizationLoggingOptions(o.authorizationLoggingOptions);
    unittest.expect(o.logName, unittest.equals('foo'));
  }
  buildCounterLogConfigCloudAuditOptions--;
}

core.List<api.LogConfigCounterOptionsCustomField> buildUnnamed3931() {
  var o = <api.LogConfigCounterOptionsCustomField>[];
  o.add(buildLogConfigCounterOptionsCustomField());
  o.add(buildLogConfigCounterOptionsCustomField());
  return o;
}

void checkUnnamed3931(core.List<api.LogConfigCounterOptionsCustomField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogConfigCounterOptionsCustomField(o[0]);
  checkLogConfigCounterOptionsCustomField(o[1]);
}

core.int buildCounterLogConfigCounterOptions = 0;
api.LogConfigCounterOptions buildLogConfigCounterOptions() {
  var o = api.LogConfigCounterOptions();
  buildCounterLogConfigCounterOptions++;
  if (buildCounterLogConfigCounterOptions < 3) {
    o.customFields = buildUnnamed3931();
    o.field = 'foo';
    o.metric = 'foo';
  }
  buildCounterLogConfigCounterOptions--;
  return o;
}

void checkLogConfigCounterOptions(api.LogConfigCounterOptions o) {
  buildCounterLogConfigCounterOptions++;
  if (buildCounterLogConfigCounterOptions < 3) {
    checkUnnamed3931(o.customFields);
    unittest.expect(o.field, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
  }
  buildCounterLogConfigCounterOptions--;
}

core.int buildCounterLogConfigCounterOptionsCustomField = 0;
api.LogConfigCounterOptionsCustomField
    buildLogConfigCounterOptionsCustomField() {
  var o = api.LogConfigCounterOptionsCustomField();
  buildCounterLogConfigCounterOptionsCustomField++;
  if (buildCounterLogConfigCounterOptionsCustomField < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterLogConfigCounterOptionsCustomField--;
  return o;
}

void checkLogConfigCounterOptionsCustomField(
    api.LogConfigCounterOptionsCustomField o) {
  buildCounterLogConfigCounterOptionsCustomField++;
  if (buildCounterLogConfigCounterOptionsCustomField < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLogConfigCounterOptionsCustomField--;
}

core.int buildCounterLogConfigDataAccessOptions = 0;
api.LogConfigDataAccessOptions buildLogConfigDataAccessOptions() {
  var o = api.LogConfigDataAccessOptions();
  buildCounterLogConfigDataAccessOptions++;
  if (buildCounterLogConfigDataAccessOptions < 3) {
    o.logMode = 'foo';
  }
  buildCounterLogConfigDataAccessOptions--;
  return o;
}

void checkLogConfigDataAccessOptions(api.LogConfigDataAccessOptions o) {
  buildCounterLogConfigDataAccessOptions++;
  if (buildCounterLogConfigDataAccessOptions < 3) {
    unittest.expect(o.logMode, unittest.equals('foo'));
  }
  buildCounterLogConfigDataAccessOptions--;
}

core.List<api.ImportFile> buildUnnamed3932() {
  var o = <api.ImportFile>[];
  o.add(buildImportFile());
  o.add(buildImportFile());
  return o;
}

void checkUnnamed3932(core.List<api.ImportFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportFile(o[0]);
  checkImportFile(o[1]);
}

core.int buildCounterManifest = 0;
api.Manifest buildManifest() {
  var o = api.Manifest();
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    o.config = buildConfigFile();
    o.expandedConfig = 'foo';
    o.id = 'foo';
    o.imports = buildUnnamed3932();
    o.insertTime = 'foo';
    o.layout = 'foo';
    o.name = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterManifest--;
  return o;
}

void checkManifest(api.Manifest o) {
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    checkConfigFile(o.config);
    unittest.expect(o.expandedConfig, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3932(o.imports);
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.layout, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterManifest--;
}

core.List<api.Manifest> buildUnnamed3933() {
  var o = <api.Manifest>[];
  o.add(buildManifest());
  o.add(buildManifest());
  return o;
}

void checkUnnamed3933(core.List<api.Manifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManifest(o[0]);
  checkManifest(o[1]);
}

core.int buildCounterManifestsListResponse = 0;
api.ManifestsListResponse buildManifestsListResponse() {
  var o = api.ManifestsListResponse();
  buildCounterManifestsListResponse++;
  if (buildCounterManifestsListResponse < 3) {
    o.manifests = buildUnnamed3933();
    o.nextPageToken = 'foo';
  }
  buildCounterManifestsListResponse--;
  return o;
}

void checkManifestsListResponse(api.ManifestsListResponse o) {
  buildCounterManifestsListResponse++;
  if (buildCounterManifestsListResponse < 3) {
    checkUnnamed3933(o.manifests);
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

core.List<api.OperationErrorErrors> buildUnnamed3934() {
  var o = <api.OperationErrorErrors>[];
  o.add(buildOperationErrorErrors());
  o.add(buildOperationErrorErrors());
  return o;
}

void checkUnnamed3934(core.List<api.OperationErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationErrorErrors(o[0]);
  checkOperationErrorErrors(o[1]);
}

core.int buildCounterOperationError = 0;
api.OperationError buildOperationError() {
  var o = api.OperationError();
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    o.errors = buildUnnamed3934();
  }
  buildCounterOperationError--;
  return o;
}

void checkOperationError(api.OperationError o) {
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    checkUnnamed3934(o.errors);
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

core.List<api.OperationWarningsData> buildUnnamed3935() {
  var o = <api.OperationWarningsData>[];
  o.add(buildOperationWarningsData());
  o.add(buildOperationWarningsData());
  return o;
}

void checkUnnamed3935(core.List<api.OperationWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationWarningsData(o[0]);
  checkOperationWarningsData(o[1]);
}

core.int buildCounterOperationWarnings = 0;
api.OperationWarnings buildOperationWarnings() {
  var o = api.OperationWarnings();
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    o.code = 'foo';
    o.data = buildUnnamed3935();
    o.message = 'foo';
  }
  buildCounterOperationWarnings--;
  return o;
}

void checkOperationWarnings(api.OperationWarnings o) {
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed3935(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationWarnings--;
}

core.List<api.OperationWarnings> buildUnnamed3936() {
  var o = <api.OperationWarnings>[];
  o.add(buildOperationWarnings());
  o.add(buildOperationWarnings());
  return o;
}

void checkUnnamed3936(core.List<api.OperationWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationWarnings(o[0]);
  checkOperationWarnings(o[1]);
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
    o.warnings = buildUnnamed3936();
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
    checkOperationError(o.error);
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
    checkUnnamed3936(o.warnings);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterOperation--;
}

core.List<api.Operation> buildUnnamed3937() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed3937(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterOperationsListResponse = 0;
api.OperationsListResponse buildOperationsListResponse() {
  var o = api.OperationsListResponse();
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed3937();
  }
  buildCounterOperationsListResponse--;
  return o;
}

void checkOperationsListResponse(api.OperationsListResponse o) {
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3937(o.operations);
  }
  buildCounterOperationsListResponse--;
}

core.List<api.AuditConfig> buildUnnamed3938() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed3938(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed3939() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed3939(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.List<api.Rule> buildUnnamed3940() {
  var o = <api.Rule>[];
  o.add(buildRule());
  o.add(buildRule());
  return o;
}

void checkUnnamed3940(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed3938();
    o.bindings = buildUnnamed3939();
    o.etag = 'foo';
    o.iamOwned = true;
    o.rules = buildUnnamed3940();
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3938(o.auditConfigs);
    checkUnnamed3939(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.iamOwned, unittest.isTrue);
    checkUnnamed3940(o.rules);
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

core.List<api.ResourceWarningsData> buildUnnamed3941() {
  var o = <api.ResourceWarningsData>[];
  o.add(buildResourceWarningsData());
  o.add(buildResourceWarningsData());
  return o;
}

void checkUnnamed3941(core.List<api.ResourceWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceWarningsData(o[0]);
  checkResourceWarningsData(o[1]);
}

core.int buildCounterResourceWarnings = 0;
api.ResourceWarnings buildResourceWarnings() {
  var o = api.ResourceWarnings();
  buildCounterResourceWarnings++;
  if (buildCounterResourceWarnings < 3) {
    o.code = 'foo';
    o.data = buildUnnamed3941();
    o.message = 'foo';
  }
  buildCounterResourceWarnings--;
  return o;
}

void checkResourceWarnings(api.ResourceWarnings o) {
  buildCounterResourceWarnings++;
  if (buildCounterResourceWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed3941(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterResourceWarnings--;
}

core.List<api.ResourceWarnings> buildUnnamed3942() {
  var o = <api.ResourceWarnings>[];
  o.add(buildResourceWarnings());
  o.add(buildResourceWarnings());
  return o;
}

void checkUnnamed3942(core.List<api.ResourceWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceWarnings(o[0]);
  checkResourceWarnings(o[1]);
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
    o.warnings = buildUnnamed3942();
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkResourceAccessControl(o.accessControl);
    unittest.expect(o.finalProperties, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.manifest, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.properties, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    checkResourceUpdate(o.update);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
    checkUnnamed3942(o.warnings);
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

core.List<api.ResourceUpdateErrorErrors> buildUnnamed3943() {
  var o = <api.ResourceUpdateErrorErrors>[];
  o.add(buildResourceUpdateErrorErrors());
  o.add(buildResourceUpdateErrorErrors());
  return o;
}

void checkUnnamed3943(core.List<api.ResourceUpdateErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateErrorErrors(o[0]);
  checkResourceUpdateErrorErrors(o[1]);
}

core.int buildCounterResourceUpdateError = 0;
api.ResourceUpdateError buildResourceUpdateError() {
  var o = api.ResourceUpdateError();
  buildCounterResourceUpdateError++;
  if (buildCounterResourceUpdateError < 3) {
    o.errors = buildUnnamed3943();
  }
  buildCounterResourceUpdateError--;
  return o;
}

void checkResourceUpdateError(api.ResourceUpdateError o) {
  buildCounterResourceUpdateError++;
  if (buildCounterResourceUpdateError < 3) {
    checkUnnamed3943(o.errors);
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

core.List<api.ResourceUpdateWarningsData> buildUnnamed3944() {
  var o = <api.ResourceUpdateWarningsData>[];
  o.add(buildResourceUpdateWarningsData());
  o.add(buildResourceUpdateWarningsData());
  return o;
}

void checkUnnamed3944(core.List<api.ResourceUpdateWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateWarningsData(o[0]);
  checkResourceUpdateWarningsData(o[1]);
}

core.int buildCounterResourceUpdateWarnings = 0;
api.ResourceUpdateWarnings buildResourceUpdateWarnings() {
  var o = api.ResourceUpdateWarnings();
  buildCounterResourceUpdateWarnings++;
  if (buildCounterResourceUpdateWarnings < 3) {
    o.code = 'foo';
    o.data = buildUnnamed3944();
    o.message = 'foo';
  }
  buildCounterResourceUpdateWarnings--;
  return o;
}

void checkResourceUpdateWarnings(api.ResourceUpdateWarnings o) {
  buildCounterResourceUpdateWarnings++;
  if (buildCounterResourceUpdateWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed3944(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterResourceUpdateWarnings--;
}

core.List<api.ResourceUpdateWarnings> buildUnnamed3945() {
  var o = <api.ResourceUpdateWarnings>[];
  o.add(buildResourceUpdateWarnings());
  o.add(buildResourceUpdateWarnings());
  return o;
}

void checkUnnamed3945(core.List<api.ResourceUpdateWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateWarnings(o[0]);
  checkResourceUpdateWarnings(o[1]);
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
    o.warnings = buildUnnamed3945();
  }
  buildCounterResourceUpdate--;
  return o;
}

void checkResourceUpdate(api.ResourceUpdate o) {
  buildCounterResourceUpdate++;
  if (buildCounterResourceUpdate < 3) {
    checkResourceAccessControl(o.accessControl);
    checkResourceUpdateError(o.error);
    unittest.expect(o.finalProperties, unittest.equals('foo'));
    unittest.expect(o.intent, unittest.equals('foo'));
    unittest.expect(o.manifest, unittest.equals('foo'));
    unittest.expect(o.properties, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed3945(o.warnings);
  }
  buildCounterResourceUpdate--;
}

core.List<api.Resource> buildUnnamed3946() {
  var o = <api.Resource>[];
  o.add(buildResource());
  o.add(buildResource());
  return o;
}

void checkUnnamed3946(core.List<api.Resource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResource(o[0]);
  checkResource(o[1]);
}

core.int buildCounterResourcesListResponse = 0;
api.ResourcesListResponse buildResourcesListResponse() {
  var o = api.ResourcesListResponse();
  buildCounterResourcesListResponse++;
  if (buildCounterResourcesListResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3946();
  }
  buildCounterResourcesListResponse--;
  return o;
}

void checkResourcesListResponse(api.ResourcesListResponse o) {
  buildCounterResourcesListResponse++;
  if (buildCounterResourcesListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3946(o.resources);
  }
  buildCounterResourcesListResponse--;
}

core.List<api.Condition> buildUnnamed3947() {
  var o = <api.Condition>[];
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

void checkUnnamed3947(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.List<core.String> buildUnnamed3948() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3948(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LogConfig> buildUnnamed3949() {
  var o = <api.LogConfig>[];
  o.add(buildLogConfig());
  o.add(buildLogConfig());
  return o;
}

void checkUnnamed3949(core.List<api.LogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogConfig(o[0]);
  checkLogConfig(o[1]);
}

core.List<core.String> buildUnnamed3950() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3950(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3951() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3951(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRule = 0;
api.Rule buildRule() {
  var o = api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.action = 'foo';
    o.conditions = buildUnnamed3947();
    o.description = 'foo';
    o.ins = buildUnnamed3948();
    o.logConfigs = buildUnnamed3949();
    o.notIns = buildUnnamed3950();
    o.permissions = buildUnnamed3951();
  }
  buildCounterRule--;
  return o;
}

void checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed3947(o.conditions);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3948(o.ins);
    checkUnnamed3949(o.logConfigs);
    checkUnnamed3950(o.notIns);
    checkUnnamed3951(o.permissions);
  }
  buildCounterRule--;
}

core.List<api.ImportFile> buildUnnamed3952() {
  var o = <api.ImportFile>[];
  o.add(buildImportFile());
  o.add(buildImportFile());
  return o;
}

void checkUnnamed3952(core.List<api.ImportFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportFile(o[0]);
  checkImportFile(o[1]);
}

core.int buildCounterTargetConfiguration = 0;
api.TargetConfiguration buildTargetConfiguration() {
  var o = api.TargetConfiguration();
  buildCounterTargetConfiguration++;
  if (buildCounterTargetConfiguration < 3) {
    o.config = buildConfigFile();
    o.imports = buildUnnamed3952();
  }
  buildCounterTargetConfiguration--;
  return o;
}

void checkTargetConfiguration(api.TargetConfiguration o) {
  buildCounterTargetConfiguration++;
  if (buildCounterTargetConfiguration < 3) {
    checkConfigFile(o.config);
    checkUnnamed3952(o.imports);
  }
  buildCounterTargetConfiguration--;
}

core.List<core.String> buildUnnamed3953() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3953(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestPermissionsRequest = 0;
api.TestPermissionsRequest buildTestPermissionsRequest() {
  var o = api.TestPermissionsRequest();
  buildCounterTestPermissionsRequest++;
  if (buildCounterTestPermissionsRequest < 3) {
    o.permissions = buildUnnamed3953();
  }
  buildCounterTestPermissionsRequest--;
  return o;
}

void checkTestPermissionsRequest(api.TestPermissionsRequest o) {
  buildCounterTestPermissionsRequest++;
  if (buildCounterTestPermissionsRequest < 3) {
    checkUnnamed3953(o.permissions);
  }
  buildCounterTestPermissionsRequest--;
}

core.List<core.String> buildUnnamed3954() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3954(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestPermissionsResponse = 0;
api.TestPermissionsResponse buildTestPermissionsResponse() {
  var o = api.TestPermissionsResponse();
  buildCounterTestPermissionsResponse++;
  if (buildCounterTestPermissionsResponse < 3) {
    o.permissions = buildUnnamed3954();
  }
  buildCounterTestPermissionsResponse--;
  return o;
}

void checkTestPermissionsResponse(api.TestPermissionsResponse o) {
  buildCounterTestPermissionsResponse++;
  if (buildCounterTestPermissionsResponse < 3) {
    checkUnnamed3954(o.permissions);
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
    checkOperation(o.operation);
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterType--;
}

core.List<api.Type> buildUnnamed3955() {
  var o = <api.Type>[];
  o.add(buildType());
  o.add(buildType());
  return o;
}

void checkUnnamed3955(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

core.int buildCounterTypesListResponse = 0;
api.TypesListResponse buildTypesListResponse() {
  var o = api.TypesListResponse();
  buildCounterTypesListResponse++;
  if (buildCounterTypesListResponse < 3) {
    o.nextPageToken = 'foo';
    o.types = buildUnnamed3955();
  }
  buildCounterTypesListResponse--;
  return o;
}

void checkTypesListResponse(api.TypesListResponse o) {
  buildCounterTypesListResponse++;
  if (buildCounterTypesListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3955(o.types);
  }
  buildCounterTypesListResponse--;
}

void main() {
  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditConfig();
      var od = api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditLogConfig();
      var od = api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-AuthorizationLoggingOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthorizationLoggingOptions();
      var od = api.AuthorizationLoggingOptions.fromJson(o.toJson());
      checkAuthorizationLoggingOptions(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-Condition', () {
    unittest.test('to-json--from-json', () {
      var o = buildCondition();
      var od = api.Condition.fromJson(o.toJson());
      checkCondition(od);
    });
  });

  unittest.group('obj-schema-ConfigFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigFile();
      var od = api.ConfigFile.fromJson(o.toJson());
      checkConfigFile(od);
    });
  });

  unittest.group('obj-schema-Deployment', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeployment();
      var od = api.Deployment.fromJson(o.toJson());
      checkDeployment(od);
    });
  });

  unittest.group('obj-schema-DeploymentLabelEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeploymentLabelEntry();
      var od = api.DeploymentLabelEntry.fromJson(o.toJson());
      checkDeploymentLabelEntry(od);
    });
  });

  unittest.group('obj-schema-DeploymentUpdate', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeploymentUpdate();
      var od = api.DeploymentUpdate.fromJson(o.toJson());
      checkDeploymentUpdate(od);
    });
  });

  unittest.group('obj-schema-DeploymentUpdateLabelEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeploymentUpdateLabelEntry();
      var od = api.DeploymentUpdateLabelEntry.fromJson(o.toJson());
      checkDeploymentUpdateLabelEntry(od);
    });
  });

  unittest.group('obj-schema-DeploymentsCancelPreviewRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeploymentsCancelPreviewRequest();
      var od = api.DeploymentsCancelPreviewRequest.fromJson(o.toJson());
      checkDeploymentsCancelPreviewRequest(od);
    });
  });

  unittest.group('obj-schema-DeploymentsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeploymentsListResponse();
      var od = api.DeploymentsListResponse.fromJson(o.toJson());
      checkDeploymentsListResponse(od);
    });
  });

  unittest.group('obj-schema-DeploymentsStopRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeploymentsStopRequest();
      var od = api.DeploymentsStopRequest.fromJson(o.toJson());
      checkDeploymentsStopRequest(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GlobalSetPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGlobalSetPolicyRequest();
      var od = api.GlobalSetPolicyRequest.fromJson(o.toJson());
      checkGlobalSetPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-ImportFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildImportFile();
      var od = api.ImportFile.fromJson(o.toJson());
      checkImportFile(od);
    });
  });

  unittest.group('obj-schema-LogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildLogConfig();
      var od = api.LogConfig.fromJson(o.toJson());
      checkLogConfig(od);
    });
  });

  unittest.group('obj-schema-LogConfigCloudAuditOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildLogConfigCloudAuditOptions();
      var od = api.LogConfigCloudAuditOptions.fromJson(o.toJson());
      checkLogConfigCloudAuditOptions(od);
    });
  });

  unittest.group('obj-schema-LogConfigCounterOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildLogConfigCounterOptions();
      var od = api.LogConfigCounterOptions.fromJson(o.toJson());
      checkLogConfigCounterOptions(od);
    });
  });

  unittest.group('obj-schema-LogConfigCounterOptionsCustomField', () {
    unittest.test('to-json--from-json', () {
      var o = buildLogConfigCounterOptionsCustomField();
      var od = api.LogConfigCounterOptionsCustomField.fromJson(o.toJson());
      checkLogConfigCounterOptionsCustomField(od);
    });
  });

  unittest.group('obj-schema-LogConfigDataAccessOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildLogConfigDataAccessOptions();
      var od = api.LogConfigDataAccessOptions.fromJson(o.toJson());
      checkLogConfigDataAccessOptions(od);
    });
  });

  unittest.group('obj-schema-Manifest', () {
    unittest.test('to-json--from-json', () {
      var o = buildManifest();
      var od = api.Manifest.fromJson(o.toJson());
      checkManifest(od);
    });
  });

  unittest.group('obj-schema-ManifestsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildManifestsListResponse();
      var od = api.ManifestsListResponse.fromJson(o.toJson());
      checkManifestsListResponse(od);
    });
  });

  unittest.group('obj-schema-OperationErrorErrors', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationErrorErrors();
      var od = api.OperationErrorErrors.fromJson(o.toJson());
      checkOperationErrorErrors(od);
    });
  });

  unittest.group('obj-schema-OperationError', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationError();
      var od = api.OperationError.fromJson(o.toJson());
      checkOperationError(od);
    });
  });

  unittest.group('obj-schema-OperationWarningsData', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationWarningsData();
      var od = api.OperationWarningsData.fromJson(o.toJson());
      checkOperationWarningsData(od);
    });
  });

  unittest.group('obj-schema-OperationWarnings', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationWarnings();
      var od = api.OperationWarnings.fromJson(o.toJson());
      checkOperationWarnings(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-OperationsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationsListResponse();
      var od = api.OperationsListResponse.fromJson(o.toJson());
      checkOperationsListResponse(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-ResourceWarningsData', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceWarningsData();
      var od = api.ResourceWarningsData.fromJson(o.toJson());
      checkResourceWarningsData(od);
    });
  });

  unittest.group('obj-schema-ResourceWarnings', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceWarnings();
      var od = api.ResourceWarnings.fromJson(o.toJson());
      checkResourceWarnings(od);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () {
      var o = buildResource();
      var od = api.Resource.fromJson(o.toJson());
      checkResource(od);
    });
  });

  unittest.group('obj-schema-ResourceAccessControl', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceAccessControl();
      var od = api.ResourceAccessControl.fromJson(o.toJson());
      checkResourceAccessControl(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateErrorErrors', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUpdateErrorErrors();
      var od = api.ResourceUpdateErrorErrors.fromJson(o.toJson());
      checkResourceUpdateErrorErrors(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateError', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUpdateError();
      var od = api.ResourceUpdateError.fromJson(o.toJson());
      checkResourceUpdateError(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateWarningsData', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUpdateWarningsData();
      var od = api.ResourceUpdateWarningsData.fromJson(o.toJson());
      checkResourceUpdateWarningsData(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdateWarnings', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUpdateWarnings();
      var od = api.ResourceUpdateWarnings.fromJson(o.toJson());
      checkResourceUpdateWarnings(od);
    });
  });

  unittest.group('obj-schema-ResourceUpdate', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUpdate();
      var od = api.ResourceUpdate.fromJson(o.toJson());
      checkResourceUpdate(od);
    });
  });

  unittest.group('obj-schema-ResourcesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourcesListResponse();
      var od = api.ResourcesListResponse.fromJson(o.toJson());
      checkResourcesListResponse(od);
    });
  });

  unittest.group('obj-schema-Rule', () {
    unittest.test('to-json--from-json', () {
      var o = buildRule();
      var od = api.Rule.fromJson(o.toJson());
      checkRule(od);
    });
  });

  unittest.group('obj-schema-TargetConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetConfiguration();
      var od = api.TargetConfiguration.fromJson(o.toJson());
      checkTargetConfiguration(od);
    });
  });

  unittest.group('obj-schema-TestPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestPermissionsRequest();
      var od = api.TestPermissionsRequest.fromJson(o.toJson());
      checkTestPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestPermissionsResponse();
      var od = api.TestPermissionsResponse.fromJson(o.toJson());
      checkTestPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-Type', () {
    unittest.test('to-json--from-json', () {
      var o = buildType();
      var od = api.Type.fromJson(o.toJson());
      checkType(od);
    });
  });

  unittest.group('obj-schema-TypesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTypesListResponse();
      var od = api.TypesListResponse.fromJson(o.toJson());
      checkTypesListResponse(od);
    });
  });

  unittest.group('resource-DeploymentsResourceApi', () {
    unittest.test('method--cancelPreview', () {
      var mock = HttpServerMock();
      api.DeploymentsResourceApi res =
          api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildDeploymentsCancelPreviewRequest();
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DeploymentsCancelPreviewRequest.fromJson(json);
        checkDeploymentsCancelPreviewRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOperation(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.DeploymentsResourceApi res =
          api.DeploymentmanagerApi(mock).deployments;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOperation(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.DeploymentsResourceApi res =
          api.DeploymentmanagerApi(mock).deployments;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkDeployment(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.DeploymentsResourceApi res =
          api.DeploymentmanagerApi(mock).deployments;
      var arg_project = 'foo';
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .getIamPolicy(arg_project, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.DeploymentsResourceApi res =
          api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildDeployment();
      var arg_project = 'foo';
      var arg_createPolicy = 'foo';
      var arg_preview = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Deployment.fromJson(json);
        checkDeployment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOperation(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.DeploymentsResourceApi res =
          api.DeploymentmanagerApi(mock).deployments;
      var arg_project = 'foo';
      var arg_orderBy = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_filter = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeploymentsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              orderBy: arg_orderBy,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeploymentsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.DeploymentsResourceApi res =
          api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildDeployment();
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_deletePolicy = 'foo';
      var arg_preview = true;
      var arg_createPolicy = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Deployment.fromJson(json);
        checkDeployment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        unittest.expect(
            queryMap["preview"].first, unittest.equals("$arg_preview"));
        unittest.expect(
            queryMap["createPolicy"].first, unittest.equals(arg_createPolicy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_deployment,
              deletePolicy: arg_deletePolicy,
              preview: arg_preview,
              createPolicy: arg_createPolicy,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.DeploymentsResourceApi res =
          api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildGlobalSetPolicyRequest();
      var arg_project = 'foo';
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GlobalSetPolicyRequest.fromJson(json);
        checkGlobalSetPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPolicy(response);
      })));
    });

    unittest.test('method--stop', () {
      var mock = HttpServerMock();
      api.DeploymentsResourceApi res =
          api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildDeploymentsStopRequest();
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DeploymentsStopRequest.fromJson(json);
        checkDeploymentsStopRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOperation(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.DeploymentsResourceApi res =
          api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildTestPermissionsRequest();
      var arg_project = 'foo';
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestPermissionsRequest.fromJson(json);
        checkTestPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTestPermissionsResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.DeploymentsResourceApi res =
          api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildDeployment();
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_createPolicy = 'foo';
      var arg_deletePolicy = 'foo';
      var arg_preview = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Deployment.fromJson(json);
        checkDeployment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOperation(response);
      })));
    });
  });

  unittest.group('resource-ManifestsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ManifestsResourceApi res = api.DeploymentmanagerApi(mock).manifests;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkManifest(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ManifestsResourceApi res = api.DeploymentmanagerApi(mock).manifests;
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_maxResults = 42;
      var arg_filter = 'foo';
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
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
              maxResults: arg_maxResults,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManifestsListResponse(response);
      })));
    });
  });

  unittest.group('resource-OperationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.OperationsResourceApi res = api.DeploymentmanagerApi(mock).operations;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOperation(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.OperationsResourceApi res = api.DeploymentmanagerApi(mock).operations;
      var arg_project = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_maxResults = 42;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
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
              orderBy: arg_orderBy,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperationsListResponse(response);
      })));
    });
  });

  unittest.group('resource-ResourcesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ResourcesResourceApi res = api.DeploymentmanagerApi(mock).resources;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkResource(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ResourcesResourceApi res = api.DeploymentmanagerApi(mock).resources;
      var arg_project = 'foo';
      var arg_deployment = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_maxResults = 42;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
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
              orderBy: arg_orderBy,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResourcesListResponse(response);
      })));
    });
  });

  unittest.group('resource-TypesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.TypesResourceApi res = api.DeploymentmanagerApi(mock).types;
      var arg_project = 'foo';
      var arg_pageToken = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_maxResults = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTypesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              pageToken: arg_pageToken,
              filter: arg_filter,
              orderBy: arg_orderBy,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTypesListResponse(response);
      })));
    });
  });
}
