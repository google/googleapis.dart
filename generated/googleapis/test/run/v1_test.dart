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

core.int buildCounterCancelExecutionRequest = 0;
api.CancelExecutionRequest buildCancelExecutionRequest() {
  final o = api.CancelExecutionRequest();
  buildCounterCancelExecutionRequest++;
  if (buildCounterCancelExecutionRequest < 3) {}
  buildCounterCancelExecutionRequest--;
  return o;
}

void checkCancelExecutionRequest(api.CancelExecutionRequest o) {
  buildCounterCancelExecutionRequest++;
  if (buildCounterCancelExecutionRequest < 3) {}
  buildCounterCancelExecutionRequest--;
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

core.List<api.KeyToPath> buildUnnamed3() => [
      buildKeyToPath(),
      buildKeyToPath(),
    ];

void checkUnnamed3(core.List<api.KeyToPath> o) {
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
    o.items = buildUnnamed3();
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
    checkUnnamed3(o.items!);
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

core.List<api.GoogleCloudRunV1Condition> buildUnnamed4() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed4(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.int buildCounterConfigurationStatus = 0;
api.ConfigurationStatus buildConfigurationStatus() {
  final o = api.ConfigurationStatus();
  buildCounterConfigurationStatus++;
  if (buildCounterConfigurationStatus < 3) {
    o.conditions = buildUnnamed4();
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
    checkUnnamed4(o.conditions!);
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

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.List<api.EnvVar> buildUnnamed7() => [
      buildEnvVar(),
      buildEnvVar(),
    ];

void checkUnnamed7(core.List<api.EnvVar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvVar(o[0]);
  checkEnvVar(o[1]);
}

core.List<api.EnvFromSource> buildUnnamed8() => [
      buildEnvFromSource(),
      buildEnvFromSource(),
    ];

void checkUnnamed8(core.List<api.EnvFromSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvFromSource(o[0]);
  checkEnvFromSource(o[1]);
}

core.List<api.ContainerPort> buildUnnamed9() => [
      buildContainerPort(),
      buildContainerPort(),
    ];

void checkUnnamed9(core.List<api.ContainerPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainerPort(o[0]);
  checkContainerPort(o[1]);
}

core.List<api.VolumeMount> buildUnnamed10() => [
      buildVolumeMount(),
      buildVolumeMount(),
    ];

void checkUnnamed10(core.List<api.VolumeMount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeMount(o[0]);
  checkVolumeMount(o[1]);
}

core.int buildCounterContainer = 0;
api.Container buildContainer() {
  final o = api.Container();
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    o.args = buildUnnamed5();
    o.command = buildUnnamed6();
    o.env = buildUnnamed7();
    o.envFrom = buildUnnamed8();
    o.image = 'foo';
    o.imagePullPolicy = 'foo';
    o.livenessProbe = buildProbe();
    o.name = 'foo';
    o.ports = buildUnnamed9();
    o.readinessProbe = buildProbe();
    o.resources = buildResourceRequirements();
    o.securityContext = buildSecurityContext();
    o.startupProbe = buildProbe();
    o.terminationMessagePath = 'foo';
    o.terminationMessagePolicy = 'foo';
    o.volumeMounts = buildUnnamed10();
    o.workingDir = 'foo';
  }
  buildCounterContainer--;
  return o;
}

void checkContainer(api.Container o) {
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    checkUnnamed5(o.args!);
    checkUnnamed6(o.command!);
    checkUnnamed7(o.env!);
    checkUnnamed8(o.envFrom!);
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
    checkUnnamed9(o.ports!);
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
    checkUnnamed10(o.volumeMounts!);
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

core.List<api.GoogleCloudRunV1Condition> buildUnnamed11() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed11(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.List<api.ResourceRecord> buildUnnamed12() => [
      buildResourceRecord(),
      buildResourceRecord(),
    ];

void checkUnnamed12(core.List<api.ResourceRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecord(o[0]);
  checkResourceRecord(o[1]);
}

core.int buildCounterDomainMappingStatus = 0;
api.DomainMappingStatus buildDomainMappingStatus() {
  final o = api.DomainMappingStatus();
  buildCounterDomainMappingStatus++;
  if (buildCounterDomainMappingStatus < 3) {
    o.conditions = buildUnnamed11();
    o.mappedRouteName = 'foo';
    o.observedGeneration = 42;
    o.resourceRecords = buildUnnamed12();
    o.url = 'foo';
  }
  buildCounterDomainMappingStatus--;
  return o;
}

void checkDomainMappingStatus(api.DomainMappingStatus o) {
  buildCounterDomainMappingStatus++;
  if (buildCounterDomainMappingStatus < 3) {
    checkUnnamed11(o.conditions!);
    unittest.expect(
      o.mappedRouteName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.observedGeneration!,
      unittest.equals(42),
    );
    checkUnnamed12(o.resourceRecords!);
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

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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
    o.command = buildUnnamed13();
  }
  buildCounterExecAction--;
  return o;
}

void checkExecAction(api.ExecAction o) {
  buildCounterExecAction++;
  if (buildCounterExecAction < 3) {
    checkUnnamed13(o.command!);
  }
  buildCounterExecAction--;
}

core.int buildCounterExecution = 0;
api.Execution buildExecution() {
  final o = api.Execution();
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    o.apiVersion = 'foo';
    o.kind = 'foo';
    o.metadata = buildObjectMeta();
    o.spec = buildExecutionSpec();
    o.status = buildExecutionStatus();
  }
  buildCounterExecution--;
  return o;
}

void checkExecution(api.Execution o) {
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkObjectMeta(o.metadata!);
    checkExecutionSpec(o.spec!);
    checkExecutionStatus(o.status!);
  }
  buildCounterExecution--;
}

core.int buildCounterExecutionReference = 0;
api.ExecutionReference buildExecutionReference() {
  final o = api.ExecutionReference();
  buildCounterExecutionReference++;
  if (buildCounterExecutionReference < 3) {
    o.completionTimestamp = 'foo';
    o.creationTimestamp = 'foo';
    o.name = 'foo';
  }
  buildCounterExecutionReference--;
  return o;
}

void checkExecutionReference(api.ExecutionReference o) {
  buildCounterExecutionReference++;
  if (buildCounterExecutionReference < 3) {
    unittest.expect(
      o.completionTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterExecutionReference--;
}

core.int buildCounterExecutionSpec = 0;
api.ExecutionSpec buildExecutionSpec() {
  final o = api.ExecutionSpec();
  buildCounterExecutionSpec++;
  if (buildCounterExecutionSpec < 3) {
    o.parallelism = 42;
    o.taskCount = 42;
    o.template = buildTaskTemplateSpec();
  }
  buildCounterExecutionSpec--;
  return o;
}

void checkExecutionSpec(api.ExecutionSpec o) {
  buildCounterExecutionSpec++;
  if (buildCounterExecutionSpec < 3) {
    unittest.expect(
      o.parallelism!,
      unittest.equals(42),
    );
    unittest.expect(
      o.taskCount!,
      unittest.equals(42),
    );
    checkTaskTemplateSpec(o.template!);
  }
  buildCounterExecutionSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed14() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed14(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.int buildCounterExecutionStatus = 0;
api.ExecutionStatus buildExecutionStatus() {
  final o = api.ExecutionStatus();
  buildCounterExecutionStatus++;
  if (buildCounterExecutionStatus < 3) {
    o.cancelledCount = 42;
    o.completionTime = 'foo';
    o.conditions = buildUnnamed14();
    o.failedCount = 42;
    o.logUri = 'foo';
    o.observedGeneration = 42;
    o.retriedCount = 42;
    o.runningCount = 42;
    o.startTime = 'foo';
    o.succeededCount = 42;
  }
  buildCounterExecutionStatus--;
  return o;
}

void checkExecutionStatus(api.ExecutionStatus o) {
  buildCounterExecutionStatus++;
  if (buildCounterExecutionStatus < 3) {
    unittest.expect(
      o.cancelledCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.completionTime!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.conditions!);
    unittest.expect(
      o.failedCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.logUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.observedGeneration!,
      unittest.equals(42),
    );
    unittest.expect(
      o.retriedCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.runningCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.succeededCount!,
      unittest.equals(42),
    );
  }
  buildCounterExecutionStatus--;
}

core.int buildCounterExecutionTemplateSpec = 0;
api.ExecutionTemplateSpec buildExecutionTemplateSpec() {
  final o = api.ExecutionTemplateSpec();
  buildCounterExecutionTemplateSpec++;
  if (buildCounterExecutionTemplateSpec < 3) {
    o.metadata = buildObjectMeta();
    o.spec = buildExecutionSpec();
  }
  buildCounterExecutionTemplateSpec--;
  return o;
}

void checkExecutionTemplateSpec(api.ExecutionTemplateSpec o) {
  buildCounterExecutionTemplateSpec++;
  if (buildCounterExecutionTemplateSpec < 3) {
    checkObjectMeta(o.metadata!);
    checkExecutionSpec(o.spec!);
  }
  buildCounterExecutionTemplateSpec--;
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

core.int buildCounterGRPCAction = 0;
api.GRPCAction buildGRPCAction() {
  final o = api.GRPCAction();
  buildCounterGRPCAction++;
  if (buildCounterGRPCAction < 3) {
    o.port = 42;
    o.service = 'foo';
  }
  buildCounterGRPCAction--;
  return o;
}

void checkGRPCAction(api.GRPCAction o) {
  buildCounterGRPCAction++;
  if (buildCounterGRPCAction < 3) {
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGRPCAction--;
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

core.Map<core.String, core.Object?> buildUnnamed15() => {
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

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed16() => [
      buildUnnamed15(),
      buildUnnamed15(),
    ];

void checkUnnamed16(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed15(o[0]);
  checkUnnamed15(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed16();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed16(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.List<api.HTTPHeader> buildUnnamed17() => [
      buildHTTPHeader(),
      buildHTTPHeader(),
    ];

void checkUnnamed17(core.List<api.HTTPHeader> o) {
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
    o.httpHeaders = buildUnnamed17();
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
    checkUnnamed17(o.httpHeaders!);
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

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.apiVersion = 'foo';
    o.kind = 'foo';
    o.metadata = buildObjectMeta();
    o.spec = buildJobSpec();
    o.status = buildJobStatus();
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkObjectMeta(o.metadata!);
    checkJobSpec(o.spec!);
    checkJobStatus(o.status!);
  }
  buildCounterJob--;
}

core.int buildCounterJobSpec = 0;
api.JobSpec buildJobSpec() {
  final o = api.JobSpec();
  buildCounterJobSpec++;
  if (buildCounterJobSpec < 3) {
    o.template = buildExecutionTemplateSpec();
  }
  buildCounterJobSpec--;
  return o;
}

void checkJobSpec(api.JobSpec o) {
  buildCounterJobSpec++;
  if (buildCounterJobSpec < 3) {
    checkExecutionTemplateSpec(o.template!);
  }
  buildCounterJobSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed18() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed18(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.int buildCounterJobStatus = 0;
api.JobStatus buildJobStatus() {
  final o = api.JobStatus();
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    o.conditions = buildUnnamed18();
    o.executionCount = 42;
    o.latestCreatedExecution = buildExecutionReference();
    o.observedGeneration = 42;
  }
  buildCounterJobStatus--;
  return o;
}

void checkJobStatus(api.JobStatus o) {
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    checkUnnamed18(o.conditions!);
    unittest.expect(
      o.executionCount!,
      unittest.equals(42),
    );
    checkExecutionReference(o.latestCreatedExecution!);
    unittest.expect(
      o.observedGeneration!,
      unittest.equals(42),
    );
  }
  buildCounterJobStatus--;
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

core.List<api.AuthorizedDomain> buildUnnamed19() => [
      buildAuthorizedDomain(),
      buildAuthorizedDomain(),
    ];

void checkUnnamed19(core.List<api.AuthorizedDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizedDomain(o[0]);
  checkAuthorizedDomain(o[1]);
}

core.int buildCounterListAuthorizedDomainsResponse = 0;
api.ListAuthorizedDomainsResponse buildListAuthorizedDomainsResponse() {
  final o = api.ListAuthorizedDomainsResponse();
  buildCounterListAuthorizedDomainsResponse++;
  if (buildCounterListAuthorizedDomainsResponse < 3) {
    o.domains = buildUnnamed19();
    o.nextPageToken = 'foo';
  }
  buildCounterListAuthorizedDomainsResponse--;
  return o;
}

void checkListAuthorizedDomainsResponse(api.ListAuthorizedDomainsResponse o) {
  buildCounterListAuthorizedDomainsResponse++;
  if (buildCounterListAuthorizedDomainsResponse < 3) {
    checkUnnamed19(o.domains!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAuthorizedDomainsResponse--;
}

core.List<api.Configuration> buildUnnamed20() => [
      buildConfiguration(),
      buildConfiguration(),
    ];

void checkUnnamed20(core.List<api.Configuration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfiguration(o[0]);
  checkConfiguration(o[1]);
}

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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
    o.items = buildUnnamed20();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed21();
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
    checkUnnamed20(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed21(o.unreachable!);
  }
  buildCounterListConfigurationsResponse--;
}

core.List<api.DomainMapping> buildUnnamed22() => [
      buildDomainMapping(),
      buildDomainMapping(),
    ];

void checkUnnamed22(core.List<api.DomainMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainMapping(o[0]);
  checkDomainMapping(o[1]);
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

core.int buildCounterListDomainMappingsResponse = 0;
api.ListDomainMappingsResponse buildListDomainMappingsResponse() {
  final o = api.ListDomainMappingsResponse();
  buildCounterListDomainMappingsResponse++;
  if (buildCounterListDomainMappingsResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed22();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed23();
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
    checkUnnamed22(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed23(o.unreachable!);
  }
  buildCounterListDomainMappingsResponse--;
}

core.List<api.Execution> buildUnnamed24() => [
      buildExecution(),
      buildExecution(),
    ];

void checkUnnamed24(core.List<api.Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecution(o[0]);
  checkExecution(o[1]);
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

core.int buildCounterListExecutionsResponse = 0;
api.ListExecutionsResponse buildListExecutionsResponse() {
  final o = api.ListExecutionsResponse();
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed24();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed25();
  }
  buildCounterListExecutionsResponse--;
  return o;
}

void checkListExecutionsResponse(api.ListExecutionsResponse o) {
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed25(o.unreachable!);
  }
  buildCounterListExecutionsResponse--;
}

core.List<api.Job> buildUnnamed26() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed26(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  final o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed26();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed27();
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed27(o.unreachable!);
  }
  buildCounterListJobsResponse--;
}

core.List<api.Location> buildUnnamed28() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed28(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed28();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed28(o.locations!);
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

core.List<api.Revision> buildUnnamed29() => [
      buildRevision(),
      buildRevision(),
    ];

void checkUnnamed29(core.List<api.Revision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevision(o[0]);
  checkRevision(o[1]);
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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
    o.items = buildUnnamed29();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed30();
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
    checkUnnamed29(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed30(o.unreachable!);
  }
  buildCounterListRevisionsResponse--;
}

core.List<api.Route> buildUnnamed31() => [
      buildRoute(),
      buildRoute(),
    ];

void checkUnnamed31(core.List<api.Route> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoute(o[0]);
  checkRoute(o[1]);
}

core.List<core.String> buildUnnamed32() => [
      'foo',
      'foo',
    ];

void checkUnnamed32(core.List<core.String> o) {
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
    o.items = buildUnnamed31();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed32();
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
    checkUnnamed31(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed32(o.unreachable!);
  }
  buildCounterListRoutesResponse--;
}

core.List<api.Service> buildUnnamed33() => [
      buildService(),
      buildService(),
    ];

void checkUnnamed33(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
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
    o.items = buildUnnamed33();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed34();
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
    checkUnnamed33(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed34(o.unreachable!);
  }
  buildCounterListServicesResponse--;
}

core.List<api.Task> buildUnnamed35() => [
      buildTask(),
      buildTask(),
    ];

void checkUnnamed35(core.List<api.Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTask(o[0]);
  checkTask(o[1]);
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

core.int buildCounterListTasksResponse = 0;
api.ListTasksResponse buildListTasksResponse() {
  final o = api.ListTasksResponse();
  buildCounterListTasksResponse++;
  if (buildCounterListTasksResponse < 3) {
    o.apiVersion = 'foo';
    o.items = buildUnnamed35();
    o.kind = 'foo';
    o.metadata = buildListMeta();
    o.unreachable = buildUnnamed36();
  }
  buildCounterListTasksResponse--;
  return o;
}

void checkListTasksResponse(api.ListTasksResponse o) {
  buildCounterListTasksResponse++;
  if (buildCounterListTasksResponse < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkListMeta(o.metadata!);
    checkUnnamed36(o.unreachable!);
  }
  buildCounterListTasksResponse--;
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

core.Map<core.String, core.String> buildUnnamed37() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed37(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed38() => {
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

void checkUnnamed38(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
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
  var casted4 = (o['y']!) as core.Map;
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed37();
    o.locationId = 'foo';
    o.metadata = buildUnnamed38();
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
    checkUnnamed37(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed39() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed39(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed41() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed41(core.Map<core.String, core.String> o) {
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

core.List<api.OwnerReference> buildUnnamed42() => [
      buildOwnerReference(),
      buildOwnerReference(),
    ];

void checkUnnamed42(core.List<api.OwnerReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOwnerReference(o[0]);
  checkOwnerReference(o[1]);
}

core.int buildCounterObjectMeta = 0;
api.ObjectMeta buildObjectMeta() {
  final o = api.ObjectMeta();
  buildCounterObjectMeta++;
  if (buildCounterObjectMeta < 3) {
    o.annotations = buildUnnamed39();
    o.clusterName = 'foo';
    o.creationTimestamp = 'foo';
    o.deletionGracePeriodSeconds = 42;
    o.deletionTimestamp = 'foo';
    o.finalizers = buildUnnamed40();
    o.generateName = 'foo';
    o.generation = 42;
    o.labels = buildUnnamed41();
    o.name = 'foo';
    o.namespace = 'foo';
    o.ownerReferences = buildUnnamed42();
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
    checkUnnamed39(o.annotations!);
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
    checkUnnamed40(o.finalizers!);
    unittest.expect(
      o.generateName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generation!,
      unittest.equals(42),
    );
    checkUnnamed41(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namespace!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.ownerReferences!);
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

core.List<api.AuditConfig> buildUnnamed43() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed43(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed44() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed44(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed43();
    o.bindings = buildUnnamed44();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed43(o.auditConfigs!);
    checkUnnamed44(o.bindings!);
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
    o.grpc = buildGRPCAction();
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
    checkGRPCAction(o.grpc!);
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

core.Map<core.String, core.String> buildUnnamed45() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed45(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed46() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed46(core.Map<core.String, core.String> o) {
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
    o.limits = buildUnnamed45();
    o.requests = buildUnnamed46();
  }
  buildCounterResourceRequirements--;
  return o;
}

void checkResourceRequirements(api.ResourceRequirements o) {
  buildCounterResourceRequirements++;
  if (buildCounterResourceRequirements < 3) {
    checkUnnamed45(o.limits!);
    checkUnnamed46(o.requests!);
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

core.List<api.Container> buildUnnamed47() => [
      buildContainer(),
      buildContainer(),
    ];

void checkUnnamed47(core.List<api.Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainer(o[0]);
  checkContainer(o[1]);
}

core.List<api.LocalObjectReference> buildUnnamed48() => [
      buildLocalObjectReference(),
      buildLocalObjectReference(),
    ];

void checkUnnamed48(core.List<api.LocalObjectReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalObjectReference(o[0]);
  checkLocalObjectReference(o[1]);
}

core.List<api.Volume> buildUnnamed49() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed49(core.List<api.Volume> o) {
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
    o.containers = buildUnnamed47();
    o.enableServiceLinks = true;
    o.imagePullSecrets = buildUnnamed48();
    o.serviceAccountName = 'foo';
    o.timeoutSeconds = 42;
    o.volumes = buildUnnamed49();
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
    checkUnnamed47(o.containers!);
    unittest.expect(o.enableServiceLinks!, unittest.isTrue);
    checkUnnamed48(o.imagePullSecrets!);
    unittest.expect(
      o.serviceAccountName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeoutSeconds!,
      unittest.equals(42),
    );
    checkUnnamed49(o.volumes!);
  }
  buildCounterRevisionSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed50() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed50(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.int buildCounterRevisionStatus = 0;
api.RevisionStatus buildRevisionStatus() {
  final o = api.RevisionStatus();
  buildCounterRevisionStatus++;
  if (buildCounterRevisionStatus < 3) {
    o.conditions = buildUnnamed50();
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
    checkUnnamed50(o.conditions!);
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

core.List<api.TrafficTarget> buildUnnamed51() => [
      buildTrafficTarget(),
      buildTrafficTarget(),
    ];

void checkUnnamed51(core.List<api.TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficTarget(o[0]);
  checkTrafficTarget(o[1]);
}

core.int buildCounterRouteSpec = 0;
api.RouteSpec buildRouteSpec() {
  final o = api.RouteSpec();
  buildCounterRouteSpec++;
  if (buildCounterRouteSpec < 3) {
    o.traffic = buildUnnamed51();
  }
  buildCounterRouteSpec--;
  return o;
}

void checkRouteSpec(api.RouteSpec o) {
  buildCounterRouteSpec++;
  if (buildCounterRouteSpec < 3) {
    checkUnnamed51(o.traffic!);
  }
  buildCounterRouteSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed52() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed52(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.List<api.TrafficTarget> buildUnnamed53() => [
      buildTrafficTarget(),
      buildTrafficTarget(),
    ];

void checkUnnamed53(core.List<api.TrafficTarget> o) {
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
    o.conditions = buildUnnamed52();
    o.observedGeneration = 42;
    o.traffic = buildUnnamed53();
    o.url = 'foo';
  }
  buildCounterRouteStatus--;
  return o;
}

void checkRouteStatus(api.RouteStatus o) {
  buildCounterRouteStatus++;
  if (buildCounterRouteStatus < 3) {
    checkAddressable(o.address!);
    checkUnnamed52(o.conditions!);
    unittest.expect(
      o.observedGeneration!,
      unittest.equals(42),
    );
    checkUnnamed53(o.traffic!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterRouteStatus--;
}

core.int buildCounterRunJobRequest = 0;
api.RunJobRequest buildRunJobRequest() {
  final o = api.RunJobRequest();
  buildCounterRunJobRequest++;
  if (buildCounterRunJobRequest < 3) {}
  buildCounterRunJobRequest--;
  return o;
}

void checkRunJobRequest(api.RunJobRequest o) {
  buildCounterRunJobRequest++;
  if (buildCounterRunJobRequest < 3) {}
  buildCounterRunJobRequest--;
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

core.List<api.KeyToPath> buildUnnamed54() => [
      buildKeyToPath(),
      buildKeyToPath(),
    ];

void checkUnnamed54(core.List<api.KeyToPath> o) {
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
    o.items = buildUnnamed54();
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
    checkUnnamed54(o.items!);
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

core.List<api.TrafficTarget> buildUnnamed55() => [
      buildTrafficTarget(),
      buildTrafficTarget(),
    ];

void checkUnnamed55(core.List<api.TrafficTarget> o) {
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
    o.traffic = buildUnnamed55();
  }
  buildCounterServiceSpec--;
  return o;
}

void checkServiceSpec(api.ServiceSpec o) {
  buildCounterServiceSpec++;
  if (buildCounterServiceSpec < 3) {
    checkRevisionTemplate(o.template!);
    checkUnnamed55(o.traffic!);
  }
  buildCounterServiceSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed56() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed56(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.List<api.TrafficTarget> buildUnnamed57() => [
      buildTrafficTarget(),
      buildTrafficTarget(),
    ];

void checkUnnamed57(core.List<api.TrafficTarget> o) {
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
    o.conditions = buildUnnamed56();
    o.latestCreatedRevisionName = 'foo';
    o.latestReadyRevisionName = 'foo';
    o.observedGeneration = 42;
    o.traffic = buildUnnamed57();
    o.url = 'foo';
  }
  buildCounterServiceStatus--;
  return o;
}

void checkServiceStatus(api.ServiceStatus o) {
  buildCounterServiceStatus++;
  if (buildCounterServiceStatus < 3) {
    checkAddressable(o.address!);
    checkUnnamed56(o.conditions!);
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
    checkUnnamed57(o.traffic!);
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

core.List<api.StatusCause> buildUnnamed58() => [
      buildStatusCause(),
      buildStatusCause(),
    ];

void checkUnnamed58(core.List<api.StatusCause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCause(o[0]);
  checkStatusCause(o[1]);
}

core.int buildCounterStatusDetails = 0;
api.StatusDetails buildStatusDetails() {
  final o = api.StatusDetails();
  buildCounterStatusDetails++;
  if (buildCounterStatusDetails < 3) {
    o.causes = buildUnnamed58();
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
    checkUnnamed58(o.causes!);
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

core.int buildCounterTask = 0;
api.Task buildTask() {
  final o = api.Task();
  buildCounterTask++;
  if (buildCounterTask < 3) {
    o.apiVersion = 'foo';
    o.kind = 'foo';
    o.metadata = buildObjectMeta();
    o.spec = buildTaskSpec();
    o.status = buildTaskStatus();
  }
  buildCounterTask--;
  return o;
}

void checkTask(api.Task o) {
  buildCounterTask++;
  if (buildCounterTask < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkObjectMeta(o.metadata!);
    checkTaskSpec(o.spec!);
    checkTaskStatus(o.status!);
  }
  buildCounterTask--;
}

core.int buildCounterTaskAttemptResult = 0;
api.TaskAttemptResult buildTaskAttemptResult() {
  final o = api.TaskAttemptResult();
  buildCounterTaskAttemptResult++;
  if (buildCounterTaskAttemptResult < 3) {
    o.exitCode = 42;
    o.status = buildGoogleRpcStatus();
  }
  buildCounterTaskAttemptResult--;
  return o;
}

void checkTaskAttemptResult(api.TaskAttemptResult o) {
  buildCounterTaskAttemptResult++;
  if (buildCounterTaskAttemptResult < 3) {
    unittest.expect(
      o.exitCode!,
      unittest.equals(42),
    );
    checkGoogleRpcStatus(o.status!);
  }
  buildCounterTaskAttemptResult--;
}

core.List<api.Container> buildUnnamed59() => [
      buildContainer(),
      buildContainer(),
    ];

void checkUnnamed59(core.List<api.Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainer(o[0]);
  checkContainer(o[1]);
}

core.List<api.Volume> buildUnnamed60() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed60(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterTaskSpec = 0;
api.TaskSpec buildTaskSpec() {
  final o = api.TaskSpec();
  buildCounterTaskSpec++;
  if (buildCounterTaskSpec < 3) {
    o.containers = buildUnnamed59();
    o.maxRetries = 42;
    o.serviceAccountName = 'foo';
    o.timeoutSeconds = 'foo';
    o.volumes = buildUnnamed60();
  }
  buildCounterTaskSpec--;
  return o;
}

void checkTaskSpec(api.TaskSpec o) {
  buildCounterTaskSpec++;
  if (buildCounterTaskSpec < 3) {
    checkUnnamed59(o.containers!);
    unittest.expect(
      o.maxRetries!,
      unittest.equals(42),
    );
    unittest.expect(
      o.serviceAccountName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeoutSeconds!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.volumes!);
  }
  buildCounterTaskSpec--;
}

core.List<api.GoogleCloudRunV1Condition> buildUnnamed61() => [
      buildGoogleCloudRunV1Condition(),
      buildGoogleCloudRunV1Condition(),
    ];

void checkUnnamed61(core.List<api.GoogleCloudRunV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV1Condition(o[0]);
  checkGoogleCloudRunV1Condition(o[1]);
}

core.int buildCounterTaskStatus = 0;
api.TaskStatus buildTaskStatus() {
  final o = api.TaskStatus();
  buildCounterTaskStatus++;
  if (buildCounterTaskStatus < 3) {
    o.completionTime = 'foo';
    o.conditions = buildUnnamed61();
    o.index = 42;
    o.lastAttemptResult = buildTaskAttemptResult();
    o.logUri = 'foo';
    o.observedGeneration = 42;
    o.retried = 42;
    o.startTime = 'foo';
  }
  buildCounterTaskStatus--;
  return o;
}

void checkTaskStatus(api.TaskStatus o) {
  buildCounterTaskStatus++;
  if (buildCounterTaskStatus < 3) {
    unittest.expect(
      o.completionTime!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.conditions!);
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    checkTaskAttemptResult(o.lastAttemptResult!);
    unittest.expect(
      o.logUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.observedGeneration!,
      unittest.equals(42),
    );
    unittest.expect(
      o.retried!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTaskStatus--;
}

core.int buildCounterTaskTemplateSpec = 0;
api.TaskTemplateSpec buildTaskTemplateSpec() {
  final o = api.TaskTemplateSpec();
  buildCounterTaskTemplateSpec++;
  if (buildCounterTaskTemplateSpec < 3) {
    o.spec = buildTaskSpec();
  }
  buildCounterTaskTemplateSpec--;
  return o;
}

void checkTaskTemplateSpec(api.TaskTemplateSpec o) {
  buildCounterTaskTemplateSpec++;
  if (buildCounterTaskTemplateSpec < 3) {
    checkTaskSpec(o.spec!);
  }
  buildCounterTaskTemplateSpec--;
}

core.List<core.String> buildUnnamed62() => [
      'foo',
      'foo',
    ];

void checkUnnamed62(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed63() => [
      'foo',
      'foo',
    ];

void checkUnnamed63(core.List<core.String> o) {
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

  unittest.group('obj-schema-CancelExecutionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelExecutionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelExecutionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelExecutionRequest(od);
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

  unittest.group('obj-schema-Execution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Execution.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExecution(od);
    });
  });

  unittest.group('obj-schema-ExecutionReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecutionReference(od);
    });
  });

  unittest.group('obj-schema-ExecutionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecutionSpec(od);
    });
  });

  unittest.group('obj-schema-ExecutionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecutionStatus(od);
    });
  });

  unittest.group('obj-schema-ExecutionTemplateSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionTemplateSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionTemplateSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecutionTemplateSpec(od);
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

  unittest.group('obj-schema-GRPCAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGRPCAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GRPCAction.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGRPCAction(od);
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

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
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

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Job.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJob(od);
    });
  });

  unittest.group('obj-schema-JobSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobSpec.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobSpec(od);
    });
  });

  unittest.group('obj-schema-JobStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobStatus.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobStatus(od);
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

  unittest.group('obj-schema-ListExecutionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExecutionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExecutionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListExecutionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListJobsResponse(od);
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

  unittest.group('obj-schema-ListTasksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTasksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTasksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTasksResponse(od);
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

  unittest.group('obj-schema-RunJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunJobRequest(od);
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

  unittest.group('obj-schema-Task', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Task.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTask(od);
    });
  });

  unittest.group('obj-schema-TaskAttemptResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskAttemptResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskAttemptResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTaskAttemptResult(od);
    });
  });

  unittest.group('obj-schema-TaskSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TaskSpec.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTaskSpec(od);
    });
  });

  unittest.group('obj-schema-TaskStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TaskStatus.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTaskStatus(od);
    });
  });

  unittest.group('obj-schema-TaskTemplateSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskTemplateSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskTemplateSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTaskTemplateSpec(od);
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

  unittest.group('resource-NamespacesExecutionsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.executions;
      final arg_request = buildCancelExecutionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelExecutionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelExecutionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apis/run.googleapis.com/v1/'),
        );
        pathOffset += 27;
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
        final resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.executions;
      final arg_name = 'foo';
      final arg_apiVersion = 'foo';
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apis/run.googleapis.com/v1/'),
        );
        pathOffset += 27;
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
          kind: arg_kind,
          propagationPolicy: arg_propagationPolicy,
          $fields: arg_$fields);
      checkStatus(response as api.Status);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.executions;
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apis/run.googleapis.com/v1/'),
        );
        pathOffset += 27;
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
        final resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.executions;
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apis/run.googleapis.com/v1/'),
        );
        pathOffset += 27;
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
        final resp = convert.json.encode(buildListExecutionsResponse());
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
      checkListExecutionsResponse(response as api.ListExecutionsResponse);
    });
  });

  unittest.group('resource-NamespacesJobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.jobs;
      final arg_request = buildJob();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apis/run.googleapis.com/v1/'),
        );
        pathOffset += 27;
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.jobs;
      final arg_name = 'foo';
      final arg_apiVersion = 'foo';
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apis/run.googleapis.com/v1/'),
        );
        pathOffset += 27;
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
          kind: arg_kind,
          propagationPolicy: arg_propagationPolicy,
          $fields: arg_$fields);
      checkStatus(response as api.Status);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.jobs;
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apis/run.googleapis.com/v1/'),
        );
        pathOffset += 27;
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.jobs;
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apis/run.googleapis.com/v1/'),
        );
        pathOffset += 27;
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
        final resp = convert.json.encode(buildListJobsResponse());
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
      checkListJobsResponse(response as api.ListJobsResponse);
    });

    unittest.test('method--replaceJob', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.jobs;
      final arg_request = buildJob();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apis/run.googleapis.com/v1/'),
        );
        pathOffset += 27;
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.replaceJob(arg_request, arg_name, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.jobs;
      final arg_request = buildRunJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunJobRequest(obj);

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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apis/run.googleapis.com/v1/'),
        );
        pathOffset += 27;
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
        final resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.run(arg_request, arg_name, $fields: arg_$fields);
      checkExecution(response as api.Execution);
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

  unittest.group('resource-NamespacesTasksResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.tasks;
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apis/run.googleapis.com/v1/'),
        );
        pathOffset += 27;
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
        final resp = convert.json.encode(buildTask());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTask(response as api.Task);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).namespaces.tasks;
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('apis/run.googleapis.com/v1/'),
        );
        pathOffset += 27;
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
        final resp = convert.json.encode(buildListTasksResponse());
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
      checkListTasksResponse(response as api.ListTasksResponse);
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

  unittest.group('resource-ProjectsLocationsJobsResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs;
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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs;
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
      final res = api.CloudRunApi(mock).projects.locations.jobs;
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
