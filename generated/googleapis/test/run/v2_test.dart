// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/run/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudRunV2BinaryAuthorization = 0;
api.GoogleCloudRunV2BinaryAuthorization
    buildGoogleCloudRunV2BinaryAuthorization() {
  final o = api.GoogleCloudRunV2BinaryAuthorization();
  buildCounterGoogleCloudRunV2BinaryAuthorization++;
  if (buildCounterGoogleCloudRunV2BinaryAuthorization < 3) {
    o.breakglassJustification = 'foo';
    o.policy = 'foo';
    o.useDefault = true;
  }
  buildCounterGoogleCloudRunV2BinaryAuthorization--;
  return o;
}

void checkGoogleCloudRunV2BinaryAuthorization(
    api.GoogleCloudRunV2BinaryAuthorization o) {
  buildCounterGoogleCloudRunV2BinaryAuthorization++;
  if (buildCounterGoogleCloudRunV2BinaryAuthorization < 3) {
    unittest.expect(
      o.breakglassJustification!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policy!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useDefault!, unittest.isTrue);
  }
  buildCounterGoogleCloudRunV2BinaryAuthorization--;
}

core.int buildCounterGoogleCloudRunV2CancelExecutionRequest = 0;
api.GoogleCloudRunV2CancelExecutionRequest
    buildGoogleCloudRunV2CancelExecutionRequest() {
  final o = api.GoogleCloudRunV2CancelExecutionRequest();
  buildCounterGoogleCloudRunV2CancelExecutionRequest++;
  if (buildCounterGoogleCloudRunV2CancelExecutionRequest < 3) {
    o.etag = 'foo';
    o.validateOnly = true;
  }
  buildCounterGoogleCloudRunV2CancelExecutionRequest--;
  return o;
}

