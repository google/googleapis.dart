// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/run/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Future<http.StreamedResponse> Function(http.BaseRequest, core.Object)
      _callback;
  core.bool _expectJson;

  void register(
    core.Future<http.StreamedResponse> Function(
      http.BaseRequest bob,
      core.Object foo,
    )
        callback,
    core.bool expectJson,
  ) {
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

core.int buildCounterAddressable = 0;
api.Addressable buildAddressable() {
  var o = api.Addressable();
  buildCounterAddressable++;
  if (buildCounterAddressable < 3) {
    o.url = 'foo';
  }
  buildCounterAddressable--;
  return o;
}

void checkAddressable(api.Addressable o) {
  buildCounterAddressable++;
  if (buildCounterAddressable < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterAddressable--;
}

core.List<api.AuditLogConfig> buildUnnamed1408() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed1408(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1408();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1408(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1409() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1409(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1409();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1409(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthorizedDomain = 0;
api.AuthorizedDomain buildAuthorizedDomain() {
  var o = api.AuthorizedDomain();
  buildCounterAuthorizedDomain++;
  if (buildCounterAuthorizedDomain < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterAuthorizedDomain--;
  return o;
}

void checkAuthorizedDomain(api.AuthorizedDomain o) {
  buildCounterAuthorizedDomain++;
  if (buildCounterAuthorizedDomain < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAuthorizedDomain--;
}

core.List<core.String> buildUnnamed1410() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1410(core.List<core.String> o) {
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
    o.members = buildUnnamed1410();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition as api.Expr);
    checkUnnamed1410(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterConfigMapEnvSource = 0;
api.ConfigMapEnvSource buildConfigMapEnvSource() {
  var o = api.ConfigMapEnvSource();
  buildCounterConfigMapEnvSource++;
  if (buildCounterConfigMapEnvSource < 3) {
    o.localObjectReference = buildLocalObjectReference();
    o.name = 'foo';
    o.optional = true;
  }
  buildCounterConfigMapEnvSource--;
  return o;
}

void checkConfigMapEnvSource(api.ConfigMapEnvSource o) {
  buildCounterConfigMapEnvSource++;
  if (buildCounterConfigMapEnvSource < 3) {
    checkLocalObjectReference(
        o.localObjectReference as api.LocalObjectReference);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optional, unittest.isTrue);
  }
  buildCounterConfigMapEnvSource--;
}

core.int buildCounterConfigMapKeySelector = 0;
api.ConfigMapKeySelector buildConfigMapKeySelector() {
  var o = api.ConfigMapKeySelector();
  buildCounterConfigMapKeySelector++;
  if (buildCounterConfigMapKeySelector < 3) {
    o.key = 'foo';
    o.localObjectReference = buildLocalObjectReference();
    o.name = 'foo';
    o.optional = true;
  }
  buildCounterConfigMapKeySelector--;
  return o;
}

void checkConfigMapKeySelector(api.ConfigMapKeySelector o) {
  buildCounterConfigMapKeySelector++;
  if (buildCounterConfigMapKeySelector < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkLocalObjectReference(
        o.localObjectReference as api.LocalObjectReference);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optional, unittest.isTrue);
  }
  buildCounterConfigMapKeySelector--;
}

core.List<api.KeyToPath> buildUnnamed1411() {
  var o = <api.KeyToPath>[];
  o.add(buildKeyToPath());
  o.add(buildKeyToPath());
  return o;
}

void checkUnnamed1411(core.List<api.KeyToPath> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyToPath(o[0] as api.KeyToPath);
  checkKeyToPath(o[1] as api.KeyToPath);
}

core.int buildCounterConfigMapVolumeSource = 0;
api.ConfigMapVolumeSource buildConfigMapVolumeSource() {
  var o = api.ConfigMapVolumeSource();
  buildCounterConfigMapVolumeSource++;
  if (buildCounterConfigMapVolumeSource < 3) {
    o.defaultMode = 42;
    o.items = buildUnnamed1411();
    o.name = 'foo';
    o.optional = true;
  }
  buildCounterConfigMapVolumeSource--;
  return o;
}

void checkConfigMapVolumeSource(api.ConfigMapVolumeSource o) {
  buildCounterConfigMapVolumeSource++;
  if (buildCounterConfigMapVolumeSource < 3) {
    unittest.expect(o.defaultMode, unittest.equals(42));
    checkUnnamed1411(o.items);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optional, unittest.isTrue);
  }
  buildCounterConfigMapVolumeSource--;
}

core.int buildCounterConfiguration = 0;
api.Configuration buildConfiguration() {
  var o = api.Configuration();
  buildCounterConfiguration++;
  if (buildCounterConfiguration < 3) {
    o.apiVersion = 'foo';
    o.kind = 'foo';
    o.metadata = buildObjectMeta();
    o.spec = buildConfigurationSpec();
    o.status = buildConfigurationStatus();
  }
  buildCounterConfiguration--;
  return o;
}

void checkConfiguration(api.Configuration o) {
  buildCounterConfiguration++;
  if (buildCounterConfiguration < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkObjectMeta(o.metadata as api.ObjectMeta);
    checkConfigurationSpec(o.spec as api.ConfigurationSpec);
    checkConfigurationStatus(o.status as api.ConfigurationStatus);
  }
  buildCounterConfiguration--;
}

core.int buildCounterConfigurationSpec = 0;
api.ConfigurationSpec buildConfigurationSpec() {
  var o = api.ConfigurationSpec();
  buildCounterConfigurationSpec++;
  if (buildCounterConfigurationSpec < 3) {
    o.template = buildRevisionTemplate();
  }
  buildCounterConfigurationSpec--;
  return o;
}

void checkConfigurationSpec(api.ConfigurationSpec o) {
  buildCounterConfigurationSpec++;
  if (buildCounterConfigurationSpec < 3) {
    checkRevisionTemplate(o.template as api.RevisionTemplate);
  }
  buildCounterConfigurationSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed1412() {
  var o = <api.GoogleCloudRunV1Condition>[];
  o.add(buildGoogleCloudRunV1Condition());
  o.add(buildGoogleCloudRunV1Condition());
  return o;
}

void checkUnnamed1412(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0] as api.GoogleCloudRunV1Condition);
  checkGoogleCloudRunV1Condition(o[1] as api.GoogleCloudRunV1Condition);
}

core.int buildCounterConfigurationStatus = 0;
api.ConfigurationStatus buildConfigurationStatus() {
  var o = api.ConfigurationStatus();
  buildCounterConfigurationStatus++;
  if (buildCounterConfigurationStatus < 3) {
    o.conditions = buildUnnamed1412();
    o.latestCreatedRevisionName = 'foo';
    o.latestReadyRevisionName = 'foo';
    o.observedGeneration = 42;
  }
  buildCounterConfigurationStatus--;
  return o;
}

void checkConfigurationStatus(api.ConfigurationStatus o) {
  buildCounterConfigurationStatus++;
  if (buildCounterConfigurationStatus < 3) {
    checkUnnamed1412(o.conditions);
    unittest.expect(o.latestCreatedRevisionName, unittest.equals('foo'));
    unittest.expect(o.latestReadyRevisionName, unittest.equals('foo'));
    unittest.expect(o.observedGeneration, unittest.equals(42));
  }
  buildCounterConfigurationStatus--;
}

core.List<core.String> buildUnnamed1413() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1413(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1414() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1414(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.EnvVar> buildUnnamed1415() {
  var o = <api.EnvVar>[];
  o.add(buildEnvVar());
  o.add(buildEnvVar());
  return o;
}

void checkUnnamed1415(core.List<api.EnvVar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvVar(o[0] as api.EnvVar);
  checkEnvVar(o[1] as api.EnvVar);
}

core.List<api.EnvFromSource> buildUnnamed1416() {
  var o = <api.EnvFromSource>[];
  o.add(buildEnvFromSource());
  o.add(buildEnvFromSource());
  return o;
}

void checkUnnamed1416(core.List<api.EnvFromSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvFromSource(o[0] as api.EnvFromSource);
  checkEnvFromSource(o[1] as api.EnvFromSource);
}

core.List<api.ContainerPort> buildUnnamed1417() {
  var o = <api.ContainerPort>[];
  o.add(buildContainerPort());
  o.add(buildContainerPort());
  return o;
}

void checkUnnamed1417(core.List<api.ContainerPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainerPort(o[0] as api.ContainerPort);
  checkContainerPort(o[1] as api.ContainerPort);
}

core.List<api.VolumeMount> buildUnnamed1418() {
  var o = <api.VolumeMount>[];
  o.add(buildVolumeMount());
  o.add(buildVolumeMount());
  return o;
}

void checkUnnamed1418(core.List<api.VolumeMount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeMount(o[0] as api.VolumeMount);
  checkVolumeMount(o[1] as api.VolumeMount);
}

core.int buildCounterContainer = 0;
api.Container buildContainer() {
  var o = api.Container();
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    o.args = buildUnnamed1413();
    o.command = buildUnnamed1414();
    o.env = buildUnnamed1415();
    o.envFrom = buildUnnamed1416();
    o.image = 'foo';
    o.imagePullPolicy = 'foo';
    o.livenessProbe = buildProbe();
    o.name = 'foo';
    o.ports = buildUnnamed1417();
    o.readinessProbe = buildProbe();
    o.resources = buildResourceRequirements();
    o.securityContext = buildSecurityContext();
    o.terminationMessagePath = 'foo';
    o.terminationMessagePolicy = 'foo';
    o.volumeMounts = buildUnnamed1418();
    o.workingDir = 'foo';
  }
  buildCounterContainer--;
  return o;
}

void checkContainer(api.Container o) {
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    checkUnnamed1413(o.args);
    checkUnnamed1414(o.command);
    checkUnnamed1415(o.env);
    checkUnnamed1416(o.envFrom);
    unittest.expect(o.image, unittest.equals('foo'));
    unittest.expect(o.imagePullPolicy, unittest.equals('foo'));
    checkProbe(o.livenessProbe as api.Probe);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1417(o.ports);
    checkProbe(o.readinessProbe as api.Probe);
    checkResourceRequirements(o.resources as api.ResourceRequirements);
    checkSecurityContext(o.securityContext as api.SecurityContext);
    unittest.expect(o.terminationMessagePath, unittest.equals('foo'));
    unittest.expect(o.terminationMessagePolicy, unittest.equals('foo'));
    checkUnnamed1418(o.volumeMounts);
    unittest.expect(o.workingDir, unittest.equals('foo'));
  }
  buildCounterContainer--;
}

core.int buildCounterContainerPort = 0;
api.ContainerPort buildContainerPort() {
  var o = api.ContainerPort();
  buildCounterContainerPort++;
  if (buildCounterContainerPort < 3) {
    o.containerPort = 42;
    o.name = 'foo';
    o.protocol = 'foo';
  }
  buildCounterContainerPort--;
  return o;
}

void checkContainerPort(api.ContainerPort o) {
  buildCounterContainerPort++;
  if (buildCounterContainerPort < 3) {
    unittest.expect(o.containerPort, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.protocol, unittest.equals('foo'));
  }
  buildCounterContainerPort--;
}

core.int buildCounterDomainMapping = 0;
api.DomainMapping buildDomainMapping() {
  var o = api.DomainMapping();
  buildCounterDomainMapping++;
  if (buildCounterDomainMapping < 3) {
    o.apiVersion = 'foo';
    o.kind = 'foo';
    o.metadata = buildObjectMeta();
    o.spec = buildDomainMappingSpec();
    o.status = buildDomainMappingStatus();
  }
  buildCounterDomainMapping--;
  return o;
}

void checkDomainMapping(api.DomainMapping o) {
  buildCounterDomainMapping++;
  if (buildCounterDomainMapping < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkObjectMeta(o.metadata as api.ObjectMeta);
    checkDomainMappingSpec(o.spec as api.DomainMappingSpec);
    checkDomainMappingStatus(o.status as api.DomainMappingStatus);
  }
  buildCounterDomainMapping--;
}

core.int buildCounterDomainMappingSpec = 0;
api.DomainMappingSpec buildDomainMappingSpec() {
  var o = api.DomainMappingSpec();
  buildCounterDomainMappingSpec++;
  if (buildCounterDomainMappingSpec < 3) {
    o.certificateMode = 'foo';
    o.forceOverride = true;
    o.routeName = 'foo';
  }
  buildCounterDomainMappingSpec--;
  return o;
}

void checkDomainMappingSpec(api.DomainMappingSpec o) {
  buildCounterDomainMappingSpec++;
  if (buildCounterDomainMappingSpec < 3) {
    unittest.expect(o.certificateMode, unittest.equals('foo'));
    unittest.expect(o.forceOverride, unittest.isTrue);
    unittest.expect(o.routeName, unittest.equals('foo'));
  }
  buildCounterDomainMappingSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed1419() {
  var o = <api.GoogleCloudRunV1Condition>[];
  o.add(buildGoogleCloudRunV1Condition());
  o.add(buildGoogleCloudRunV1Condition());
  return o;
}

void checkUnnamed1419(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0] as api.GoogleCloudRunV1Condition);
  checkGoogleCloudRunV1Condition(o[1] as api.GoogleCloudRunV1Condition);
}

core.List<api.ResourceRecord> buildUnnamed1420() {
  var o = <api.ResourceRecord>[];
  o.add(buildResourceRecord());
  o.add(buildResourceRecord());
  return o;
}

void checkUnnamed1420(core.List<api.ResourceRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecord(o[0] as api.ResourceRecord);
  checkResourceRecord(o[1] as api.ResourceRecord);
}

core.int buildCounterDomainMappingStatus = 0;
api.DomainMappingStatus buildDomainMappingStatus() {
  var o = api.DomainMappingStatus();
  buildCounterDomainMappingStatus++;
  if (buildCounterDomainMappingStatus < 3) {
    o.conditions = buildUnnamed1419();
    o.mappedRouteName = 'foo';
    o.observedGeneration = 42;
    o.resourceRecords = buildUnnamed1420();
    o.url = 'foo';
  }
  buildCounterDomainMappingStatus--;
  return o;
}

void checkDomainMappingStatus(api.DomainMappingStatus o) {
  buildCounterDomainMappingStatus++;
  if (buildCounterDomainMappingStatus < 3) {
    checkUnnamed1419(o.conditions);
    unittest.expect(o.mappedRouteName, unittest.equals('foo'));
    unittest.expect(o.observedGeneration, unittest.equals(42));
    checkUnnamed1420(o.resourceRecords);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterDomainMappingStatus--;
}

core.int buildCounterEnvFromSource = 0;
api.EnvFromSource buildEnvFromSource() {
  var o = api.EnvFromSource();
  buildCounterEnvFromSource++;
  if (buildCounterEnvFromSource < 3) {
    o.configMapRef = buildConfigMapEnvSource();
    o.prefix = 'foo';
    o.secretRef = buildSecretEnvSource();
  }
  buildCounterEnvFromSource--;
  return o;
}

void checkEnvFromSource(api.EnvFromSource o) {
  buildCounterEnvFromSource++;
  if (buildCounterEnvFromSource < 3) {
    checkConfigMapEnvSource(o.configMapRef as api.ConfigMapEnvSource);
    unittest.expect(o.prefix, unittest.equals('foo'));
    checkSecretEnvSource(o.secretRef as api.SecretEnvSource);
  }
  buildCounterEnvFromSource--;
}

core.int buildCounterEnvVar = 0;
api.EnvVar buildEnvVar() {
  var o = api.EnvVar();
  buildCounterEnvVar++;
  if (buildCounterEnvVar < 3) {
    o.name = 'foo';
    o.value = 'foo';
    o.valueFrom = buildEnvVarSource();
  }
  buildCounterEnvVar--;
  return o;
}

void checkEnvVar(api.EnvVar o) {
  buildCounterEnvVar++;
  if (buildCounterEnvVar < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
    checkEnvVarSource(o.valueFrom as api.EnvVarSource);
  }
  buildCounterEnvVar--;
}

core.int buildCounterEnvVarSource = 0;
api.EnvVarSource buildEnvVarSource() {
  var o = api.EnvVarSource();
  buildCounterEnvVarSource++;
  if (buildCounterEnvVarSource < 3) {
    o.configMapKeyRef = buildConfigMapKeySelector();
    o.secretKeyRef = buildSecretKeySelector();
  }
  buildCounterEnvVarSource--;
  return o;
}

void checkEnvVarSource(api.EnvVarSource o) {
  buildCounterEnvVarSource++;
  if (buildCounterEnvVarSource < 3) {
    checkConfigMapKeySelector(o.configMapKeyRef as api.ConfigMapKeySelector);
    checkSecretKeySelector(o.secretKeyRef as api.SecretKeySelector);
  }
  buildCounterEnvVarSource--;
}

core.List<core.String> buildUnnamed1421() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1421(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExecAction = 0;
api.ExecAction buildExecAction() {
  var o = api.ExecAction();
  buildCounterExecAction++;
  if (buildCounterExecAction < 3) {
    o.command = buildUnnamed1421();
  }
  buildCounterExecAction--;
  return o;
}

void checkExecAction(api.ExecAction o) {
  buildCounterExecAction++;
  if (buildCounterExecAction < 3) {
    checkUnnamed1421(o.command);
  }
  buildCounterExecAction--;
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

core.int buildCounterGoogleCloudRunV1Condition = 0;
api.GoogleCloudRunV1Condition buildGoogleCloudRunV1Condition() {
  var o = api.GoogleCloudRunV1Condition();
  buildCounterGoogleCloudRunV1Condition++;
  if (buildCounterGoogleCloudRunV1Condition < 3) {
    o.lastTransitionTime = 'foo';
    o.message = 'foo';
    o.reason = 'foo';
    o.severity = 'foo';
    o.status = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudRunV1Condition--;
  return o;
}

void checkGoogleCloudRunV1Condition(api.GoogleCloudRunV1Condition o) {
  buildCounterGoogleCloudRunV1Condition++;
  if (buildCounterGoogleCloudRunV1Condition < 3) {
    unittest.expect(o.lastTransitionTime, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRunV1Condition--;
}

core.List<api.HTTPHeader> buildUnnamed1422() {
  var o = <api.HTTPHeader>[];
  o.add(buildHTTPHeader());
  o.add(buildHTTPHeader());
  return o;
}

void checkUnnamed1422(core.List<api.HTTPHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHTTPHeader(o[0] as api.HTTPHeader);
  checkHTTPHeader(o[1] as api.HTTPHeader);
}

core.int buildCounterHTTPGetAction = 0;
api.HTTPGetAction buildHTTPGetAction() {
  var o = api.HTTPGetAction();
  buildCounterHTTPGetAction++;
  if (buildCounterHTTPGetAction < 3) {
    o.host = 'foo';
    o.httpHeaders = buildUnnamed1422();
    o.path = 'foo';
    o.scheme = 'foo';
  }
  buildCounterHTTPGetAction--;
  return o;
}

void checkHTTPGetAction(api.HTTPGetAction o) {
  buildCounterHTTPGetAction++;
  if (buildCounterHTTPGetAction < 3) {
    unittest.expect(o.host, unittest.equals('foo'));
    checkUnnamed1422(o.httpHeaders);
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.scheme, unittest.equals('foo'));
  }
  buildCounterHTTPGetAction--;
}

core.int buildCounterHTTPHeader = 0;
api.HTTPHeader buildHTTPHeader() {
  var o = api.HTTPHeader();
  buildCounterHTTPHeader++;
  if (buildCounterHTTPHeader < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterHTTPHeader--;
  return o;
}

void checkHTTPHeader(api.HTTPHeader o) {
  buildCounterHTTPHeader++;
  if (buildCounterHTTPHeader < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterHTTPHeader--;
}

core.int buildCounterKeyToPath = 0;
api.KeyToPath buildKeyToPath() {
  var o = api.KeyToPath();
  buildCounterKeyToPath++;
  if (buildCounterKeyToPath < 3) {
    o.key = 'foo';
    o.mode = 42;
    o.path = 'foo';
  }
  buildCounterKeyToPath--;
  return o;
}

void checkKeyToPath(api.KeyToPath o) {
  buildCounterKeyToPath++;
  if (buildCounterKeyToPath < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.mode, unittest.equals(42));
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterKeyToPath--;
}

core.List<api.AuthorizedDomain> buildUnnamed1423() {
  var o = <api.AuthorizedDomain>[];
  o.add(buildAuthorizedDomain());
  o.add(buildAuthorizedDomain());
  return o;
}

void checkUnnamed1423(core.List<api.AuthorizedDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizedDomain(o[0] as api.AuthorizedDomain);
  checkAuthorizedDomain(o[1] as api.AuthorizedDomain);
}

core.int buildCounterListAuthorizedDomainsResponse = 0;
api.ListAuthorizedDomainsResponse buildListAuthorizedDomainsResponse() {
  var o = api.ListAuthorizedDomainsResponse();
  buildCounterListAuthorizedDomainsResponse++;
  if (buildCounterListAuthorizedDomainsResponse < 3) {
    o.domains = buildUnnamed1423();
    o.nextPageToken = 'foo';
  }
  buildCounterListAuthorizedDomainsResponse--;
  return o;
}

void checkListAuthorizedDomainsResponse(api.ListAuthorizedDomainsResponse o) {
  buildCounterListAuthorizedDomainsResponse++;
  if (buildCounterListAuthorizedDomainsResponse < 3) {
    checkUnnamed1423(o.domains);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAuthorizedDomainsResponse--;
}

core.List<api.Configuration> buildUnnamed1424() {
  var o = <api.Configuration>[];
  o.add(buildConfiguration());
  o.add(buildConfiguration());
  return o;
}

void checkUnnamed1424(core.List<api.Configuration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfiguration(o[0] as api.Configuration);
  checkConfiguration(o[1] as api.Configuration);
}

core.List<core.String> buildUnnamed1425() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1425(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListConfigurationsResponse = 0;
api.ListConfigurationsResponse buildListConfigurationsResponse() {
  var o = api.ListConfigurationsResponse();
  buildCounterListConfigurationsResponse++;
  if (buildCounterListConfigurationsResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed1424();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1425();
  }
  buildCounterListConfigurationsResponse--;
  return o;
}

void checkListConfigurationsResponse(api.ListConfigurationsResponse o) {
  buildCounterListConfigurationsResponse++;
  if (buildCounterListConfigurationsResponse < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    checkUnnamed1424(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkListMeta(o.metadata as api.ListMeta);
    checkUnnamed1425(o.unreachable);
  }
  buildCounterListConfigurationsResponse--;
}

core.List<api.DomainMapping> buildUnnamed1426() {
  var o = <api.DomainMapping>[];
  o.add(buildDomainMapping());
  o.add(buildDomainMapping());
  return o;
}

void checkUnnamed1426(core.List<api.DomainMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainMapping(o[0] as api.DomainMapping);
  checkDomainMapping(o[1] as api.DomainMapping);
}

core.List<core.String> buildUnnamed1427() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1427(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDomainMappingsResponse = 0;
api.ListDomainMappingsResponse buildListDomainMappingsResponse() {
  var o = api.ListDomainMappingsResponse();
  buildCounterListDomainMappingsResponse++;
  if (buildCounterListDomainMappingsResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed1426();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1427();
  }
  buildCounterListDomainMappingsResponse--;
  return o;
}

void checkListDomainMappingsResponse(api.ListDomainMappingsResponse o) {
  buildCounterListDomainMappingsResponse++;
  if (buildCounterListDomainMappingsResponse < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    checkUnnamed1426(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkListMeta(o.metadata as api.ListMeta);
    checkUnnamed1427(o.unreachable);
  }
  buildCounterListDomainMappingsResponse--;
}

core.List<api.Location> buildUnnamed1428() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed1428(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed1428();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed1428(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.int buildCounterListMeta = 0;
api.ListMeta buildListMeta() {
  var o = api.ListMeta();
  buildCounterListMeta++;
  if (buildCounterListMeta < 3) {
    o.continue_ = 'foo';
    o.resourceVersion = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterListMeta--;
  return o;
}

void checkListMeta(api.ListMeta o) {
  buildCounterListMeta++;
  if (buildCounterListMeta < 3) {
    unittest.expect(o.continue_, unittest.equals('foo'));
    unittest.expect(o.resourceVersion, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterListMeta--;
}

core.List<api.Revision> buildUnnamed1429() {
  var o = <api.Revision>[];
  o.add(buildRevision());
  o.add(buildRevision());
  return o;
}

void checkUnnamed1429(core.List<api.Revision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevision(o[0] as api.Revision);
  checkRevision(o[1] as api.Revision);
}

core.List<core.String> buildUnnamed1430() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1430(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListRevisionsResponse = 0;
api.ListRevisionsResponse buildListRevisionsResponse() {
  var o = api.ListRevisionsResponse();
  buildCounterListRevisionsResponse++;
  if (buildCounterListRevisionsResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed1429();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1430();
  }
  buildCounterListRevisionsResponse--;
  return o;
}

void checkListRevisionsResponse(api.ListRevisionsResponse o) {
  buildCounterListRevisionsResponse++;
  if (buildCounterListRevisionsResponse < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    checkUnnamed1429(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkListMeta(o.metadata as api.ListMeta);
    checkUnnamed1430(o.unreachable);
  }
  buildCounterListRevisionsResponse--;
}

core.List<api.Route> buildUnnamed1431() {
  var o = <api.Route>[];
  o.add(buildRoute());
  o.add(buildRoute());
  return o;
}

void checkUnnamed1431(core.List<api.Route> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoute(o[0] as api.Route);
  checkRoute(o[1] as api.Route);
}

core.List<core.String> buildUnnamed1432() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1432(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListRoutesResponse = 0;
api.ListRoutesResponse buildListRoutesResponse() {
  var o = api.ListRoutesResponse();
  buildCounterListRoutesResponse++;
  if (buildCounterListRoutesResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed1431();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1432();
  }
  buildCounterListRoutesResponse--;
  return o;
}

void checkListRoutesResponse(api.ListRoutesResponse o) {
  buildCounterListRoutesResponse++;
  if (buildCounterListRoutesResponse < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    checkUnnamed1431(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkListMeta(o.metadata as api.ListMeta);
    checkUnnamed1432(o.unreachable);
  }
  buildCounterListRoutesResponse--;
}

core.List<api.Service> buildUnnamed1433() {
  var o = <api.Service>[];
  o.add(buildService());
  o.add(buildService());
  return o;
}

void checkUnnamed1433(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0] as api.Service);
  checkService(o[1] as api.Service);
}

core.List<core.String> buildUnnamed1434() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1434(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListServicesResponse = 0;
api.ListServicesResponse buildListServicesResponse() {
  var o = api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed1433();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1434();
  }
  buildCounterListServicesResponse--;
  return o;
}

void checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    checkUnnamed1433(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkListMeta(o.metadata as api.ListMeta);
    checkUnnamed1434(o.unreachable);
  }
  buildCounterListServicesResponse--;
}

core.int buildCounterLocalObjectReference = 0;
api.LocalObjectReference buildLocalObjectReference() {
  var o = api.LocalObjectReference();
  buildCounterLocalObjectReference++;
  if (buildCounterLocalObjectReference < 3) {
    o.name = 'foo';
  }
  buildCounterLocalObjectReference--;
  return o;
}

void checkLocalObjectReference(api.LocalObjectReference o) {
  buildCounterLocalObjectReference++;
  if (buildCounterLocalObjectReference < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocalObjectReference--;
}

core.Map<core.String, core.String> buildUnnamed1435() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1435(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed1436() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed1436(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed1435();
    o.locationId = 'foo';
    o.metadata = buildUnnamed1436();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed1435(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed1436(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed1437() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1437(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1438() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1438(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed1439() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1439(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.OwnerReference> buildUnnamed1440() {
  var o = <api.OwnerReference>[];
  o.add(buildOwnerReference());
  o.add(buildOwnerReference());
  return o;
}

void checkUnnamed1440(core.List<api.OwnerReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOwnerReference(o[0] as api.OwnerReference);
  checkOwnerReference(o[1] as api.OwnerReference);
}

core.int buildCounterObjectMeta = 0;
api.ObjectMeta buildObjectMeta() {
  var o = api.ObjectMeta();
  buildCounterObjectMeta++;
  if (buildCounterObjectMeta < 3) {
    o.annotations = buildUnnamed1437();
    o.clusterName = 'foo';
    o.creationTimestamp = 'foo';
    o.deletionGracePeriodSeconds = 42;
    o.deletionTimestamp = 'foo';
    o.finalizers = buildUnnamed1438();
    o.generateName = 'foo';
    o.generation = 42;
    o.labels = buildUnnamed1439();
    o.name = 'foo';
    o.namespace = 'foo';
    o.ownerReferences = buildUnnamed1440();
    o.resourceVersion = 'foo';
    o.selfLink = 'foo';
    o.uid = 'foo';
  }
  buildCounterObjectMeta--;
  return o;
}

void checkObjectMeta(api.ObjectMeta o) {
  buildCounterObjectMeta++;
  if (buildCounterObjectMeta < 3) {
    checkUnnamed1437(o.annotations);
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.deletionGracePeriodSeconds, unittest.equals(42));
    unittest.expect(o.deletionTimestamp, unittest.equals('foo'));
    checkUnnamed1438(o.finalizers);
    unittest.expect(o.generateName, unittest.equals('foo'));
    unittest.expect(o.generation, unittest.equals(42));
    checkUnnamed1439(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.namespace, unittest.equals('foo'));
    checkUnnamed1440(o.ownerReferences);
    unittest.expect(o.resourceVersion, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterObjectMeta--;
}

core.int buildCounterOwnerReference = 0;
api.OwnerReference buildOwnerReference() {
  var o = api.OwnerReference();
  buildCounterOwnerReference++;
  if (buildCounterOwnerReference < 3) {
    o.apiVersion = 'foo';
    o.blockOwnerDeletion = true;
    o.controller = true;
    o.kind = 'foo';
    o.name = 'foo';
    o.uid = 'foo';
  }
  buildCounterOwnerReference--;
  return o;
}

void checkOwnerReference(api.OwnerReference o) {
  buildCounterOwnerReference++;
  if (buildCounterOwnerReference < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.blockOwnerDeletion, unittest.isTrue);
    unittest.expect(o.controller, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterOwnerReference--;
}

core.List<api.AuditConfig> buildUnnamed1441() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed1441(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed1442() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed1442(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed1441();
    o.bindings = buildUnnamed1442();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed1441(o.auditConfigs);
    checkUnnamed1442(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterProbe = 0;
api.Probe buildProbe() {
  var o = api.Probe();
  buildCounterProbe++;
  if (buildCounterProbe < 3) {
    o.exec = buildExecAction();
    o.failureThreshold = 42;
    o.httpGet = buildHTTPGetAction();
    o.initialDelaySeconds = 42;
    o.periodSeconds = 42;
    o.successThreshold = 42;
    o.tcpSocket = buildTCPSocketAction();
    o.timeoutSeconds = 42;
  }
  buildCounterProbe--;
  return o;
}

void checkProbe(api.Probe o) {
  buildCounterProbe++;
  if (buildCounterProbe < 3) {
    checkExecAction(o.exec as api.ExecAction);
    unittest.expect(o.failureThreshold, unittest.equals(42));
    checkHTTPGetAction(o.httpGet as api.HTTPGetAction);
    unittest.expect(o.initialDelaySeconds, unittest.equals(42));
    unittest.expect(o.periodSeconds, unittest.equals(42));
    unittest.expect(o.successThreshold, unittest.equals(42));
    checkTCPSocketAction(o.tcpSocket as api.TCPSocketAction);
    unittest.expect(o.timeoutSeconds, unittest.equals(42));
  }
  buildCounterProbe--;
}

core.int buildCounterResourceRecord = 0;
api.ResourceRecord buildResourceRecord() {
  var o = api.ResourceRecord();
  buildCounterResourceRecord++;
  if (buildCounterResourceRecord < 3) {
    o.name = 'foo';
    o.rrdata = 'foo';
    o.type = 'foo';
  }
  buildCounterResourceRecord--;
  return o;
}

void checkResourceRecord(api.ResourceRecord o) {
  buildCounterResourceRecord++;
  if (buildCounterResourceRecord < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.rrdata, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterResourceRecord--;
}

core.Map<core.String, core.String> buildUnnamed1443() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1443(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed1444() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1444(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterResourceRequirements = 0;
api.ResourceRequirements buildResourceRequirements() {
  var o = api.ResourceRequirements();
  buildCounterResourceRequirements++;
  if (buildCounterResourceRequirements < 3) {
    o.limits = buildUnnamed1443();
    o.requests = buildUnnamed1444();
  }
  buildCounterResourceRequirements--;
  return o;
}

void checkResourceRequirements(api.ResourceRequirements o) {
  buildCounterResourceRequirements++;
  if (buildCounterResourceRequirements < 3) {
    checkUnnamed1443(o.limits);
    checkUnnamed1444(o.requests);
  }
  buildCounterResourceRequirements--;
}

core.int buildCounterRevision = 0;
api.Revision buildRevision() {
  var o = api.Revision();
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    o.apiVersion = 'foo';
    o.kind = 'foo';
    o.metadata = buildObjectMeta();
    o.spec = buildRevisionSpec();
    o.status = buildRevisionStatus();
  }
  buildCounterRevision--;
  return o;
}

void checkRevision(api.Revision o) {
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkObjectMeta(o.metadata as api.ObjectMeta);
    checkRevisionSpec(o.spec as api.RevisionSpec);
    checkRevisionStatus(o.status as api.RevisionStatus);
  }
  buildCounterRevision--;
}

core.List<api.Container> buildUnnamed1445() {
  var o = <api.Container>[];
  o.add(buildContainer());
  o.add(buildContainer());
  return o;
}

void checkUnnamed1445(core.List<api.Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainer(o[0] as api.Container);
  checkContainer(o[1] as api.Container);
}

core.List<api.Volume> buildUnnamed1446() {
  var o = <api.Volume>[];
  o.add(buildVolume());
  o.add(buildVolume());
  return o;
}

void checkUnnamed1446(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0] as api.Volume);
  checkVolume(o[1] as api.Volume);
}

core.int buildCounterRevisionSpec = 0;
api.RevisionSpec buildRevisionSpec() {
  var o = api.RevisionSpec();
  buildCounterRevisionSpec++;
  if (buildCounterRevisionSpec < 3) {
    o.containerConcurrency = 42;
    o.containers = buildUnnamed1445();
    o.serviceAccountName = 'foo';
    o.timeoutSeconds = 42;
    o.volumes = buildUnnamed1446();
  }
  buildCounterRevisionSpec--;
  return o;
}

void checkRevisionSpec(api.RevisionSpec o) {
  buildCounterRevisionSpec++;
  if (buildCounterRevisionSpec < 3) {
    unittest.expect(o.containerConcurrency, unittest.equals(42));
    checkUnnamed1445(o.containers);
    unittest.expect(o.serviceAccountName, unittest.equals('foo'));
    unittest.expect(o.timeoutSeconds, unittest.equals(42));
    checkUnnamed1446(o.volumes);
  }
  buildCounterRevisionSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed1447() {
  var o = <api.GoogleCloudRunV1Condition>[];
  o.add(buildGoogleCloudRunV1Condition());
  o.add(buildGoogleCloudRunV1Condition());
  return o;
}

void checkUnnamed1447(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0] as api.GoogleCloudRunV1Condition);
  checkGoogleCloudRunV1Condition(o[1] as api.GoogleCloudRunV1Condition);
}

core.int buildCounterRevisionStatus = 0;
api.RevisionStatus buildRevisionStatus() {
  var o = api.RevisionStatus();
  buildCounterRevisionStatus++;
  if (buildCounterRevisionStatus < 3) {
    o.conditions = buildUnnamed1447();
    o.imageDigest = 'foo';
    o.logUrl = 'foo';
    o.observedGeneration = 42;
    o.serviceName = 'foo';
  }
  buildCounterRevisionStatus--;
  return o;
}

void checkRevisionStatus(api.RevisionStatus o) {
  buildCounterRevisionStatus++;
  if (buildCounterRevisionStatus < 3) {
    checkUnnamed1447(o.conditions);
    unittest.expect(o.imageDigest, unittest.equals('foo'));
    unittest.expect(o.logUrl, unittest.equals('foo'));
    unittest.expect(o.observedGeneration, unittest.equals(42));
    unittest.expect(o.serviceName, unittest.equals('foo'));
  }
  buildCounterRevisionStatus--;
}

core.int buildCounterRevisionTemplate = 0;
api.RevisionTemplate buildRevisionTemplate() {
  var o = api.RevisionTemplate();
  buildCounterRevisionTemplate++;
  if (buildCounterRevisionTemplate < 3) {
    o.metadata = buildObjectMeta();
    o.spec = buildRevisionSpec();
  }
  buildCounterRevisionTemplate--;
  return o;
}

void checkRevisionTemplate(api.RevisionTemplate o) {
  buildCounterRevisionTemplate++;
  if (buildCounterRevisionTemplate < 3) {
    checkObjectMeta(o.metadata as api.ObjectMeta);
    checkRevisionSpec(o.spec as api.RevisionSpec);
  }
  buildCounterRevisionTemplate--;
}

core.int buildCounterRoute = 0;
api.Route buildRoute() {
  var o = api.Route();
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    o.apiVersion = 'foo';
    o.kind = 'foo';
    o.metadata = buildObjectMeta();
    o.spec = buildRouteSpec();
    o.status = buildRouteStatus();
  }
  buildCounterRoute--;
  return o;
}

void checkRoute(api.Route o) {
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkObjectMeta(o.metadata as api.ObjectMeta);
    checkRouteSpec(o.spec as api.RouteSpec);
    checkRouteStatus(o.status as api.RouteStatus);
  }
  buildCounterRoute--;
}

core.List<api.TrafficTarget> buildUnnamed1448() {
  var o = <api.TrafficTarget>[];
  o.add(buildTrafficTarget());
  o.add(buildTrafficTarget());
  return o;
}

void checkUnnamed1448(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0] as api.TrafficTarget);
  checkTrafficTarget(o[1] as api.TrafficTarget);
}

core.int buildCounterRouteSpec = 0;
api.RouteSpec buildRouteSpec() {
  var o = api.RouteSpec();
  buildCounterRouteSpec++;
  if (buildCounterRouteSpec < 3) {
    o.traffic = buildUnnamed1448();
  }
  buildCounterRouteSpec--;
  return o;
}

void checkRouteSpec(api.RouteSpec o) {
  buildCounterRouteSpec++;
  if (buildCounterRouteSpec < 3) {
    checkUnnamed1448(o.traffic);
  }
  buildCounterRouteSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed1449() {
  var o = <api.GoogleCloudRunV1Condition>[];
  o.add(buildGoogleCloudRunV1Condition());
  o.add(buildGoogleCloudRunV1Condition());
  return o;
}

void checkUnnamed1449(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0] as api.GoogleCloudRunV1Condition);
  checkGoogleCloudRunV1Condition(o[1] as api.GoogleCloudRunV1Condition);
}

core.List<api.TrafficTarget> buildUnnamed1450() {
  var o = <api.TrafficTarget>[];
  o.add(buildTrafficTarget());
  o.add(buildTrafficTarget());
  return o;
}

void checkUnnamed1450(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0] as api.TrafficTarget);
  checkTrafficTarget(o[1] as api.TrafficTarget);
}

core.int buildCounterRouteStatus = 0;
api.RouteStatus buildRouteStatus() {
  var o = api.RouteStatus();
  buildCounterRouteStatus++;
  if (buildCounterRouteStatus < 3) {
    o.address = buildAddressable();
    o.conditions = buildUnnamed1449();
    o.observedGeneration = 42;
    o.traffic = buildUnnamed1450();
    o.url = 'foo';
  }
  buildCounterRouteStatus--;
  return o;
}

void checkRouteStatus(api.RouteStatus o) {
  buildCounterRouteStatus++;
  if (buildCounterRouteStatus < 3) {
    checkAddressable(o.address as api.Addressable);
    checkUnnamed1449(o.conditions);
    unittest.expect(o.observedGeneration, unittest.equals(42));
    checkUnnamed1450(o.traffic);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterRouteStatus--;
}

core.int buildCounterSecretEnvSource = 0;
api.SecretEnvSource buildSecretEnvSource() {
  var o = api.SecretEnvSource();
  buildCounterSecretEnvSource++;
  if (buildCounterSecretEnvSource < 3) {
    o.localObjectReference = buildLocalObjectReference();
    o.name = 'foo';
    o.optional = true;
  }
  buildCounterSecretEnvSource--;
  return o;
}

void checkSecretEnvSource(api.SecretEnvSource o) {
  buildCounterSecretEnvSource++;
  if (buildCounterSecretEnvSource < 3) {
    checkLocalObjectReference(
        o.localObjectReference as api.LocalObjectReference);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optional, unittest.isTrue);
  }
  buildCounterSecretEnvSource--;
}

core.int buildCounterSecretKeySelector = 0;
api.SecretKeySelector buildSecretKeySelector() {
  var o = api.SecretKeySelector();
  buildCounterSecretKeySelector++;
  if (buildCounterSecretKeySelector < 3) {
    o.key = 'foo';
    o.localObjectReference = buildLocalObjectReference();
    o.name = 'foo';
    o.optional = true;
  }
  buildCounterSecretKeySelector--;
  return o;
}

void checkSecretKeySelector(api.SecretKeySelector o) {
  buildCounterSecretKeySelector++;
  if (buildCounterSecretKeySelector < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkLocalObjectReference(
        o.localObjectReference as api.LocalObjectReference);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optional, unittest.isTrue);
  }
  buildCounterSecretKeySelector--;
}

core.List<api.KeyToPath> buildUnnamed1451() {
  var o = <api.KeyToPath>[];
  o.add(buildKeyToPath());
  o.add(buildKeyToPath());
  return o;
}

void checkUnnamed1451(core.List<api.KeyToPath> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyToPath(o[0] as api.KeyToPath);
  checkKeyToPath(o[1] as api.KeyToPath);
}

core.int buildCounterSecretVolumeSource = 0;
api.SecretVolumeSource buildSecretVolumeSource() {
  var o = api.SecretVolumeSource();
  buildCounterSecretVolumeSource++;
  if (buildCounterSecretVolumeSource < 3) {
    o.defaultMode = 42;
    o.items = buildUnnamed1451();
    o.optional = true;
    o.secretName = 'foo';
  }
  buildCounterSecretVolumeSource--;
  return o;
}

void checkSecretVolumeSource(api.SecretVolumeSource o) {
  buildCounterSecretVolumeSource++;
  if (buildCounterSecretVolumeSource < 3) {
    unittest.expect(o.defaultMode, unittest.equals(42));
    checkUnnamed1451(o.items);
    unittest.expect(o.optional, unittest.isTrue);
    unittest.expect(o.secretName, unittest.equals('foo'));
  }
  buildCounterSecretVolumeSource--;
}

core.int buildCounterSecurityContext = 0;
api.SecurityContext buildSecurityContext() {
  var o = api.SecurityContext();
  buildCounterSecurityContext++;
  if (buildCounterSecurityContext < 3) {
    o.runAsUser = 42;
  }
  buildCounterSecurityContext--;
  return o;
}

void checkSecurityContext(api.SecurityContext o) {
  buildCounterSecurityContext++;
  if (buildCounterSecurityContext < 3) {
    unittest.expect(o.runAsUser, unittest.equals(42));
  }
  buildCounterSecurityContext--;
}

core.int buildCounterService = 0;
api.Service buildService() {
  var o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.apiVersion = 'foo';
    o.kind = 'foo';
    o.metadata = buildObjectMeta();
    o.spec = buildServiceSpec();
    o.status = buildServiceStatus();
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkObjectMeta(o.metadata as api.ObjectMeta);
    checkServiceSpec(o.spec as api.ServiceSpec);
    checkServiceStatus(o.status as api.ServiceStatus);
  }
  buildCounterService--;
}

core.List<api.TrafficTarget> buildUnnamed1452() {
  var o = <api.TrafficTarget>[];
  o.add(buildTrafficTarget());
  o.add(buildTrafficTarget());
  return o;
}

void checkUnnamed1452(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0] as api.TrafficTarget);
  checkTrafficTarget(o[1] as api.TrafficTarget);
}

core.int buildCounterServiceSpec = 0;
api.ServiceSpec buildServiceSpec() {
  var o = api.ServiceSpec();
  buildCounterServiceSpec++;
  if (buildCounterServiceSpec < 3) {
    o.template = buildRevisionTemplate();
    o.traffic = buildUnnamed1452();
  }
  buildCounterServiceSpec--;
  return o;
}

void checkServiceSpec(api.ServiceSpec o) {
  buildCounterServiceSpec++;
  if (buildCounterServiceSpec < 3) {
    checkRevisionTemplate(o.template as api.RevisionTemplate);
    checkUnnamed1452(o.traffic);
  }
  buildCounterServiceSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed1453() {
  var o = <api.GoogleCloudRunV1Condition>[];
  o.add(buildGoogleCloudRunV1Condition());
  o.add(buildGoogleCloudRunV1Condition());
  return o;
}

void checkUnnamed1453(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0] as api.GoogleCloudRunV1Condition);
  checkGoogleCloudRunV1Condition(o[1] as api.GoogleCloudRunV1Condition);
}

core.List<api.TrafficTarget> buildUnnamed1454() {
  var o = <api.TrafficTarget>[];
  o.add(buildTrafficTarget());
  o.add(buildTrafficTarget());
  return o;
}

void checkUnnamed1454(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0] as api.TrafficTarget);
  checkTrafficTarget(o[1] as api.TrafficTarget);
}

core.int buildCounterServiceStatus = 0;
api.ServiceStatus buildServiceStatus() {
  var o = api.ServiceStatus();
  buildCounterServiceStatus++;
  if (buildCounterServiceStatus < 3) {
    o.address = buildAddressable();
    o.conditions = buildUnnamed1453();
    o.latestCreatedRevisionName = 'foo';
    o.latestReadyRevisionName = 'foo';
    o.observedGeneration = 42;
    o.traffic = buildUnnamed1454();
    o.url = 'foo';
  }
  buildCounterServiceStatus--;
  return o;
}

void checkServiceStatus(api.ServiceStatus o) {
  buildCounterServiceStatus++;
  if (buildCounterServiceStatus < 3) {
    checkAddressable(o.address as api.Addressable);
    checkUnnamed1453(o.conditions);
    unittest.expect(o.latestCreatedRevisionName, unittest.equals('foo'));
    unittest.expect(o.latestReadyRevisionName, unittest.equals('foo'));
    unittest.expect(o.observedGeneration, unittest.equals(42));
    checkUnnamed1454(o.traffic);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterServiceStatus--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy as api.Policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildStatusDetails();
    o.message = 'foo';
    o.metadata = buildListMeta();
    o.reason = 'foo';
    o.status = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkStatusDetails(o.details as api.StatusDetails);
    unittest.expect(o.message, unittest.equals('foo'));
    checkListMeta(o.metadata as api.ListMeta);
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStatusCause = 0;
api.StatusCause buildStatusCause() {
  var o = api.StatusCause();
  buildCounterStatusCause++;
  if (buildCounterStatusCause < 3) {
    o.field = 'foo';
    o.message = 'foo';
    o.reason = 'foo';
  }
  buildCounterStatusCause--;
  return o;
}

void checkStatusCause(api.StatusCause o) {
  buildCounterStatusCause++;
  if (buildCounterStatusCause < 3) {
    unittest.expect(o.field, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterStatusCause--;
}

core.List<api.StatusCause> buildUnnamed1455() {
  var o = <api.StatusCause>[];
  o.add(buildStatusCause());
  o.add(buildStatusCause());
  return o;
}

void checkUnnamed1455(core.List<api.StatusCause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCause(o[0] as api.StatusCause);
  checkStatusCause(o[1] as api.StatusCause);
}

core.int buildCounterStatusDetails = 0;
api.StatusDetails buildStatusDetails() {
  var o = api.StatusDetails();
  buildCounterStatusDetails++;
  if (buildCounterStatusDetails < 3) {
    o.causes = buildUnnamed1455();
    o.group = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.retryAfterSeconds = 42;
    o.uid = 'foo';
  }
  buildCounterStatusDetails--;
  return o;
}

void checkStatusDetails(api.StatusDetails o) {
  buildCounterStatusDetails++;
  if (buildCounterStatusDetails < 3) {
    checkUnnamed1455(o.causes);
    unittest.expect(o.group, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.retryAfterSeconds, unittest.equals(42));
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterStatusDetails--;
}

core.int buildCounterTCPSocketAction = 0;
api.TCPSocketAction buildTCPSocketAction() {
  var o = api.TCPSocketAction();
  buildCounterTCPSocketAction++;
  if (buildCounterTCPSocketAction < 3) {
    o.host = 'foo';
    o.port = 42;
  }
  buildCounterTCPSocketAction--;
  return o;
}

void checkTCPSocketAction(api.TCPSocketAction o) {
  buildCounterTCPSocketAction++;
  if (buildCounterTCPSocketAction < 3) {
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
  }
  buildCounterTCPSocketAction--;
}

core.List<core.String> buildUnnamed1456() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1456(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed1456();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed1456(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed1457() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1457(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed1457();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed1457(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTrafficTarget = 0;
api.TrafficTarget buildTrafficTarget() {
  var o = api.TrafficTarget();
  buildCounterTrafficTarget++;
  if (buildCounterTrafficTarget < 3) {
    o.configurationName = 'foo';
    o.latestRevision = true;
    o.percent = 42;
    o.revisionName = 'foo';
    o.tag = 'foo';
    o.url = 'foo';
  }
  buildCounterTrafficTarget--;
  return o;
}

void checkTrafficTarget(api.TrafficTarget o) {
  buildCounterTrafficTarget++;
  if (buildCounterTrafficTarget < 3) {
    unittest.expect(o.configurationName, unittest.equals('foo'));
    unittest.expect(o.latestRevision, unittest.isTrue);
    unittest.expect(o.percent, unittest.equals(42));
    unittest.expect(o.revisionName, unittest.equals('foo'));
    unittest.expect(o.tag, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterTrafficTarget--;
}

core.int buildCounterVolume = 0;
api.Volume buildVolume() {
  var o = api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.configMap = buildConfigMapVolumeSource();
    o.name = 'foo';
    o.secret = buildSecretVolumeSource();
  }
  buildCounterVolume--;
  return o;
}

void checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    checkConfigMapVolumeSource(o.configMap as api.ConfigMapVolumeSource);
    unittest.expect(o.name, unittest.equals('foo'));
    checkSecretVolumeSource(o.secret as api.SecretVolumeSource);
  }
  buildCounterVolume--;
}

core.int buildCounterVolumeMount = 0;
api.VolumeMount buildVolumeMount() {
  var o = api.VolumeMount();
  buildCounterVolumeMount++;
  if (buildCounterVolumeMount < 3) {
    o.mountPath = 'foo';
    o.name = 'foo';
    o.readOnly = true;
    o.subPath = 'foo';
  }
  buildCounterVolumeMount--;
  return o;
}

void checkVolumeMount(api.VolumeMount o) {
  buildCounterVolumeMount++;
  if (buildCounterVolumeMount < 3) {
    unittest.expect(o.mountPath, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.readOnly, unittest.isTrue);
    unittest.expect(o.subPath, unittest.equals('foo'));
  }
  buildCounterVolumeMount--;
}

void main() {
  unittest.group('obj-schema-Addressable', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddressable();
      var od = api.Addressable.fromJson(o.toJson());
      checkAddressable(od as api.Addressable);
    });
  });

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

  unittest.group('obj-schema-AuthorizedDomain', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthorizedDomain();
      var od = api.AuthorizedDomain.fromJson(o.toJson());
      checkAuthorizedDomain(od as api.AuthorizedDomain);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-ConfigMapEnvSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigMapEnvSource();
      var od = api.ConfigMapEnvSource.fromJson(o.toJson());
      checkConfigMapEnvSource(od as api.ConfigMapEnvSource);
    });
  });

  unittest.group('obj-schema-ConfigMapKeySelector', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigMapKeySelector();
      var od = api.ConfigMapKeySelector.fromJson(o.toJson());
      checkConfigMapKeySelector(od as api.ConfigMapKeySelector);
    });
  });

  unittest.group('obj-schema-ConfigMapVolumeSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigMapVolumeSource();
      var od = api.ConfigMapVolumeSource.fromJson(o.toJson());
      checkConfigMapVolumeSource(od as api.ConfigMapVolumeSource);
    });
  });

  unittest.group('obj-schema-Configuration', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfiguration();
      var od = api.Configuration.fromJson(o.toJson());
      checkConfiguration(od as api.Configuration);
    });
  });

  unittest.group('obj-schema-ConfigurationSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigurationSpec();
      var od = api.ConfigurationSpec.fromJson(o.toJson());
      checkConfigurationSpec(od as api.ConfigurationSpec);
    });
  });

  unittest.group('obj-schema-ConfigurationStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigurationStatus();
      var od = api.ConfigurationStatus.fromJson(o.toJson());
      checkConfigurationStatus(od as api.ConfigurationStatus);
    });
  });

  unittest.group('obj-schema-Container', () {
    unittest.test('to-json--from-json', () {
      var o = buildContainer();
      var od = api.Container.fromJson(o.toJson());
      checkContainer(od as api.Container);
    });
  });

  unittest.group('obj-schema-ContainerPort', () {
    unittest.test('to-json--from-json', () {
      var o = buildContainerPort();
      var od = api.ContainerPort.fromJson(o.toJson());
      checkContainerPort(od as api.ContainerPort);
    });
  });

  unittest.group('obj-schema-DomainMapping', () {
    unittest.test('to-json--from-json', () {
      var o = buildDomainMapping();
      var od = api.DomainMapping.fromJson(o.toJson());
      checkDomainMapping(od as api.DomainMapping);
    });
  });

  unittest.group('obj-schema-DomainMappingSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildDomainMappingSpec();
      var od = api.DomainMappingSpec.fromJson(o.toJson());
      checkDomainMappingSpec(od as api.DomainMappingSpec);
    });
  });

  unittest.group('obj-schema-DomainMappingStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildDomainMappingStatus();
      var od = api.DomainMappingStatus.fromJson(o.toJson());
      checkDomainMappingStatus(od as api.DomainMappingStatus);
    });
  });

  unittest.group('obj-schema-EnvFromSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvFromSource();
      var od = api.EnvFromSource.fromJson(o.toJson());
      checkEnvFromSource(od as api.EnvFromSource);
    });
  });

  unittest.group('obj-schema-EnvVar', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvVar();
      var od = api.EnvVar.fromJson(o.toJson());
      checkEnvVar(od as api.EnvVar);
    });
  });

  unittest.group('obj-schema-EnvVarSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvVarSource();
      var od = api.EnvVarSource.fromJson(o.toJson());
      checkEnvVarSource(od as api.EnvVarSource);
    });
  });

  unittest.group('obj-schema-ExecAction', () {
    unittest.test('to-json--from-json', () {
      var o = buildExecAction();
      var od = api.ExecAction.fromJson(o.toJson());
      checkExecAction(od as api.ExecAction);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV1Condition', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRunV1Condition();
      var od = api.GoogleCloudRunV1Condition.fromJson(o.toJson());
      checkGoogleCloudRunV1Condition(od as api.GoogleCloudRunV1Condition);
    });
  });

  unittest.group('obj-schema-HTTPGetAction', () {
    unittest.test('to-json--from-json', () {
      var o = buildHTTPGetAction();
      var od = api.HTTPGetAction.fromJson(o.toJson());
      checkHTTPGetAction(od as api.HTTPGetAction);
    });
  });

  unittest.group('obj-schema-HTTPHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildHTTPHeader();
      var od = api.HTTPHeader.fromJson(o.toJson());
      checkHTTPHeader(od as api.HTTPHeader);
    });
  });

  unittest.group('obj-schema-KeyToPath', () {
    unittest.test('to-json--from-json', () {
      var o = buildKeyToPath();
      var od = api.KeyToPath.fromJson(o.toJson());
      checkKeyToPath(od as api.KeyToPath);
    });
  });

  unittest.group('obj-schema-ListAuthorizedDomainsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAuthorizedDomainsResponse();
      var od = api.ListAuthorizedDomainsResponse.fromJson(o.toJson());
      checkListAuthorizedDomainsResponse(
          od as api.ListAuthorizedDomainsResponse);
    });
  });

  unittest.group('obj-schema-ListConfigurationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListConfigurationsResponse();
      var od = api.ListConfigurationsResponse.fromJson(o.toJson());
      checkListConfigurationsResponse(od as api.ListConfigurationsResponse);
    });
  });

  unittest.group('obj-schema-ListDomainMappingsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListDomainMappingsResponse();
      var od = api.ListDomainMappingsResponse.fromJson(o.toJson());
      checkListDomainMappingsResponse(od as api.ListDomainMappingsResponse);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListMeta', () {
    unittest.test('to-json--from-json', () {
      var o = buildListMeta();
      var od = api.ListMeta.fromJson(o.toJson());
      checkListMeta(od as api.ListMeta);
    });
  });

  unittest.group('obj-schema-ListRevisionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListRevisionsResponse();
      var od = api.ListRevisionsResponse.fromJson(o.toJson());
      checkListRevisionsResponse(od as api.ListRevisionsResponse);
    });
  });

  unittest.group('obj-schema-ListRoutesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListRoutesResponse();
      var od = api.ListRoutesResponse.fromJson(o.toJson());
      checkListRoutesResponse(od as api.ListRoutesResponse);
    });
  });

  unittest.group('obj-schema-ListServicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListServicesResponse();
      var od = api.ListServicesResponse.fromJson(o.toJson());
      checkListServicesResponse(od as api.ListServicesResponse);
    });
  });

  unittest.group('obj-schema-LocalObjectReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalObjectReference();
      var od = api.LocalObjectReference.fromJson(o.toJson());
      checkLocalObjectReference(od as api.LocalObjectReference);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-ObjectMeta', () {
    unittest.test('to-json--from-json', () {
      var o = buildObjectMeta();
      var od = api.ObjectMeta.fromJson(o.toJson());
      checkObjectMeta(od as api.ObjectMeta);
    });
  });

  unittest.group('obj-schema-OwnerReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildOwnerReference();
      var od = api.OwnerReference.fromJson(o.toJson());
      checkOwnerReference(od as api.OwnerReference);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-Probe', () {
    unittest.test('to-json--from-json', () {
      var o = buildProbe();
      var od = api.Probe.fromJson(o.toJson());
      checkProbe(od as api.Probe);
    });
  });

  unittest.group('obj-schema-ResourceRecord', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceRecord();
      var od = api.ResourceRecord.fromJson(o.toJson());
      checkResourceRecord(od as api.ResourceRecord);
    });
  });

  unittest.group('obj-schema-ResourceRequirements', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceRequirements();
      var od = api.ResourceRequirements.fromJson(o.toJson());
      checkResourceRequirements(od as api.ResourceRequirements);
    });
  });

  unittest.group('obj-schema-Revision', () {
    unittest.test('to-json--from-json', () {
      var o = buildRevision();
      var od = api.Revision.fromJson(o.toJson());
      checkRevision(od as api.Revision);
    });
  });

  unittest.group('obj-schema-RevisionSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildRevisionSpec();
      var od = api.RevisionSpec.fromJson(o.toJson());
      checkRevisionSpec(od as api.RevisionSpec);
    });
  });

  unittest.group('obj-schema-RevisionStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildRevisionStatus();
      var od = api.RevisionStatus.fromJson(o.toJson());
      checkRevisionStatus(od as api.RevisionStatus);
    });
  });

  unittest.group('obj-schema-RevisionTemplate', () {
    unittest.test('to-json--from-json', () {
      var o = buildRevisionTemplate();
      var od = api.RevisionTemplate.fromJson(o.toJson());
      checkRevisionTemplate(od as api.RevisionTemplate);
    });
  });

  unittest.group('obj-schema-Route', () {
    unittest.test('to-json--from-json', () {
      var o = buildRoute();
      var od = api.Route.fromJson(o.toJson());
      checkRoute(od as api.Route);
    });
  });

  unittest.group('obj-schema-RouteSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildRouteSpec();
      var od = api.RouteSpec.fromJson(o.toJson());
      checkRouteSpec(od as api.RouteSpec);
    });
  });

  unittest.group('obj-schema-RouteStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildRouteStatus();
      var od = api.RouteStatus.fromJson(o.toJson());
      checkRouteStatus(od as api.RouteStatus);
    });
  });

  unittest.group('obj-schema-SecretEnvSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildSecretEnvSource();
      var od = api.SecretEnvSource.fromJson(o.toJson());
      checkSecretEnvSource(od as api.SecretEnvSource);
    });
  });

  unittest.group('obj-schema-SecretKeySelector', () {
    unittest.test('to-json--from-json', () {
      var o = buildSecretKeySelector();
      var od = api.SecretKeySelector.fromJson(o.toJson());
      checkSecretKeySelector(od as api.SecretKeySelector);
    });
  });

  unittest.group('obj-schema-SecretVolumeSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildSecretVolumeSource();
      var od = api.SecretVolumeSource.fromJson(o.toJson());
      checkSecretVolumeSource(od as api.SecretVolumeSource);
    });
  });

  unittest.group('obj-schema-SecurityContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildSecurityContext();
      var od = api.SecurityContext.fromJson(o.toJson());
      checkSecurityContext(od as api.SecurityContext);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () {
      var o = buildService();
      var od = api.Service.fromJson(o.toJson());
      checkService(od as api.Service);
    });
  });

  unittest.group('obj-schema-ServiceSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildServiceSpec();
      var od = api.ServiceSpec.fromJson(o.toJson());
      checkServiceSpec(od as api.ServiceSpec);
    });
  });

  unittest.group('obj-schema-ServiceStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildServiceStatus();
      var od = api.ServiceStatus.fromJson(o.toJson());
      checkServiceStatus(od as api.ServiceStatus);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-StatusCause', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatusCause();
      var od = api.StatusCause.fromJson(o.toJson());
      checkStatusCause(od as api.StatusCause);
    });
  });

  unittest.group('obj-schema-StatusDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatusDetails();
      var od = api.StatusDetails.fromJson(o.toJson());
      checkStatusDetails(od as api.StatusDetails);
    });
  });

  unittest.group('obj-schema-TCPSocketAction', () {
    unittest.test('to-json--from-json', () {
      var o = buildTCPSocketAction();
      var od = api.TCPSocketAction.fromJson(o.toJson());
      checkTCPSocketAction(od as api.TCPSocketAction);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od as api.TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('obj-schema-TrafficTarget', () {
    unittest.test('to-json--from-json', () {
      var o = buildTrafficTarget();
      var od = api.TrafficTarget.fromJson(o.toJson());
      checkTrafficTarget(od as api.TrafficTarget);
    });
  });

  unittest.group('obj-schema-Volume', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolume();
      var od = api.Volume.fromJson(o.toJson());
      checkVolume(od as api.Volume);
    });
  });

  unittest.group('obj-schema-VolumeMount', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeMount();
      var od = api.VolumeMount.fromJson(o.toJson());
      checkVolumeMount(od as api.VolumeMount);
    });
  });

  unittest.group('resource-NamespacesAuthorizeddomainsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.authorizeddomains;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("apis/domains.cloudrun.com/v1/"));
        pathOffset += 29;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAuthorizedDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAuthorizedDomainsResponse(
            response as api.ListAuthorizedDomainsResponse);
      })));
    });
  });

  unittest.group('resource-NamespacesConfigurationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.configurations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConfiguration(response as api.Configuration);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.configurations;
      var arg_parent = 'foo';
      var arg_continue_ = 'foo';
      var arg_fieldSelector = 'foo';
      var arg_includeUninitialized = true;
      var arg_labelSelector = 'foo';
      var arg_limit = 42;
      var arg_resourceVersion = 'foo';
      var arg_watch = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListConfigurationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              continue_: arg_continue_,
              fieldSelector: arg_fieldSelector,
              includeUninitialized: arg_includeUninitialized,
              labelSelector: arg_labelSelector,
              limit: arg_limit,
              resourceVersion: arg_resourceVersion,
              watch: arg_watch,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListConfigurationsResponse(
            response as api.ListConfigurationsResponse);
      })));
    });
  });

  unittest.group('resource-NamespacesDomainmappingsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.domainmappings;
      var arg_request = buildDomainMapping();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DomainMapping.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDomainMapping(obj as api.DomainMapping);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("apis/domains.cloudrun.com/v1/"));
        pathOffset += 29;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildDomainMapping());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomainMapping(response as api.DomainMapping);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.domainmappings;
      var arg_name = 'foo';
      var arg_apiVersion = 'foo';
      var arg_kind = 'foo';
      var arg_propagationPolicy = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("apis/domains.cloudrun.com/v1/"));
        pathOffset += 29;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["apiVersion"].first, unittest.equals(arg_apiVersion));
        unittest.expect(queryMap["kind"].first, unittest.equals(arg_kind));
        unittest.expect(queryMap["propagationPolicy"].first,
            unittest.equals(arg_propagationPolicy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              apiVersion: arg_apiVersion,
              kind: arg_kind,
              propagationPolicy: arg_propagationPolicy,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStatus(response as api.Status);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.domainmappings;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("apis/domains.cloudrun.com/v1/"));
        pathOffset += 29;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildDomainMapping());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomainMapping(response as api.DomainMapping);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.domainmappings;
      var arg_parent = 'foo';
      var arg_continue_ = 'foo';
      var arg_fieldSelector = 'foo';
      var arg_includeUninitialized = true;
      var arg_labelSelector = 'foo';
      var arg_limit = 42;
      var arg_resourceVersion = 'foo';
      var arg_watch = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("apis/domains.cloudrun.com/v1/"));
        pathOffset += 29;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDomainMappingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              continue_: arg_continue_,
              fieldSelector: arg_fieldSelector,
              includeUninitialized: arg_includeUninitialized,
              labelSelector: arg_labelSelector,
              limit: arg_limit,
              resourceVersion: arg_resourceVersion,
              watch: arg_watch,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDomainMappingsResponse(
            response as api.ListDomainMappingsResponse);
      })));
    });
  });

  unittest.group('resource-NamespacesRevisionsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.revisions;
      var arg_name = 'foo';
      var arg_apiVersion = 'foo';
      var arg_kind = 'foo';
      var arg_propagationPolicy = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["apiVersion"].first, unittest.equals(arg_apiVersion));
        unittest.expect(queryMap["kind"].first, unittest.equals(arg_kind));
        unittest.expect(queryMap["propagationPolicy"].first,
            unittest.equals(arg_propagationPolicy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              apiVersion: arg_apiVersion,
              kind: arg_kind,
              propagationPolicy: arg_propagationPolicy,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStatus(response as api.Status);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.revisions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRevision(response as api.Revision);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.revisions;
      var arg_parent = 'foo';
      var arg_continue_ = 'foo';
      var arg_fieldSelector = 'foo';
      var arg_includeUninitialized = true;
      var arg_labelSelector = 'foo';
      var arg_limit = 42;
      var arg_resourceVersion = 'foo';
      var arg_watch = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListRevisionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              continue_: arg_continue_,
              fieldSelector: arg_fieldSelector,
              includeUninitialized: arg_includeUninitialized,
              labelSelector: arg_labelSelector,
              limit: arg_limit,
              resourceVersion: arg_resourceVersion,
              watch: arg_watch,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRevisionsResponse(response as api.ListRevisionsResponse);
      })));
    });
  });

  unittest.group('resource-NamespacesRoutesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.routes;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildRoute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoute(response as api.Route);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.routes;
      var arg_parent = 'foo';
      var arg_continue_ = 'foo';
      var arg_fieldSelector = 'foo';
      var arg_includeUninitialized = true;
      var arg_labelSelector = 'foo';
      var arg_limit = 42;
      var arg_resourceVersion = 'foo';
      var arg_watch = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListRoutesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              continue_: arg_continue_,
              fieldSelector: arg_fieldSelector,
              includeUninitialized: arg_includeUninitialized,
              labelSelector: arg_labelSelector,
              limit: arg_limit,
              resourceVersion: arg_resourceVersion,
              watch: arg_watch,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRoutesResponse(response as api.ListRoutesResponse);
      })));
    });
  });

  unittest.group('resource-NamespacesServicesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.services;
      var arg_request = buildService();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Service.fromJson(json as core.Map<core.String, core.dynamic>);
        checkService(obj as api.Service);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response as api.Service);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.services;
      var arg_name = 'foo';
      var arg_apiVersion = 'foo';
      var arg_kind = 'foo';
      var arg_propagationPolicy = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["apiVersion"].first, unittest.equals(arg_apiVersion));
        unittest.expect(queryMap["kind"].first, unittest.equals(arg_kind));
        unittest.expect(queryMap["propagationPolicy"].first,
            unittest.equals(arg_propagationPolicy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              apiVersion: arg_apiVersion,
              kind: arg_kind,
              propagationPolicy: arg_propagationPolicy,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStatus(response as api.Status);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.services;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response as api.Service);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.services;
      var arg_parent = 'foo';
      var arg_continue_ = 'foo';
      var arg_fieldSelector = 'foo';
      var arg_includeUninitialized = true;
      var arg_labelSelector = 'foo';
      var arg_limit = 42;
      var arg_resourceVersion = 'foo';
      var arg_watch = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              continue_: arg_continue_,
              fieldSelector: arg_fieldSelector,
              includeUninitialized: arg_includeUninitialized,
              labelSelector: arg_labelSelector,
              limit: arg_limit,
              resourceVersion: arg_resourceVersion,
              watch: arg_watch,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServicesResponse(response as api.ListServicesResponse);
      })));
    });

    unittest.test('method--replaceService', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).namespaces.services;
      var arg_request = buildService();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Service.fromJson(json as core.Map<core.String, core.dynamic>);
        checkService(obj as api.Service);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("apis/serving.knative.dev/v1/"));
        pathOffset += 28;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .replaceService(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response as api.Service);
      })));
    });
  });

  unittest.group('resource-ProjectsAuthorizeddomainsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.authorizeddomains;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAuthorizedDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAuthorizedDomainsResponse(
            response as api.ListAuthorizedDomainsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response as api.ListLocationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAuthorizeddomainsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.authorizeddomains;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAuthorizedDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAuthorizedDomainsResponse(
            response as api.ListAuthorizedDomainsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsConfigurationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.configurations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConfiguration(response as api.Configuration);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.configurations;
      var arg_parent = 'foo';
      var arg_continue_ = 'foo';
      var arg_fieldSelector = 'foo';
      var arg_includeUninitialized = true;
      var arg_labelSelector = 'foo';
      var arg_limit = 42;
      var arg_resourceVersion = 'foo';
      var arg_watch = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListConfigurationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              continue_: arg_continue_,
              fieldSelector: arg_fieldSelector,
              includeUninitialized: arg_includeUninitialized,
              labelSelector: arg_labelSelector,
              limit: arg_limit,
              resourceVersion: arg_resourceVersion,
              watch: arg_watch,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListConfigurationsResponse(
            response as api.ListConfigurationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsDomainmappingsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.domainmappings;
      var arg_request = buildDomainMapping();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DomainMapping.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDomainMapping(obj as api.DomainMapping);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildDomainMapping());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomainMapping(response as api.DomainMapping);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.domainmappings;
      var arg_name = 'foo';
      var arg_apiVersion = 'foo';
      var arg_kind = 'foo';
      var arg_propagationPolicy = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["apiVersion"].first, unittest.equals(arg_apiVersion));
        unittest.expect(queryMap["kind"].first, unittest.equals(arg_kind));
        unittest.expect(queryMap["propagationPolicy"].first,
            unittest.equals(arg_propagationPolicy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              apiVersion: arg_apiVersion,
              kind: arg_kind,
              propagationPolicy: arg_propagationPolicy,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStatus(response as api.Status);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.domainmappings;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildDomainMapping());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomainMapping(response as api.DomainMapping);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.domainmappings;
      var arg_parent = 'foo';
      var arg_continue_ = 'foo';
      var arg_fieldSelector = 'foo';
      var arg_includeUninitialized = true;
      var arg_labelSelector = 'foo';
      var arg_limit = 42;
      var arg_resourceVersion = 'foo';
      var arg_watch = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDomainMappingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              continue_: arg_continue_,
              fieldSelector: arg_fieldSelector,
              includeUninitialized: arg_includeUninitialized,
              labelSelector: arg_labelSelector,
              limit: arg_limit,
              resourceVersion: arg_resourceVersion,
              watch: arg_watch,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDomainMappingsResponse(
            response as api.ListDomainMappingsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsRevisionsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.revisions;
      var arg_name = 'foo';
      var arg_apiVersion = 'foo';
      var arg_kind = 'foo';
      var arg_propagationPolicy = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["apiVersion"].first, unittest.equals(arg_apiVersion));
        unittest.expect(queryMap["kind"].first, unittest.equals(arg_kind));
        unittest.expect(queryMap["propagationPolicy"].first,
            unittest.equals(arg_propagationPolicy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              apiVersion: arg_apiVersion,
              kind: arg_kind,
              propagationPolicy: arg_propagationPolicy,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStatus(response as api.Status);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.revisions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRevision(response as api.Revision);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.revisions;
      var arg_parent = 'foo';
      var arg_continue_ = 'foo';
      var arg_fieldSelector = 'foo';
      var arg_includeUninitialized = true;
      var arg_labelSelector = 'foo';
      var arg_limit = 42;
      var arg_resourceVersion = 'foo';
      var arg_watch = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListRevisionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              continue_: arg_continue_,
              fieldSelector: arg_fieldSelector,
              includeUninitialized: arg_includeUninitialized,
              labelSelector: arg_labelSelector,
              limit: arg_limit,
              resourceVersion: arg_resourceVersion,
              watch: arg_watch,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRevisionsResponse(response as api.ListRevisionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsRoutesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.routes;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildRoute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoute(response as api.Route);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.routes;
      var arg_parent = 'foo';
      var arg_continue_ = 'foo';
      var arg_fieldSelector = 'foo';
      var arg_includeUninitialized = true;
      var arg_labelSelector = 'foo';
      var arg_limit = 42;
      var arg_resourceVersion = 'foo';
      var arg_watch = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListRoutesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              continue_: arg_continue_,
              fieldSelector: arg_fieldSelector,
              includeUninitialized: arg_includeUninitialized,
              labelSelector: arg_labelSelector,
              limit: arg_limit,
              resourceVersion: arg_resourceVersion,
              watch: arg_watch,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRoutesResponse(response as api.ListRoutesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsServicesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.services;
      var arg_request = buildService();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Service.fromJson(json as core.Map<core.String, core.dynamic>);
        checkService(obj as api.Service);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response as api.Service);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.services;
      var arg_name = 'foo';
      var arg_apiVersion = 'foo';
      var arg_kind = 'foo';
      var arg_propagationPolicy = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["apiVersion"].first, unittest.equals(arg_apiVersion));
        unittest.expect(queryMap["kind"].first, unittest.equals(arg_kind));
        unittest.expect(queryMap["propagationPolicy"].first,
            unittest.equals(arg_propagationPolicy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              apiVersion: arg_apiVersion,
              kind: arg_kind,
              propagationPolicy: arg_propagationPolicy,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStatus(response as api.Status);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.services;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response as api.Service);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.services;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.services;
      var arg_parent = 'foo';
      var arg_continue_ = 'foo';
      var arg_fieldSelector = 'foo';
      var arg_includeUninitialized = true;
      var arg_labelSelector = 'foo';
      var arg_limit = 42;
      var arg_resourceVersion = 'foo';
      var arg_watch = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["continue"].first, unittest.equals(arg_continue_));
        unittest.expect(queryMap["fieldSelector"].first,
            unittest.equals(arg_fieldSelector));
        unittest.expect(queryMap["includeUninitialized"].first,
            unittest.equals("$arg_includeUninitialized"));
        unittest.expect(queryMap["labelSelector"].first,
            unittest.equals(arg_labelSelector));
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(queryMap["resourceVersion"].first,
            unittest.equals(arg_resourceVersion));
        unittest.expect(queryMap["watch"].first, unittest.equals("$arg_watch"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              continue_: arg_continue_,
              fieldSelector: arg_fieldSelector,
              includeUninitialized: arg_includeUninitialized,
              labelSelector: arg_labelSelector,
              limit: arg_limit,
              resourceVersion: arg_resourceVersion,
              watch: arg_watch,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServicesResponse(response as api.ListServicesResponse);
      })));
    });

    unittest.test('method--replaceService', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.services;
      var arg_request = buildService();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Service.fromJson(json as core.Map<core.String, core.dynamic>);
        checkService(obj as api.Service);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .replaceService(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response as api.Service);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.services;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.RunApi(mock).projects.locations.services;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });
  });
}
