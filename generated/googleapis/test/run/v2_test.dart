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

import 'package:googleapis/run/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudRunOpV2BinaryAuthorization = 0;
api.GoogleCloudRunOpV2BinaryAuthorization
    buildGoogleCloudRunOpV2BinaryAuthorization() {
  final o = api.GoogleCloudRunOpV2BinaryAuthorization();
  buildCounterGoogleCloudRunOpV2BinaryAuthorization++;
  if (buildCounterGoogleCloudRunOpV2BinaryAuthorization < 3) {
    o.breakglassJustification = 'foo';
    o.useDefault = true;
  }
  buildCounterGoogleCloudRunOpV2BinaryAuthorization--;
  return o;
}

void checkGoogleCloudRunOpV2BinaryAuthorization(
    api.GoogleCloudRunOpV2BinaryAuthorization o) {
  buildCounterGoogleCloudRunOpV2BinaryAuthorization++;
  if (buildCounterGoogleCloudRunOpV2BinaryAuthorization < 3) {
    unittest.expect(
      o.breakglassJustification!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useDefault!, unittest.isTrue);
  }
  buildCounterGoogleCloudRunOpV2BinaryAuthorization--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRunOpV2CloudSqlInstance = 0;
api.GoogleCloudRunOpV2CloudSqlInstance
    buildGoogleCloudRunOpV2CloudSqlInstance() {
  final o = api.GoogleCloudRunOpV2CloudSqlInstance();
  buildCounterGoogleCloudRunOpV2CloudSqlInstance++;
  if (buildCounterGoogleCloudRunOpV2CloudSqlInstance < 3) {
    o.connections = buildUnnamed0();
  }
  buildCounterGoogleCloudRunOpV2CloudSqlInstance--;
  return o;
}

void checkGoogleCloudRunOpV2CloudSqlInstance(
    api.GoogleCloudRunOpV2CloudSqlInstance o) {
  buildCounterGoogleCloudRunOpV2CloudSqlInstance++;
  if (buildCounterGoogleCloudRunOpV2CloudSqlInstance < 3) {
    checkUnnamed0(o.connections!);
  }
  buildCounterGoogleCloudRunOpV2CloudSqlInstance--;
}

core.int buildCounterGoogleCloudRunOpV2Condition = 0;
api.GoogleCloudRunOpV2Condition buildGoogleCloudRunOpV2Condition() {
  final o = api.GoogleCloudRunOpV2Condition();
  buildCounterGoogleCloudRunOpV2Condition++;
  if (buildCounterGoogleCloudRunOpV2Condition < 3) {
    o.domainMappingReason = 'foo';
    o.executionReason = 'foo';
    o.internalReason = 'foo';
    o.lastTransitionTime = 'foo';
    o.message = 'foo';
    o.reason = 'foo';
    o.revisionReason = 'foo';
    o.severity = 'foo';
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudRunOpV2Condition--;
  return o;
}

void checkGoogleCloudRunOpV2Condition(api.GoogleCloudRunOpV2Condition o) {
  buildCounterGoogleCloudRunOpV2Condition++;
  if (buildCounterGoogleCloudRunOpV2Condition < 3) {
    unittest.expect(
      o.domainMappingReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executionReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalReason!,
      unittest.equals('foo'),
    );
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
      o.revisionReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunOpV2Condition--;
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

core.List<api.GoogleCloudRunOpV2EnvVar> buildUnnamed3() => [
      buildGoogleCloudRunOpV2EnvVar(),
      buildGoogleCloudRunOpV2EnvVar(),
    ];

void checkUnnamed3(core.List<api.GoogleCloudRunOpV2EnvVar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2EnvVar(o[0]);
  checkGoogleCloudRunOpV2EnvVar(o[1]);
}

core.List<api.GoogleCloudRunOpV2ContainerPort> buildUnnamed4() => [
      buildGoogleCloudRunOpV2ContainerPort(),
      buildGoogleCloudRunOpV2ContainerPort(),
    ];

void checkUnnamed4(core.List<api.GoogleCloudRunOpV2ContainerPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2ContainerPort(o[0]);
  checkGoogleCloudRunOpV2ContainerPort(o[1]);
}

core.List<api.GoogleCloudRunOpV2VolumeMount> buildUnnamed5() => [
      buildGoogleCloudRunOpV2VolumeMount(),
      buildGoogleCloudRunOpV2VolumeMount(),
    ];

void checkUnnamed5(core.List<api.GoogleCloudRunOpV2VolumeMount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2VolumeMount(o[0]);
  checkGoogleCloudRunOpV2VolumeMount(o[1]);
}

core.int buildCounterGoogleCloudRunOpV2Container = 0;
api.GoogleCloudRunOpV2Container buildGoogleCloudRunOpV2Container() {
  final o = api.GoogleCloudRunOpV2Container();
  buildCounterGoogleCloudRunOpV2Container++;
  if (buildCounterGoogleCloudRunOpV2Container < 3) {
    o.args = buildUnnamed1();
    o.command = buildUnnamed2();
    o.env = buildUnnamed3();
    o.image = 'foo';
    o.name = 'foo';
    o.ports = buildUnnamed4();
    o.resources = buildGoogleCloudRunOpV2ResourceRequirements();
    o.volumeMounts = buildUnnamed5();
  }
  buildCounterGoogleCloudRunOpV2Container--;
  return o;
}

void checkGoogleCloudRunOpV2Container(api.GoogleCloudRunOpV2Container o) {
  buildCounterGoogleCloudRunOpV2Container++;
  if (buildCounterGoogleCloudRunOpV2Container < 3) {
    checkUnnamed1(o.args!);
    checkUnnamed2(o.command!);
    checkUnnamed3(o.env!);
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.ports!);
    checkGoogleCloudRunOpV2ResourceRequirements(o.resources!);
    checkUnnamed5(o.volumeMounts!);
  }
  buildCounterGoogleCloudRunOpV2Container--;
}

core.int buildCounterGoogleCloudRunOpV2ContainerPort = 0;
api.GoogleCloudRunOpV2ContainerPort buildGoogleCloudRunOpV2ContainerPort() {
  final o = api.GoogleCloudRunOpV2ContainerPort();
  buildCounterGoogleCloudRunOpV2ContainerPort++;
  if (buildCounterGoogleCloudRunOpV2ContainerPort < 3) {
    o.containerPort = 42;
    o.name = 'foo';
  }
  buildCounterGoogleCloudRunOpV2ContainerPort--;
  return o;
}

void checkGoogleCloudRunOpV2ContainerPort(
    api.GoogleCloudRunOpV2ContainerPort o) {
  buildCounterGoogleCloudRunOpV2ContainerPort++;
  if (buildCounterGoogleCloudRunOpV2ContainerPort < 3) {
    unittest.expect(
      o.containerPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunOpV2ContainerPort--;
}

core.int buildCounterGoogleCloudRunOpV2EnvVar = 0;
api.GoogleCloudRunOpV2EnvVar buildGoogleCloudRunOpV2EnvVar() {
  final o = api.GoogleCloudRunOpV2EnvVar();
  buildCounterGoogleCloudRunOpV2EnvVar++;
  if (buildCounterGoogleCloudRunOpV2EnvVar < 3) {
    o.name = 'foo';
    o.value = 'foo';
    o.valueSource = buildGoogleCloudRunOpV2EnvVarSource();
  }
  buildCounterGoogleCloudRunOpV2EnvVar--;
  return o;
}

void checkGoogleCloudRunOpV2EnvVar(api.GoogleCloudRunOpV2EnvVar o) {
  buildCounterGoogleCloudRunOpV2EnvVar++;
  if (buildCounterGoogleCloudRunOpV2EnvVar < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRunOpV2EnvVarSource(o.valueSource!);
  }
  buildCounterGoogleCloudRunOpV2EnvVar--;
}

core.int buildCounterGoogleCloudRunOpV2EnvVarSource = 0;
api.GoogleCloudRunOpV2EnvVarSource buildGoogleCloudRunOpV2EnvVarSource() {
  final o = api.GoogleCloudRunOpV2EnvVarSource();
  buildCounterGoogleCloudRunOpV2EnvVarSource++;
  if (buildCounterGoogleCloudRunOpV2EnvVarSource < 3) {
    o.secretKeyRef = buildGoogleCloudRunOpV2SecretKeySelector();
  }
  buildCounterGoogleCloudRunOpV2EnvVarSource--;
  return o;
}

void checkGoogleCloudRunOpV2EnvVarSource(api.GoogleCloudRunOpV2EnvVarSource o) {
  buildCounterGoogleCloudRunOpV2EnvVarSource++;
  if (buildCounterGoogleCloudRunOpV2EnvVarSource < 3) {
    checkGoogleCloudRunOpV2SecretKeySelector(o.secretKeyRef!);
  }
  buildCounterGoogleCloudRunOpV2EnvVarSource--;
}

core.List<api.GoogleCloudRunOpV2Revision> buildUnnamed6() => [
      buildGoogleCloudRunOpV2Revision(),
      buildGoogleCloudRunOpV2Revision(),
    ];

void checkUnnamed6(core.List<api.GoogleCloudRunOpV2Revision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2Revision(o[0]);
  checkGoogleCloudRunOpV2Revision(o[1]);
}

core.int buildCounterGoogleCloudRunOpV2ListRevisionsResponse = 0;
api.GoogleCloudRunOpV2ListRevisionsResponse
    buildGoogleCloudRunOpV2ListRevisionsResponse() {
  final o = api.GoogleCloudRunOpV2ListRevisionsResponse();
  buildCounterGoogleCloudRunOpV2ListRevisionsResponse++;
  if (buildCounterGoogleCloudRunOpV2ListRevisionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.revisions = buildUnnamed6();
  }
  buildCounterGoogleCloudRunOpV2ListRevisionsResponse--;
  return o;
}

void checkGoogleCloudRunOpV2ListRevisionsResponse(
    api.GoogleCloudRunOpV2ListRevisionsResponse o) {
  buildCounterGoogleCloudRunOpV2ListRevisionsResponse++;
  if (buildCounterGoogleCloudRunOpV2ListRevisionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.revisions!);
  }
  buildCounterGoogleCloudRunOpV2ListRevisionsResponse--;
}

core.List<api.GoogleCloudRunOpV2Service> buildUnnamed7() => [
      buildGoogleCloudRunOpV2Service(),
      buildGoogleCloudRunOpV2Service(),
    ];

void checkUnnamed7(core.List<api.GoogleCloudRunOpV2Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2Service(o[0]);
  checkGoogleCloudRunOpV2Service(o[1]);
}

core.int buildCounterGoogleCloudRunOpV2ListServicesResponse = 0;
api.GoogleCloudRunOpV2ListServicesResponse
    buildGoogleCloudRunOpV2ListServicesResponse() {
  final o = api.GoogleCloudRunOpV2ListServicesResponse();
  buildCounterGoogleCloudRunOpV2ListServicesResponse++;
  if (buildCounterGoogleCloudRunOpV2ListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed7();
  }
  buildCounterGoogleCloudRunOpV2ListServicesResponse--;
  return o;
}

void checkGoogleCloudRunOpV2ListServicesResponse(
    api.GoogleCloudRunOpV2ListServicesResponse o) {
  buildCounterGoogleCloudRunOpV2ListServicesResponse++;
  if (buildCounterGoogleCloudRunOpV2ListServicesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.services!);
  }
  buildCounterGoogleCloudRunOpV2ListServicesResponse--;
}

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudRunOpV2ResourceRequirements = 0;
api.GoogleCloudRunOpV2ResourceRequirements
    buildGoogleCloudRunOpV2ResourceRequirements() {
  final o = api.GoogleCloudRunOpV2ResourceRequirements();
  buildCounterGoogleCloudRunOpV2ResourceRequirements++;
  if (buildCounterGoogleCloudRunOpV2ResourceRequirements < 3) {
    o.cpuIdle = true;
    o.limits = buildUnnamed8();
  }
  buildCounterGoogleCloudRunOpV2ResourceRequirements--;
  return o;
}

void checkGoogleCloudRunOpV2ResourceRequirements(
    api.GoogleCloudRunOpV2ResourceRequirements o) {
  buildCounterGoogleCloudRunOpV2ResourceRequirements++;
  if (buildCounterGoogleCloudRunOpV2ResourceRequirements < 3) {
    unittest.expect(o.cpuIdle!, unittest.isTrue);
    checkUnnamed8(o.limits!);
  }
  buildCounterGoogleCloudRunOpV2ResourceRequirements--;
}

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudRunOpV2Condition> buildUnnamed10() => [
      buildGoogleCloudRunOpV2Condition(),
      buildGoogleCloudRunOpV2Condition(),
    ];

void checkUnnamed10(core.List<api.GoogleCloudRunOpV2Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2Condition(o[0]);
  checkGoogleCloudRunOpV2Condition(o[1]);
}

core.List<api.GoogleCloudRunOpV2Container> buildUnnamed11() => [
      buildGoogleCloudRunOpV2Container(),
      buildGoogleCloudRunOpV2Container(),
    ];

void checkUnnamed11(core.List<api.GoogleCloudRunOpV2Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2Container(o[0]);
  checkGoogleCloudRunOpV2Container(o[1]);
}

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudRunOpV2Volume> buildUnnamed13() => [
      buildGoogleCloudRunOpV2Volume(),
      buildGoogleCloudRunOpV2Volume(),
    ];

void checkUnnamed13(core.List<api.GoogleCloudRunOpV2Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2Volume(o[0]);
  checkGoogleCloudRunOpV2Volume(o[1]);
}

core.int buildCounterGoogleCloudRunOpV2Revision = 0;
api.GoogleCloudRunOpV2Revision buildGoogleCloudRunOpV2Revision() {
  final o = api.GoogleCloudRunOpV2Revision();
  buildCounterGoogleCloudRunOpV2Revision++;
  if (buildCounterGoogleCloudRunOpV2Revision < 3) {
    o.annotations = buildUnnamed9();
    o.conditions = buildUnnamed10();
    o.confidential = true;
    o.containerConcurrency = 42;
    o.containers = buildUnnamed11();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.encryptionKey = 'foo';
    o.etag = 'foo';
    o.executionEnvironment = 'foo';
    o.expireTime = 'foo';
    o.generation = 'foo';
    o.labels = buildUnnamed12();
    o.launchStage = 'foo';
    o.logUri = 'foo';
    o.name = 'foo';
    o.observedGeneration = 'foo';
    o.reconciling = true;
    o.scaling = buildGoogleCloudRunOpV2RevisionScaling();
    o.service = 'foo';
    o.serviceAccount = 'foo';
    o.timeout = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.volumes = buildUnnamed13();
    o.vpcAccess = buildGoogleCloudRunOpV2VpcAccess();
  }
  buildCounterGoogleCloudRunOpV2Revision--;
  return o;
}

void checkGoogleCloudRunOpV2Revision(api.GoogleCloudRunOpV2Revision o) {
  buildCounterGoogleCloudRunOpV2Revision++;
  if (buildCounterGoogleCloudRunOpV2Revision < 3) {
    checkUnnamed9(o.annotations!);
    checkUnnamed10(o.conditions!);
    unittest.expect(o.confidential!, unittest.isTrue);
    unittest.expect(
      o.containerConcurrency!,
      unittest.equals(42),
    );
    checkUnnamed11(o.containers!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encryptionKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executionEnvironment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generation!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.labels!);
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.observedGeneration!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkGoogleCloudRunOpV2RevisionScaling(o.scaling!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.volumes!);
    checkGoogleCloudRunOpV2VpcAccess(o.vpcAccess!);
  }
  buildCounterGoogleCloudRunOpV2Revision--;
}

core.int buildCounterGoogleCloudRunOpV2RevisionScaling = 0;
api.GoogleCloudRunOpV2RevisionScaling buildGoogleCloudRunOpV2RevisionScaling() {
  final o = api.GoogleCloudRunOpV2RevisionScaling();
  buildCounterGoogleCloudRunOpV2RevisionScaling++;
  if (buildCounterGoogleCloudRunOpV2RevisionScaling < 3) {
    o.maxInstanceCount = 42;
    o.minInstanceCount = 42;
  }
  buildCounterGoogleCloudRunOpV2RevisionScaling--;
  return o;
}

void checkGoogleCloudRunOpV2RevisionScaling(
    api.GoogleCloudRunOpV2RevisionScaling o) {
  buildCounterGoogleCloudRunOpV2RevisionScaling++;
  if (buildCounterGoogleCloudRunOpV2RevisionScaling < 3) {
    unittest.expect(
      o.maxInstanceCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minInstanceCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRunOpV2RevisionScaling--;
}

core.Map<core.String, core.String> buildUnnamed14() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed14(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudRunOpV2Container> buildUnnamed15() => [
      buildGoogleCloudRunOpV2Container(),
      buildGoogleCloudRunOpV2Container(),
    ];

void checkUnnamed15(core.List<api.GoogleCloudRunOpV2Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2Container(o[0]);
  checkGoogleCloudRunOpV2Container(o[1]);
}

core.Map<core.String, core.String> buildUnnamed16() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed16(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudRunOpV2Volume> buildUnnamed17() => [
      buildGoogleCloudRunOpV2Volume(),
      buildGoogleCloudRunOpV2Volume(),
    ];

void checkUnnamed17(core.List<api.GoogleCloudRunOpV2Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2Volume(o[0]);
  checkGoogleCloudRunOpV2Volume(o[1]);
}

core.int buildCounterGoogleCloudRunOpV2RevisionTemplate = 0;
api.GoogleCloudRunOpV2RevisionTemplate
    buildGoogleCloudRunOpV2RevisionTemplate() {
  final o = api.GoogleCloudRunOpV2RevisionTemplate();
  buildCounterGoogleCloudRunOpV2RevisionTemplate++;
  if (buildCounterGoogleCloudRunOpV2RevisionTemplate < 3) {
    o.annotations = buildUnnamed14();
    o.confidential = true;
    o.containerConcurrency = 42;
    o.containers = buildUnnamed15();
    o.encryptionKey = 'foo';
    o.executionEnvironment = 'foo';
    o.labels = buildUnnamed16();
    o.revision = 'foo';
    o.scaling = buildGoogleCloudRunOpV2RevisionScaling();
    o.serviceAccount = 'foo';
    o.timeout = 'foo';
    o.volumes = buildUnnamed17();
    o.vpcAccess = buildGoogleCloudRunOpV2VpcAccess();
  }
  buildCounterGoogleCloudRunOpV2RevisionTemplate--;
  return o;
}

void checkGoogleCloudRunOpV2RevisionTemplate(
    api.GoogleCloudRunOpV2RevisionTemplate o) {
  buildCounterGoogleCloudRunOpV2RevisionTemplate++;
  if (buildCounterGoogleCloudRunOpV2RevisionTemplate < 3) {
    checkUnnamed14(o.annotations!);
    unittest.expect(o.confidential!, unittest.isTrue);
    unittest.expect(
      o.containerConcurrency!,
      unittest.equals(42),
    );
    checkUnnamed15(o.containers!);
    unittest.expect(
      o.encryptionKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executionEnvironment!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.labels!);
    unittest.expect(
      o.revision!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRunOpV2RevisionScaling(o.scaling!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.volumes!);
    checkGoogleCloudRunOpV2VpcAccess(o.vpcAccess!);
  }
  buildCounterGoogleCloudRunOpV2RevisionTemplate--;
}

core.int buildCounterGoogleCloudRunOpV2SecretKeySelector = 0;
api.GoogleCloudRunOpV2SecretKeySelector
    buildGoogleCloudRunOpV2SecretKeySelector() {
  final o = api.GoogleCloudRunOpV2SecretKeySelector();
  buildCounterGoogleCloudRunOpV2SecretKeySelector++;
  if (buildCounterGoogleCloudRunOpV2SecretKeySelector < 3) {
    o.secret = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudRunOpV2SecretKeySelector--;
  return o;
}

void checkGoogleCloudRunOpV2SecretKeySelector(
    api.GoogleCloudRunOpV2SecretKeySelector o) {
  buildCounterGoogleCloudRunOpV2SecretKeySelector++;
  if (buildCounterGoogleCloudRunOpV2SecretKeySelector < 3) {
    unittest.expect(
      o.secret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunOpV2SecretKeySelector--;
}

core.List<api.GoogleCloudRunOpV2VersionToPath> buildUnnamed18() => [
      buildGoogleCloudRunOpV2VersionToPath(),
      buildGoogleCloudRunOpV2VersionToPath(),
    ];

void checkUnnamed18(core.List<api.GoogleCloudRunOpV2VersionToPath> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2VersionToPath(o[0]);
  checkGoogleCloudRunOpV2VersionToPath(o[1]);
}

core.int buildCounterGoogleCloudRunOpV2SecretVolumeSource = 0;
api.GoogleCloudRunOpV2SecretVolumeSource
    buildGoogleCloudRunOpV2SecretVolumeSource() {
  final o = api.GoogleCloudRunOpV2SecretVolumeSource();
  buildCounterGoogleCloudRunOpV2SecretVolumeSource++;
  if (buildCounterGoogleCloudRunOpV2SecretVolumeSource < 3) {
    o.defaultMode = 42;
    o.items = buildUnnamed18();
    o.secret = 'foo';
  }
  buildCounterGoogleCloudRunOpV2SecretVolumeSource--;
  return o;
}

void checkGoogleCloudRunOpV2SecretVolumeSource(
    api.GoogleCloudRunOpV2SecretVolumeSource o) {
  buildCounterGoogleCloudRunOpV2SecretVolumeSource++;
  if (buildCounterGoogleCloudRunOpV2SecretVolumeSource < 3) {
    unittest.expect(
      o.defaultMode!,
      unittest.equals(42),
    );
    checkUnnamed18(o.items!);
    unittest.expect(
      o.secret!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunOpV2SecretVolumeSource--;
}

core.Map<core.String, core.String> buildUnnamed19() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed19(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudRunOpV2Condition> buildUnnamed20() => [
      buildGoogleCloudRunOpV2Condition(),
      buildGoogleCloudRunOpV2Condition(),
    ];

void checkUnnamed20(core.List<api.GoogleCloudRunOpV2Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2Condition(o[0]);
  checkGoogleCloudRunOpV2Condition(o[1]);
}

core.Map<core.String, core.String> buildUnnamed21() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed21(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudRunOpV2TrafficTarget> buildUnnamed22() => [
      buildGoogleCloudRunOpV2TrafficTarget(),
      buildGoogleCloudRunOpV2TrafficTarget(),
    ];

void checkUnnamed22(core.List<api.GoogleCloudRunOpV2TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2TrafficTarget(o[0]);
  checkGoogleCloudRunOpV2TrafficTarget(o[1]);
}

core.List<api.GoogleCloudRunOpV2TrafficTargetStatus> buildUnnamed23() => [
      buildGoogleCloudRunOpV2TrafficTargetStatus(),
      buildGoogleCloudRunOpV2TrafficTargetStatus(),
    ];

void checkUnnamed23(core.List<api.GoogleCloudRunOpV2TrafficTargetStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunOpV2TrafficTargetStatus(o[0]);
  checkGoogleCloudRunOpV2TrafficTargetStatus(o[1]);
}

core.int buildCounterGoogleCloudRunOpV2Service = 0;
api.GoogleCloudRunOpV2Service buildGoogleCloudRunOpV2Service() {
  final o = api.GoogleCloudRunOpV2Service();
  buildCounterGoogleCloudRunOpV2Service++;
  if (buildCounterGoogleCloudRunOpV2Service < 3) {
    o.annotations = buildUnnamed19();
    o.binaryAuthorization = buildGoogleCloudRunOpV2BinaryAuthorization();
    o.client = 'foo';
    o.clientVersion = 'foo';
    o.conditions = buildUnnamed20();
    o.createTime = 'foo';
    o.creator = 'foo';
    o.deleteTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.expireTime = 'foo';
    o.generation = 'foo';
    o.ingress = 'foo';
    o.labels = buildUnnamed21();
    o.lastModifier = 'foo';
    o.latestCreatedRevision = 'foo';
    o.latestReadyRevision = 'foo';
    o.launchStage = 'foo';
    o.name = 'foo';
    o.observedGeneration = 'foo';
    o.reconciling = true;
    o.template = buildGoogleCloudRunOpV2RevisionTemplate();
    o.terminalCondition = buildGoogleCloudRunOpV2Condition();
    o.traffic = buildUnnamed22();
    o.trafficStatuses = buildUnnamed23();
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudRunOpV2Service--;
  return o;
}

void checkGoogleCloudRunOpV2Service(api.GoogleCloudRunOpV2Service o) {
  buildCounterGoogleCloudRunOpV2Service++;
  if (buildCounterGoogleCloudRunOpV2Service < 3) {
    checkUnnamed19(o.annotations!);
    checkGoogleCloudRunOpV2BinaryAuthorization(o.binaryAuthorization!);
    unittest.expect(
      o.client!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.conditions!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ingress!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.labels!);
    unittest.expect(
      o.lastModifier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestCreatedRevision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestReadyRevision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.observedGeneration!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkGoogleCloudRunOpV2RevisionTemplate(o.template!);
    checkGoogleCloudRunOpV2Condition(o.terminalCondition!);
    checkUnnamed22(o.traffic!);
    checkUnnamed23(o.trafficStatuses!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunOpV2Service--;
}

core.int buildCounterGoogleCloudRunOpV2TrafficTarget = 0;
api.GoogleCloudRunOpV2TrafficTarget buildGoogleCloudRunOpV2TrafficTarget() {
  final o = api.GoogleCloudRunOpV2TrafficTarget();
  buildCounterGoogleCloudRunOpV2TrafficTarget++;
  if (buildCounterGoogleCloudRunOpV2TrafficTarget < 3) {
    o.percent = 42;
    o.revision = 'foo';
    o.tag = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudRunOpV2TrafficTarget--;
  return o;
}

void checkGoogleCloudRunOpV2TrafficTarget(
    api.GoogleCloudRunOpV2TrafficTarget o) {
  buildCounterGoogleCloudRunOpV2TrafficTarget++;
  if (buildCounterGoogleCloudRunOpV2TrafficTarget < 3) {
    unittest.expect(
      o.percent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.revision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunOpV2TrafficTarget--;
}

core.int buildCounterGoogleCloudRunOpV2TrafficTargetStatus = 0;
api.GoogleCloudRunOpV2TrafficTargetStatus
    buildGoogleCloudRunOpV2TrafficTargetStatus() {
  final o = api.GoogleCloudRunOpV2TrafficTargetStatus();
  buildCounterGoogleCloudRunOpV2TrafficTargetStatus++;
  if (buildCounterGoogleCloudRunOpV2TrafficTargetStatus < 3) {
    o.percent = 42;
    o.revision = 'foo';
    o.tag = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudRunOpV2TrafficTargetStatus--;
  return o;
}

void checkGoogleCloudRunOpV2TrafficTargetStatus(
    api.GoogleCloudRunOpV2TrafficTargetStatus o) {
  buildCounterGoogleCloudRunOpV2TrafficTargetStatus++;
  if (buildCounterGoogleCloudRunOpV2TrafficTargetStatus < 3) {
    unittest.expect(
      o.percent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.revision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunOpV2TrafficTargetStatus--;
}

core.int buildCounterGoogleCloudRunOpV2VersionToPath = 0;
api.GoogleCloudRunOpV2VersionToPath buildGoogleCloudRunOpV2VersionToPath() {
  final o = api.GoogleCloudRunOpV2VersionToPath();
  buildCounterGoogleCloudRunOpV2VersionToPath++;
  if (buildCounterGoogleCloudRunOpV2VersionToPath < 3) {
    o.mode = 42;
    o.path = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudRunOpV2VersionToPath--;
  return o;
}

void checkGoogleCloudRunOpV2VersionToPath(
    api.GoogleCloudRunOpV2VersionToPath o) {
  buildCounterGoogleCloudRunOpV2VersionToPath++;
  if (buildCounterGoogleCloudRunOpV2VersionToPath < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunOpV2VersionToPath--;
}

core.int buildCounterGoogleCloudRunOpV2Volume = 0;
api.GoogleCloudRunOpV2Volume buildGoogleCloudRunOpV2Volume() {
  final o = api.GoogleCloudRunOpV2Volume();
  buildCounterGoogleCloudRunOpV2Volume++;
  if (buildCounterGoogleCloudRunOpV2Volume < 3) {
    o.cloudSqlInstance = buildGoogleCloudRunOpV2CloudSqlInstance();
    o.name = 'foo';
    o.secret = buildGoogleCloudRunOpV2SecretVolumeSource();
  }
  buildCounterGoogleCloudRunOpV2Volume--;
  return o;
}

void checkGoogleCloudRunOpV2Volume(api.GoogleCloudRunOpV2Volume o) {
  buildCounterGoogleCloudRunOpV2Volume++;
  if (buildCounterGoogleCloudRunOpV2Volume < 3) {
    checkGoogleCloudRunOpV2CloudSqlInstance(o.cloudSqlInstance!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRunOpV2SecretVolumeSource(o.secret!);
  }
  buildCounterGoogleCloudRunOpV2Volume--;
}

core.int buildCounterGoogleCloudRunOpV2VolumeMount = 0;
api.GoogleCloudRunOpV2VolumeMount buildGoogleCloudRunOpV2VolumeMount() {
  final o = api.GoogleCloudRunOpV2VolumeMount();
  buildCounterGoogleCloudRunOpV2VolumeMount++;
  if (buildCounterGoogleCloudRunOpV2VolumeMount < 3) {
    o.mountPath = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudRunOpV2VolumeMount--;
  return o;
}

void checkGoogleCloudRunOpV2VolumeMount(api.GoogleCloudRunOpV2VolumeMount o) {
  buildCounterGoogleCloudRunOpV2VolumeMount++;
  if (buildCounterGoogleCloudRunOpV2VolumeMount < 3) {
    unittest.expect(
      o.mountPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunOpV2VolumeMount--;
}

core.int buildCounterGoogleCloudRunOpV2VpcAccess = 0;
api.GoogleCloudRunOpV2VpcAccess buildGoogleCloudRunOpV2VpcAccess() {
  final o = api.GoogleCloudRunOpV2VpcAccess();
  buildCounterGoogleCloudRunOpV2VpcAccess++;
  if (buildCounterGoogleCloudRunOpV2VpcAccess < 3) {
    o.connector = 'foo';
    o.egress = 'foo';
  }
  buildCounterGoogleCloudRunOpV2VpcAccess--;
  return o;
}

void checkGoogleCloudRunOpV2VpcAccess(api.GoogleCloudRunOpV2VpcAccess o) {
  buildCounterGoogleCloudRunOpV2VpcAccess++;
  if (buildCounterGoogleCloudRunOpV2VpcAccess < 3) {
    unittest.expect(
      o.connector!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.egress!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunOpV2VpcAccess--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed24() => [
      buildGoogleIamV1AuditLogConfig(),
      buildGoogleIamV1AuditLogConfig(),
    ];

void checkUnnamed24(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed24();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed24(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditConfig--;
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

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed25();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed25(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed26();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed26(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed27() => [
      buildGoogleIamV1AuditConfig(),
      buildGoogleIamV1AuditConfig(),
    ];

void checkUnnamed27(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed28() => [
      buildGoogleIamV1Binding(),
      buildGoogleIamV1Binding(),
    ];

void checkUnnamed28(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed27();
    o.bindings = buildUnnamed28();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed27(o.auditConfigs!);
    checkUnnamed28(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleIamV1Policy--;
}

core.int buildCounterGoogleIamV1SetIamPolicyRequest = 0;
api.GoogleIamV1SetIamPolicyRequest buildGoogleIamV1SetIamPolicyRequest() {
  final o = api.GoogleIamV1SetIamPolicyRequest();
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    o.policy = buildGoogleIamV1Policy();
    o.updateMask = 'foo';
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
  return o;
}

void checkGoogleIamV1SetIamPolicyRequest(api.GoogleIamV1SetIamPolicyRequest o) {
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    checkGoogleIamV1Policy(o.policy!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
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

core.int buildCounterGoogleIamV1TestIamPermissionsRequest = 0;
api.GoogleIamV1TestIamPermissionsRequest
    buildGoogleIamV1TestIamPermissionsRequest() {
  final o = api.GoogleIamV1TestIamPermissionsRequest();
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed29();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsRequest(
    api.GoogleIamV1TestIamPermissionsRequest o) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed29(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
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

core.int buildCounterGoogleIamV1TestIamPermissionsResponse = 0;
api.GoogleIamV1TestIamPermissionsResponse
    buildGoogleIamV1TestIamPermissionsResponse() {
  final o = api.GoogleIamV1TestIamPermissionsResponse();
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed30();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsResponse(
    api.GoogleIamV1TestIamPermissionsResponse o) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed30(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed31() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed31(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed31();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed32() => {
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

void checkUnnamed32(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed33() => {
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

void checkUnnamed33(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed32();
    o.name = 'foo';
    o.response = buildUnnamed33();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed32(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.Map<core.String, core.Object?> buildUnnamed34() => {
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

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
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
  var casted6 = (o['y']!) as core.Map;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed35() => [
      buildUnnamed34(),
      buildUnnamed34(),
    ];

void checkUnnamed35(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed34(o[0]);
  checkUnnamed34(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed35();
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
    checkUnnamed35(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeExpr = 0;
api.GoogleTypeExpr buildGoogleTypeExpr() {
  final o = api.GoogleTypeExpr();
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleTypeExpr--;
  return o;
}

void checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
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
  buildCounterGoogleTypeExpr--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudRunOpV2BinaryAuthorization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2BinaryAuthorization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2BinaryAuthorization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2BinaryAuthorization(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2CloudSqlInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2CloudSqlInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2CloudSqlInstance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2CloudSqlInstance(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2Condition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2Condition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2Condition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2Condition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2Container', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2Container();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2Container.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2Container(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2ContainerPort', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2ContainerPort();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2ContainerPort.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2ContainerPort(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2EnvVar', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2EnvVar();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2EnvVar.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2EnvVar(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2EnvVarSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2EnvVarSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2EnvVarSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2EnvVarSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2ListRevisionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2ListRevisionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2ListRevisionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2ListRevisionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2ListServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2ListServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2ListServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2ListServicesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2ResourceRequirements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2ResourceRequirements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2ResourceRequirements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2ResourceRequirements(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2Revision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2Revision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2Revision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2Revision(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2RevisionScaling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2RevisionScaling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2RevisionScaling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2RevisionScaling(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2RevisionTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2RevisionTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2RevisionTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2RevisionTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2SecretKeySelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2SecretKeySelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2SecretKeySelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2SecretKeySelector(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2SecretVolumeSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2SecretVolumeSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2SecretVolumeSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2SecretVolumeSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2Service();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2Service.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2Service(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2TrafficTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2TrafficTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2TrafficTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2TrafficTarget(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2TrafficTargetStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2TrafficTargetStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2TrafficTargetStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2TrafficTargetStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2VersionToPath', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2VersionToPath();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2VersionToPath.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2VersionToPath(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2Volume', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2Volume();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2Volume.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2Volume(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2VolumeMount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2VolumeMount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2VolumeMount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2VolumeMount(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunOpV2VpcAccess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunOpV2VpcAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunOpV2VpcAccess.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunOpV2VpcAccess(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Binding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Policy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1SetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1SetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1TestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1TestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1TestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1TestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
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

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeExpr.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_request = buildGoogleCloudRunOpV2Service();
      final arg_parent = 'foo';
      final arg_serviceId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRunOpV2Service.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRunOpV2Service(obj);

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
          unittest.equals('v2/'),
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
          queryMap['serviceId']!.first,
          unittest.equals(arg_serviceId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          serviceId: arg_serviceId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
          unittest.equals('v2/'),
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          etag: arg_etag, validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleCloudRunOpV2Service());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRunOpV2Service(response as api.GoogleCloudRunOpV2Service);
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
          unittest.equals('v2/'),
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
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRunOpV2ListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleCloudRunOpV2ListServicesResponse(
          response as api.GoogleCloudRunOpV2ListServicesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_request = buildGoogleCloudRunOpV2Service();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRunOpV2Service.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRunOpV2Service(obj);

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
          unittest.equals('v2/'),
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          allowMissing: arg_allowMissing,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1TestIamPermissionsResponse(
          response as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesRevisionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services.revisions;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
          unittest.equals('v2/'),
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          etag: arg_etag, validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services.revisions;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleCloudRunOpV2Revision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRunOpV2Revision(
          response as api.GoogleCloudRunOpV2Revision);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services.revisions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
          unittest.equals('v2/'),
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
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRunOpV2ListRevisionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleCloudRunOpV2ListRevisionsResponse(
          response as api.GoogleCloudRunOpV2ListRevisionsResponse);
    });
  });
}