void checkGoogleCloudRunV2CancelExecutionRequest(
    api.GoogleCloudRunV2CancelExecutionRequest o) {
  buildCounterGoogleCloudRunV2CancelExecutionRequest++;
  if (buildCounterGoogleCloudRunV2CancelExecutionRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRunV2CancelExecutionRequest--;
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

core.int buildCounterGoogleCloudRunV2CloudSqlInstance = 0;
api.GoogleCloudRunV2CloudSqlInstance buildGoogleCloudRunV2CloudSqlInstance() {
  final o = api.GoogleCloudRunV2CloudSqlInstance();
  buildCounterGoogleCloudRunV2CloudSqlInstance++;
  if (buildCounterGoogleCloudRunV2CloudSqlInstance < 3) {
    o.instances = buildUnnamed0();
  }
  buildCounterGoogleCloudRunV2CloudSqlInstance--;
  return o;
}

void checkGoogleCloudRunV2CloudSqlInstance(
    api.GoogleCloudRunV2CloudSqlInstance o) {
  buildCounterGoogleCloudRunV2CloudSqlInstance++;
  if (buildCounterGoogleCloudRunV2CloudSqlInstance < 3) {
    checkUnnamed0(o.instances!);
  }
  buildCounterGoogleCloudRunV2CloudSqlInstance--;
}

core.int buildCounterGoogleCloudRunV2Condition = 0;
api.GoogleCloudRunV2Condition buildGoogleCloudRunV2Condition() {
  final o = api.GoogleCloudRunV2Condition();
  buildCounterGoogleCloudRunV2Condition++;
  if (buildCounterGoogleCloudRunV2Condition < 3) {
    o.executionReason = 'foo';
    o.lastTransitionTime = 'foo';
    o.message = 'foo';
    o.reason = 'foo';
    o.revisionReason = 'foo';
    o.severity = 'foo';
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudRunV2Condition--;
  return o;
}

void checkGoogleCloudRunV2Condition(api.GoogleCloudRunV2Condition o) {
  buildCounterGoogleCloudRunV2Condition++;
  if (buildCounterGoogleCloudRunV2Condition < 3) {
    unittest.expect(
      o.executionReason!,
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
  buildCounterGoogleCloudRunV2Condition--;
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

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.List<api.GoogleCloudRunV2EnvVar> buildUnnamed4() => [
      buildGoogleCloudRunV2EnvVar(),
      buildGoogleCloudRunV2EnvVar(),
    ];

void checkUnnamed4(core.List<api.GoogleCloudRunV2EnvVar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2EnvVar(o[0]);
  checkGoogleCloudRunV2EnvVar(o[1]);
}

core.List<api.GoogleCloudRunV2ContainerPort> buildUnnamed5() => [
      buildGoogleCloudRunV2ContainerPort(),
      buildGoogleCloudRunV2ContainerPort(),
    ];

void checkUnnamed5(core.List<api.GoogleCloudRunV2ContainerPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2ContainerPort(o[0]);
  checkGoogleCloudRunV2ContainerPort(o[1]);
}

core.List<api.GoogleCloudRunV2VolumeMount> buildUnnamed6() => [
      buildGoogleCloudRunV2VolumeMount(),
      buildGoogleCloudRunV2VolumeMount(),
    ];

void checkUnnamed6(core.List<api.GoogleCloudRunV2VolumeMount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2VolumeMount(o[0]);
  checkGoogleCloudRunV2VolumeMount(o[1]);
}

core.int buildCounterGoogleCloudRunV2Container = 0;
api.GoogleCloudRunV2Container buildGoogleCloudRunV2Container() {
  final o = api.GoogleCloudRunV2Container();
  buildCounterGoogleCloudRunV2Container++;
  if (buildCounterGoogleCloudRunV2Container < 3) {
    o.args = buildUnnamed1();
    o.command = buildUnnamed2();
    o.dependsOn = buildUnnamed3();
    o.env = buildUnnamed4();
    o.image = 'foo';
    o.livenessProbe = buildGoogleCloudRunV2Probe();
    o.name = 'foo';
    o.ports = buildUnnamed5();
    o.resources = buildGoogleCloudRunV2ResourceRequirements();
    o.startupProbe = buildGoogleCloudRunV2Probe();
    o.volumeMounts = buildUnnamed6();
    o.workingDir = 'foo';
  }
  buildCounterGoogleCloudRunV2Container--;
  return o;
}

void checkGoogleCloudRunV2Container(api.GoogleCloudRunV2Container o) {
  buildCounterGoogleCloudRunV2Container++;
  if (buildCounterGoogleCloudRunV2Container < 3) {
    checkUnnamed1(o.args!);
    checkUnnamed2(o.command!);
    checkUnnamed3(o.dependsOn!);
    checkUnnamed4(o.env!);
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRunV2Probe(o.livenessProbe!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.ports!);
    checkGoogleCloudRunV2ResourceRequirements(o.resources!);
    checkGoogleCloudRunV2Probe(o.startupProbe!);
    checkUnnamed6(o.volumeMounts!);
    unittest.expect(
      o.workingDir!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2Container--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.List<api.GoogleCloudRunV2EnvVar> buildUnnamed8() => [
      buildGoogleCloudRunV2EnvVar(),
      buildGoogleCloudRunV2EnvVar(),
    ];

void checkUnnamed8(core.List<api.GoogleCloudRunV2EnvVar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2EnvVar(o[0]);
  checkGoogleCloudRunV2EnvVar(o[1]);
}

core.int buildCounterGoogleCloudRunV2ContainerOverride = 0;
api.GoogleCloudRunV2ContainerOverride buildGoogleCloudRunV2ContainerOverride() {
  final o = api.GoogleCloudRunV2ContainerOverride();
  buildCounterGoogleCloudRunV2ContainerOverride++;
  if (buildCounterGoogleCloudRunV2ContainerOverride < 3) {
    o.args = buildUnnamed7();
    o.clearArgs = true;
    o.env = buildUnnamed8();
    o.name = 'foo';
  }
  buildCounterGoogleCloudRunV2ContainerOverride--;
  return o;
}

void checkGoogleCloudRunV2ContainerOverride(
    api.GoogleCloudRunV2ContainerOverride o) {
  buildCounterGoogleCloudRunV2ContainerOverride++;
  if (buildCounterGoogleCloudRunV2ContainerOverride < 3) {
    checkUnnamed7(o.args!);
    unittest.expect(o.clearArgs!, unittest.isTrue);
    checkUnnamed8(o.env!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2ContainerOverride--;
}

core.int buildCounterGoogleCloudRunV2ContainerPort = 0;
api.GoogleCloudRunV2ContainerPort buildGoogleCloudRunV2ContainerPort() {
  final o = api.GoogleCloudRunV2ContainerPort();
  buildCounterGoogleCloudRunV2ContainerPort++;
  if (buildCounterGoogleCloudRunV2ContainerPort < 3) {
    o.containerPort = 42;
    o.name = 'foo';
  }
  buildCounterGoogleCloudRunV2ContainerPort--;
  return o;
}

void checkGoogleCloudRunV2ContainerPort(api.GoogleCloudRunV2ContainerPort o) {
  buildCounterGoogleCloudRunV2ContainerPort++;
  if (buildCounterGoogleCloudRunV2ContainerPort < 3) {
    unittest.expect(
      o.containerPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2ContainerPort--;
}

core.int buildCounterGoogleCloudRunV2EmptyDirVolumeSource = 0;
api.GoogleCloudRunV2EmptyDirVolumeSource
    buildGoogleCloudRunV2EmptyDirVolumeSource() {
  final o = api.GoogleCloudRunV2EmptyDirVolumeSource();
  buildCounterGoogleCloudRunV2EmptyDirVolumeSource++;
  if (buildCounterGoogleCloudRunV2EmptyDirVolumeSource < 3) {
    o.medium = 'foo';
    o.sizeLimit = 'foo';
  }
  buildCounterGoogleCloudRunV2EmptyDirVolumeSource--;
  return o;
}

void checkGoogleCloudRunV2EmptyDirVolumeSource(
    api.GoogleCloudRunV2EmptyDirVolumeSource o) {
  buildCounterGoogleCloudRunV2EmptyDirVolumeSource++;
  if (buildCounterGoogleCloudRunV2EmptyDirVolumeSource < 3) {
    unittest.expect(
      o.medium!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeLimit!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2EmptyDirVolumeSource--;
}

core.int buildCounterGoogleCloudRunV2EnvVar = 0;
api.GoogleCloudRunV2EnvVar buildGoogleCloudRunV2EnvVar() {
  final o = api.GoogleCloudRunV2EnvVar();
  buildCounterGoogleCloudRunV2EnvVar++;
  if (buildCounterGoogleCloudRunV2EnvVar < 3) {
    o.name = 'foo';
    o.value = 'foo';
    o.valueSource = buildGoogleCloudRunV2EnvVarSource();
  }
  buildCounterGoogleCloudRunV2EnvVar--;
  return o;
}

void checkGoogleCloudRunV2EnvVar(api.GoogleCloudRunV2EnvVar o) {
  buildCounterGoogleCloudRunV2EnvVar++;
  if (buildCounterGoogleCloudRunV2EnvVar < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRunV2EnvVarSource(o.valueSource!);
  }
  buildCounterGoogleCloudRunV2EnvVar--;
}

core.int buildCounterGoogleCloudRunV2EnvVarSource = 0;
api.GoogleCloudRunV2EnvVarSource buildGoogleCloudRunV2EnvVarSource() {
  final o = api.GoogleCloudRunV2EnvVarSource();
  buildCounterGoogleCloudRunV2EnvVarSource++;
  if (buildCounterGoogleCloudRunV2EnvVarSource < 3) {
    o.secretKeyRef = buildGoogleCloudRunV2SecretKeySelector();
  }
  buildCounterGoogleCloudRunV2EnvVarSource--;
  return o;
}

void checkGoogleCloudRunV2EnvVarSource(api.GoogleCloudRunV2EnvVarSource o) {
  buildCounterGoogleCloudRunV2EnvVarSource++;
  if (buildCounterGoogleCloudRunV2EnvVarSource < 3) {
    checkGoogleCloudRunV2SecretKeySelector(o.secretKeyRef!);
  }
  buildCounterGoogleCloudRunV2EnvVarSource--;
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

core.List<api.GoogleCloudRunV2Condition> buildUnnamed10() => [
      buildGoogleCloudRunV2Condition(),
      buildGoogleCloudRunV2Condition(),
    ];

void checkUnnamed10(core.List<api.GoogleCloudRunV2Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Condition(o[0]);
  checkGoogleCloudRunV2Condition(o[1]);
}

core.Map<core.String, core.String> buildUnnamed11() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed11(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudRunV2Execution = 0;
api.GoogleCloudRunV2Execution buildGoogleCloudRunV2Execution() {
  final o = api.GoogleCloudRunV2Execution();
  buildCounterGoogleCloudRunV2Execution++;
  if (buildCounterGoogleCloudRunV2Execution < 3) {
    o.annotations = buildUnnamed9();
    o.cancelledCount = 42;
    o.completionTime = 'foo';
    o.conditions = buildUnnamed10();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.etag = 'foo';
    o.expireTime = 'foo';
    o.failedCount = 42;
    o.generation = 'foo';
    o.job = 'foo';
    o.labels = buildUnnamed11();
    o.launchStage = 'foo';
    o.logUri = 'foo';
    o.name = 'foo';
    o.observedGeneration = 'foo';
    o.parallelism = 42;
    o.reconciling = true;
    o.retriedCount = 42;
    o.runningCount = 42;
    o.satisfiesPzs = true;
    o.startTime = 'foo';
    o.succeededCount = 42;
    o.taskCount = 42;
    o.template = buildGoogleCloudRunV2TaskTemplate();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRunV2Execution--;
  return o;
}

void checkGoogleCloudRunV2Execution(api.GoogleCloudRunV2Execution o) {
  buildCounterGoogleCloudRunV2Execution++;
  if (buildCounterGoogleCloudRunV2Execution < 3) {
    checkUnnamed9(o.annotations!);
    unittest.expect(
      o.cancelledCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.completionTime!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.conditions!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
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
      o.failedCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.generation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.job!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.labels!);
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
    unittest.expect(
      o.parallelism!,
      unittest.equals(42),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(
      o.retriedCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.runningCount!,
      unittest.equals(42),
    );
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.succeededCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.taskCount!,
      unittest.equals(42),
    );
    checkGoogleCloudRunV2TaskTemplate(o.template!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2Execution--;
}

core.int buildCounterGoogleCloudRunV2ExecutionReference = 0;
api.GoogleCloudRunV2ExecutionReference
    buildGoogleCloudRunV2ExecutionReference() {
  final o = api.GoogleCloudRunV2ExecutionReference();
  buildCounterGoogleCloudRunV2ExecutionReference++;
  if (buildCounterGoogleCloudRunV2ExecutionReference < 3) {
    o.completionTime = 'foo';
    o.createTime = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudRunV2ExecutionReference--;
  return o;
}

void checkGoogleCloudRunV2ExecutionReference(
    api.GoogleCloudRunV2ExecutionReference o) {
  buildCounterGoogleCloudRunV2ExecutionReference++;
  if (buildCounterGoogleCloudRunV2ExecutionReference < 3) {
    unittest.expect(
      o.completionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2ExecutionReference--;
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

core.Map<core.String, core.String> buildUnnamed13() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed13(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudRunV2ExecutionTemplate = 0;
api.GoogleCloudRunV2ExecutionTemplate buildGoogleCloudRunV2ExecutionTemplate() {
  final o = api.GoogleCloudRunV2ExecutionTemplate();
  buildCounterGoogleCloudRunV2ExecutionTemplate++;
  if (buildCounterGoogleCloudRunV2ExecutionTemplate < 3) {
    o.annotations = buildUnnamed12();
    o.labels = buildUnnamed13();
    o.parallelism = 42;
    o.taskCount = 42;
    o.template = buildGoogleCloudRunV2TaskTemplate();
  }
  buildCounterGoogleCloudRunV2ExecutionTemplate--;
  return o;
}

void checkGoogleCloudRunV2ExecutionTemplate(
    api.GoogleCloudRunV2ExecutionTemplate o) {
  buildCounterGoogleCloudRunV2ExecutionTemplate++;
  if (buildCounterGoogleCloudRunV2ExecutionTemplate < 3) {
    checkUnnamed12(o.annotations!);
    checkUnnamed13(o.labels!);
    unittest.expect(
      o.parallelism!,
      unittest.equals(42),
    );
    unittest.expect(
      o.taskCount!,
      unittest.equals(42),
    );
    checkGoogleCloudRunV2TaskTemplate(o.template!);
  }
  buildCounterGoogleCloudRunV2ExecutionTemplate--;
}

core.int buildCounterGoogleCloudRunV2ExportImageRequest = 0;
api.GoogleCloudRunV2ExportImageRequest
    buildGoogleCloudRunV2ExportImageRequest() {
  final o = api.GoogleCloudRunV2ExportImageRequest();
  buildCounterGoogleCloudRunV2ExportImageRequest++;
  if (buildCounterGoogleCloudRunV2ExportImageRequest < 3) {
    o.destinationRepo = 'foo';
  }
  buildCounterGoogleCloudRunV2ExportImageRequest--;
  return o;
}

void checkGoogleCloudRunV2ExportImageRequest(
    api.GoogleCloudRunV2ExportImageRequest o) {
  buildCounterGoogleCloudRunV2ExportImageRequest++;
  if (buildCounterGoogleCloudRunV2ExportImageRequest < 3) {
    unittest.expect(
      o.destinationRepo!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2ExportImageRequest--;
}

core.int buildCounterGoogleCloudRunV2ExportImageResponse = 0;
api.GoogleCloudRunV2ExportImageResponse
    buildGoogleCloudRunV2ExportImageResponse() {
  final o = api.GoogleCloudRunV2ExportImageResponse();
  buildCounterGoogleCloudRunV2ExportImageResponse++;
  if (buildCounterGoogleCloudRunV2ExportImageResponse < 3) {
    o.operationId = 'foo';
  }
  buildCounterGoogleCloudRunV2ExportImageResponse--;
  return o;
}

void checkGoogleCloudRunV2ExportImageResponse(
    api.GoogleCloudRunV2ExportImageResponse o) {
  buildCounterGoogleCloudRunV2ExportImageResponse++;
  if (buildCounterGoogleCloudRunV2ExportImageResponse < 3) {
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2ExportImageResponse--;
}

core.List<api.GoogleCloudRunV2ImageExportStatus> buildUnnamed14() => [
      buildGoogleCloudRunV2ImageExportStatus(),
      buildGoogleCloudRunV2ImageExportStatus(),
    ];

void checkUnnamed14(core.List<api.GoogleCloudRunV2ImageExportStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2ImageExportStatus(o[0]);
  checkGoogleCloudRunV2ImageExportStatus(o[1]);
}

core.int buildCounterGoogleCloudRunV2ExportStatusResponse = 0;
api.GoogleCloudRunV2ExportStatusResponse
    buildGoogleCloudRunV2ExportStatusResponse() {
  final o = api.GoogleCloudRunV2ExportStatusResponse();
  buildCounterGoogleCloudRunV2ExportStatusResponse++;
  if (buildCounterGoogleCloudRunV2ExportStatusResponse < 3) {
    o.imageExportStatuses = buildUnnamed14();
    o.operationId = 'foo';
    o.operationState = 'foo';
  }
  buildCounterGoogleCloudRunV2ExportStatusResponse--;
  return o;
}

void checkGoogleCloudRunV2ExportStatusResponse(
    api.GoogleCloudRunV2ExportStatusResponse o) {
  buildCounterGoogleCloudRunV2ExportStatusResponse++;
  if (buildCounterGoogleCloudRunV2ExportStatusResponse < 3) {
    checkUnnamed14(o.imageExportStatuses!);
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationState!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2ExportStatusResponse--;
}

core.int buildCounterGoogleCloudRunV2GCSVolumeSource = 0;
api.GoogleCloudRunV2GCSVolumeSource buildGoogleCloudRunV2GCSVolumeSource() {
  final o = api.GoogleCloudRunV2GCSVolumeSource();
  buildCounterGoogleCloudRunV2GCSVolumeSource++;
  if (buildCounterGoogleCloudRunV2GCSVolumeSource < 3) {
    o.bucket = 'foo';
    o.readOnly = true;
  }
  buildCounterGoogleCloudRunV2GCSVolumeSource--;
  return o;
}

void checkGoogleCloudRunV2GCSVolumeSource(
    api.GoogleCloudRunV2GCSVolumeSource o) {
  buildCounterGoogleCloudRunV2GCSVolumeSource++;
  if (buildCounterGoogleCloudRunV2GCSVolumeSource < 3) {
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(o.readOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRunV2GCSVolumeSource--;
}

core.int buildCounterGoogleCloudRunV2GRPCAction = 0;
api.GoogleCloudRunV2GRPCAction buildGoogleCloudRunV2GRPCAction() {
  final o = api.GoogleCloudRunV2GRPCAction();
  buildCounterGoogleCloudRunV2GRPCAction++;
  if (buildCounterGoogleCloudRunV2GRPCAction < 3) {
    o.port = 42;
    o.service = 'foo';
  }
  buildCounterGoogleCloudRunV2GRPCAction--;
  return o;
}

void checkGoogleCloudRunV2GRPCAction(api.GoogleCloudRunV2GRPCAction o) {
  buildCounterGoogleCloudRunV2GRPCAction++;
  if (buildCounterGoogleCloudRunV2GRPCAction < 3) {
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2GRPCAction--;
}

core.List<api.GoogleCloudRunV2HTTPHeader> buildUnnamed15() => [
      buildGoogleCloudRunV2HTTPHeader(),
      buildGoogleCloudRunV2HTTPHeader(),
    ];

void checkUnnamed15(core.List<api.GoogleCloudRunV2HTTPHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2HTTPHeader(o[0]);
  checkGoogleCloudRunV2HTTPHeader(o[1]);
}

core.int buildCounterGoogleCloudRunV2HTTPGetAction = 0;
api.GoogleCloudRunV2HTTPGetAction buildGoogleCloudRunV2HTTPGetAction() {
  final o = api.GoogleCloudRunV2HTTPGetAction();
  buildCounterGoogleCloudRunV2HTTPGetAction++;
  if (buildCounterGoogleCloudRunV2HTTPGetAction < 3) {
    o.httpHeaders = buildUnnamed15();
    o.path = 'foo';
    o.port = 42;
  }
  buildCounterGoogleCloudRunV2HTTPGetAction--;
  return o;
}

void checkGoogleCloudRunV2HTTPGetAction(api.GoogleCloudRunV2HTTPGetAction o) {
  buildCounterGoogleCloudRunV2HTTPGetAction++;
  if (buildCounterGoogleCloudRunV2HTTPGetAction < 3) {
    checkUnnamed15(o.httpHeaders!);
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRunV2HTTPGetAction--;
}

core.int buildCounterGoogleCloudRunV2HTTPHeader = 0;
api.GoogleCloudRunV2HTTPHeader buildGoogleCloudRunV2HTTPHeader() {
  final o = api.GoogleCloudRunV2HTTPHeader();
  buildCounterGoogleCloudRunV2HTTPHeader++;
  if (buildCounterGoogleCloudRunV2HTTPHeader < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudRunV2HTTPHeader--;
  return o;
}

void checkGoogleCloudRunV2HTTPHeader(api.GoogleCloudRunV2HTTPHeader o) {
  buildCounterGoogleCloudRunV2HTTPHeader++;
  if (buildCounterGoogleCloudRunV2HTTPHeader < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2HTTPHeader--;
}

core.int buildCounterGoogleCloudRunV2ImageExportStatus = 0;
api.GoogleCloudRunV2ImageExportStatus buildGoogleCloudRunV2ImageExportStatus() {
  final o = api.GoogleCloudRunV2ImageExportStatus();
  buildCounterGoogleCloudRunV2ImageExportStatus++;
  if (buildCounterGoogleCloudRunV2ImageExportStatus < 3) {
    o.exportJobState = 'foo';
    o.exportedImageDigest = 'foo';
    o.status = buildUtilStatusProto();
    o.tag = 'foo';
  }
  buildCounterGoogleCloudRunV2ImageExportStatus--;
  return o;
}

void checkGoogleCloudRunV2ImageExportStatus(
    api.GoogleCloudRunV2ImageExportStatus o) {
  buildCounterGoogleCloudRunV2ImageExportStatus++;
  if (buildCounterGoogleCloudRunV2ImageExportStatus < 3) {
    unittest.expect(
      o.exportJobState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exportedImageDigest!,
      unittest.equals('foo'),
    );
    checkUtilStatusProto(o.status!);
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2ImageExportStatus--;
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

core.List<api.GoogleCloudRunV2Condition> buildUnnamed17() => [
      buildGoogleCloudRunV2Condition(),
      buildGoogleCloudRunV2Condition(),
    ];

void checkUnnamed17(core.List<api.GoogleCloudRunV2Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Condition(o[0]);
  checkGoogleCloudRunV2Condition(o[1]);
}

core.Map<core.String, core.String> buildUnnamed18() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed18(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudRunV2Job = 0;
api.GoogleCloudRunV2Job buildGoogleCloudRunV2Job() {
  final o = api.GoogleCloudRunV2Job();
  buildCounterGoogleCloudRunV2Job++;
  if (buildCounterGoogleCloudRunV2Job < 3) {
    o.annotations = buildUnnamed16();
    o.binaryAuthorization = buildGoogleCloudRunV2BinaryAuthorization();
    o.client = 'foo';
    o.clientVersion = 'foo';
    o.conditions = buildUnnamed17();
    o.createTime = 'foo';
    o.creator = 'foo';
    o.deleteTime = 'foo';
    o.etag = 'foo';
    o.executionCount = 42;
    o.expireTime = 'foo';
    o.generation = 'foo';
    o.labels = buildUnnamed18();
    o.lastModifier = 'foo';
    o.latestCreatedExecution = buildGoogleCloudRunV2ExecutionReference();
    o.launchStage = 'foo';
    o.name = 'foo';
    o.observedGeneration = 'foo';
    o.reconciling = true;
    o.satisfiesPzs = true;
    o.template = buildGoogleCloudRunV2ExecutionTemplate();
    o.terminalCondition = buildGoogleCloudRunV2Condition();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRunV2Job--;
  return o;
}

void checkGoogleCloudRunV2Job(api.GoogleCloudRunV2Job o) {
  buildCounterGoogleCloudRunV2Job++;
  if (buildCounterGoogleCloudRunV2Job < 3) {
    checkUnnamed16(o.annotations!);
    checkGoogleCloudRunV2BinaryAuthorization(o.binaryAuthorization!);
    unittest.expect(
      o.client!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.conditions!);
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
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executionCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generation!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.labels!);
    unittest.expect(
      o.lastModifier!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRunV2ExecutionReference(o.latestCreatedExecution!);
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
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    checkGoogleCloudRunV2ExecutionTemplate(o.template!);
    checkGoogleCloudRunV2Condition(o.terminalCondition!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2Job--;
}

core.List<api.GoogleCloudRunV2Execution> buildUnnamed19() => [
      buildGoogleCloudRunV2Execution(),
      buildGoogleCloudRunV2Execution(),
    ];

void checkUnnamed19(core.List<api.GoogleCloudRunV2Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Execution(o[0]);
  checkGoogleCloudRunV2Execution(o[1]);
}

core.int buildCounterGoogleCloudRunV2ListExecutionsResponse = 0;
api.GoogleCloudRunV2ListExecutionsResponse
    buildGoogleCloudRunV2ListExecutionsResponse() {
  final o = api.GoogleCloudRunV2ListExecutionsResponse();
  buildCounterGoogleCloudRunV2ListExecutionsResponse++;
  if (buildCounterGoogleCloudRunV2ListExecutionsResponse < 3) {
    o.executions = buildUnnamed19();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRunV2ListExecutionsResponse--;
  return o;
}

void checkGoogleCloudRunV2ListExecutionsResponse(
    api.GoogleCloudRunV2ListExecutionsResponse o) {
  buildCounterGoogleCloudRunV2ListExecutionsResponse++;
  if (buildCounterGoogleCloudRunV2ListExecutionsResponse < 3) {
    checkUnnamed19(o.executions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2ListExecutionsResponse--;
}

core.List<api.GoogleCloudRunV2Job> buildUnnamed20() => [
      buildGoogleCloudRunV2Job(),
      buildGoogleCloudRunV2Job(),
    ];

void checkUnnamed20(core.List<api.GoogleCloudRunV2Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Job(o[0]);
  checkGoogleCloudRunV2Job(o[1]);
}

core.int buildCounterGoogleCloudRunV2ListJobsResponse = 0;
api.GoogleCloudRunV2ListJobsResponse buildGoogleCloudRunV2ListJobsResponse() {
  final o = api.GoogleCloudRunV2ListJobsResponse();
  buildCounterGoogleCloudRunV2ListJobsResponse++;
  if (buildCounterGoogleCloudRunV2ListJobsResponse < 3) {
    o.jobs = buildUnnamed20();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRunV2ListJobsResponse--;
  return o;
}

void checkGoogleCloudRunV2ListJobsResponse(
    api.GoogleCloudRunV2ListJobsResponse o) {
  buildCounterGoogleCloudRunV2ListJobsResponse++;
  if (buildCounterGoogleCloudRunV2ListJobsResponse < 3) {
    checkUnnamed20(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2ListJobsResponse--;
}

core.List<api.GoogleCloudRunV2Revision> buildUnnamed21() => [
      buildGoogleCloudRunV2Revision(),
      buildGoogleCloudRunV2Revision(),
    ];

void checkUnnamed21(core.List<api.GoogleCloudRunV2Revision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Revision(o[0]);
  checkGoogleCloudRunV2Revision(o[1]);
}

core.int buildCounterGoogleCloudRunV2ListRevisionsResponse = 0;
api.GoogleCloudRunV2ListRevisionsResponse
    buildGoogleCloudRunV2ListRevisionsResponse() {
  final o = api.GoogleCloudRunV2ListRevisionsResponse();
  buildCounterGoogleCloudRunV2ListRevisionsResponse++;
  if (buildCounterGoogleCloudRunV2ListRevisionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.revisions = buildUnnamed21();
  }
  buildCounterGoogleCloudRunV2ListRevisionsResponse--;
  return o;
}

void checkGoogleCloudRunV2ListRevisionsResponse(
    api.GoogleCloudRunV2ListRevisionsResponse o) {
  buildCounterGoogleCloudRunV2ListRevisionsResponse++;
  if (buildCounterGoogleCloudRunV2ListRevisionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.revisions!);
  }
  buildCounterGoogleCloudRunV2ListRevisionsResponse--;
}

core.List<api.GoogleCloudRunV2Service> buildUnnamed22() => [
      buildGoogleCloudRunV2Service(),
      buildGoogleCloudRunV2Service(),
    ];

void checkUnnamed22(core.List<api.GoogleCloudRunV2Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Service(o[0]);
  checkGoogleCloudRunV2Service(o[1]);
}

core.int buildCounterGoogleCloudRunV2ListServicesResponse = 0;
api.GoogleCloudRunV2ListServicesResponse
    buildGoogleCloudRunV2ListServicesResponse() {
  final o = api.GoogleCloudRunV2ListServicesResponse();
  buildCounterGoogleCloudRunV2ListServicesResponse++;
  if (buildCounterGoogleCloudRunV2ListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed22();
  }
  buildCounterGoogleCloudRunV2ListServicesResponse--;
  return o;
}

void checkGoogleCloudRunV2ListServicesResponse(
    api.GoogleCloudRunV2ListServicesResponse o) {
  buildCounterGoogleCloudRunV2ListServicesResponse++;
  if (buildCounterGoogleCloudRunV2ListServicesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.services!);
  }
  buildCounterGoogleCloudRunV2ListServicesResponse--;
}

core.List<api.GoogleCloudRunV2Task> buildUnnamed23() => [
      buildGoogleCloudRunV2Task(),
      buildGoogleCloudRunV2Task(),
    ];

void checkUnnamed23(core.List<api.GoogleCloudRunV2Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Task(o[0]);
  checkGoogleCloudRunV2Task(o[1]);
}

core.int buildCounterGoogleCloudRunV2ListTasksResponse = 0;
api.GoogleCloudRunV2ListTasksResponse buildGoogleCloudRunV2ListTasksResponse() {
  final o = api.GoogleCloudRunV2ListTasksResponse();
  buildCounterGoogleCloudRunV2ListTasksResponse++;
  if (buildCounterGoogleCloudRunV2ListTasksResponse < 3) {
    o.nextPageToken = 'foo';
    o.tasks = buildUnnamed23();
  }
  buildCounterGoogleCloudRunV2ListTasksResponse--;
  return o;
}

void checkGoogleCloudRunV2ListTasksResponse(
    api.GoogleCloudRunV2ListTasksResponse o) {
  buildCounterGoogleCloudRunV2ListTasksResponse++;
  if (buildCounterGoogleCloudRunV2ListTasksResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.tasks!);
  }
  buildCounterGoogleCloudRunV2ListTasksResponse--;
}

core.int buildCounterGoogleCloudRunV2Metadata = 0;
api.GoogleCloudRunV2Metadata buildGoogleCloudRunV2Metadata() {
  final o = api.GoogleCloudRunV2Metadata();
  buildCounterGoogleCloudRunV2Metadata++;
  if (buildCounterGoogleCloudRunV2Metadata < 3) {
    o.metadata = 'foo';
  }
  buildCounterGoogleCloudRunV2Metadata--;
  return o;
}

void checkGoogleCloudRunV2Metadata(api.GoogleCloudRunV2Metadata o) {
  buildCounterGoogleCloudRunV2Metadata++;
  if (buildCounterGoogleCloudRunV2Metadata < 3) {
    unittest.expect(
      o.metadata!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2Metadata--;
}

core.int buildCounterGoogleCloudRunV2NFSVolumeSource = 0;
api.GoogleCloudRunV2NFSVolumeSource buildGoogleCloudRunV2NFSVolumeSource() {
  final o = api.GoogleCloudRunV2NFSVolumeSource();
  buildCounterGoogleCloudRunV2NFSVolumeSource++;
  if (buildCounterGoogleCloudRunV2NFSVolumeSource < 3) {
    o.path = 'foo';
    o.readOnly = true;
    o.server = 'foo';
  }
  buildCounterGoogleCloudRunV2NFSVolumeSource--;
  return o;
}

void checkGoogleCloudRunV2NFSVolumeSource(
    api.GoogleCloudRunV2NFSVolumeSource o) {
  buildCounterGoogleCloudRunV2NFSVolumeSource++;
  if (buildCounterGoogleCloudRunV2NFSVolumeSource < 3) {
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(o.readOnly!, unittest.isTrue);
    unittest.expect(
      o.server!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2NFSVolumeSource--;
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRunV2NetworkInterface = 0;
api.GoogleCloudRunV2NetworkInterface buildGoogleCloudRunV2NetworkInterface() {
  final o = api.GoogleCloudRunV2NetworkInterface();
  buildCounterGoogleCloudRunV2NetworkInterface++;
  if (buildCounterGoogleCloudRunV2NetworkInterface < 3) {
    o.network = 'foo';
    o.subnetwork = 'foo';
    o.tags = buildUnnamed24();
  }
  buildCounterGoogleCloudRunV2NetworkInterface--;
  return o;
}

void checkGoogleCloudRunV2NetworkInterface(
    api.GoogleCloudRunV2NetworkInterface o) {
  buildCounterGoogleCloudRunV2NetworkInterface++;
  if (buildCounterGoogleCloudRunV2NetworkInterface < 3) {
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.tags!);
  }
  buildCounterGoogleCloudRunV2NetworkInterface--;
}

core.List<api.GoogleCloudRunV2ContainerOverride> buildUnnamed25() => [
      buildGoogleCloudRunV2ContainerOverride(),
      buildGoogleCloudRunV2ContainerOverride(),
    ];

void checkUnnamed25(core.List<api.GoogleCloudRunV2ContainerOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2ContainerOverride(o[0]);
  checkGoogleCloudRunV2ContainerOverride(o[1]);
}

core.int buildCounterGoogleCloudRunV2Overrides = 0;
api.GoogleCloudRunV2Overrides buildGoogleCloudRunV2Overrides() {
  final o = api.GoogleCloudRunV2Overrides();
  buildCounterGoogleCloudRunV2Overrides++;
  if (buildCounterGoogleCloudRunV2Overrides < 3) {
    o.containerOverrides = buildUnnamed25();
    o.taskCount = 42;
    o.timeout = 'foo';
  }
  buildCounterGoogleCloudRunV2Overrides--;
  return o;
}

void checkGoogleCloudRunV2Overrides(api.GoogleCloudRunV2Overrides o) {
  buildCounterGoogleCloudRunV2Overrides++;
  if (buildCounterGoogleCloudRunV2Overrides < 3) {
    checkUnnamed25(o.containerOverrides!);
    unittest.expect(
      o.taskCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2Overrides--;
}

core.int buildCounterGoogleCloudRunV2Probe = 0;
api.GoogleCloudRunV2Probe buildGoogleCloudRunV2Probe() {
  final o = api.GoogleCloudRunV2Probe();
  buildCounterGoogleCloudRunV2Probe++;
  if (buildCounterGoogleCloudRunV2Probe < 3) {
    o.failureThreshold = 42;
    o.grpc = buildGoogleCloudRunV2GRPCAction();
    o.httpGet = buildGoogleCloudRunV2HTTPGetAction();
    o.initialDelaySeconds = 42;
    o.periodSeconds = 42;
    o.tcpSocket = buildGoogleCloudRunV2TCPSocketAction();
    o.timeoutSeconds = 42;
  }
  buildCounterGoogleCloudRunV2Probe--;
  return o;
}

void checkGoogleCloudRunV2Probe(api.GoogleCloudRunV2Probe o) {
  buildCounterGoogleCloudRunV2Probe++;
  if (buildCounterGoogleCloudRunV2Probe < 3) {
    unittest.expect(
      o.failureThreshold!,
      unittest.equals(42),
    );
    checkGoogleCloudRunV2GRPCAction(o.grpc!);
    checkGoogleCloudRunV2HTTPGetAction(o.httpGet!);
    unittest.expect(
      o.initialDelaySeconds!,
      unittest.equals(42),
    );
    unittest.expect(
      o.periodSeconds!,
      unittest.equals(42),
    );
    checkGoogleCloudRunV2TCPSocketAction(o.tcpSocket!);
    unittest.expect(
      o.timeoutSeconds!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRunV2Probe--;
}

core.Map<core.String, core.String> buildUnnamed26() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed26(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudRunV2ResourceRequirements = 0;
api.GoogleCloudRunV2ResourceRequirements
    buildGoogleCloudRunV2ResourceRequirements() {
  final o = api.GoogleCloudRunV2ResourceRequirements();
  buildCounterGoogleCloudRunV2ResourceRequirements++;
  if (buildCounterGoogleCloudRunV2ResourceRequirements < 3) {
    o.cpuIdle = true;
    o.limits = buildUnnamed26();
    o.startupCpuBoost = true;
  }
  buildCounterGoogleCloudRunV2ResourceRequirements--;
  return o;
}

void checkGoogleCloudRunV2ResourceRequirements(
    api.GoogleCloudRunV2ResourceRequirements o) {
  buildCounterGoogleCloudRunV2ResourceRequirements++;
  if (buildCounterGoogleCloudRunV2ResourceRequirements < 3) {
    unittest.expect(o.cpuIdle!, unittest.isTrue);
    checkUnnamed26(o.limits!);
    unittest.expect(o.startupCpuBoost!, unittest.isTrue);
  }
  buildCounterGoogleCloudRunV2ResourceRequirements--;
}

core.Map<core.String, core.String> buildUnnamed27() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed27(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudRunV2Condition> buildUnnamed28() => [
      buildGoogleCloudRunV2Condition(),
      buildGoogleCloudRunV2Condition(),
    ];

void checkUnnamed28(core.List<api.GoogleCloudRunV2Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Condition(o[0]);
  checkGoogleCloudRunV2Condition(o[1]);
}

core.List<api.GoogleCloudRunV2Container> buildUnnamed29() => [
      buildGoogleCloudRunV2Container(),
      buildGoogleCloudRunV2Container(),
    ];

void checkUnnamed29(core.List<api.GoogleCloudRunV2Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Container(o[0]);
  checkGoogleCloudRunV2Container(o[1]);
}

core.Map<core.String, core.String> buildUnnamed30() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed30(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudRunV2Volume> buildUnnamed31() => [
      buildGoogleCloudRunV2Volume(),
      buildGoogleCloudRunV2Volume(),
    ];

void checkUnnamed31(core.List<api.GoogleCloudRunV2Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Volume(o[0]);
  checkGoogleCloudRunV2Volume(o[1]);
}

core.int buildCounterGoogleCloudRunV2Revision = 0;
api.GoogleCloudRunV2Revision buildGoogleCloudRunV2Revision() {
  final o = api.GoogleCloudRunV2Revision();
  buildCounterGoogleCloudRunV2Revision++;
  if (buildCounterGoogleCloudRunV2Revision < 3) {
    o.annotations = buildUnnamed27();
    o.conditions = buildUnnamed28();
    o.containers = buildUnnamed29();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.encryptionKey = 'foo';
    o.encryptionKeyRevocationAction = 'foo';
    o.encryptionKeyShutdownDuration = 'foo';
    o.etag = 'foo';
    o.executionEnvironment = 'foo';
    o.expireTime = 'foo';
    o.generation = 'foo';
    o.labels = buildUnnamed30();
    o.launchStage = 'foo';
    o.logUri = 'foo';
    o.maxInstanceRequestConcurrency = 42;
    o.name = 'foo';
    o.observedGeneration = 'foo';
    o.reconciling = true;
    o.satisfiesPzs = true;
    o.scaling = buildGoogleCloudRunV2RevisionScaling();
    o.scalingStatus = buildGoogleCloudRunV2RevisionScalingStatus();
    o.service = 'foo';
    o.serviceAccount = 'foo';
    o.sessionAffinity = true;
    o.timeout = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.volumes = buildUnnamed31();
    o.vpcAccess = buildGoogleCloudRunV2VpcAccess();
  }
  buildCounterGoogleCloudRunV2Revision--;
  return o;
}

void checkGoogleCloudRunV2Revision(api.GoogleCloudRunV2Revision o) {
  buildCounterGoogleCloudRunV2Revision++;
  if (buildCounterGoogleCloudRunV2Revision < 3) {
    checkUnnamed27(o.annotations!);
    checkUnnamed28(o.conditions!);
    checkUnnamed29(o.containers!);
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
      o.encryptionKeyRevocationAction!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encryptionKeyShutdownDuration!,
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
    checkUnnamed30(o.labels!);
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxInstanceRequestConcurrency!,
      unittest.equals(42),
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
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    checkGoogleCloudRunV2RevisionScaling(o.scaling!);
    checkGoogleCloudRunV2RevisionScalingStatus(o.scalingStatus!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(o.sessionAffinity!, unittest.isTrue);
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
    checkUnnamed31(o.volumes!);
    checkGoogleCloudRunV2VpcAccess(o.vpcAccess!);
  }
  buildCounterGoogleCloudRunV2Revision--;
}

core.int buildCounterGoogleCloudRunV2RevisionScaling = 0;
api.GoogleCloudRunV2RevisionScaling buildGoogleCloudRunV2RevisionScaling() {
  final o = api.GoogleCloudRunV2RevisionScaling();
  buildCounterGoogleCloudRunV2RevisionScaling++;
  if (buildCounterGoogleCloudRunV2RevisionScaling < 3) {
    o.maxInstanceCount = 42;
    o.minInstanceCount = 42;
  }
  buildCounterGoogleCloudRunV2RevisionScaling--;
  return o;
}

void checkGoogleCloudRunV2RevisionScaling(
    api.GoogleCloudRunV2RevisionScaling o) {
  buildCounterGoogleCloudRunV2RevisionScaling++;
  if (buildCounterGoogleCloudRunV2RevisionScaling < 3) {
    unittest.expect(
      o.maxInstanceCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minInstanceCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRunV2RevisionScaling--;
}

core.int buildCounterGoogleCloudRunV2RevisionScalingStatus = 0;
api.GoogleCloudRunV2RevisionScalingStatus
    buildGoogleCloudRunV2RevisionScalingStatus() {
  final o = api.GoogleCloudRunV2RevisionScalingStatus();
  buildCounterGoogleCloudRunV2RevisionScalingStatus++;
  if (buildCounterGoogleCloudRunV2RevisionScalingStatus < 3) {
    o.desiredMinInstanceCount = 42;
  }
  buildCounterGoogleCloudRunV2RevisionScalingStatus--;
  return o;
}

void checkGoogleCloudRunV2RevisionScalingStatus(
    api.GoogleCloudRunV2RevisionScalingStatus o) {
  buildCounterGoogleCloudRunV2RevisionScalingStatus++;
  if (buildCounterGoogleCloudRunV2RevisionScalingStatus < 3) {
    unittest.expect(
      o.desiredMinInstanceCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRunV2RevisionScalingStatus--;
}

core.Map<core.String, core.String> buildUnnamed32() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed32(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudRunV2Container> buildUnnamed33() => [
      buildGoogleCloudRunV2Container(),
      buildGoogleCloudRunV2Container(),
    ];

void checkUnnamed33(core.List<api.GoogleCloudRunV2Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Container(o[0]);
  checkGoogleCloudRunV2Container(o[1]);
}

core.Map<core.String, core.String> buildUnnamed34() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed34(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudRunV2Volume> buildUnnamed35() => [
      buildGoogleCloudRunV2Volume(),
      buildGoogleCloudRunV2Volume(),
    ];

void checkUnnamed35(core.List<api.GoogleCloudRunV2Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Volume(o[0]);
  checkGoogleCloudRunV2Volume(o[1]);
}

core.int buildCounterGoogleCloudRunV2RevisionTemplate = 0;
api.GoogleCloudRunV2RevisionTemplate buildGoogleCloudRunV2RevisionTemplate() {
  final o = api.GoogleCloudRunV2RevisionTemplate();
  buildCounterGoogleCloudRunV2RevisionTemplate++;
  if (buildCounterGoogleCloudRunV2RevisionTemplate < 3) {
    o.annotations = buildUnnamed32();
    o.containers = buildUnnamed33();
    o.encryptionKey = 'foo';
    o.executionEnvironment = 'foo';
    o.healthCheckDisabled = true;
    o.labels = buildUnnamed34();
    o.maxInstanceRequestConcurrency = 42;
    o.revision = 'foo';
    o.scaling = buildGoogleCloudRunV2RevisionScaling();
    o.serviceAccount = 'foo';
    o.sessionAffinity = true;
    o.timeout = 'foo';
    o.volumes = buildUnnamed35();
    o.vpcAccess = buildGoogleCloudRunV2VpcAccess();
  }
  buildCounterGoogleCloudRunV2RevisionTemplate--;
  return o;
}

void checkGoogleCloudRunV2RevisionTemplate(
    api.GoogleCloudRunV2RevisionTemplate o) {
  buildCounterGoogleCloudRunV2RevisionTemplate++;
  if (buildCounterGoogleCloudRunV2RevisionTemplate < 3) {
    checkUnnamed32(o.annotations!);
    checkUnnamed33(o.containers!);
    unittest.expect(
      o.encryptionKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executionEnvironment!,
      unittest.equals('foo'),
    );
    unittest.expect(o.healthCheckDisabled!, unittest.isTrue);
    checkUnnamed34(o.labels!);
    unittest.expect(
      o.maxInstanceRequestConcurrency!,
      unittest.equals(42),
    );
    unittest.expect(
      o.revision!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRunV2RevisionScaling(o.scaling!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(o.sessionAffinity!, unittest.isTrue);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.volumes!);
    checkGoogleCloudRunV2VpcAccess(o.vpcAccess!);
  }
  buildCounterGoogleCloudRunV2RevisionTemplate--;
}

core.int buildCounterGoogleCloudRunV2RunJobRequest = 0;
api.GoogleCloudRunV2RunJobRequest buildGoogleCloudRunV2RunJobRequest() {
  final o = api.GoogleCloudRunV2RunJobRequest();
  buildCounterGoogleCloudRunV2RunJobRequest++;
  if (buildCounterGoogleCloudRunV2RunJobRequest < 3) {
    o.etag = 'foo';
    o.overrides = buildGoogleCloudRunV2Overrides();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudRunV2RunJobRequest--;
  return o;
}

void checkGoogleCloudRunV2RunJobRequest(api.GoogleCloudRunV2RunJobRequest o) {
  buildCounterGoogleCloudRunV2RunJobRequest++;
  if (buildCounterGoogleCloudRunV2RunJobRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRunV2Overrides(o.overrides!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRunV2RunJobRequest--;
}

core.int buildCounterGoogleCloudRunV2SecretKeySelector = 0;
api.GoogleCloudRunV2SecretKeySelector buildGoogleCloudRunV2SecretKeySelector() {
  final o = api.GoogleCloudRunV2SecretKeySelector();
  buildCounterGoogleCloudRunV2SecretKeySelector++;
  if (buildCounterGoogleCloudRunV2SecretKeySelector < 3) {
    o.secret = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudRunV2SecretKeySelector--;
  return o;
}

void checkGoogleCloudRunV2SecretKeySelector(
    api.GoogleCloudRunV2SecretKeySelector o) {
  buildCounterGoogleCloudRunV2SecretKeySelector++;
  if (buildCounterGoogleCloudRunV2SecretKeySelector < 3) {
    unittest.expect(
      o.secret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2SecretKeySelector--;
}

core.List<api.GoogleCloudRunV2VersionToPath> buildUnnamed36() => [
      buildGoogleCloudRunV2VersionToPath(),
      buildGoogleCloudRunV2VersionToPath(),
    ];

void checkUnnamed36(core.List<api.GoogleCloudRunV2VersionToPath> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2VersionToPath(o[0]);
  checkGoogleCloudRunV2VersionToPath(o[1]);
}

core.int buildCounterGoogleCloudRunV2SecretVolumeSource = 0;
api.GoogleCloudRunV2SecretVolumeSource
    buildGoogleCloudRunV2SecretVolumeSource() {
  final o = api.GoogleCloudRunV2SecretVolumeSource();
  buildCounterGoogleCloudRunV2SecretVolumeSource++;
  if (buildCounterGoogleCloudRunV2SecretVolumeSource < 3) {
    o.defaultMode = 42;
    o.items = buildUnnamed36();
    o.secret = 'foo';
  }
  buildCounterGoogleCloudRunV2SecretVolumeSource--;
  return o;
}

void checkGoogleCloudRunV2SecretVolumeSource(
    api.GoogleCloudRunV2SecretVolumeSource o) {
  buildCounterGoogleCloudRunV2SecretVolumeSource++;
  if (buildCounterGoogleCloudRunV2SecretVolumeSource < 3) {
    unittest.expect(
      o.defaultMode!,
      unittest.equals(42),
    );
    checkUnnamed36(o.items!);
    unittest.expect(
      o.secret!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2SecretVolumeSource--;
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

core.List<api.GoogleCloudRunV2Condition> buildUnnamed38() => [
      buildGoogleCloudRunV2Condition(),
      buildGoogleCloudRunV2Condition(),
    ];

void checkUnnamed38(core.List<api.GoogleCloudRunV2Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Condition(o[0]);
  checkGoogleCloudRunV2Condition(o[1]);
}

core.List<core.String> buildUnnamed39() => [
      'foo',
      'foo',
    ];

void checkUnnamed39(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed40() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed40(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudRunV2TrafficTarget> buildUnnamed41() => [
      buildGoogleCloudRunV2TrafficTarget(),
      buildGoogleCloudRunV2TrafficTarget(),
    ];

void checkUnnamed41(core.List<api.GoogleCloudRunV2TrafficTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2TrafficTarget(o[0]);
  checkGoogleCloudRunV2TrafficTarget(o[1]);
}

core.List<api.GoogleCloudRunV2TrafficTargetStatus> buildUnnamed42() => [
      buildGoogleCloudRunV2TrafficTargetStatus(),
      buildGoogleCloudRunV2TrafficTargetStatus(),
    ];

void checkUnnamed42(core.List<api.GoogleCloudRunV2TrafficTargetStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2TrafficTargetStatus(o[0]);
  checkGoogleCloudRunV2TrafficTargetStatus(o[1]);
}

core.int buildCounterGoogleCloudRunV2Service = 0;
api.GoogleCloudRunV2Service buildGoogleCloudRunV2Service() {
  final o = api.GoogleCloudRunV2Service();
  buildCounterGoogleCloudRunV2Service++;
  if (buildCounterGoogleCloudRunV2Service < 3) {
    o.annotations = buildUnnamed37();
    o.binaryAuthorization = buildGoogleCloudRunV2BinaryAuthorization();
    o.client = 'foo';
    o.clientVersion = 'foo';
    o.conditions = buildUnnamed38();
    o.createTime = 'foo';
    o.creator = 'foo';
    o.customAudiences = buildUnnamed39();
    o.defaultUriDisabled = true;
    o.deleteTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.expireTime = 'foo';
    o.generation = 'foo';
    o.ingress = 'foo';
    o.labels = buildUnnamed40();
    o.lastModifier = 'foo';
    o.latestCreatedRevision = 'foo';
    o.latestReadyRevision = 'foo';
    o.launchStage = 'foo';
    o.name = 'foo';
    o.observedGeneration = 'foo';
    o.reconciling = true;
    o.satisfiesPzs = true;
    o.scaling = buildGoogleCloudRunV2ServiceScaling();
    o.template = buildGoogleCloudRunV2RevisionTemplate();
    o.terminalCondition = buildGoogleCloudRunV2Condition();
    o.traffic = buildUnnamed41();
    o.trafficStatuses = buildUnnamed42();
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudRunV2Service--;
  return o;
}

void checkGoogleCloudRunV2Service(api.GoogleCloudRunV2Service o) {
  buildCounterGoogleCloudRunV2Service++;
  if (buildCounterGoogleCloudRunV2Service < 3) {
    checkUnnamed37(o.annotations!);
    checkGoogleCloudRunV2BinaryAuthorization(o.binaryAuthorization!);
    unittest.expect(
      o.client!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.conditions!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creator!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.customAudiences!);
    unittest.expect(o.defaultUriDisabled!, unittest.isTrue);
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
    checkUnnamed40(o.labels!);
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
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    checkGoogleCloudRunV2ServiceScaling(o.scaling!);
    checkGoogleCloudRunV2RevisionTemplate(o.template!);
    checkGoogleCloudRunV2Condition(o.terminalCondition!);
    checkUnnamed41(o.traffic!);
    checkUnnamed42(o.trafficStatuses!);
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
  buildCounterGoogleCloudRunV2Service--;
}

core.int buildCounterGoogleCloudRunV2ServiceScaling = 0;
api.GoogleCloudRunV2ServiceScaling buildGoogleCloudRunV2ServiceScaling() {
  final o = api.GoogleCloudRunV2ServiceScaling();
  buildCounterGoogleCloudRunV2ServiceScaling++;
  if (buildCounterGoogleCloudRunV2ServiceScaling < 3) {
    o.minInstanceCount = 42;
  }
  buildCounterGoogleCloudRunV2ServiceScaling--;
  return o;
}

void checkGoogleCloudRunV2ServiceScaling(api.GoogleCloudRunV2ServiceScaling o) {
  buildCounterGoogleCloudRunV2ServiceScaling++;
  if (buildCounterGoogleCloudRunV2ServiceScaling < 3) {
    unittest.expect(
      o.minInstanceCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRunV2ServiceScaling--;
}

core.int buildCounterGoogleCloudRunV2TCPSocketAction = 0;
api.GoogleCloudRunV2TCPSocketAction buildGoogleCloudRunV2TCPSocketAction() {
  final o = api.GoogleCloudRunV2TCPSocketAction();
  buildCounterGoogleCloudRunV2TCPSocketAction++;
  if (buildCounterGoogleCloudRunV2TCPSocketAction < 3) {
    o.port = 42;
  }
  buildCounterGoogleCloudRunV2TCPSocketAction--;
  return o;
}

void checkGoogleCloudRunV2TCPSocketAction(
    api.GoogleCloudRunV2TCPSocketAction o) {
  buildCounterGoogleCloudRunV2TCPSocketAction++;
  if (buildCounterGoogleCloudRunV2TCPSocketAction < 3) {
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRunV2TCPSocketAction--;
}

core.Map<core.String, core.String> buildUnnamed43() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed43(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudRunV2Condition> buildUnnamed44() => [
      buildGoogleCloudRunV2Condition(),
      buildGoogleCloudRunV2Condition(),
    ];

void checkUnnamed44(core.List<api.GoogleCloudRunV2Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Condition(o[0]);
  checkGoogleCloudRunV2Condition(o[1]);
}

core.List<api.GoogleCloudRunV2Container> buildUnnamed45() => [
      buildGoogleCloudRunV2Container(),
      buildGoogleCloudRunV2Container(),
    ];

void checkUnnamed45(core.List<api.GoogleCloudRunV2Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Container(o[0]);
  checkGoogleCloudRunV2Container(o[1]);
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

core.List<api.GoogleCloudRunV2Volume> buildUnnamed47() => [
      buildGoogleCloudRunV2Volume(),
      buildGoogleCloudRunV2Volume(),
    ];

void checkUnnamed47(core.List<api.GoogleCloudRunV2Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Volume(o[0]);
  checkGoogleCloudRunV2Volume(o[1]);
}

core.int buildCounterGoogleCloudRunV2Task = 0;
api.GoogleCloudRunV2Task buildGoogleCloudRunV2Task() {
  final o = api.GoogleCloudRunV2Task();
  buildCounterGoogleCloudRunV2Task++;
  if (buildCounterGoogleCloudRunV2Task < 3) {
    o.annotations = buildUnnamed43();
    o.completionTime = 'foo';
    o.conditions = buildUnnamed44();
    o.containers = buildUnnamed45();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.encryptionKey = 'foo';
    o.etag = 'foo';
    o.execution = 'foo';
    o.executionEnvironment = 'foo';
    o.expireTime = 'foo';
    o.generation = 'foo';
    o.index = 42;
    o.job = 'foo';
    o.labels = buildUnnamed46();
    o.lastAttemptResult = buildGoogleCloudRunV2TaskAttemptResult();
    o.logUri = 'foo';
    o.maxRetries = 42;
    o.name = 'foo';
    o.observedGeneration = 'foo';
    o.reconciling = true;
    o.retried = 42;
    o.satisfiesPzs = true;
    o.scheduledTime = 'foo';
    o.serviceAccount = 'foo';
    o.startTime = 'foo';
    o.timeout = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.volumes = buildUnnamed47();
    o.vpcAccess = buildGoogleCloudRunV2VpcAccess();
  }
  buildCounterGoogleCloudRunV2Task--;
  return o;
}

void checkGoogleCloudRunV2Task(api.GoogleCloudRunV2Task o) {
  buildCounterGoogleCloudRunV2Task++;
  if (buildCounterGoogleCloudRunV2Task < 3) {
    checkUnnamed43(o.annotations!);
    unittest.expect(
      o.completionTime!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.conditions!);
    checkUnnamed45(o.containers!);
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
      o.execution!,
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
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.job!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.labels!);
    checkGoogleCloudRunV2TaskAttemptResult(o.lastAttemptResult!);
    unittest.expect(
      o.logUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxRetries!,
      unittest.equals(42),
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
    unittest.expect(
      o.retried!,
      unittest.equals(42),
    );
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(
      o.scheduledTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
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
    checkUnnamed47(o.volumes!);
    checkGoogleCloudRunV2VpcAccess(o.vpcAccess!);
  }
  buildCounterGoogleCloudRunV2Task--;
}

core.int buildCounterGoogleCloudRunV2TaskAttemptResult = 0;
api.GoogleCloudRunV2TaskAttemptResult buildGoogleCloudRunV2TaskAttemptResult() {
  final o = api.GoogleCloudRunV2TaskAttemptResult();
  buildCounterGoogleCloudRunV2TaskAttemptResult++;
  if (buildCounterGoogleCloudRunV2TaskAttemptResult < 3) {
    o.exitCode = 42;
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudRunV2TaskAttemptResult--;
  return o;
}

void checkGoogleCloudRunV2TaskAttemptResult(
    api.GoogleCloudRunV2TaskAttemptResult o) {
  buildCounterGoogleCloudRunV2TaskAttemptResult++;
  if (buildCounterGoogleCloudRunV2TaskAttemptResult < 3) {
    unittest.expect(
      o.exitCode!,
      unittest.equals(42),
    );
    checkGoogleRpcStatus(o.status!);
  }
  buildCounterGoogleCloudRunV2TaskAttemptResult--;
}

core.List<api.GoogleCloudRunV2Container> buildUnnamed48() => [
      buildGoogleCloudRunV2Container(),
      buildGoogleCloudRunV2Container(),
    ];

void checkUnnamed48(core.List<api.GoogleCloudRunV2Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Container(o[0]);
  checkGoogleCloudRunV2Container(o[1]);
}

core.List<api.GoogleCloudRunV2Volume> buildUnnamed49() => [
      buildGoogleCloudRunV2Volume(),
      buildGoogleCloudRunV2Volume(),
    ];

void checkUnnamed49(core.List<api.GoogleCloudRunV2Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2Volume(o[0]);
  checkGoogleCloudRunV2Volume(o[1]);
}

core.int buildCounterGoogleCloudRunV2TaskTemplate = 0;
api.GoogleCloudRunV2TaskTemplate buildGoogleCloudRunV2TaskTemplate() {
  final o = api.GoogleCloudRunV2TaskTemplate();
  buildCounterGoogleCloudRunV2TaskTemplate++;
  if (buildCounterGoogleCloudRunV2TaskTemplate < 3) {
    o.containers = buildUnnamed48();
    o.encryptionKey = 'foo';
    o.executionEnvironment = 'foo';
    o.maxRetries = 42;
    o.serviceAccount = 'foo';
    o.timeout = 'foo';
    o.volumes = buildUnnamed49();
    o.vpcAccess = buildGoogleCloudRunV2VpcAccess();
  }
  buildCounterGoogleCloudRunV2TaskTemplate--;
  return o;
}

void checkGoogleCloudRunV2TaskTemplate(api.GoogleCloudRunV2TaskTemplate o) {
  buildCounterGoogleCloudRunV2TaskTemplate++;
  if (buildCounterGoogleCloudRunV2TaskTemplate < 3) {
    checkUnnamed48(o.containers!);
    unittest.expect(
      o.encryptionKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executionEnvironment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxRetries!,
      unittest.equals(42),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.volumes!);
    checkGoogleCloudRunV2VpcAccess(o.vpcAccess!);
  }
  buildCounterGoogleCloudRunV2TaskTemplate--;
}

core.int buildCounterGoogleCloudRunV2TrafficTarget = 0;
api.GoogleCloudRunV2TrafficTarget buildGoogleCloudRunV2TrafficTarget() {
  final o = api.GoogleCloudRunV2TrafficTarget();
  buildCounterGoogleCloudRunV2TrafficTarget++;
  if (buildCounterGoogleCloudRunV2TrafficTarget < 3) {
    o.percent = 42;
    o.revision = 'foo';
    o.tag = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudRunV2TrafficTarget--;
  return o;
}

void checkGoogleCloudRunV2TrafficTarget(api.GoogleCloudRunV2TrafficTarget o) {
  buildCounterGoogleCloudRunV2TrafficTarget++;
  if (buildCounterGoogleCloudRunV2TrafficTarget < 3) {
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
  buildCounterGoogleCloudRunV2TrafficTarget--;
}

core.int buildCounterGoogleCloudRunV2TrafficTargetStatus = 0;
api.GoogleCloudRunV2TrafficTargetStatus
    buildGoogleCloudRunV2TrafficTargetStatus() {
  final o = api.GoogleCloudRunV2TrafficTargetStatus();
  buildCounterGoogleCloudRunV2TrafficTargetStatus++;
  if (buildCounterGoogleCloudRunV2TrafficTargetStatus < 3) {
    o.percent = 42;
    o.revision = 'foo';
    o.tag = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudRunV2TrafficTargetStatus--;
  return o;
}

void checkGoogleCloudRunV2TrafficTargetStatus(
    api.GoogleCloudRunV2TrafficTargetStatus o) {
  buildCounterGoogleCloudRunV2TrafficTargetStatus++;
  if (buildCounterGoogleCloudRunV2TrafficTargetStatus < 3) {
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
  buildCounterGoogleCloudRunV2TrafficTargetStatus--;
}

core.int buildCounterGoogleCloudRunV2VersionToPath = 0;
api.GoogleCloudRunV2VersionToPath buildGoogleCloudRunV2VersionToPath() {
  final o = api.GoogleCloudRunV2VersionToPath();
  buildCounterGoogleCloudRunV2VersionToPath++;
  if (buildCounterGoogleCloudRunV2VersionToPath < 3) {
    o.mode = 42;
    o.path = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudRunV2VersionToPath--;
  return o;
}

void checkGoogleCloudRunV2VersionToPath(api.GoogleCloudRunV2VersionToPath o) {
  buildCounterGoogleCloudRunV2VersionToPath++;
  if (buildCounterGoogleCloudRunV2VersionToPath < 3) {
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
  buildCounterGoogleCloudRunV2VersionToPath--;
}

core.int buildCounterGoogleCloudRunV2Volume = 0;
api.GoogleCloudRunV2Volume buildGoogleCloudRunV2Volume() {
  final o = api.GoogleCloudRunV2Volume();
  buildCounterGoogleCloudRunV2Volume++;
  if (buildCounterGoogleCloudRunV2Volume < 3) {
    o.cloudSqlInstance = buildGoogleCloudRunV2CloudSqlInstance();
    o.emptyDir = buildGoogleCloudRunV2EmptyDirVolumeSource();
    o.gcs = buildGoogleCloudRunV2GCSVolumeSource();
    o.name = 'foo';
    o.nfs = buildGoogleCloudRunV2NFSVolumeSource();
    o.secret = buildGoogleCloudRunV2SecretVolumeSource();
  }
  buildCounterGoogleCloudRunV2Volume--;
  return o;
}

void checkGoogleCloudRunV2Volume(api.GoogleCloudRunV2Volume o) {
  buildCounterGoogleCloudRunV2Volume++;
  if (buildCounterGoogleCloudRunV2Volume < 3) {
    checkGoogleCloudRunV2CloudSqlInstance(o.cloudSqlInstance!);
    checkGoogleCloudRunV2EmptyDirVolumeSource(o.emptyDir!);
    checkGoogleCloudRunV2GCSVolumeSource(o.gcs!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRunV2NFSVolumeSource(o.nfs!);
    checkGoogleCloudRunV2SecretVolumeSource(o.secret!);
  }
  buildCounterGoogleCloudRunV2Volume--;
}

core.int buildCounterGoogleCloudRunV2VolumeMount = 0;
api.GoogleCloudRunV2VolumeMount buildGoogleCloudRunV2VolumeMount() {
  final o = api.GoogleCloudRunV2VolumeMount();
  buildCounterGoogleCloudRunV2VolumeMount++;
  if (buildCounterGoogleCloudRunV2VolumeMount < 3) {
    o.mountPath = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudRunV2VolumeMount--;
  return o;
}

void checkGoogleCloudRunV2VolumeMount(api.GoogleCloudRunV2VolumeMount o) {
  buildCounterGoogleCloudRunV2VolumeMount++;
  if (buildCounterGoogleCloudRunV2VolumeMount < 3) {
    unittest.expect(
      o.mountPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRunV2VolumeMount--;
}

core.List<api.GoogleCloudRunV2NetworkInterface> buildUnnamed50() => [
      buildGoogleCloudRunV2NetworkInterface(),
      buildGoogleCloudRunV2NetworkInterface(),
    ];

void checkUnnamed50(core.List<api.GoogleCloudRunV2NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRunV2NetworkInterface(o[0]);
  checkGoogleCloudRunV2NetworkInterface(o[1]);
}

core.int buildCounterGoogleCloudRunV2VpcAccess = 0;
api.GoogleCloudRunV2VpcAccess buildGoogleCloudRunV2VpcAccess() {
  final o = api.GoogleCloudRunV2VpcAccess();
  buildCounterGoogleCloudRunV2VpcAccess++;
  if (buildCounterGoogleCloudRunV2VpcAccess < 3) {
    o.connector = 'foo';
    o.egress = 'foo';
    o.networkInterfaces = buildUnnamed50();
  }
  buildCounterGoogleCloudRunV2VpcAccess--;
  return o;
}

void checkGoogleCloudRunV2VpcAccess(api.GoogleCloudRunV2VpcAccess o) {
  buildCounterGoogleCloudRunV2VpcAccess++;
  if (buildCounterGoogleCloudRunV2VpcAccess < 3) {
    unittest.expect(
      o.connector!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.egress!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.networkInterfaces!);
  }
  buildCounterGoogleCloudRunV2VpcAccess--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed51() => [
      buildGoogleIamV1AuditLogConfig(),
      buildGoogleIamV1AuditLogConfig(),
    ];

void checkUnnamed51(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed51();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed51(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed52() => [
      'foo',
      'foo',
    ];

void checkUnnamed52(core.List<core.String> o) {
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
    o.exemptedMembers = buildUnnamed52();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed52(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed53() => [
      'foo',
      'foo',
    ];

void checkUnnamed53(core.List<core.String> o) {
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
    o.members = buildUnnamed53();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed53(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed54() => [
      buildGoogleIamV1AuditConfig(),
      buildGoogleIamV1AuditConfig(),
    ];

void checkUnnamed54(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed55() => [
      buildGoogleIamV1Binding(),
      buildGoogleIamV1Binding(),
    ];

void checkUnnamed55(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed54();
    o.bindings = buildUnnamed55();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed54(o.auditConfigs!);
    checkUnnamed55(o.bindings!);
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

core.List<core.String> buildUnnamed56() => [
      'foo',
      'foo',
    ];

void checkUnnamed56(core.List<core.String> o) {
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
    o.permissions = buildUnnamed56();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsRequest(
    api.GoogleIamV1TestIamPermissionsRequest o) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed56(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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
    o.permissions = buildUnnamed57();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsResponse(
    api.GoogleIamV1TestIamPermissionsResponse o) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed57(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed58() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed58(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed58();
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
    checkUnnamed58(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed59() => {
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

void checkUnnamed59(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed60() => {
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

void checkUnnamed60(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed59();
    o.name = 'foo';
    o.response = buildUnnamed60();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed59(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleLongrunningWaitOperationRequest = 0;
api.GoogleLongrunningWaitOperationRequest
    buildGoogleLongrunningWaitOperationRequest() {
  final o = api.GoogleLongrunningWaitOperationRequest();
  buildCounterGoogleLongrunningWaitOperationRequest++;
  if (buildCounterGoogleLongrunningWaitOperationRequest < 3) {
    o.timeout = 'foo';
  }
  buildCounterGoogleLongrunningWaitOperationRequest--;
  return o;
}

void checkGoogleLongrunningWaitOperationRequest(
    api.GoogleLongrunningWaitOperationRequest o) {
  buildCounterGoogleLongrunningWaitOperationRequest++;
  if (buildCounterGoogleLongrunningWaitOperationRequest < 3) {
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleLongrunningWaitOperationRequest--;
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

core.Map<core.String, core.Object?> buildUnnamed61() => {
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

void checkUnnamed61(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed62() => [
      buildUnnamed61(),
      buildUnnamed61(),
    ];

void checkUnnamed62(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed61(o[0]);
  checkUnnamed61(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed62();
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
    checkUnnamed62(o.details!);
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

core.int buildCounterProto2BridgeMessageSet = 0;
api.Proto2BridgeMessageSet buildProto2BridgeMessageSet() {
  final o = api.Proto2BridgeMessageSet();
  buildCounterProto2BridgeMessageSet++;
  if (buildCounterProto2BridgeMessageSet < 3) {}
  buildCounterProto2BridgeMessageSet--;
  return o;
}

void checkProto2BridgeMessageSet(api.Proto2BridgeMessageSet o) {
  buildCounterProto2BridgeMessageSet++;
  if (buildCounterProto2BridgeMessageSet < 3) {}
  buildCounterProto2BridgeMessageSet--;
}

core.int buildCounterUtilStatusProto = 0;
api.UtilStatusProto buildUtilStatusProto() {
  final o = api.UtilStatusProto();
  buildCounterUtilStatusProto++;
  if (buildCounterUtilStatusProto < 3) {
    o.canonicalCode = 42;
    o.code = 42;
    o.message = 'foo';
    o.messageSet = buildProto2BridgeMessageSet();
    o.space = 'foo';
  }
  buildCounterUtilStatusProto--;
  return o;
}

void checkUtilStatusProto(api.UtilStatusProto o) {
  buildCounterUtilStatusProto++;
  if (buildCounterUtilStatusProto < 3) {
    unittest.expect(
      o.canonicalCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    checkProto2BridgeMessageSet(o.messageSet!);
    unittest.expect(
      o.space!,
      unittest.equals('foo'),
    );
  }
  buildCounterUtilStatusProto--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudRunV2BinaryAuthorization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2BinaryAuthorization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2BinaryAuthorization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2BinaryAuthorization(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2CancelExecutionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2CancelExecutionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2CancelExecutionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2CancelExecutionRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2CloudSqlInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2CloudSqlInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2CloudSqlInstance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2CloudSqlInstance(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2Condition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2Condition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2Condition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2Condition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2Container', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2Container();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2Container.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2Container(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ContainerOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ContainerOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ContainerOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ContainerOverride(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ContainerPort', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ContainerPort();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ContainerPort.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ContainerPort(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2EmptyDirVolumeSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2EmptyDirVolumeSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2EmptyDirVolumeSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2EmptyDirVolumeSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2EnvVar', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2EnvVar();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2EnvVar.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2EnvVar(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2EnvVarSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2EnvVarSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2EnvVarSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2EnvVarSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2Execution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2Execution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2Execution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2Execution(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ExecutionReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ExecutionReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ExecutionReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ExecutionReference(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ExecutionTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ExecutionTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ExecutionTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ExecutionTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ExportImageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ExportImageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ExportImageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ExportImageRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ExportImageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ExportImageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ExportImageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ExportImageResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ExportStatusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ExportStatusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ExportStatusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ExportStatusResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2GCSVolumeSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2GCSVolumeSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2GCSVolumeSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2GCSVolumeSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2GRPCAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2GRPCAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2GRPCAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2GRPCAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2HTTPGetAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2HTTPGetAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2HTTPGetAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2HTTPGetAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2HTTPHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2HTTPHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2HTTPHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2HTTPHeader(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ImageExportStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ImageExportStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ImageExportStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ImageExportStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2Job();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2Job.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2Job(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ListExecutionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ListExecutionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ListExecutionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ListExecutionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ListJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ListJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ListJobsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ListRevisionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ListRevisionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ListRevisionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ListRevisionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ListServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ListServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ListServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ListServicesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ListTasksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ListTasksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ListTasksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ListTasksResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2Metadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2Metadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2Metadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2NFSVolumeSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2NFSVolumeSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2NFSVolumeSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2NFSVolumeSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2NetworkInterface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2NetworkInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2NetworkInterface.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2NetworkInterface(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2Overrides', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2Overrides();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2Overrides.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2Overrides(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2Probe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2Probe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2Probe.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2Probe(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ResourceRequirements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ResourceRequirements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ResourceRequirements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ResourceRequirements(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2Revision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2Revision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2Revision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2Revision(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2RevisionScaling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2RevisionScaling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2RevisionScaling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2RevisionScaling(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2RevisionScalingStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2RevisionScalingStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2RevisionScalingStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2RevisionScalingStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2RevisionTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2RevisionTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2RevisionTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2RevisionTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2RunJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2RunJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2RunJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2RunJobRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2SecretKeySelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2SecretKeySelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2SecretKeySelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2SecretKeySelector(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2SecretVolumeSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2SecretVolumeSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2SecretVolumeSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2SecretVolumeSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2Service();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2Service.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2Service(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2ServiceScaling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2ServiceScaling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2ServiceScaling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2ServiceScaling(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2TCPSocketAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2TCPSocketAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2TCPSocketAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2TCPSocketAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2Task', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2Task();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2Task.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2Task(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2TaskAttemptResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2TaskAttemptResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2TaskAttemptResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2TaskAttemptResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2TaskTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2TaskTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2TaskTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2TaskTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2TrafficTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2TrafficTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2TrafficTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2TrafficTarget(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2TrafficTargetStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2TrafficTargetStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2TrafficTargetStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2TrafficTargetStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2VersionToPath', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2VersionToPath();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2VersionToPath.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2VersionToPath(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2Volume', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2Volume();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2Volume.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2Volume(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2VolumeMount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2VolumeMount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2VolumeMount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2VolumeMount(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRunV2VpcAccess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRunV2VpcAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRunV2VpcAccess.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRunV2VpcAccess(od);
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

  unittest.group('obj-schema-GoogleLongrunningWaitOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningWaitOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningWaitOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningWaitOperationRequest(od);
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

  unittest.group('obj-schema-Proto2BridgeMessageSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProto2BridgeMessageSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Proto2BridgeMessageSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProto2BridgeMessageSet(od);
    });
  });

  unittest.group('obj-schema-UtilStatusProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUtilStatusProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UtilStatusProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUtilStatusProto(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--exportImage', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations;
      final arg_request = buildGoogleCloudRunV2ExportImageRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRunV2ExportImageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRunV2ExportImageRequest(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRunV2ExportImageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.exportImage(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRunV2ExportImageResponse(
          response as api.GoogleCloudRunV2ExportImageResponse);
    });

    unittest.test('method--exportImageMetadata', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudRunV2Metadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.exportImageMetadata(arg_name, $fields: arg_$fields);
      checkGoogleCloudRunV2Metadata(response as api.GoogleCloudRunV2Metadata);
    });

    unittest.test('method--exportMetadata', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudRunV2Metadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exportMetadata(arg_name, $fields: arg_$fields);
      checkGoogleCloudRunV2Metadata(response as api.GoogleCloudRunV2Metadata);
    });
  });

  unittest.group('resource-ProjectsLocationsJobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs;
      final arg_request = buildGoogleCloudRunV2Job();
      final arg_parent = 'foo';
      final arg_jobId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRunV2Job.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRunV2Job(obj);

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
          unittest.equals('v2/'),
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
          queryMap['jobId']!.first,
          unittest.equals(arg_jobId),
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
          jobId: arg_jobId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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
      final res = api.CloudRunApi(mock).projects.locations.jobs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudRunV2Job());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRunV2Job(response as api.GoogleCloudRunV2Job);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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
      final res = api.CloudRunApi(mock).projects.locations.jobs;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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
            convert.json.encode(buildGoogleCloudRunV2ListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleCloudRunV2ListJobsResponse(
          response as api.GoogleCloudRunV2ListJobsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs;
      final arg_request = buildGoogleCloudRunV2Job();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRunV2Job.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRunV2Job(obj);

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
          unittest.equals('v2/'),
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
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
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs;
      final arg_request = buildGoogleCloudRunV2RunJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRunV2RunJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRunV2RunJobRequest(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.run(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
          unittest.equals('v2/'),
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
      final res = api.CloudRunApi(mock).projects.locations.jobs;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
          unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsLocationsJobsExecutionsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs.executions;
      final arg_request = buildGoogleCloudRunV2CancelExecutionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRunV2CancelExecutionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRunV2CancelExecutionRequest(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs.executions;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

    unittest.test('method--exportStatus', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs.executions;
      final arg_name = 'foo';
      final arg_operationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRunV2ExportStatusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exportStatus(arg_name, arg_operationId,
          $fields: arg_$fields);
      checkGoogleCloudRunV2ExportStatusResponse(
          response as api.GoogleCloudRunV2ExportStatusResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs.executions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudRunV2Execution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRunV2Execution(response as api.GoogleCloudRunV2Execution);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.jobs.executions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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
            convert.json.encode(buildGoogleCloudRunV2ListExecutionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleCloudRunV2ListExecutionsResponse(
          response as api.GoogleCloudRunV2ListExecutionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsJobsExecutionsTasksResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRunApi(mock).projects.locations.jobs.executions.tasks;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudRunV2Task());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRunV2Task(response as api.GoogleCloudRunV2Task);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRunApi(mock).projects.locations.jobs.executions.tasks;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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
            convert.json.encode(buildGoogleCloudRunV2ListTasksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleCloudRunV2ListTasksResponse(
          response as api.GoogleCloudRunV2ListTasksResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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
          unittest.equals('v2/'),
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
          unittest.equals('v2/'),
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

    unittest.test('method--wait', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.operations;
      final arg_request = buildGoogleLongrunningWaitOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleLongrunningWaitOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleLongrunningWaitOperationRequest(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.wait(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_request = buildGoogleCloudRunV2Service();
      final arg_parent = 'foo';
      final arg_serviceId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRunV2Service.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRunV2Service(obj);

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
          unittest.equals('v2/'),
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
          unittest.equals('v2/'),
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudRunV2Service());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRunV2Service(response as api.GoogleCloudRunV2Service);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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
          unittest.equals('v2/'),
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
            convert.json.encode(buildGoogleCloudRunV2ListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleCloudRunV2ListServicesResponse(
          response as api.GoogleCloudRunV2ListServicesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services;
      final arg_request = buildGoogleCloudRunV2Service();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRunV2Service.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRunV2Service(obj);

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
          unittest.equals('v2/'),
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
          unittest.equals('v2/'),
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
          unittest.equals('v2/'),
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
          unittest.equals('v2/'),
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

    unittest.test('method--exportStatus', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services.revisions;
      final arg_name = 'foo';
      final arg_operationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRunV2ExportStatusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exportStatus(arg_name, arg_operationId,
          $fields: arg_$fields);
      checkGoogleCloudRunV2ExportStatusResponse(
          response as api.GoogleCloudRunV2ExportStatusResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRunApi(mock).projects.locations.services.revisions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudRunV2Revision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRunV2Revision(response as api.GoogleCloudRunV2Revision);
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
          unittest.equals('v2/'),
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
            convert.json.encode(buildGoogleCloudRunV2ListRevisionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleCloudRunV2ListRevisionsResponse(
          response as api.GoogleCloudRunV2ListRevisionsResponse);
    });
  });
}
