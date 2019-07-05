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

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed200() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed200(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

buildUnnamed201() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed201(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed200();
    o.exemptedMembers = buildUnnamed201();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed200(o.auditLogConfigs);
    checkUnnamed201(o.exemptedMembers);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed202() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed202(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed202();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed202(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthorizationLoggingOptions = 0;
buildAuthorizationLoggingOptions() {
  var o = new api.AuthorizationLoggingOptions();
  buildCounterAuthorizationLoggingOptions++;
  if (buildCounterAuthorizationLoggingOptions < 3) {
    o.permissionType = "foo";
  }
  buildCounterAuthorizationLoggingOptions--;
  return o;
}

checkAuthorizationLoggingOptions(api.AuthorizationLoggingOptions o) {
  buildCounterAuthorizationLoggingOptions++;
  if (buildCounterAuthorizationLoggingOptions < 3) {
    unittest.expect(o.permissionType, unittest.equals('foo'));
  }
  buildCounterAuthorizationLoggingOptions--;
}

buildUnnamed203() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed203(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed203();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed203(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

buildUnnamed204() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed204(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCondition = 0;
buildCondition() {
  var o = new api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.iam = "foo";
    o.op = "foo";
    o.svc = "foo";
    o.sys = "foo";
    o.value = "foo";
    o.values = buildUnnamed204();
  }
  buildCounterCondition--;
  return o;
}

checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    unittest.expect(o.iam, unittest.equals('foo'));
    unittest.expect(o.op, unittest.equals('foo'));
    unittest.expect(o.svc, unittest.equals('foo'));
    unittest.expect(o.sys, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
    checkUnnamed204(o.values);
  }
  buildCounterCondition--;
}

core.int buildCounterConfigFile = 0;
buildConfigFile() {
  var o = new api.ConfigFile();
  buildCounterConfigFile++;
  if (buildCounterConfigFile < 3) {
    o.content = "foo";
  }
  buildCounterConfigFile--;
  return o;
}

checkConfigFile(api.ConfigFile o) {
  buildCounterConfigFile++;
  if (buildCounterConfigFile < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
  }
  buildCounterConfigFile--;
}

buildUnnamed205() {
  var o = new core.List<api.DeploymentLabelEntry>();
  o.add(buildDeploymentLabelEntry());
  o.add(buildDeploymentLabelEntry());
  return o;
}

checkUnnamed205(core.List<api.DeploymentLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentLabelEntry(o[0]);
  checkDeploymentLabelEntry(o[1]);
}

core.int buildCounterDeployment = 0;
buildDeployment() {
  var o = new api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.description = "foo";
    o.fingerprint = "foo";
    o.id = "foo";
    o.insertTime = "foo";
    o.labels = buildUnnamed205();
    o.manifest = "foo";
    o.name = "foo";
    o.operation = buildOperation();
    o.selfLink = "foo";
    o.target = buildTargetConfiguration();
    o.update = buildDeploymentUpdate();
    o.updateTime = "foo";
  }
  buildCounterDeployment--;
  return o;
}

checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    checkUnnamed205(o.labels);
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
buildDeploymentLabelEntry() {
  var o = new api.DeploymentLabelEntry();
  buildCounterDeploymentLabelEntry++;
  if (buildCounterDeploymentLabelEntry < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterDeploymentLabelEntry--;
  return o;
}

checkDeploymentLabelEntry(api.DeploymentLabelEntry o) {
  buildCounterDeploymentLabelEntry++;
  if (buildCounterDeploymentLabelEntry < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDeploymentLabelEntry--;
}

buildUnnamed206() {
  var o = new core.List<api.DeploymentUpdateLabelEntry>();
  o.add(buildDeploymentUpdateLabelEntry());
  o.add(buildDeploymentUpdateLabelEntry());
  return o;
}

checkUnnamed206(core.List<api.DeploymentUpdateLabelEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentUpdateLabelEntry(o[0]);
  checkDeploymentUpdateLabelEntry(o[1]);
}

core.int buildCounterDeploymentUpdate = 0;
buildDeploymentUpdate() {
  var o = new api.DeploymentUpdate();
  buildCounterDeploymentUpdate++;
  if (buildCounterDeploymentUpdate < 3) {
    o.description = "foo";
    o.labels = buildUnnamed206();
    o.manifest = "foo";
  }
  buildCounterDeploymentUpdate--;
  return o;
}

checkDeploymentUpdate(api.DeploymentUpdate o) {
  buildCounterDeploymentUpdate++;
  if (buildCounterDeploymentUpdate < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed206(o.labels);
    unittest.expect(o.manifest, unittest.equals('foo'));
  }
  buildCounterDeploymentUpdate--;
}

core.int buildCounterDeploymentUpdateLabelEntry = 0;
buildDeploymentUpdateLabelEntry() {
  var o = new api.DeploymentUpdateLabelEntry();
  buildCounterDeploymentUpdateLabelEntry++;
  if (buildCounterDeploymentUpdateLabelEntry < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterDeploymentUpdateLabelEntry--;
  return o;
}

checkDeploymentUpdateLabelEntry(api.DeploymentUpdateLabelEntry o) {
  buildCounterDeploymentUpdateLabelEntry++;
  if (buildCounterDeploymentUpdateLabelEntry < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDeploymentUpdateLabelEntry--;
}

core.int buildCounterDeploymentsCancelPreviewRequest = 0;
buildDeploymentsCancelPreviewRequest() {
  var o = new api.DeploymentsCancelPreviewRequest();
  buildCounterDeploymentsCancelPreviewRequest++;
  if (buildCounterDeploymentsCancelPreviewRequest < 3) {
    o.fingerprint = "foo";
  }
  buildCounterDeploymentsCancelPreviewRequest--;
  return o;
}

checkDeploymentsCancelPreviewRequest(api.DeploymentsCancelPreviewRequest o) {
  buildCounterDeploymentsCancelPreviewRequest++;
  if (buildCounterDeploymentsCancelPreviewRequest < 3) {
    unittest.expect(o.fingerprint, unittest.equals('foo'));
  }
  buildCounterDeploymentsCancelPreviewRequest--;
}

buildUnnamed207() {
  var o = new core.List<api.Deployment>();
  o.add(buildDeployment());
  o.add(buildDeployment());
  return o;
}

checkUnnamed207(core.List<api.Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployment(o[0]);
  checkDeployment(o[1]);
}

core.int buildCounterDeploymentsListResponse = 0;
buildDeploymentsListResponse() {
  var o = new api.DeploymentsListResponse();
  buildCounterDeploymentsListResponse++;
  if (buildCounterDeploymentsListResponse < 3) {
    o.deployments = buildUnnamed207();
    o.nextPageToken = "foo";
  }
  buildCounterDeploymentsListResponse--;
  return o;
}

checkDeploymentsListResponse(api.DeploymentsListResponse o) {
  buildCounterDeploymentsListResponse++;
  if (buildCounterDeploymentsListResponse < 3) {
    checkUnnamed207(o.deployments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDeploymentsListResponse--;
}

core.int buildCounterDeploymentsStopRequest = 0;
buildDeploymentsStopRequest() {
  var o = new api.DeploymentsStopRequest();
  buildCounterDeploymentsStopRequest++;
  if (buildCounterDeploymentsStopRequest < 3) {
    o.fingerprint = "foo";
  }
  buildCounterDeploymentsStopRequest--;
  return o;
}

checkDeploymentsStopRequest(api.DeploymentsStopRequest o) {
  buildCounterDeploymentsStopRequest++;
  if (buildCounterDeploymentsStopRequest < 3) {
    unittest.expect(o.fingerprint, unittest.equals('foo'));
  }
  buildCounterDeploymentsStopRequest--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

buildUnnamed208() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed208(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterGlobalSetPolicyRequest = 0;
buildGlobalSetPolicyRequest() {
  var o = new api.GlobalSetPolicyRequest();
  buildCounterGlobalSetPolicyRequest++;
  if (buildCounterGlobalSetPolicyRequest < 3) {
    o.bindings = buildUnnamed208();
    o.etag = "foo";
    o.policy = buildPolicy();
  }
  buildCounterGlobalSetPolicyRequest--;
  return o;
}

checkGlobalSetPolicyRequest(api.GlobalSetPolicyRequest o) {
  buildCounterGlobalSetPolicyRequest++;
  if (buildCounterGlobalSetPolicyRequest < 3) {
    checkUnnamed208(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkPolicy(o.policy);
  }
  buildCounterGlobalSetPolicyRequest--;
}

core.int buildCounterImportFile = 0;
buildImportFile() {
  var o = new api.ImportFile();
  buildCounterImportFile++;
  if (buildCounterImportFile < 3) {
    o.content = "foo";
    o.name = "foo";
  }
  buildCounterImportFile--;
  return o;
}

checkImportFile(api.ImportFile o) {
  buildCounterImportFile++;
  if (buildCounterImportFile < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterImportFile--;
}

core.int buildCounterLogConfig = 0;
buildLogConfig() {
  var o = new api.LogConfig();
  buildCounterLogConfig++;
  if (buildCounterLogConfig < 3) {
    o.cloudAudit = buildLogConfigCloudAuditOptions();
    o.counter = buildLogConfigCounterOptions();
    o.dataAccess = buildLogConfigDataAccessOptions();
  }
  buildCounterLogConfig--;
  return o;
}

checkLogConfig(api.LogConfig o) {
  buildCounterLogConfig++;
  if (buildCounterLogConfig < 3) {
    checkLogConfigCloudAuditOptions(o.cloudAudit);
    checkLogConfigCounterOptions(o.counter);
    checkLogConfigDataAccessOptions(o.dataAccess);
  }
  buildCounterLogConfig--;
}

core.int buildCounterLogConfigCloudAuditOptions = 0;
buildLogConfigCloudAuditOptions() {
  var o = new api.LogConfigCloudAuditOptions();
  buildCounterLogConfigCloudAuditOptions++;
  if (buildCounterLogConfigCloudAuditOptions < 3) {
    o.authorizationLoggingOptions = buildAuthorizationLoggingOptions();
    o.logName = "foo";
  }
  buildCounterLogConfigCloudAuditOptions--;
  return o;
}

checkLogConfigCloudAuditOptions(api.LogConfigCloudAuditOptions o) {
  buildCounterLogConfigCloudAuditOptions++;
  if (buildCounterLogConfigCloudAuditOptions < 3) {
    checkAuthorizationLoggingOptions(o.authorizationLoggingOptions);
    unittest.expect(o.logName, unittest.equals('foo'));
  }
  buildCounterLogConfigCloudAuditOptions--;
}

core.int buildCounterLogConfigCounterOptions = 0;
buildLogConfigCounterOptions() {
  var o = new api.LogConfigCounterOptions();
  buildCounterLogConfigCounterOptions++;
  if (buildCounterLogConfigCounterOptions < 3) {
    o.field = "foo";
    o.metric = "foo";
  }
  buildCounterLogConfigCounterOptions--;
  return o;
}

checkLogConfigCounterOptions(api.LogConfigCounterOptions o) {
  buildCounterLogConfigCounterOptions++;
  if (buildCounterLogConfigCounterOptions < 3) {
    unittest.expect(o.field, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
  }
  buildCounterLogConfigCounterOptions--;
}

core.int buildCounterLogConfigDataAccessOptions = 0;
buildLogConfigDataAccessOptions() {
  var o = new api.LogConfigDataAccessOptions();
  buildCounterLogConfigDataAccessOptions++;
  if (buildCounterLogConfigDataAccessOptions < 3) {
    o.logMode = "foo";
  }
  buildCounterLogConfigDataAccessOptions--;
  return o;
}

checkLogConfigDataAccessOptions(api.LogConfigDataAccessOptions o) {
  buildCounterLogConfigDataAccessOptions++;
  if (buildCounterLogConfigDataAccessOptions < 3) {
    unittest.expect(o.logMode, unittest.equals('foo'));
  }
  buildCounterLogConfigDataAccessOptions--;
}

buildUnnamed209() {
  var o = new core.List<api.ImportFile>();
  o.add(buildImportFile());
  o.add(buildImportFile());
  return o;
}

checkUnnamed209(core.List<api.ImportFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportFile(o[0]);
  checkImportFile(o[1]);
}

core.int buildCounterManifest = 0;
buildManifest() {
  var o = new api.Manifest();
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    o.config = buildConfigFile();
    o.expandedConfig = "foo";
    o.id = "foo";
    o.imports = buildUnnamed209();
    o.insertTime = "foo";
    o.layout = "foo";
    o.name = "foo";
    o.selfLink = "foo";
  }
  buildCounterManifest--;
  return o;
}

checkManifest(api.Manifest o) {
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    checkConfigFile(o.config);
    unittest.expect(o.expandedConfig, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed209(o.imports);
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.layout, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterManifest--;
}

buildUnnamed210() {
  var o = new core.List<api.Manifest>();
  o.add(buildManifest());
  o.add(buildManifest());
  return o;
}

checkUnnamed210(core.List<api.Manifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManifest(o[0]);
  checkManifest(o[1]);
}

core.int buildCounterManifestsListResponse = 0;
buildManifestsListResponse() {
  var o = new api.ManifestsListResponse();
  buildCounterManifestsListResponse++;
  if (buildCounterManifestsListResponse < 3) {
    o.manifests = buildUnnamed210();
    o.nextPageToken = "foo";
  }
  buildCounterManifestsListResponse--;
  return o;
}

checkManifestsListResponse(api.ManifestsListResponse o) {
  buildCounterManifestsListResponse++;
  if (buildCounterManifestsListResponse < 3) {
    checkUnnamed210(o.manifests);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterManifestsListResponse--;
}

core.int buildCounterOperationErrorErrors = 0;
buildOperationErrorErrors() {
  var o = new api.OperationErrorErrors();
  buildCounterOperationErrorErrors++;
  if (buildCounterOperationErrorErrors < 3) {
    o.code = "foo";
    o.location = "foo";
    o.message = "foo";
  }
  buildCounterOperationErrorErrors--;
  return o;
}

checkOperationErrorErrors(api.OperationErrorErrors o) {
  buildCounterOperationErrorErrors++;
  if (buildCounterOperationErrorErrors < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationErrorErrors--;
}

buildUnnamed211() {
  var o = new core.List<api.OperationErrorErrors>();
  o.add(buildOperationErrorErrors());
  o.add(buildOperationErrorErrors());
  return o;
}

checkUnnamed211(core.List<api.OperationErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationErrorErrors(o[0]);
  checkOperationErrorErrors(o[1]);
}

core.int buildCounterOperationError = 0;
buildOperationError() {
  var o = new api.OperationError();
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    o.errors = buildUnnamed211();
  }
  buildCounterOperationError--;
  return o;
}

checkOperationError(api.OperationError o) {
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    checkUnnamed211(o.errors);
  }
  buildCounterOperationError--;
}

core.int buildCounterOperationWarningsData = 0;
buildOperationWarningsData() {
  var o = new api.OperationWarningsData();
  buildCounterOperationWarningsData++;
  if (buildCounterOperationWarningsData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterOperationWarningsData--;
  return o;
}

checkOperationWarningsData(api.OperationWarningsData o) {
  buildCounterOperationWarningsData++;
  if (buildCounterOperationWarningsData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOperationWarningsData--;
}

buildUnnamed212() {
  var o = new core.List<api.OperationWarningsData>();
  o.add(buildOperationWarningsData());
  o.add(buildOperationWarningsData());
  return o;
}

checkUnnamed212(core.List<api.OperationWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationWarningsData(o[0]);
  checkOperationWarningsData(o[1]);
}

core.int buildCounterOperationWarnings = 0;
buildOperationWarnings() {
  var o = new api.OperationWarnings();
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    o.code = "foo";
    o.data = buildUnnamed212();
    o.message = "foo";
  }
  buildCounterOperationWarnings--;
  return o;
}

checkOperationWarnings(api.OperationWarnings o) {
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed212(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationWarnings--;
}

buildUnnamed213() {
  var o = new core.List<api.OperationWarnings>();
  o.add(buildOperationWarnings());
  o.add(buildOperationWarnings());
  return o;
}

checkUnnamed213(core.List<api.OperationWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationWarnings(o[0]);
  checkOperationWarnings(o[1]);
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.clientOperationId = "foo";
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.endTime = "foo";
    o.error = buildOperationError();
    o.httpErrorMessage = "foo";
    o.httpErrorStatusCode = 42;
    o.id = "foo";
    o.insertTime = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.operationType = "foo";
    o.progress = 42;
    o.region = "foo";
    o.selfLink = "foo";
    o.startTime = "foo";
    o.status = "foo";
    o.statusMessage = "foo";
    o.targetId = "foo";
    o.targetLink = "foo";
    o.user = "foo";
    o.warnings = buildUnnamed213();
    o.zone = "foo";
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
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
    checkUnnamed213(o.warnings);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterOperation--;
}

buildUnnamed214() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed214(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterOperationsListResponse = 0;
buildOperationsListResponse() {
  var o = new api.OperationsListResponse();
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed214();
  }
  buildCounterOperationsListResponse--;
  return o;
}

checkOperationsListResponse(api.OperationsListResponse o) {
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed214(o.operations);
  }
  buildCounterOperationsListResponse--;
}

buildUnnamed215() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed215(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed216() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed216(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

buildUnnamed217() {
  var o = new core.List<api.Rule>();
  o.add(buildRule());
  o.add(buildRule());
  return o;
}

checkUnnamed217(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed215();
    o.bindings = buildUnnamed216();
    o.etag = "foo";
    o.iamOwned = true;
    o.rules = buildUnnamed217();
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed215(o.auditConfigs);
    checkUnnamed216(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.iamOwned, unittest.isTrue);
    checkUnnamed217(o.rules);
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterResourceWarningsData = 0;
buildResourceWarningsData() {
  var o = new api.ResourceWarningsData();
  buildCounterResourceWarningsData++;
  if (buildCounterResourceWarningsData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterResourceWarningsData--;
  return o;
}

checkResourceWarningsData(api.ResourceWarningsData o) {
  buildCounterResourceWarningsData++;
  if (buildCounterResourceWarningsData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterResourceWarningsData--;
}

buildUnnamed218() {
  var o = new core.List<api.ResourceWarningsData>();
  o.add(buildResourceWarningsData());
  o.add(buildResourceWarningsData());
  return o;
}

checkUnnamed218(core.List<api.ResourceWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceWarningsData(o[0]);
  checkResourceWarningsData(o[1]);
}

core.int buildCounterResourceWarnings = 0;
buildResourceWarnings() {
  var o = new api.ResourceWarnings();
  buildCounterResourceWarnings++;
  if (buildCounterResourceWarnings < 3) {
    o.code = "foo";
    o.data = buildUnnamed218();
    o.message = "foo";
  }
  buildCounterResourceWarnings--;
  return o;
}

checkResourceWarnings(api.ResourceWarnings o) {
  buildCounterResourceWarnings++;
  if (buildCounterResourceWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed218(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterResourceWarnings--;
}

buildUnnamed219() {
  var o = new core.List<api.ResourceWarnings>();
  o.add(buildResourceWarnings());
  o.add(buildResourceWarnings());
  return o;
}

checkUnnamed219(core.List<api.ResourceWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceWarnings(o[0]);
  checkResourceWarnings(o[1]);
}

core.int buildCounterResource = 0;
buildResource() {
  var o = new api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.accessControl = buildResourceAccessControl();
    o.finalProperties = "foo";
    o.id = "foo";
    o.insertTime = "foo";
    o.manifest = "foo";
    o.name = "foo";
    o.properties = "foo";
    o.type = "foo";
    o.update = buildResourceUpdate();
    o.updateTime = "foo";
    o.url = "foo";
    o.warnings = buildUnnamed219();
  }
  buildCounterResource--;
  return o;
}

checkResource(api.Resource o) {
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
    checkUnnamed219(o.warnings);
  }
  buildCounterResource--;
}

core.int buildCounterResourceAccessControl = 0;
buildResourceAccessControl() {
  var o = new api.ResourceAccessControl();
  buildCounterResourceAccessControl++;
  if (buildCounterResourceAccessControl < 3) {
    o.gcpIamPolicy = "foo";
  }
  buildCounterResourceAccessControl--;
  return o;
}

checkResourceAccessControl(api.ResourceAccessControl o) {
  buildCounterResourceAccessControl++;
  if (buildCounterResourceAccessControl < 3) {
    unittest.expect(o.gcpIamPolicy, unittest.equals('foo'));
  }
  buildCounterResourceAccessControl--;
}

core.int buildCounterResourceUpdateErrorErrors = 0;
buildResourceUpdateErrorErrors() {
  var o = new api.ResourceUpdateErrorErrors();
  buildCounterResourceUpdateErrorErrors++;
  if (buildCounterResourceUpdateErrorErrors < 3) {
    o.code = "foo";
    o.location = "foo";
    o.message = "foo";
  }
  buildCounterResourceUpdateErrorErrors--;
  return o;
}

checkResourceUpdateErrorErrors(api.ResourceUpdateErrorErrors o) {
  buildCounterResourceUpdateErrorErrors++;
  if (buildCounterResourceUpdateErrorErrors < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterResourceUpdateErrorErrors--;
}

buildUnnamed220() {
  var o = new core.List<api.ResourceUpdateErrorErrors>();
  o.add(buildResourceUpdateErrorErrors());
  o.add(buildResourceUpdateErrorErrors());
  return o;
}

checkUnnamed220(core.List<api.ResourceUpdateErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateErrorErrors(o[0]);
  checkResourceUpdateErrorErrors(o[1]);
}

core.int buildCounterResourceUpdateError = 0;
buildResourceUpdateError() {
  var o = new api.ResourceUpdateError();
  buildCounterResourceUpdateError++;
  if (buildCounterResourceUpdateError < 3) {
    o.errors = buildUnnamed220();
  }
  buildCounterResourceUpdateError--;
  return o;
}

checkResourceUpdateError(api.ResourceUpdateError o) {
  buildCounterResourceUpdateError++;
  if (buildCounterResourceUpdateError < 3) {
    checkUnnamed220(o.errors);
  }
  buildCounterResourceUpdateError--;
}

core.int buildCounterResourceUpdateWarningsData = 0;
buildResourceUpdateWarningsData() {
  var o = new api.ResourceUpdateWarningsData();
  buildCounterResourceUpdateWarningsData++;
  if (buildCounterResourceUpdateWarningsData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterResourceUpdateWarningsData--;
  return o;
}

checkResourceUpdateWarningsData(api.ResourceUpdateWarningsData o) {
  buildCounterResourceUpdateWarningsData++;
  if (buildCounterResourceUpdateWarningsData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterResourceUpdateWarningsData--;
}

buildUnnamed221() {
  var o = new core.List<api.ResourceUpdateWarningsData>();
  o.add(buildResourceUpdateWarningsData());
  o.add(buildResourceUpdateWarningsData());
  return o;
}

checkUnnamed221(core.List<api.ResourceUpdateWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateWarningsData(o[0]);
  checkResourceUpdateWarningsData(o[1]);
}

core.int buildCounterResourceUpdateWarnings = 0;
buildResourceUpdateWarnings() {
  var o = new api.ResourceUpdateWarnings();
  buildCounterResourceUpdateWarnings++;
  if (buildCounterResourceUpdateWarnings < 3) {
    o.code = "foo";
    o.data = buildUnnamed221();
    o.message = "foo";
  }
  buildCounterResourceUpdateWarnings--;
  return o;
}

checkResourceUpdateWarnings(api.ResourceUpdateWarnings o) {
  buildCounterResourceUpdateWarnings++;
  if (buildCounterResourceUpdateWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed221(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterResourceUpdateWarnings--;
}

buildUnnamed222() {
  var o = new core.List<api.ResourceUpdateWarnings>();
  o.add(buildResourceUpdateWarnings());
  o.add(buildResourceUpdateWarnings());
  return o;
}

checkUnnamed222(core.List<api.ResourceUpdateWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUpdateWarnings(o[0]);
  checkResourceUpdateWarnings(o[1]);
}

core.int buildCounterResourceUpdate = 0;
buildResourceUpdate() {
  var o = new api.ResourceUpdate();
  buildCounterResourceUpdate++;
  if (buildCounterResourceUpdate < 3) {
    o.accessControl = buildResourceAccessControl();
    o.error = buildResourceUpdateError();
    o.finalProperties = "foo";
    o.intent = "foo";
    o.manifest = "foo";
    o.properties = "foo";
    o.state = "foo";
    o.warnings = buildUnnamed222();
  }
  buildCounterResourceUpdate--;
  return o;
}

checkResourceUpdate(api.ResourceUpdate o) {
  buildCounterResourceUpdate++;
  if (buildCounterResourceUpdate < 3) {
    checkResourceAccessControl(o.accessControl);
    checkResourceUpdateError(o.error);
    unittest.expect(o.finalProperties, unittest.equals('foo'));
    unittest.expect(o.intent, unittest.equals('foo'));
    unittest.expect(o.manifest, unittest.equals('foo'));
    unittest.expect(o.properties, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed222(o.warnings);
  }
  buildCounterResourceUpdate--;
}

buildUnnamed223() {
  var o = new core.List<api.Resource>();
  o.add(buildResource());
  o.add(buildResource());
  return o;
}

checkUnnamed223(core.List<api.Resource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResource(o[0]);
  checkResource(o[1]);
}

core.int buildCounterResourcesListResponse = 0;
buildResourcesListResponse() {
  var o = new api.ResourcesListResponse();
  buildCounterResourcesListResponse++;
  if (buildCounterResourcesListResponse < 3) {
    o.nextPageToken = "foo";
    o.resources = buildUnnamed223();
  }
  buildCounterResourcesListResponse--;
  return o;
}

checkResourcesListResponse(api.ResourcesListResponse o) {
  buildCounterResourcesListResponse++;
  if (buildCounterResourcesListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed223(o.resources);
  }
  buildCounterResourcesListResponse--;
}

buildUnnamed224() {
  var o = new core.List<api.Condition>();
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

checkUnnamed224(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

buildUnnamed225() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed225(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed226() {
  var o = new core.List<api.LogConfig>();
  o.add(buildLogConfig());
  o.add(buildLogConfig());
  return o;
}

checkUnnamed226(core.List<api.LogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogConfig(o[0]);
  checkLogConfig(o[1]);
}

buildUnnamed227() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed227(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed228() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed228(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRule = 0;
buildRule() {
  var o = new api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.action = "foo";
    o.conditions = buildUnnamed224();
    o.description = "foo";
    o.ins = buildUnnamed225();
    o.logConfigs = buildUnnamed226();
    o.notIns = buildUnnamed227();
    o.permissions = buildUnnamed228();
  }
  buildCounterRule--;
  return o;
}

checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed224(o.conditions);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed225(o.ins);
    checkUnnamed226(o.logConfigs);
    checkUnnamed227(o.notIns);
    checkUnnamed228(o.permissions);
  }
  buildCounterRule--;
}

buildUnnamed229() {
  var o = new core.List<api.ImportFile>();
  o.add(buildImportFile());
  o.add(buildImportFile());
  return o;
}

checkUnnamed229(core.List<api.ImportFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportFile(o[0]);
  checkImportFile(o[1]);
}

core.int buildCounterTargetConfiguration = 0;
buildTargetConfiguration() {
  var o = new api.TargetConfiguration();
  buildCounterTargetConfiguration++;
  if (buildCounterTargetConfiguration < 3) {
    o.config = buildConfigFile();
    o.imports = buildUnnamed229();
  }
  buildCounterTargetConfiguration--;
  return o;
}

checkTargetConfiguration(api.TargetConfiguration o) {
  buildCounterTargetConfiguration++;
  if (buildCounterTargetConfiguration < 3) {
    checkConfigFile(o.config);
    checkUnnamed229(o.imports);
  }
  buildCounterTargetConfiguration--;
}

buildUnnamed230() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed230(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestPermissionsRequest = 0;
buildTestPermissionsRequest() {
  var o = new api.TestPermissionsRequest();
  buildCounterTestPermissionsRequest++;
  if (buildCounterTestPermissionsRequest < 3) {
    o.permissions = buildUnnamed230();
  }
  buildCounterTestPermissionsRequest--;
  return o;
}

checkTestPermissionsRequest(api.TestPermissionsRequest o) {
  buildCounterTestPermissionsRequest++;
  if (buildCounterTestPermissionsRequest < 3) {
    checkUnnamed230(o.permissions);
  }
  buildCounterTestPermissionsRequest--;
}

buildUnnamed231() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed231(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestPermissionsResponse = 0;
buildTestPermissionsResponse() {
  var o = new api.TestPermissionsResponse();
  buildCounterTestPermissionsResponse++;
  if (buildCounterTestPermissionsResponse < 3) {
    o.permissions = buildUnnamed231();
  }
  buildCounterTestPermissionsResponse--;
  return o;
}

checkTestPermissionsResponse(api.TestPermissionsResponse o) {
  buildCounterTestPermissionsResponse++;
  if (buildCounterTestPermissionsResponse < 3) {
    checkUnnamed231(o.permissions);
  }
  buildCounterTestPermissionsResponse--;
}

core.int buildCounterType = 0;
buildType() {
  var o = new api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.id = "foo";
    o.insertTime = "foo";
    o.name = "foo";
    o.operation = buildOperation();
    o.selfLink = "foo";
  }
  buildCounterType--;
  return o;
}

checkType(api.Type o) {
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

buildUnnamed232() {
  var o = new core.List<api.Type>();
  o.add(buildType());
  o.add(buildType());
  return o;
}

checkUnnamed232(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

core.int buildCounterTypesListResponse = 0;
buildTypesListResponse() {
  var o = new api.TypesListResponse();
  buildCounterTypesListResponse++;
  if (buildCounterTypesListResponse < 3) {
    o.nextPageToken = "foo";
    o.types = buildUnnamed232();
  }
  buildCounterTypesListResponse--;
  return o;
}

checkTypesListResponse(api.TypesListResponse o) {
  buildCounterTypesListResponse++;
  if (buildCounterTypesListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed232(o.types);
  }
  buildCounterTypesListResponse--;
}

main() {
  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-AuthorizationLoggingOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthorizationLoggingOptions();
      var od = new api.AuthorizationLoggingOptions.fromJson(o.toJson());
      checkAuthorizationLoggingOptions(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-Condition", () {
    unittest.test("to-json--from-json", () {
      var o = buildCondition();
      var od = new api.Condition.fromJson(o.toJson());
      checkCondition(od);
    });
  });

  unittest.group("obj-schema-ConfigFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfigFile();
      var od = new api.ConfigFile.fromJson(o.toJson());
      checkConfigFile(od);
    });
  });

  unittest.group("obj-schema-Deployment", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployment();
      var od = new api.Deployment.fromJson(o.toJson());
      checkDeployment(od);
    });
  });

  unittest.group("obj-schema-DeploymentLabelEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeploymentLabelEntry();
      var od = new api.DeploymentLabelEntry.fromJson(o.toJson());
      checkDeploymentLabelEntry(od);
    });
  });

  unittest.group("obj-schema-DeploymentUpdate", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeploymentUpdate();
      var od = new api.DeploymentUpdate.fromJson(o.toJson());
      checkDeploymentUpdate(od);
    });
  });

  unittest.group("obj-schema-DeploymentUpdateLabelEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeploymentUpdateLabelEntry();
      var od = new api.DeploymentUpdateLabelEntry.fromJson(o.toJson());
      checkDeploymentUpdateLabelEntry(od);
    });
  });

  unittest.group("obj-schema-DeploymentsCancelPreviewRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeploymentsCancelPreviewRequest();
      var od = new api.DeploymentsCancelPreviewRequest.fromJson(o.toJson());
      checkDeploymentsCancelPreviewRequest(od);
    });
  });

  unittest.group("obj-schema-DeploymentsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeploymentsListResponse();
      var od = new api.DeploymentsListResponse.fromJson(o.toJson());
      checkDeploymentsListResponse(od);
    });
  });

  unittest.group("obj-schema-DeploymentsStopRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeploymentsStopRequest();
      var od = new api.DeploymentsStopRequest.fromJson(o.toJson());
      checkDeploymentsStopRequest(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-GlobalSetPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGlobalSetPolicyRequest();
      var od = new api.GlobalSetPolicyRequest.fromJson(o.toJson());
      checkGlobalSetPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-ImportFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportFile();
      var od = new api.ImportFile.fromJson(o.toJson());
      checkImportFile(od);
    });
  });

  unittest.group("obj-schema-LogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogConfig();
      var od = new api.LogConfig.fromJson(o.toJson());
      checkLogConfig(od);
    });
  });

  unittest.group("obj-schema-LogConfigCloudAuditOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogConfigCloudAuditOptions();
      var od = new api.LogConfigCloudAuditOptions.fromJson(o.toJson());
      checkLogConfigCloudAuditOptions(od);
    });
  });

  unittest.group("obj-schema-LogConfigCounterOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogConfigCounterOptions();
      var od = new api.LogConfigCounterOptions.fromJson(o.toJson());
      checkLogConfigCounterOptions(od);
    });
  });

  unittest.group("obj-schema-LogConfigDataAccessOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogConfigDataAccessOptions();
      var od = new api.LogConfigDataAccessOptions.fromJson(o.toJson());
      checkLogConfigDataAccessOptions(od);
    });
  });

  unittest.group("obj-schema-Manifest", () {
    unittest.test("to-json--from-json", () {
      var o = buildManifest();
      var od = new api.Manifest.fromJson(o.toJson());
      checkManifest(od);
    });
  });

  unittest.group("obj-schema-ManifestsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildManifestsListResponse();
      var od = new api.ManifestsListResponse.fromJson(o.toJson());
      checkManifestsListResponse(od);
    });
  });

  unittest.group("obj-schema-OperationErrorErrors", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationErrorErrors();
      var od = new api.OperationErrorErrors.fromJson(o.toJson());
      checkOperationErrorErrors(od);
    });
  });

  unittest.group("obj-schema-OperationError", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationError();
      var od = new api.OperationError.fromJson(o.toJson());
      checkOperationError(od);
    });
  });

  unittest.group("obj-schema-OperationWarningsData", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationWarningsData();
      var od = new api.OperationWarningsData.fromJson(o.toJson());
      checkOperationWarningsData(od);
    });
  });

  unittest.group("obj-schema-OperationWarnings", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationWarnings();
      var od = new api.OperationWarnings.fromJson(o.toJson());
      checkOperationWarnings(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OperationsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationsListResponse();
      var od = new api.OperationsListResponse.fromJson(o.toJson());
      checkOperationsListResponse(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-ResourceWarningsData", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceWarningsData();
      var od = new api.ResourceWarningsData.fromJson(o.toJson());
      checkResourceWarningsData(od);
    });
  });

  unittest.group("obj-schema-ResourceWarnings", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceWarnings();
      var od = new api.ResourceWarnings.fromJson(o.toJson());
      checkResourceWarnings(od);
    });
  });

  unittest.group("obj-schema-Resource", () {
    unittest.test("to-json--from-json", () {
      var o = buildResource();
      var od = new api.Resource.fromJson(o.toJson());
      checkResource(od);
    });
  });

  unittest.group("obj-schema-ResourceAccessControl", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceAccessControl();
      var od = new api.ResourceAccessControl.fromJson(o.toJson());
      checkResourceAccessControl(od);
    });
  });

  unittest.group("obj-schema-ResourceUpdateErrorErrors", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceUpdateErrorErrors();
      var od = new api.ResourceUpdateErrorErrors.fromJson(o.toJson());
      checkResourceUpdateErrorErrors(od);
    });
  });

  unittest.group("obj-schema-ResourceUpdateError", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceUpdateError();
      var od = new api.ResourceUpdateError.fromJson(o.toJson());
      checkResourceUpdateError(od);
    });
  });

  unittest.group("obj-schema-ResourceUpdateWarningsData", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceUpdateWarningsData();
      var od = new api.ResourceUpdateWarningsData.fromJson(o.toJson());
      checkResourceUpdateWarningsData(od);
    });
  });

  unittest.group("obj-schema-ResourceUpdateWarnings", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceUpdateWarnings();
      var od = new api.ResourceUpdateWarnings.fromJson(o.toJson());
      checkResourceUpdateWarnings(od);
    });
  });

  unittest.group("obj-schema-ResourceUpdate", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceUpdate();
      var od = new api.ResourceUpdate.fromJson(o.toJson());
      checkResourceUpdate(od);
    });
  });

  unittest.group("obj-schema-ResourcesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourcesListResponse();
      var od = new api.ResourcesListResponse.fromJson(o.toJson());
      checkResourcesListResponse(od);
    });
  });

  unittest.group("obj-schema-Rule", () {
    unittest.test("to-json--from-json", () {
      var o = buildRule();
      var od = new api.Rule.fromJson(o.toJson());
      checkRule(od);
    });
  });

  unittest.group("obj-schema-TargetConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetConfiguration();
      var od = new api.TargetConfiguration.fromJson(o.toJson());
      checkTargetConfiguration(od);
    });
  });

  unittest.group("obj-schema-TestPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestPermissionsRequest();
      var od = new api.TestPermissionsRequest.fromJson(o.toJson());
      checkTestPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestPermissionsResponse();
      var od = new api.TestPermissionsResponse.fromJson(o.toJson());
      checkTestPermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-Type", () {
    unittest.test("to-json--from-json", () {
      var o = buildType();
      var od = new api.Type.fromJson(o.toJson());
      checkType(od);
    });
  });

  unittest.group("obj-schema-TypesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTypesListResponse();
      var od = new api.TypesListResponse.fromJson(o.toJson());
      checkTypesListResponse(od);
    });
  });

  unittest.group("resource-DeploymentsResourceApi", () {
    unittest.test("method--cancelPreview", () {
      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res =
          new api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildDeploymentsCancelPreviewRequest();
      var arg_project = "foo";
      var arg_deployment = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeploymentsCancelPreviewRequest.fromJson(json);
        checkDeploymentsCancelPreviewRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancelPreview(arg_request, arg_project, arg_deployment,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res =
          new api.DeploymentmanagerApi(mock).deployments;
      var arg_project = "foo";
      var arg_deployment = "foo";
      var arg_deletePolicy = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["deletePolicy"].first, unittest.equals(arg_deletePolicy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_deployment,
              deletePolicy: arg_deletePolicy, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res =
          new api.DeploymentmanagerApi(mock).deployments;
      var arg_project = "foo";
      var arg_deployment = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDeployment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_deployment, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeployment(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res =
          new api.DeploymentmanagerApi(mock).deployments;
      var arg_project = "foo";
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_project, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res =
          new api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildDeployment();
      var arg_project = "foo";
      var arg_createPolicy = "foo";
      var arg_preview = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Deployment.fromJson(json);
        checkDeployment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["createPolicy"].first, unittest.equals(arg_createPolicy));
        unittest.expect(
            queryMap["preview"].first, unittest.equals("$arg_preview"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res =
          new api.DeploymentmanagerApi(mock).deployments;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDeploymentsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeploymentsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res =
          new api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildDeployment();
      var arg_project = "foo";
      var arg_deployment = "foo";
      var arg_createPolicy = "foo";
      var arg_deletePolicy = "foo";
      var arg_preview = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Deployment.fromJson(json);
        checkDeployment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_deployment,
              createPolicy: arg_createPolicy,
              deletePolicy: arg_deletePolicy,
              preview: arg_preview,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res =
          new api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildGlobalSetPolicyRequest();
      var arg_project = "foo";
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GlobalSetPolicyRequest.fromJson(json);
        checkGlobalSetPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_project, arg_resource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--stop", () {
      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res =
          new api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildDeploymentsStopRequest();
      var arg_project = "foo";
      var arg_deployment = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeploymentsStopRequest.fromJson(json);
        checkDeploymentsStopRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, arg_project, arg_deployment, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res =
          new api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildTestPermissionsRequest();
      var arg_project = "foo";
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestPermissionsRequest.fromJson(json);
        checkTestPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_project, arg_resource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestPermissionsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.DeploymentsResourceApi res =
          new api.DeploymentmanagerApi(mock).deployments;
      var arg_request = buildDeployment();
      var arg_project = "foo";
      var arg_deployment = "foo";
      var arg_createPolicy = "foo";
      var arg_deletePolicy = "foo";
      var arg_preview = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Deployment.fromJson(json);
        checkDeployment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-ManifestsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ManifestsResourceApi res =
          new api.DeploymentmanagerApi(mock).manifests;
      var arg_project = "foo";
      var arg_deployment = "foo";
      var arg_manifest = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildManifest());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_deployment, arg_manifest, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManifest(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ManifestsResourceApi res =
          new api.DeploymentmanagerApi(mock).manifests;
      var arg_project = "foo";
      var arg_deployment = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildManifestsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_deployment,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManifestsListResponse(response);
      })));
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.DeploymentmanagerApi(mock).operations;
      var arg_project = "foo";
      var arg_operation = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_operation, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.DeploymentmanagerApi(mock).operations;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperationsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperationsListResponse(response);
      })));
    });
  });

  unittest.group("resource-ResourcesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ResourcesResourceApi res =
          new api.DeploymentmanagerApi(mock).resources;
      var arg_project = "foo";
      var arg_deployment = "foo";
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildResource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_deployment, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResource(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ResourcesResourceApi res =
          new api.DeploymentmanagerApi(mock).resources;
      var arg_project = "foo";
      var arg_deployment = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildResourcesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_deployment,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResourcesListResponse(response);
      })));
    });
  });

  unittest.group("resource-TypesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TypesResourceApi res = new api.DeploymentmanagerApi(mock).types;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTypesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTypesListResponse(response);
      })));
    });
  });
}
