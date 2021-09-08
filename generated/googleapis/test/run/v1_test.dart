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

import 'package:googleapis/run/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddressable = 0;
api.Addressable buildAddressable() {
  final o = api.Addressable();
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
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddressable--;
}

core.List<api.AuditLogConfig> buildUnnamed1843() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed1843(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1843();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1843(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1844() => [
      'foo',
      'foo',
    ];

void checkUnnamed1844(core.List<core.String> o) {
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
    o.exemptedMembers = buildUnnamed1844();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1844(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthorizedDomain = 0;
api.AuthorizedDomain buildAuthorizedDomain() {
  final o = api.AuthorizedDomain();
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
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthorizedDomain--;
}

core.List<core.String> buildUnnamed1845() => [
      'foo',
      'foo',
    ];

void checkUnnamed1845(core.List<core.String> o) {
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
    o.members = buildUnnamed1845();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed1845(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterConfigMapEnvSource = 0;
api.ConfigMapEnvSource buildConfigMapEnvSource() {
  final o = api.ConfigMapEnvSource();
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
    checkLocalObjectReference(o.localObjectReference!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.optional!, unittest.isTrue);
  }
  buildCounterConfigMapEnvSource--;
}

core.int buildCounterConfigMapKeySelector = 0;
api.ConfigMapKeySelector buildConfigMapKeySelector() {
  final o = api.ConfigMapKeySelector();
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
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkLocalObjectReference(o.localObjectReference!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.optional!, unittest.isTrue);
  }
  buildCounterConfigMapKeySelector--;
}

core.List<api.KeyToPath> buildUnnamed1846() => [
      buildKeyToPath(),
      buildKeyToPath(),
    ];

void checkUnnamed1846(core.List<api.KeyToPath> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyToPath(o[0]);
  checkKeyToPath(o[1]);
}

core.int buildCounterConfigMapVolumeSource = 0;
api.ConfigMapVolumeSource buildConfigMapVolumeSource() {
  final o = api.ConfigMapVolumeSource();
  buildCounterConfigMapVolumeSource++;
  if (buildCounterConfigMapVolumeSource < 3) {
    o.defaultMode = 42;
    o.items = buildUnnamed1846();
    o.name = 'foo';
    o.optional = true;
  }
  buildCounterConfigMapVolumeSource--;
  return o;
}

void checkConfigMapVolumeSource(api.ConfigMapVolumeSource o) {
  buildCounterConfigMapVolumeSource++;
  if (buildCounterConfigMapVolumeSource < 3) {
    unittest.expect(
      o.defaultMode!,
      unittest.equals(42),
    );
    checkUnnamed1846(o.items!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.optional!, unittest.isTrue);
  }
  buildCounterConfigMapVolumeSource--;
}

core.int buildCounterConfiguration = 0;
api.Configuration buildConfiguration() {
  final o = api.Configuration();
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
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkObjectMeta(o.metadata!);
    checkConfigurationSpec(o.spec!);
    checkConfigurationStatus(o.status!);
  }
  buildCounterConfiguration--;
}

core.int buildCounterConfigurationSpec = 0;
api.ConfigurationSpec buildConfigurationSpec() {
  final o = api.ConfigurationSpec();
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
    checkRevisionTemplate(o.template!);
  }
  buildCounterConfigurationSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed1847() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed1847(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.int buildCounterConfigurationStatus = 0;
api.ConfigurationStatus buildConfigurationStatus() {
  final o = api.ConfigurationStatus();
  buildCounterConfigurationStatus++;
  if (buildCounterConfigurationStatus < 3) {
    o.conditions = buildUnnamed1847();
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
    checkUnnamed1847(o.conditions!);
    unittest.expect(
      o.latestCreatedRevisionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestReadyRevisionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.observedGeneration!,
      unittest.equals(42),
    );
  }
  buildCounterConfigurationStatus--;
}

core.List<core.String> buildUnnamed1848() => [
      'foo',
      'foo',
    ];

void checkUnnamed1848(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed1849() => [
      'foo',
      'foo',
    ];

void checkUnnamed1849(core.List<core.String> o) {
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

core.List<api.EnvVar> buildUnnamed1850() => [
      buildEnvVar(),
      buildEnvVar(),
    ];

void checkUnnamed1850(core.List<api.EnvVar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvVar(o[0]);
  checkEnvVar(o[1]);
}

core.List<api.EnvFromSource> buildUnnamed1851() => [
      buildEnvFromSource(),
      buildEnvFromSource(),
    ];

void checkUnnamed1851(core.List<api.EnvFromSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvFromSource(o[0]);
  checkEnvFromSource(o[1]);
}

core.List<api.ContainerPort> buildUnnamed1852() => [
      buildContainerPort(),
      buildContainerPort(),
    ];

void checkUnnamed1852(core.List<api.ContainerPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainerPort(o[0]);
  checkContainerPort(o[1]);
}

core.List<api.VolumeMount> buildUnnamed1853() => [
      buildVolumeMount(),
      buildVolumeMount(),
    ];

void checkUnnamed1853(core.List<api.VolumeMount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeMount(o[0]);
  checkVolumeMount(o[1]);
}

core.int buildCounterContainer = 0;
api.Container buildContainer() {
  final o = api.Container();
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    o.args = buildUnnamed1848();
    o.command = buildUnnamed1849();
    o.env = buildUnnamed1850();
    o.envFrom = buildUnnamed1851();
    o.image = 'foo';
    o.imagePullPolicy = 'foo';
    o.livenessProbe = buildProbe();
    o.name = 'foo';
    o.ports = buildUnnamed1852();
    o.readinessProbe = buildProbe();
    o.resources = buildResourceRequirements();
    o.securityContext = buildSecurityContext();
    o.startupProbe = buildProbe();
    o.terminationMessagePath = 'foo';
    o.terminationMessagePolicy = 'foo';
    o.volumeMounts = buildUnnamed1853();
    o.workingDir = 'foo';
  }
  buildCounterContainer--;
  return o;
}

void checkContainer(api.Container o) {
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    checkUnnamed1848(o.args!);
    checkUnnamed1849(o.command!);
    checkUnnamed1850(o.env!);
    checkUnnamed1851(o.envFrom!);
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imagePullPolicy!,
      unittest.equals('foo'),
    );
    checkProbe(o.livenessProbe!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1852(o.ports!);
    checkProbe(o.readinessProbe!);
    checkResourceRequirements(o.resources!);
    checkSecurityContext(o.securityContext!);
    checkProbe(o.startupProbe!);
    unittest.expect(
      o.terminationMessagePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.terminationMessagePolicy!,
      unittest.equals('foo'),
    );
    checkUnnamed1853(o.volumeMounts!);
    unittest.expect(
      o.workingDir!,
      unittest.equals('foo'),
    );
  }
  buildCounterContainer--;
}

core.int buildCounterContainerPort = 0;
api.ContainerPort buildContainerPort() {
  final o = api.ContainerPort();
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
    unittest.expect(
      o.containerPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
  }
  buildCounterContainerPort--;
}

core.int buildCounterDomainMapping = 0;
api.DomainMapping buildDomainMapping() {
  final o = api.DomainMapping();
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
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkObjectMeta(o.metadata!);
    checkDomainMappingSpec(o.spec!);
    checkDomainMappingStatus(o.status!);
  }
  buildCounterDomainMapping--;
}

core.int buildCounterDomainMappingSpec = 0;
api.DomainMappingSpec buildDomainMappingSpec() {
  final o = api.DomainMappingSpec();
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
    unittest.expect(
      o.certificateMode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.forceOverride!, unittest.isTrue);
    unittest.expect(
      o.routeName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDomainMappingSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed1854() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed1854(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.List<api.ResourceRecord> buildUnnamed1855() => [
      buildResourceRecord(),
      buildResourceRecord(),
    ];

void checkUnnamed1855(core.List<api.ResourceRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecord(o[0]);
  checkResourceRecord(o[1]);
}

core.int buildCounterDomainMappingStatus = 0;
api.DomainMappingStatus buildDomainMappingStatus() {
  final o = api.DomainMappingStatus();
  buildCounterDomainMappingStatus++;
  if (buildCounterDomainMappingStatus < 3) {
    o.conditions = buildUnnamed1854();
    o.mappedRouteName = 'foo';
    o.observedGeneration = 42;
    o.resourceRecords = buildUnnamed1855();
    o.url = 'foo';
  }
  buildCounterDomainMappingStatus--;
  return o;
}

void checkDomainMappingStatus(api.DomainMappingStatus o) {
  buildCounterDomainMappingStatus++;
  if (buildCounterDomainMappingStatus < 3) {
    checkUnnamed1854(o.conditions!);
    unittest.expect(
      o.mappedRouteName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.observedGeneration!,
      unittest.equals(42),
    );
    checkUnnamed1855(o.resourceRecords!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterDomainMappingStatus--;
}

core.int buildCounterEnvFromSource = 0;
api.EnvFromSource buildEnvFromSource() {
  final o = api.EnvFromSource();
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
    checkConfigMapEnvSource(o.configMapRef!);
    unittest.expect(
      o.prefix!,
      unittest.equals('foo'),
    );
    checkSecretEnvSource(o.secretRef!);
  }
  buildCounterEnvFromSource--;
}

core.int buildCounterEnvVar = 0;
api.EnvVar buildEnvVar() {
  final o = api.EnvVar();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
    checkEnvVarSource(o.valueFrom!);
  }
  buildCounterEnvVar--;
}

core.int buildCounterEnvVarSource = 0;
api.EnvVarSource buildEnvVarSource() {
  final o = api.EnvVarSource();
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
    checkConfigMapKeySelector(o.configMapKeyRef!);
    checkSecretKeySelector(o.secretKeyRef!);
  }
  buildCounterEnvVarSource--;
}

core.List<core.String> buildUnnamed1856() => [
      'foo',
      'foo',
    ];

void checkUnnamed1856(core.List<core.String> o) {
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

core.int buildCounterExecAction = 0;
api.ExecAction buildExecAction() {
  final o = api.ExecAction();
  buildCounterExecAction++;
  if (buildCounterExecAction < 3) {
    o.command = buildUnnamed1856();
  }
  buildCounterExecAction--;
  return o;
}

void checkExecAction(api.ExecAction o) {
  buildCounterExecAction++;
  if (buildCounterExecAction < 3) {
    checkUnnamed1856(o.command!);
  }
  buildCounterExecAction--;
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

core.int buildCounterGoogleCloudRunV1Condition = 0;
api.GoogleCloudRunV1Condition buildGoogleCloudRunV1Condition() {
  final o = api.GoogleCloudRunV1Condition();
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
    unittest.expect(
      o.lastTransitionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV1Condition--;
}

core.List<api.HTTPHeader> buildUnnamed1857() => [
      buildHTTPHeader(),
      buildHTTPHeader(),
    ];

void checkUnnamed1857(core.List<api.HTTPHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHTTPHeader(o[0]);
  checkHTTPHeader(o[1]);
}

core.int buildCounterHTTPGetAction = 0;
api.HTTPGetAction buildHTTPGetAction() {
  final o = api.HTTPGetAction();
  buildCounterHTTPGetAction++;
  if (buildCounterHTTPGetAction < 3) {
    o.host = 'foo';
    o.httpHeaders = buildUnnamed1857();
    o.path = 'foo';
    o.scheme = 'foo';
  }
  buildCounterHTTPGetAction--;
  return o;
}

void checkHTTPGetAction(api.HTTPGetAction o) {
  buildCounterHTTPGetAction++;
  if (buildCounterHTTPGetAction < 3) {
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    checkUnnamed1857(o.httpHeaders!);
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheme!,
      unittest.equals('foo'),
    );
  }
  buildCounterHTTPGetAction--;
}

core.int buildCounterHTTPHeader = 0;
api.HTTPHeader buildHTTPHeader() {
  final o = api.HTTPHeader();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterHTTPHeader--;
}

core.int buildCounterKeyToPath = 0;
api.KeyToPath buildKeyToPath() {
  final o = api.KeyToPath();
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
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyToPath--;
}

core.List<api.AuthorizedDomain> buildUnnamed1858() => [
      buildAuthorizedDomain(),
      buildAuthorizedDomain(),
    ];

void checkUnnamed1858(core.List<api.AuthorizedDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizedDomain(o[0]);
  checkAuthorizedDomain(o[1]);
}

core.int buildCounterListAuthorizedDomainsResponse = 0;
api.ListAuthorizedDomainsResponse buildListAuthorizedDomainsResponse() {
  final o = api.ListAuthorizedDomainsResponse();
  buildCounterListAuthorizedDomainsResponse++;
  if (buildCounterListAuthorizedDomainsResponse < 3) {
    o.domains = buildUnnamed1858();
    o.nextPageToken = 'foo';
  }
  buildCounterListAuthorizedDomainsResponse--;
  return o;
}

void checkListAuthorizedDomainsResponse(api.ListAuthorizedDomainsResponse o) {
  buildCounterListAuthorizedDomainsResponse++;
  if (buildCounterListAuthorizedDomainsResponse < 3) {
    checkUnnamed1858(o.domains!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAuthorizedDomainsResponse--;
}

core.List<api.Configuration> buildUnnamed1859() => [
      buildConfiguration(),
      buildConfiguration(),
    ];

void checkUnnamed1859(core.List<api.Configuration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfiguration(o[0]);
  checkConfiguration(o[1]);
}

core.List<core.String> buildUnnamed1860() => [
      'foo',
      'foo',
    ];

void checkUnnamed1860(core.List<core.String> o) {
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

core.int buildCounterListConfigurationsResponse = 0;
api.ListConfigurationsResponse buildListConfigurationsResponse() {
  final o = api.ListConfigurationsResponse();
  buildCounterListConfigurationsResponse++;
  if (buildCounterListConfigurationsResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed1859();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1860();
  }
  buildCounterListConfigurationsResponse--;
  return o;
}

void checkListConfigurationsResponse(api.ListConfigurationsResponse o) {
  buildCounterListConfigurationsResponse++;
  if (buildCounterListConfigurationsResponse < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed1859(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed1860(o.unreachable!);
  }
  buildCounterListConfigurationsResponse--;
}

core.List<api.DomainMapping> buildUnnamed1861() => [
      buildDomainMapping(),
      buildDomainMapping(),
    ];

void checkUnnamed1861(core.List<api.DomainMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainMapping(o[0]);
  checkDomainMapping(o[1]);
}

core.List<core.String> buildUnnamed1862() => [
      'foo',
      'foo',
    ];

void checkUnnamed1862(core.List<core.String> o) {
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

core.int buildCounterListDomainMappingsResponse = 0;
api.ListDomainMappingsResponse buildListDomainMappingsResponse() {
  final o = api.ListDomainMappingsResponse();
  buildCounterListDomainMappingsResponse++;
  if (buildCounterListDomainMappingsResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed1861();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1862();
  }
  buildCounterListDomainMappingsResponse--;
  return o;
}

void checkListDomainMappingsResponse(api.ListDomainMappingsResponse o) {
  buildCounterListDomainMappingsResponse++;
  if (buildCounterListDomainMappingsResponse < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed1861(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed1862(o.unreachable!);
  }
  buildCounterListDomainMappingsResponse--;
}

core.List<api.Location> buildUnnamed1863() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed1863(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed1863();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed1863(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.int buildCounterListMeta = 0;
api.ListMeta buildListMeta() {
  final o = api.ListMeta();
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
    unittest.expect(
      o.continue_!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMeta--;
}

core.List<api.Revision> buildUnnamed1864() => [
      buildRevision(),
      buildRevision(),
    ];

void checkUnnamed1864(core.List<api.Revision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevision(o[0]);
  checkRevision(o[1]);
}

core.List<core.String> buildUnnamed1865() => [
      'foo',
      'foo',
    ];

void checkUnnamed1865(core.List<core.String> o) {
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

core.int buildCounterListRevisionsResponse = 0;
api.ListRevisionsResponse buildListRevisionsResponse() {
  final o = api.ListRevisionsResponse();
  buildCounterListRevisionsResponse++;
  if (buildCounterListRevisionsResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed1864();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1865();
  }
  buildCounterListRevisionsResponse--;
  return o;
}

void checkListRevisionsResponse(api.ListRevisionsResponse o) {
  buildCounterListRevisionsResponse++;
  if (buildCounterListRevisionsResponse < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed1864(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed1865(o.unreachable!);
  }
  buildCounterListRevisionsResponse--;
}

core.List<api.Route> buildUnnamed1866() => [
      buildRoute(),
      buildRoute(),
    ];

void checkUnnamed1866(core.List<api.Route> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoute(o[0]);
  checkRoute(o[1]);
}

core.List<core.String> buildUnnamed1867() => [
      'foo',
      'foo',
    ];

void checkUnnamed1867(core.List<core.String> o) {
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

core.int buildCounterListRoutesResponse = 0;
api.ListRoutesResponse buildListRoutesResponse() {
  final o = api.ListRoutesResponse();
  buildCounterListRoutesResponse++;
  if (buildCounterListRoutesResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed1866();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1867();
  }
  buildCounterListRoutesResponse--;
  return o;
}

void checkListRoutesResponse(api.ListRoutesResponse o) {
  buildCounterListRoutesResponse++;
  if (buildCounterListRoutesResponse < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed1866(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed1867(o.unreachable!);
  }
  buildCounterListRoutesResponse--;
}

core.List<api.Service> buildUnnamed1868() => [
      buildService(),
      buildService(),
    ];

void checkUnnamed1868(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.List<core.String> buildUnnamed1869() => [
      'foo',
      'foo',
    ];

void checkUnnamed1869(core.List<core.String> o) {
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

core.int buildCounterListServicesResponse = 0;
api.ListServicesResponse buildListServicesResponse() {
  final o = api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed1868();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed1869();
  }
  buildCounterListServicesResponse--;
  return o;
}

void checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed1868(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed1869(o.unreachable!);
  }
  buildCounterListServicesResponse--;
}

core.int buildCounterLocalObjectReference = 0;
api.LocalObjectReference buildLocalObjectReference() {
  final o = api.LocalObjectReference();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalObjectReference--;
}

core.Map<core.String, core.String> buildUnnamed1870() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1870(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed1871() => {
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

void checkUnnamed1871(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed1870();
    o.locationId = 'foo';
    o.metadata = buildUnnamed1871();
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
    checkUnnamed1870(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed1871(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed1872() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1872(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed1873() => [
      'foo',
      'foo',
    ];

void checkUnnamed1873(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed1874() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1874(core.Map<core.String, core.String> o) {
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

core.List<api.OwnerReference> buildUnnamed1875() => [
      buildOwnerReference(),
      buildOwnerReference(),
    ];

void checkUnnamed1875(core.List<api.OwnerReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOwnerReference(o[0]);
  checkOwnerReference(o[1]);
}

core.int buildCounterObjectMeta = 0;
api.ObjectMeta buildObjectMeta() {
  final o = api.ObjectMeta();
  buildCounterObjectMeta++;
  if (buildCounterObjectMeta < 3) {
    o.annotations = buildUnnamed1872();
    o.clusterName = 'foo';
    o.creationTimestamp = 'foo';
    o.deletionGracePeriodSeconds = 42;
    o.deletionTimestamp = 'foo';
    o.finalizers = buildUnnamed1873();
    o.generateName = 'foo';
    o.generation = 42;
    o.labels = buildUnnamed1874();
    o.name = 'foo';
    o.namespace = 'foo';
    o.ownerReferences = buildUnnamed1875();
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
    checkUnnamed1872(o.annotations!);
    unittest.expect(
      o.clusterName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deletionGracePeriodSeconds!,
      unittest.equals(42),
    );
    unittest.expect(
      o.deletionTimestamp!,
      unittest.equals('foo'),
    );
    checkUnnamed1873(o.finalizers!);
    unittest.expect(
      o.generateName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generation!,
      unittest.equals(42),
    );
    checkUnnamed1874(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namespace!,
      unittest.equals('foo'),
    );
    checkUnnamed1875(o.ownerReferences!);
    unittest.expect(
      o.resourceVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterObjectMeta--;
}

core.int buildCounterOwnerReference = 0;
api.OwnerReference buildOwnerReference() {
  final o = api.OwnerReference();
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
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.blockOwnerDeletion!, unittest.isTrue);
    unittest.expect(o.controller!, unittest.isTrue);
    unittest.expect(
      o.kind!,
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
  buildCounterOwnerReference--;
}

core.List<api.AuditConfig> buildUnnamed1876() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed1876(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed1877() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed1877(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed1876();
    o.bindings = buildUnnamed1877();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed1876(o.auditConfigs!);
    checkUnnamed1877(o.bindings!);
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

core.int buildCounterProbe = 0;
api.Probe buildProbe() {
  final o = api.Probe();
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
    checkExecAction(o.exec!);
    unittest.expect(
      o.failureThreshold!,
      unittest.equals(42),
    );
    checkHTTPGetAction(o.httpGet!);
    unittest.expect(
      o.initialDelaySeconds!,
      unittest.equals(42),
    );
    unittest.expect(
      o.periodSeconds!,
      unittest.equals(42),
    );
    unittest.expect(
      o.successThreshold!,
      unittest.equals(42),
    );
    checkTCPSocketAction(o.tcpSocket!);
    unittest.expect(
      o.timeoutSeconds!,
      unittest.equals(42),
    );
  }
  buildCounterProbe--;
}

core.int buildCounterResourceRecord = 0;
api.ResourceRecord buildResourceRecord() {
  final o = api.ResourceRecord();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rrdata!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceRecord--;
}

core.Map<core.String, core.String> buildUnnamed1878() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1878(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed1879() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1879(core.Map<core.String, core.String> o) {
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

core.int buildCounterResourceRequirements = 0;
api.ResourceRequirements buildResourceRequirements() {
  final o = api.ResourceRequirements();
  buildCounterResourceRequirements++;
  if (buildCounterResourceRequirements < 3) {
    o.limits = buildUnnamed1878();
    o.requests = buildUnnamed1879();
  }
  buildCounterResourceRequirements--;
  return o;
}

void checkResourceRequirements(api.ResourceRequirements o) {
  buildCounterResourceRequirements++;
  if (buildCounterResourceRequirements < 3) {
    checkUnnamed1878(o.limits!);
    checkUnnamed1879(o.requests!);
  }
  buildCounterResourceRequirements--;
}

core.int buildCounterRevision = 0;
api.Revision buildRevision() {
  final o = api.Revision();
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
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkObjectMeta(o.metadata!);
    checkRevisionSpec(o.spec!);
    checkRevisionStatus(o.status!);
  }
  buildCounterRevision--;
}

core.List<api.Container> buildUnnamed1880() => [
      buildContainer(),
      buildContainer(),
    ];

void checkUnnamed1880(core.List<api.Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainer(o[0]);
  checkContainer(o[1]);
}

core.List<api.Volume> buildUnnamed1881() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed1881(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterRevisionSpec = 0;
api.RevisionSpec buildRevisionSpec() {
  final o = api.RevisionSpec();
  buildCounterRevisionSpec++;
  if (buildCounterRevisionSpec < 3) {
    o.containerConcurrency = 42;
    o.containers = buildUnnamed1880();
    o.serviceAccountName = 'foo';
    o.timeoutSeconds = 42;
    o.volumes = buildUnnamed1881();
  }
  buildCounterRevisionSpec--;
  return o;
}

void checkRevisionSpec(api.RevisionSpec o) {
  buildCounterRevisionSpec++;
  if (buildCounterRevisionSpec < 3) {
    unittest.expect(
      o.containerConcurrency!,
      unittest.equals(42),
    );
    checkUnnamed1880(o.containers!);
    unittest.expect(
      o.serviceAccountName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeoutSeconds!,
      unittest.equals(42),
    );
    checkUnnamed1881(o.volumes!);
  }
  buildCounterRevisionSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed1882() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed1882(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.int buildCounterRevisionStatus = 0;
api.RevisionStatus buildRevisionStatus() {
  final o = api.RevisionStatus();
  buildCounterRevisionStatus++;
  if (buildCounterRevisionStatus < 3) {
    o.conditions = buildUnnamed1882();
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
    checkUnnamed1882(o.conditions!);
    unittest.expect(
      o.imageDigest!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.observedGeneration!,
      unittest.equals(42),
    );
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevisionStatus--;
}

core.int buildCounterRevisionTemplate = 0;
api.RevisionTemplate buildRevisionTemplate() {
  final o = api.RevisionTemplate();
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
    checkObjectMeta(o.metadata!);
    checkRevisionSpec(o.spec!);
  }
  buildCounterRevisionTemplate--;
}

core.int buildCounterRoute = 0;
api.Route buildRoute() {
  final o = api.Route();
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
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkObjectMeta(o.metadata!);
    checkRouteSpec(o.spec!);
    checkRouteStatus(o.status!);
  }
  buildCounterRoute--;
}

core.List<api.TrafficTarget> buildUnnamed1883() => [
      buildTrafficTarget(),
      buildTrafficTarget(),
    ];

void checkUnnamed1883(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0]);
  checkTrafficTarget(o[1]);
}

core.int buildCounterRouteSpec = 0;
api.RouteSpec buildRouteSpec() {
  final o = api.RouteSpec();
  buildCounterRouteSpec++;
  if (buildCounterRouteSpec < 3) {
    o.traffic = buildUnnamed1883();
  }
  buildCounterRouteSpec--;
  return o;
}

void checkRouteSpec(api.RouteSpec o) {
  buildCounterRouteSpec++;
  if (buildCounterRouteSpec < 3) {
    checkUnnamed1883(o.traffic!);
  }
  buildCounterRouteSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed1884() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed1884(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.List<api.TrafficTarget> buildUnnamed1885() => [
      buildTrafficTarget(),
      buildTrafficTarget(),
    ];

void checkUnnamed1885(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0]);
  checkTrafficTarget(o[1]);
}

core.int buildCounterRouteStatus = 0;
api.RouteStatus buildRouteStatus() {
  final o = api.RouteStatus();
  buildCounterRouteStatus++;
  if (buildCounterRouteStatus < 3) {
    o.address = buildAddressable();
    o.conditions = buildUnnamed1884();
    o.observedGeneration = 42;
    o.traffic = buildUnnamed1885();
    o.url = 'foo';
  }
  buildCounterRouteStatus--;
  return o;
}

void checkRouteStatus(api.RouteStatus o) {
  buildCounterRouteStatus++;
  if (buildCounterRouteStatus < 3) {
    checkAddressable(o.address!);
    checkUnnamed1884(o.conditions!);
    unittest.expect(
      o.observedGeneration!,
      unittest.equals(42),
    );
    checkUnnamed1885(o.traffic!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterRouteStatus--;
}

core.int buildCounterSecretEnvSource = 0;
api.SecretEnvSource buildSecretEnvSource() {
  final o = api.SecretEnvSource();
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
    checkLocalObjectReference(o.localObjectReference!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.optional!, unittest.isTrue);
  }
  buildCounterSecretEnvSource--;
}

core.int buildCounterSecretKeySelector = 0;
api.SecretKeySelector buildSecretKeySelector() {
  final o = api.SecretKeySelector();
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
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkLocalObjectReference(o.localObjectReference!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.optional!, unittest.isTrue);
  }
  buildCounterSecretKeySelector--;
}

core.List<api.KeyToPath> buildUnnamed1886() => [
      buildKeyToPath(),
      buildKeyToPath(),
    ];

void checkUnnamed1886(core.List<api.KeyToPath> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyToPath(o[0]);
  checkKeyToPath(o[1]);
}

core.int buildCounterSecretVolumeSource = 0;
api.SecretVolumeSource buildSecretVolumeSource() {
  final o = api.SecretVolumeSource();
  buildCounterSecretVolumeSource++;
  if (buildCounterSecretVolumeSource < 3) {
    o.defaultMode = 42;
    o.items = buildUnnamed1886();
    o.optional = true;
    o.secretName = 'foo';
  }
  buildCounterSecretVolumeSource--;
  return o;
}

void checkSecretVolumeSource(api.SecretVolumeSource o) {
  buildCounterSecretVolumeSource++;
  if (buildCounterSecretVolumeSource < 3) {
    unittest.expect(
      o.defaultMode!,
      unittest.equals(42),
    );
    checkUnnamed1886(o.items!);
    unittest.expect(o.optional!, unittest.isTrue);
    unittest.expect(
      o.secretName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecretVolumeSource--;
}

core.int buildCounterSecurityContext = 0;
api.SecurityContext buildSecurityContext() {
  final o = api.SecurityContext();
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
    unittest.expect(
      o.runAsUser!,
      unittest.equals(42),
    );
  }
  buildCounterSecurityContext--;
}

core.int buildCounterService = 0;
api.Service buildService() {
  final o = api.Service();
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
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkObjectMeta(o.metadata!);
    checkServiceSpec(o.spec!);
    checkServiceStatus(o.status!);
  }
  buildCounterService--;
}

core.List<api.TrafficTarget> buildUnnamed1887() => [
      buildTrafficTarget(),
      buildTrafficTarget(),
    ];

void checkUnnamed1887(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0]);
  checkTrafficTarget(o[1]);
}

core.int buildCounterServiceSpec = 0;
api.ServiceSpec buildServiceSpec() {
  final o = api.ServiceSpec();
  buildCounterServiceSpec++;
  if (buildCounterServiceSpec < 3) {
    o.template = buildRevisionTemplate();
    o.traffic = buildUnnamed1887();
  }
  buildCounterServiceSpec--;
  return o;
}

void checkServiceSpec(api.ServiceSpec o) {
  buildCounterServiceSpec++;
  if (buildCounterServiceSpec < 3) {
    checkRevisionTemplate(o.template!);
    checkUnnamed1887(o.traffic!);
  }
  buildCounterServiceSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed1888() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed1888(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.List<api.TrafficTarget> buildUnnamed1889() => [
      buildTrafficTarget(),
      buildTrafficTarget(),
    ];

void checkUnnamed1889(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0]);
  checkTrafficTarget(o[1]);
}

core.int buildCounterServiceStatus = 0;
api.ServiceStatus buildServiceStatus() {
  final o = api.ServiceStatus();
  buildCounterServiceStatus++;
  if (buildCounterServiceStatus < 3) {
    o.address = buildAddressable();
    o.conditions = buildUnnamed1888();
    o.latestCreatedRevisionName = 'foo';
    o.latestReadyRevisionName = 'foo';
    o.observedGeneration = 42;
    o.traffic = buildUnnamed1889();
    o.url = 'foo';
  }
  buildCounterServiceStatus--;
  return o;
}

void checkServiceStatus(api.ServiceStatus o) {
  buildCounterServiceStatus++;
  if (buildCounterServiceStatus < 3) {
    checkAddressable(o.address!);
    checkUnnamed1888(o.conditions!);
    unittest.expect(
      o.latestCreatedRevisionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestReadyRevisionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.observedGeneration!,
      unittest.equals(42),
    );
    checkUnnamed1889(o.traffic!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceStatus--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
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
    checkPolicy(o.policy!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
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
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkStatusDetails(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStatusCause = 0;
api.StatusCause buildStatusCause() {
  final o = api.StatusCause();
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
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatusCause--;
}

core.List<api.StatusCause> buildUnnamed1890() => [
      buildStatusCause(),
      buildStatusCause(),
    ];

void checkUnnamed1890(core.List<api.StatusCause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCause(o[0]);
  checkStatusCause(o[1]);
}

core.int buildCounterStatusDetails = 0;
api.StatusDetails buildStatusDetails() {
  final o = api.StatusDetails();
  buildCounterStatusDetails++;
  if (buildCounterStatusDetails < 3) {
    o.causes = buildUnnamed1890();
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
    checkUnnamed1890(o.causes!);
    unittest.expect(
      o.group!,
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
      o.retryAfterSeconds!,
      unittest.equals(42),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatusDetails--;
}

core.int buildCounterTCPSocketAction = 0;
api.TCPSocketAction buildTCPSocketAction() {
  final o = api.TCPSocketAction();
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
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
  }
  buildCounterTCPSocketAction--;
}

core.List<core.String> buildUnnamed1891() => [
      'foo',
      'foo',
    ];

void checkUnnamed1891(core.List<core.String> o) {
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
    o.permissions = buildUnnamed1891();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed1891(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed1892() => [
      'foo',
      'foo',
    ];

void checkUnnamed1892(core.List<core.String> o) {
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
    o.permissions = buildUnnamed1892();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed1892(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTrafficTarget = 0;
api.TrafficTarget buildTrafficTarget() {
  final o = api.TrafficTarget();
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
    unittest.expect(
      o.configurationName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.latestRevision!, unittest.isTrue);
    unittest.expect(
      o.percent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.revisionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterTrafficTarget--;
}

core.int buildCounterVolume = 0;
api.Volume buildVolume() {
  final o = api.Volume();
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
    checkConfigMapVolumeSource(o.configMap!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSecretVolumeSource(o.secret!);
  }
  buildCounterVolume--;
}

core.int buildCounterVolumeMount = 0;
api.VolumeMount buildVolumeMount() {
  final o = api.VolumeMount();
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
    unittest.expect(
      o.mountPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.readOnly!, unittest.isTrue);
    unittest.expect(
      o.subPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeMount--;
}

void main() {
  unittest.group('obj-schema-Addressable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddressable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Addressable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddressable(od);
    });
  });

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

  unittest.group('obj-schema-AuthorizedDomain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizedDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizedDomain.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthorizedDomain(od);
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

  unittest.group('obj-schema-ConfigMapEnvSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigMapEnvSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigMapEnvSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigMapEnvSource(od);
    });
  });

  unittest.group('obj-schema-ConfigMapKeySelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigMapKeySelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigMapKeySelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigMapKeySelector(od);
    });
  });

  unittest.group('obj-schema-ConfigMapVolumeSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigMapVolumeSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigMapVolumeSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigMapVolumeSource(od);
    });
  });

  unittest.group('obj-schema-Configuration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Configuration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfiguration(od);
    });
  });

  unittest.group('obj-schema-ConfigurationSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigurationSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigurationSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigurationSpec(od);
    });
  });

  unittest.group('obj-schema-ConfigurationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigurationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigurationStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigurationStatus(od);
    });
  });

  unittest.group('obj-schema-Container', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Container.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkContainer(od);
    });
  });

  unittest.group('obj-schema-ContainerPort', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerPort();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerPort.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContainerPort(od);
    });
  });

  unittest.group('obj-schema-DomainMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainMapping.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDomainMapping(od);
    });
  });

  unittest.group('obj-schema-DomainMappingSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainMappingSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainMappingSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDomainMappingSpec(od);
    });
  });

  unittest.group('obj-schema-DomainMappingStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainMappingStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainMappingStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDomainMappingStatus(od);
    });
  });

  unittest.group('obj-schema-EnvFromSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvFromSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvFromSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvFromSource(od);
    });
  });

  unittest.group('obj-schema-EnvVar', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvVar();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnvVar.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnvVar(od);
    });
  });

  unittest.group('obj-schema-EnvVarSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvVarSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvVarSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvVarSource(od);
    });
  });

  unittest.group('obj-schema-ExecAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ExecAction.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExecAction(od);
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

  unittest.group('obj-schema-GoogleCloudRunV1Condition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV1Condition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV1Condition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV1Condition(od);
    });
  });

  unittest.group('obj-schema-HTTPGetAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHTTPGetAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HTTPGetAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHTTPGetAction(od);
    });
  });

  unittest.group('obj-schema-HTTPHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHTTPHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HTTPHeader.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHTTPHeader(od);
    });
  });

  unittest.group('obj-schema-KeyToPath', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyToPath();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.KeyToPath.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyToPath(od);
    });
  });

  unittest.group('obj-schema-ListAuthorizedDomainsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuthorizedDomainsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuthorizedDomainsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAuthorizedDomainsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConfigurationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConfigurationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConfigurationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConfigurationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDomainMappingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDomainMappingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDomainMappingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDomainMappingsResponse(od);
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

  unittest.group('obj-schema-ListMeta', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMeta();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ListMeta.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkListMeta(od);
    });
  });

  unittest.group('obj-schema-ListRevisionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRevisionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRevisionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRevisionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRoutesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListServicesResponse(od);
    });
  });

  unittest.group('obj-schema-LocalObjectReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalObjectReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalObjectReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalObjectReference(od);
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

  unittest.group('obj-schema-ObjectMeta', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectMeta();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ObjectMeta.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkObjectMeta(od);
    });
  });

  unittest.group('obj-schema-OwnerReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOwnerReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OwnerReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOwnerReference(od);
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

  unittest.group('obj-schema-Probe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProbe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Probe.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProbe(od);
    });
  });

  unittest.group('obj-schema-ResourceRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceRecord.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceRecord(od);
    });
  });

  unittest.group('obj-schema-ResourceRequirements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceRequirements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceRequirements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceRequirements(od);
    });
  });

  unittest.group('obj-schema-Revision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Revision.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRevision(od);
    });
  });

  unittest.group('obj-schema-RevisionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevisionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevisionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevisionSpec(od);
    });
  });

  unittest.group('obj-schema-RevisionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevisionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevisionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevisionStatus(od);
    });
  });

  unittest.group('obj-schema-RevisionTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevisionTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevisionTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevisionTemplate(od);
    });
  });

  unittest.group('obj-schema-Route', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Route.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRoute(od);
    });
  });

  unittest.group('obj-schema-RouteSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRouteSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RouteSpec.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRouteSpec(od);
    });
  });

  unittest.group('obj-schema-RouteStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRouteStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RouteStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRouteStatus(od);
    });
  });

  unittest.group('obj-schema-SecretEnvSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretEnvSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretEnvSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecretEnvSource(od);
    });
  });

  unittest.group('obj-schema-SecretKeySelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretKeySelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretKeySelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecretKeySelector(od);
    });
  });

  unittest.group('obj-schema-SecretVolumeSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretVolumeSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretVolumeSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecretVolumeSource(od);
    });
  });

  unittest.group('obj-schema-SecurityContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecurityContext(od);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Service.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkService(od);
    });
  });

  unittest.group('obj-schema-ServiceSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceSpec(od);
    });
  });

  unittest.group('obj-schema-ServiceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceStatus(od);
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

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-StatusCause', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatusCause();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StatusCause.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStatusCause(od);
    });
  });

  unittest.group('obj-schema-StatusDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatusDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StatusDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStatusDetails(od);
    });
  });

  unittest.group('obj-schema-TCPSocketAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTCPSocketAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TCPSocketAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTCPSocketAction(od);
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

  unittest.group('obj-schema-TrafficTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrafficTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrafficTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrafficTarget(od);
    });
  });

  unittest.group('obj-schema-Volume', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolume();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Volume.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVolume(od);
    });
  });

  unittest.group('obj-schema-VolumeMount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeMount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeMount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeMount(od);
    });
  });

  unittest.group('resource-NamespacesAuthorizeddomainsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.authorizeddomains;
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('apis/domains.cloudrun.com/v1/'),
        );
        pathOffset += 29;
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
        final resp = convert.json.encode(buildListAuthorizedDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAuthorizedDomainsResponse(
          response as api.ListAuthorizedDomainsResponse);
    });
  });

  unittest.group('resource-NamespacesConfigurationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.configurations;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('apis/serving.knative.dev/v1/'),
        );
        pathOffset += 28;
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
        final resp = convert.json.encode(buildConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConfiguration(response as api.Configuration);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.configurations;
      final arg_parent = 'foo';
      final arg_continue_ = 'foo';
      final arg_fieldSelector = 'foo';
      final arg_includeUninitialized = true;
      final arg_labelSelector = 'foo';
      final arg_limit = 42;
      final arg_resourceVersion = 'foo';
      final arg_watch = true;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('apis/serving.knative.dev/v1/'),
        );
        pathOffset += 28;
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
          queryMap['continue']!.first,
          unittest.equals(arg_continue_),
        );
        unittest.expect(
          queryMap['fieldSelector']!.first,
          unittest.equals(arg_fieldSelector),
        );
        unittest.expect(
          queryMap['includeUninitialized']!.first,
          unittest.equals('$arg_includeUninitialized'),
        );
        unittest.expect(
          queryMap['labelSelector']!.first,
          unittest.equals(arg_labelSelector),
        );
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['resourceVersion']!.first,
          unittest.equals(arg_resourceVersion),
        );
        unittest.expect(
          queryMap['watch']!.first,
          unittest.equals('$arg_watch'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListConfigurationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          continue_: arg_continue_,
          fieldSelector: arg_fieldSelector,
          includeUninitialized: arg_includeUninitialized,
          labelSelector: arg_labelSelector,
          limit: arg_limit,
          resourceVersion: arg_resourceVersion,
          watch: arg_watch,
          $fields: arg_$fields);
      checkListConfigurationsResponse(
          response as api.ListConfigurationsResponse);
    });
  });

  unittest.group('resource-NamespacesDomainmappingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.domainmappings;
      final arg_request = buildDomainMapping();
      final arg_parent = 'foo';
      final arg_dryRun = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DomainMapping.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDomainMapping(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('apis/domains.cloudrun.com/v1/'),
        );
        pathOffset += 29;
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
          queryMap['dryRun']!.first,
          unittest.equals(arg_dryRun),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDomainMapping());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          dryRun: arg_dryRun, $fields: arg_$fields);
      checkDomainMapping(response as api.DomainMapping);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.domainmappings;
      final arg_name = 'foo';
      final arg_apiVersion = 'foo';
      final arg_dryRun = 'foo';
      final arg_kind = 'foo';
      final arg_propagationPolicy = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('apis/domains.cloudrun.com/v1/'),
        );
        pathOffset += 29;
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
          queryMap['apiVersion']!.first,
          unittest.equals(arg_apiVersion),
        );
        unittest.expect(
          queryMap['dryRun']!.first,
          unittest.equals(arg_dryRun),
        );
        unittest.expect(
          queryMap['kind']!.first,
          unittest.equals(arg_kind),
        );
        unittest.expect(
          queryMap['propagationPolicy']!.first,
          unittest.equals(arg_propagationPolicy),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          apiVersion: arg_apiVersion,
          dryRun: arg_dryRun,
          kind: arg_kind,
          propagationPolicy: arg_propagationPolicy,
          $fields: arg_$fields);
      checkStatus(response as api.Status);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.domainmappings;
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('apis/domains.cloudrun.com/v1/'),
        );
        pathOffset += 29;
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
        final resp = convert.json.encode(buildDomainMapping());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDomainMapping(response as api.DomainMapping);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.domainmappings;
      final arg_parent = 'foo';
      final arg_continue_ = 'foo';
      final arg_fieldSelector = 'foo';
      final arg_includeUninitialized = true;
      final arg_labelSelector = 'foo';
      final arg_limit = 42;
      final arg_resourceVersion = 'foo';
      final arg_watch = true;
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('apis/domains.cloudrun.com/v1/'),
        );
        pathOffset += 29;
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
          queryMap['continue']!.first,
          unittest.equals(arg_continue_),
        );
        unittest.expect(
          queryMap['fieldSelector']!.first,
          unittest.equals(arg_fieldSelector),
        );
        unittest.expect(
          queryMap['includeUninitialized']!.first,
          unittest.equals('$arg_includeUninitialized'),
        );
        unittest.expect(
          queryMap['labelSelector']!.first,
          unittest.equals(arg_labelSelector),
        );
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['resourceVersion']!.first,
          unittest.equals(arg_resourceVersion),
        );
        unittest.expect(
          queryMap['watch']!.first,
          unittest.equals('$arg_watch'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDomainMappingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          continue_: arg_continue_,
          fieldSelector: arg_fieldSelector,
          includeUninitialized: arg_includeUninitialized,
          labelSelector: arg_labelSelector,
          limit: arg_limit,
          resourceVersion: arg_resourceVersion,
          watch: arg_watch,
          $fields: arg_$fields);
      checkListDomainMappingsResponse(
          response as api.ListDomainMappingsResponse);
    });
  });

  unittest.group('resource-NamespacesRevisionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.revisions;
      final arg_name = 'foo';
      final arg_apiVersion = 'foo';
      final arg_dryRun = 'foo';
      final arg_kind = 'foo';
      final arg_propagationPolicy = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('apis/serving.knative.dev/v1/'),
        );
        pathOffset += 28;
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
          queryMap['apiVersion']!.first,
          unittest.equals(arg_apiVersion),
        );
        unittest.expect(
          queryMap['dryRun']!.first,
          unittest.equals(arg_dryRun),
        );
        unittest.expect(
          queryMap['kind']!.first,
          unittest.equals(arg_kind),
        );
        unittest.expect(
          queryMap['propagationPolicy']!.first,
          unittest.equals(arg_propagationPolicy),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          apiVersion: arg_apiVersion,
          dryRun: arg_dryRun,
          kind: arg_kind,
          propagationPolicy: arg_propagationPolicy,
          $fields: arg_$fields);
      checkStatus(response as api.Status);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.revisions;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('apis/serving.knative.dev/v1/'),
        );
        pathOffset += 28;
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
        final resp = convert.json.encode(buildRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRevision(response as api.Revision);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.revisions;
      final arg_parent = 'foo';
      final arg_continue_ = 'foo';
      final arg_fieldSelector = 'foo';
      final arg_includeUninitialized = true;
      final arg_labelSelector = 'foo';
      final arg_limit = 42;
      final arg_resourceVersion = 'foo';
      final arg_watch = true;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('apis/serving.knative.dev/v1/'),
        );
        pathOffset += 28;
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
          queryMap['continue']!.first,
          unittest.equals(arg_continue_),
        );
        unittest.expect(
          queryMap['fieldSelector']!.first,
          unittest.equals(arg_fieldSelector),
        );
        unittest.expect(
          queryMap['includeUninitialized']!.first,
          unittest.equals('$arg_includeUninitialized'),
        );
        unittest.expect(
          queryMap['labelSelector']!.first,
          unittest.equals(arg_labelSelector),
        );
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['resourceVersion']!.first,
          unittest.equals(arg_resourceVersion),
        );
        unittest.expect(
          queryMap['watch']!.first,
          unittest.equals('$arg_watch'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRevisionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          continue_: arg_continue_,
          fieldSelector: arg_fieldSelector,
          includeUninitialized: arg_includeUninitialized,
          labelSelector: arg_labelSelector,
          limit: arg_limit,
          resourceVersion: arg_resourceVersion,
          watch: arg_watch,
          $fields: arg_$fields);
      checkListRevisionsResponse(response as api.ListRevisionsResponse);
    });
  });

  unittest.group('resource-NamespacesRoutesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.routes;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('apis/serving.knative.dev/v1/'),
        );
        pathOffset += 28;
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
        final resp = convert.json.encode(buildRoute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRoute(response as api.Route);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.routes;
      final arg_parent = 'foo';
      final arg_continue_ = 'foo';
      final arg_fieldSelector = 'foo';
      final arg_includeUninitialized = true;
      final arg_labelSelector = 'foo';
      final arg_limit = 42;
      final arg_resourceVersion = 'foo';
      final arg_watch = true;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('apis/serving.knative.dev/v1/'),
        );
        pathOffset += 28;
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
          queryMap['continue']!.first,
          unittest.equals(arg_continue_),
        );
        unittest.expect(
          queryMap['fieldSelector']!.first,
          unittest.equals(arg_fieldSelector),
        );
        unittest.expect(
          queryMap['includeUninitialized']!.first,
          unittest.equals('$arg_includeUninitialized'),
        );
        unittest.expect(
          queryMap['labelSelector']!.first,
          unittest.equals(arg_labelSelector),
        );
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['resourceVersion']!.first,
          unittest.equals(arg_resourceVersion),
        );
        unittest.expect(
          queryMap['watch']!.first,
          unittest.equals('$arg_watch'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRoutesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          continue_: arg_continue_,
          fieldSelector: arg_fieldSelector,
          includeUninitialized: arg_includeUninitialized,
          labelSelector: arg_labelSelector,
          limit: arg_limit,
          resourceVersion: arg_resourceVersion,
          watch: arg_watch,
          $fields: arg_$fields);
      checkListRoutesResponse(response as api.ListRoutesResponse);
    });
  });

  unittest.group('resource-NamespacesServicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.services;
      final arg_request = buildService();
      final arg_parent = 'foo';
      final arg_dryRun = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Service.fromJson(json as core.Map<core.String, core.dynamic>);
        checkService(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('apis/serving.knative.dev/v1/'),
        );
        pathOffset += 28;
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
          queryMap['dryRun']!.first,
          unittest.equals(arg_dryRun),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          dryRun: arg_dryRun, $fields: arg_$fields);
      checkService(response as api.Service);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.services;
      final arg_name = 'foo';
      final arg_apiVersion = 'foo';
      final arg_dryRun = 'foo';
      final arg_kind = 'foo';
      final arg_propagationPolicy = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('apis/serving.knative.dev/v1/'),
        );
        pathOffset += 28;
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
          queryMap['apiVersion']!.first,
          unittest.equals(arg_apiVersion),
        );
        unittest.expect(
          queryMap['dryRun']!.first,
          unittest.equals(arg_dryRun),
        );
        unittest.expect(
          queryMap['kind']!.first,
          unittest.equals(arg_kind),
        );
        unittest.expect(
          queryMap['propagationPolicy']!.first,
          unittest.equals(arg_propagationPolicy),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          apiVersion: arg_apiVersion,
          dryRun: arg_dryRun,
          kind: arg_kind,
          propagationPolicy: arg_propagationPolicy,
          $fields: arg_$fields);
      checkStatus(response as api.Status);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.services;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('apis/serving.knative.dev/v1/'),
        );
        pathOffset += 28;
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
        final resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkService(response as api.Service);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.services;
      final arg_parent = 'foo';
      final arg_continue_ = 'foo';
      final arg_fieldSelector = 'foo';
      final arg_includeUninitialized = true;
      final arg_labelSelector = 'foo';
      final arg_limit = 42;
      final arg_resourceVersion = 'foo';
      final arg_watch = true;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('apis/serving.knative.dev/v1/'),
        );
        pathOffset += 28;
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
          queryMap['continue']!.first,
          unittest.equals(arg_continue_),
        );
        unittest.expect(
          queryMap['fieldSelector']!.first,
          unittest.equals(arg_fieldSelector),
        );
        unittest.expect(
          queryMap['includeUninitialized']!.first,
          unittest.equals('$arg_includeUninitialized'),
        );
        unittest.expect(
          queryMap['labelSelector']!.first,
          unittest.equals(arg_labelSelector),
        );
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['resourceVersion']!.first,
          unittest.equals(arg_resourceVersion),
        );
        unittest.expect(
          queryMap['watch']!.first,
          unittest.equals('$arg_watch'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          continue_: arg_continue_,
          fieldSelector: arg_fieldSelector,
          includeUninitialized: arg_includeUninitialized,
          labelSelector: arg_labelSelector,
          limit: arg_limit,
          resourceVersion: arg_resourceVersion,
          watch: arg_watch,
          $fields: arg_$fields);
      checkListServicesResponse(response as api.ListServicesResponse);
    });

    unittest.test('method--replaceService', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.services;
      final arg_request = buildService();
      final arg_name = 'foo';
      final arg_dryRun = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Service.fromJson(json as core.Map<core.String, core.dynamic>);
        checkService(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('apis/serving.knative.dev/v1/'),
        );
        pathOffset += 28;
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
          queryMap['dryRun']!.first,
          unittest.equals(arg_dryRun),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.replaceService(arg_request, arg_name,
          dryRun: arg_dryRun, $fields: arg_$fields);
      checkService(response as api.Service);
    });
  });

  unittest.group('resource-ProjectsAuthorizeddomainsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.authorizeddomains;
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
        final resp = convert.json.encode(buildListAuthorizedDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAuthorizedDomainsResponse(
          response as api.ListAuthorizedDomainsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsAuthorizeddomainsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.authorizeddomains;
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
        final resp = convert.json.encode(buildListAuthorizedDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAuthorizedDomainsResponse(
          response as api.ListAuthorizedDomainsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConfigurationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.configurations;
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
        final resp = convert.json.encode(buildConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConfiguration(response as api.Configuration);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.configurations;
      final arg_parent = 'foo';
      final arg_continue_ = 'foo';
      final arg_fieldSelector = 'foo';
      final arg_includeUninitialized = true;
      final arg_labelSelector = 'foo';
      final arg_limit = 42;
      final arg_resourceVersion = 'foo';
      final arg_watch = true;
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
          queryMap['continue']!.first,
          unittest.equals(arg_continue_),
        );
        unittest.expect(
          queryMap['fieldSelector']!.first,
          unittest.equals(arg_fieldSelector),
        );
        unittest.expect(
          queryMap['includeUninitialized']!.first,
          unittest.equals('$arg_includeUninitialized'),
        );
        unittest.expect(
          queryMap['labelSelector']!.first,
          unittest.equals(arg_labelSelector),
        );
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['resourceVersion']!.first,
          unittest.equals(arg_resourceVersion),
        );
        unittest.expect(
          queryMap['watch']!.first,
          unittest.equals('$arg_watch'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListConfigurationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          continue_: arg_continue_,
          fieldSelector: arg_fieldSelector,
          includeUninitialized: arg_includeUninitialized,
          labelSelector: arg_labelSelector,
          limit: arg_limit,
          resourceVersion: arg_resourceVersion,
          watch: arg_watch,
          $fields: arg_$fields);
      checkListConfigurationsResponse(
          response as api.ListConfigurationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDomainmappingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.domainmappings;
      final arg_request = buildDomainMapping();
      final arg_parent = 'foo';
      final arg_dryRun = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DomainMapping.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDomainMapping(obj);

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
          queryMap['dryRun']!.first,
          unittest.equals(arg_dryRun),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDomainMapping());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          dryRun: arg_dryRun, $fields: arg_$fields);
      checkDomainMapping(response as api.DomainMapping);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.domainmappings;
      final arg_name = 'foo';
      final arg_apiVersion = 'foo';
      final arg_dryRun = 'foo';
      final arg_kind = 'foo';
      final arg_propagationPolicy = 'foo';
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
          queryMap['apiVersion']!.first,
          unittest.equals(arg_apiVersion),
        );
        unittest.expect(
          queryMap['dryRun']!.first,
          unittest.equals(arg_dryRun),
        );
        unittest.expect(
          queryMap['kind']!.first,
          unittest.equals(arg_kind),
        );
        unittest.expect(
          queryMap['propagationPolicy']!.first,
          unittest.equals(arg_propagationPolicy),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          apiVersion: arg_apiVersion,
          dryRun: arg_dryRun,
          kind: arg_kind,
          propagationPolicy: arg_propagationPolicy,
          $fields: arg_$fields);
      checkStatus(response as api.Status);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.domainmappings;
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
        final resp = convert.json.encode(buildDomainMapping());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDomainMapping(response as api.DomainMapping);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.domainmappings;
      final arg_parent = 'foo';
      final arg_continue_ = 'foo';
      final arg_fieldSelector = 'foo';
      final arg_includeUninitialized = true;
      final arg_labelSelector = 'foo';
      final arg_limit = 42;
      final arg_resourceVersion = 'foo';
      final arg_watch = true;
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
          queryMap['continue']!.first,
          unittest.equals(arg_continue_),
        );
        unittest.expect(
          queryMap['fieldSelector']!.first,
          unittest.equals(arg_fieldSelector),
        );
        unittest.expect(
          queryMap['includeUninitialized']!.first,
          unittest.equals('$arg_includeUninitialized'),
        );
        unittest.expect(
          queryMap['labelSelector']!.first,
          unittest.equals(arg_labelSelector),
        );
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['resourceVersion']!.first,
          unittest.equals(arg_resourceVersion),
        );
        unittest.expect(
          queryMap['watch']!.first,
          unittest.equals('$arg_watch'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDomainMappingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          continue_: arg_continue_,
          fieldSelector: arg_fieldSelector,
          includeUninitialized: arg_includeUninitialized,
          labelSelector: arg_labelSelector,
          limit: arg_limit,
          resourceVersion: arg_resourceVersion,
          watch: arg_watch,
          $fields: arg_$fields);
      checkListDomainMappingsResponse(
          response as api.ListDomainMappingsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRevisionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.revisions;
      final arg_name = 'foo';
      final arg_apiVersion = 'foo';
      final arg_dryRun = 'foo';
      final arg_kind = 'foo';
      final arg_propagationPolicy = 'foo';
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
          queryMap['apiVersion']!.first,
          unittest.equals(arg_apiVersion),
        );
        unittest.expect(
          queryMap['dryRun']!.first,
          unittest.equals(arg_dryRun),
        );
        unittest.expect(
          queryMap['kind']!.first,
          unittest.equals(arg_kind),
        );
        unittest.expect(
          queryMap['propagationPolicy']!.first,
          unittest.equals(arg_propagationPolicy),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          apiVersion: arg_apiVersion,
          dryRun: arg_dryRun,
          kind: arg_kind,
          propagationPolicy: arg_propagationPolicy,
          $fields: arg_$fields);
      checkStatus(response as api.Status);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.revisions;
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
        final resp = convert.json.encode(buildRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRevision(response as api.Revision);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.revisions;
      final arg_parent = 'foo';
      final arg_continue_ = 'foo';
      final arg_fieldSelector = 'foo';
      final arg_includeUninitialized = true;
      final arg_labelSelector = 'foo';
      final arg_limit = 42;
      final arg_resourceVersion = 'foo';
      final arg_watch = true;
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
          queryMap['continue']!.first,
          unittest.equals(arg_continue_),
        );
        unittest.expect(
          queryMap['fieldSelector']!.first,
          unittest.equals(arg_fieldSelector),
        );
        unittest.expect(
          queryMap['includeUninitialized']!.first,
          unittest.equals('$arg_includeUninitialized'),
        );
        unittest.expect(
          queryMap['labelSelector']!.first,
          unittest.equals(arg_labelSelector),
        );
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['resourceVersion']!.first,
          unittest.equals(arg_resourceVersion),
        );
        unittest.expect(
          queryMap['watch']!.first,
          unittest.equals('$arg_watch'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRevisionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          continue_: arg_continue_,
          fieldSelector: arg_fieldSelector,
          includeUninitialized: arg_includeUninitialized,
          labelSelector: arg_labelSelector,
          limit: arg_limit,
          resourceVersion: arg_resourceVersion,
          watch: arg_watch,
          $fields: arg_$fields);
      checkListRevisionsResponse(response as api.ListRevisionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRoutesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.routes;
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
        final resp = convert.json.encode(buildRoute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRoute(response as api.Route);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.routes;
      final arg_parent = 'foo';
      final arg_continue_ = 'foo';
      final arg_fieldSelector = 'foo';
      final arg_includeUninitialized = true;
      final arg_labelSelector = 'foo';
      final arg_limit = 42;
      final arg_resourceVersion = 'foo';
      final arg_watch = true;
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
          queryMap['continue']!.first,
          unittest.equals(arg_continue_),
        );
        unittest.expect(
          queryMap['fieldSelector']!.first,
          unittest.equals(arg_fieldSelector),
        );
        unittest.expect(
          queryMap['includeUninitialized']!.first,
          unittest.equals('$arg_includeUninitialized'),
        );
        unittest.expect(
          queryMap['labelSelector']!.first,
          unittest.equals(arg_labelSelector),
        );
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['resourceVersion']!.first,
          unittest.equals(arg_resourceVersion),
        );
        unittest.expect(
          queryMap['watch']!.first,
          unittest.equals('$arg_watch'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRoutesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          continue_: arg_continue_,
          fieldSelector: arg_fieldSelector,
          includeUninitialized: arg_includeUninitialized,
          labelSelector: arg_labelSelector,
          limit: arg_limit,
          resourceVersion: arg_resourceVersion,
          watch: arg_watch,
          $fields: arg_$fields);
      checkListRoutesResponse(response as api.ListRoutesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_request = buildService();
      final arg_parent = 'foo';
      final arg_dryRun = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Service.fromJson(json as core.Map<core.String, core.dynamic>);
        checkService(obj);

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
          queryMap['dryRun']!.first,
          unittest.equals(arg_dryRun),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          dryRun: arg_dryRun, $fields: arg_$fields);
      checkService(response as api.Service);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_name = 'foo';
      final arg_apiVersion = 'foo';
      final arg_dryRun = 'foo';
      final arg_kind = 'foo';
      final arg_propagationPolicy = 'foo';
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
          queryMap['apiVersion']!.first,
          unittest.equals(arg_apiVersion),
        );
        unittest.expect(
          queryMap['dryRun']!.first,
          unittest.equals(arg_dryRun),
        );
        unittest.expect(
          queryMap['kind']!.first,
          unittest.equals(arg_kind),
        );
        unittest.expect(
          queryMap['propagationPolicy']!.first,
          unittest.equals(arg_propagationPolicy),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          apiVersion: arg_apiVersion,
          dryRun: arg_dryRun,
          kind: arg_kind,
          propagationPolicy: arg_propagationPolicy,
          $fields: arg_$fields);
      checkStatus(response as api.Status);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
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
        final resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkService(response as api.Service);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
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
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_parent = 'foo';
      final arg_continue_ = 'foo';
      final arg_fieldSelector = 'foo';
      final arg_includeUninitialized = true;
      final arg_labelSelector = 'foo';
      final arg_limit = 42;
      final arg_resourceVersion = 'foo';
      final arg_watch = true;
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
          queryMap['continue']!.first,
          unittest.equals(arg_continue_),
        );
        unittest.expect(
          queryMap['fieldSelector']!.first,
          unittest.equals(arg_fieldSelector),
        );
        unittest.expect(
          queryMap['includeUninitialized']!.first,
          unittest.equals('$arg_includeUninitialized'),
        );
        unittest.expect(
          queryMap['labelSelector']!.first,
          unittest.equals(arg_labelSelector),
        );
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['resourceVersion']!.first,
          unittest.equals(arg_resourceVersion),
        );
        unittest.expect(
          queryMap['watch']!.first,
          unittest.equals('$arg_watch'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          continue_: arg_continue_,
          fieldSelector: arg_fieldSelector,
          includeUninitialized: arg_includeUninitialized,
          labelSelector: arg_labelSelector,
          limit: arg_limit,
          resourceVersion: arg_resourceVersion,
          watch: arg_watch,
          $fields: arg_$fields);
      checkListServicesResponse(response as api.ListServicesResponse);
    });

    unittest.test('method--replaceService', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_request = buildService();
      final arg_name = 'foo';
      final arg_dryRun = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Service.fromJson(json as core.Map<core.String, core.dynamic>);
        checkService(obj);

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
          queryMap['dryRun']!.first,
          unittest.equals(arg_dryRun),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.replaceService(arg_request, arg_name,
          dryRun: arg_dryRun, $fields: arg_$fields);
      checkService(response as api.Service);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
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
      final res = api.CloudRunApi(mock).projects.locations.services;
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
}
