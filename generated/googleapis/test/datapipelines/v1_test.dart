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

import 'package:googleapis/datapipelines/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.double> buildUnnamed0() => {
      'x': 42.0,
      'y': 42.0,
    };

void checkUnnamed0(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42.0),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42.0),
  );
}

core.int buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails = 0;
api.GoogleCloudDatapipelinesV1DataflowJobDetails
    buildGoogleCloudDatapipelinesV1DataflowJobDetails() {
  final o = api.GoogleCloudDatapipelinesV1DataflowJobDetails();
  buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails++;
  if (buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails < 3) {
    o.currentWorkers = 42;
    o.resourceInfo = buildUnnamed0();
    o.sdkVersion = buildGoogleCloudDatapipelinesV1SdkVersion();
  }
  buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails--;
  return o;
}

void checkGoogleCloudDatapipelinesV1DataflowJobDetails(
    api.GoogleCloudDatapipelinesV1DataflowJobDetails o) {
  buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails++;
  if (buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails < 3) {
    unittest.expect(
      o.currentWorkers!,
      unittest.equals(42),
    );
    checkUnnamed0(o.resourceInfo!);
    checkGoogleCloudDatapipelinesV1SdkVersion(o.sdkVersion!);
  }
  buildCounterGoogleCloudDatapipelinesV1DataflowJobDetails--;
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

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment =
    0;
api.GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment
    buildGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment() {
  final o = api.GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment();
  buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment++;
  if (buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment <
      3) {
    o.additionalExperiments = buildUnnamed1();
    o.additionalUserLabels = buildUnnamed2();
    o.enableStreamingEngine = true;
    o.flexrsGoal = 'foo';
    o.ipConfiguration = 'foo';
    o.kmsKeyName = 'foo';
    o.machineType = 'foo';
    o.maxWorkers = 42;
    o.network = 'foo';
    o.numWorkers = 42;
    o.serviceAccountEmail = 'foo';
    o.subnetwork = 'foo';
    o.tempLocation = 'foo';
    o.workerRegion = 'foo';
    o.workerZone = 'foo';
    o.zone = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment--;
  return o;
}

void checkGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment(
    api.GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment o) {
  buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment++;
  if (buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment <
      3) {
    checkUnnamed1(o.additionalExperiments!);
    checkUnnamed2(o.additionalUserLabels!);
    unittest.expect(o.enableStreamingEngine!, unittest.isTrue);
    unittest.expect(
      o.flexrsGoal!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipConfiguration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tempLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment--;
}

core.int buildCounterGoogleCloudDatapipelinesV1Job = 0;
api.GoogleCloudDatapipelinesV1Job buildGoogleCloudDatapipelinesV1Job() {
  final o = api.GoogleCloudDatapipelinesV1Job();
  buildCounterGoogleCloudDatapipelinesV1Job++;
  if (buildCounterGoogleCloudDatapipelinesV1Job < 3) {
    o.createTime = 'foo';
    o.dataflowJobDetails = buildGoogleCloudDatapipelinesV1DataflowJobDetails();
    o.endTime = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudDatapipelinesV1Job--;
  return o;
}

void checkGoogleCloudDatapipelinesV1Job(api.GoogleCloudDatapipelinesV1Job o) {
  buildCounterGoogleCloudDatapipelinesV1Job++;
  if (buildCounterGoogleCloudDatapipelinesV1Job < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatapipelinesV1DataflowJobDetails(o.dataflowJobDetails!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.status!);
  }
  buildCounterGoogleCloudDatapipelinesV1Job--;
}

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed4() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed5() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter = 0;
api.GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter
    buildGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter() {
  final o = api.GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter();
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter < 3) {
    o.containerSpecGcsPath = 'foo';
    o.environment =
        buildGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment();
    o.jobName = 'foo';
    o.launchOptions = buildUnnamed3();
    o.parameters = buildUnnamed4();
    o.transformNameMappings = buildUnnamed5();
    o.update = true;
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter--;
  return o;
}

void checkGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter(
    api.GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter o) {
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter < 3) {
    unittest.expect(
      o.containerSpecGcsPath!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment(
        o.environment!);
    unittest.expect(
      o.jobName!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.launchOptions!);
    checkUnnamed4(o.parameters!);
    checkUnnamed5(o.transformNameMappings!);
    unittest.expect(o.update!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter--;
}

core.int buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest = 0;
api.GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest
    buildGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest() {
  final o = api.GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest();
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest < 3) {
    o.launchParameter =
        buildGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter();
    o.location = 'foo';
    o.projectId = 'foo';
    o.validateOnly = true;
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest--;
  return o;
}

void checkGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest(
    api.GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest o) {
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest < 3) {
    checkGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter(
        o.launchParameter!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest--;
}

core.Map<core.String, core.String> buildUnnamed6() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed7() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters = 0;
api.GoogleCloudDatapipelinesV1LaunchTemplateParameters
    buildGoogleCloudDatapipelinesV1LaunchTemplateParameters() {
  final o = api.GoogleCloudDatapipelinesV1LaunchTemplateParameters();
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters < 3) {
    o.environment = buildGoogleCloudDatapipelinesV1RuntimeEnvironment();
    o.jobName = 'foo';
    o.parameters = buildUnnamed6();
    o.transformNameMapping = buildUnnamed7();
    o.update = true;
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters--;
  return o;
}

void checkGoogleCloudDatapipelinesV1LaunchTemplateParameters(
    api.GoogleCloudDatapipelinesV1LaunchTemplateParameters o) {
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters < 3) {
    checkGoogleCloudDatapipelinesV1RuntimeEnvironment(o.environment!);
    unittest.expect(
      o.jobName!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.parameters!);
    checkUnnamed7(o.transformNameMapping!);
    unittest.expect(o.update!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateParameters--;
}

core.int buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest = 0;
api.GoogleCloudDatapipelinesV1LaunchTemplateRequest
    buildGoogleCloudDatapipelinesV1LaunchTemplateRequest() {
  final o = api.GoogleCloudDatapipelinesV1LaunchTemplateRequest();
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest < 3) {
    o.gcsPath = 'foo';
    o.launchParameters =
        buildGoogleCloudDatapipelinesV1LaunchTemplateParameters();
    o.location = 'foo';
    o.projectId = 'foo';
    o.validateOnly = true;
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest--;
  return o;
}

void checkGoogleCloudDatapipelinesV1LaunchTemplateRequest(
    api.GoogleCloudDatapipelinesV1LaunchTemplateRequest o) {
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest < 3) {
    unittest.expect(
      o.gcsPath!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatapipelinesV1LaunchTemplateParameters(
        o.launchParameters!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatapipelinesV1LaunchTemplateRequest--;
}

core.List<api.GoogleCloudDatapipelinesV1Pipeline> buildUnnamed8() => [
      buildGoogleCloudDatapipelinesV1Pipeline(),
      buildGoogleCloudDatapipelinesV1Pipeline(),
    ];

void checkUnnamed8(core.List<api.GoogleCloudDatapipelinesV1Pipeline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatapipelinesV1Pipeline(o[0]);
  checkGoogleCloudDatapipelinesV1Pipeline(o[1]);
}

core.int buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse = 0;
api.GoogleCloudDatapipelinesV1ListPipelinesResponse
    buildGoogleCloudDatapipelinesV1ListPipelinesResponse() {
  final o = api.GoogleCloudDatapipelinesV1ListPipelinesResponse();
  buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse++;
  if (buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse < 3) {
    o.nextPageToken = 'foo';
    o.pipelines = buildUnnamed8();
  }
  buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse--;
  return o;
}

void checkGoogleCloudDatapipelinesV1ListPipelinesResponse(
    api.GoogleCloudDatapipelinesV1ListPipelinesResponse o) {
  buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse++;
  if (buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.pipelines!);
  }
  buildCounterGoogleCloudDatapipelinesV1ListPipelinesResponse--;
}

core.int buildCounterGoogleCloudDatapipelinesV1Pipeline = 0;
api.GoogleCloudDatapipelinesV1Pipeline
    buildGoogleCloudDatapipelinesV1Pipeline() {
  final o = api.GoogleCloudDatapipelinesV1Pipeline();
  buildCounterGoogleCloudDatapipelinesV1Pipeline++;
  if (buildCounterGoogleCloudDatapipelinesV1Pipeline < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.jobCount = 42;
    o.lastUpdateTime = 'foo';
    o.name = 'foo';
    o.scheduleInfo = buildGoogleCloudDatapipelinesV1ScheduleSpec();
    o.schedulerServiceAccountEmail = 'foo';
    o.state = 'foo';
    o.type = 'foo';
    o.workload = buildGoogleCloudDatapipelinesV1Workload();
  }
  buildCounterGoogleCloudDatapipelinesV1Pipeline--;
  return o;
}

void checkGoogleCloudDatapipelinesV1Pipeline(
    api.GoogleCloudDatapipelinesV1Pipeline o) {
  buildCounterGoogleCloudDatapipelinesV1Pipeline++;
  if (buildCounterGoogleCloudDatapipelinesV1Pipeline < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatapipelinesV1ScheduleSpec(o.scheduleInfo!);
    unittest.expect(
      o.schedulerServiceAccountEmail!,
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
    checkGoogleCloudDatapipelinesV1Workload(o.workload!);
  }
  buildCounterGoogleCloudDatapipelinesV1Pipeline--;
}

core.int buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest = 0;
api.GoogleCloudDatapipelinesV1RunPipelineRequest
    buildGoogleCloudDatapipelinesV1RunPipelineRequest() {
  final o = api.GoogleCloudDatapipelinesV1RunPipelineRequest();
  buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest < 3) {}
  buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest--;
  return o;
}

void checkGoogleCloudDatapipelinesV1RunPipelineRequest(
    api.GoogleCloudDatapipelinesV1RunPipelineRequest o) {
  buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest < 3) {}
  buildCounterGoogleCloudDatapipelinesV1RunPipelineRequest--;
}

core.int buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse = 0;
api.GoogleCloudDatapipelinesV1RunPipelineResponse
    buildGoogleCloudDatapipelinesV1RunPipelineResponse() {
  final o = api.GoogleCloudDatapipelinesV1RunPipelineResponse();
  buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse++;
  if (buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse < 3) {
    o.job = buildGoogleCloudDatapipelinesV1Job();
  }
  buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse--;
  return o;
}

void checkGoogleCloudDatapipelinesV1RunPipelineResponse(
    api.GoogleCloudDatapipelinesV1RunPipelineResponse o) {
  buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse++;
  if (buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse < 3) {
    checkGoogleCloudDatapipelinesV1Job(o.job!);
  }
  buildCounterGoogleCloudDatapipelinesV1RunPipelineResponse--;
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed10() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed10(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment = 0;
api.GoogleCloudDatapipelinesV1RuntimeEnvironment
    buildGoogleCloudDatapipelinesV1RuntimeEnvironment() {
  final o = api.GoogleCloudDatapipelinesV1RuntimeEnvironment();
  buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment++;
  if (buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment < 3) {
    o.additionalExperiments = buildUnnamed9();
    o.additionalUserLabels = buildUnnamed10();
    o.bypassTempDirValidation = true;
    o.enableStreamingEngine = true;
    o.ipConfiguration = 'foo';
    o.kmsKeyName = 'foo';
    o.machineType = 'foo';
    o.maxWorkers = 42;
    o.network = 'foo';
    o.numWorkers = 42;
    o.serviceAccountEmail = 'foo';
    o.subnetwork = 'foo';
    o.tempLocation = 'foo';
    o.workerRegion = 'foo';
    o.workerZone = 'foo';
    o.zone = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment--;
  return o;
}

void checkGoogleCloudDatapipelinesV1RuntimeEnvironment(
    api.GoogleCloudDatapipelinesV1RuntimeEnvironment o) {
  buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment++;
  if (buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment < 3) {
    checkUnnamed9(o.additionalExperiments!);
    checkUnnamed10(o.additionalUserLabels!);
    unittest.expect(o.bypassTempDirValidation!, unittest.isTrue);
    unittest.expect(o.enableStreamingEngine!, unittest.isTrue);
    unittest.expect(
      o.ipConfiguration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tempLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1RuntimeEnvironment--;
}

core.int buildCounterGoogleCloudDatapipelinesV1ScheduleSpec = 0;
api.GoogleCloudDatapipelinesV1ScheduleSpec
    buildGoogleCloudDatapipelinesV1ScheduleSpec() {
  final o = api.GoogleCloudDatapipelinesV1ScheduleSpec();
  buildCounterGoogleCloudDatapipelinesV1ScheduleSpec++;
  if (buildCounterGoogleCloudDatapipelinesV1ScheduleSpec < 3) {
    o.nextJobTime = 'foo';
    o.schedule = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1ScheduleSpec--;
  return o;
}

void checkGoogleCloudDatapipelinesV1ScheduleSpec(
    api.GoogleCloudDatapipelinesV1ScheduleSpec o) {
  buildCounterGoogleCloudDatapipelinesV1ScheduleSpec++;
  if (buildCounterGoogleCloudDatapipelinesV1ScheduleSpec < 3) {
    unittest.expect(
      o.nextJobTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schedule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1ScheduleSpec--;
}

core.int buildCounterGoogleCloudDatapipelinesV1SdkVersion = 0;
api.GoogleCloudDatapipelinesV1SdkVersion
    buildGoogleCloudDatapipelinesV1SdkVersion() {
  final o = api.GoogleCloudDatapipelinesV1SdkVersion();
  buildCounterGoogleCloudDatapipelinesV1SdkVersion++;
  if (buildCounterGoogleCloudDatapipelinesV1SdkVersion < 3) {
    o.sdkSupportStatus = 'foo';
    o.version = 'foo';
    o.versionDisplayName = 'foo';
  }
  buildCounterGoogleCloudDatapipelinesV1SdkVersion--;
  return o;
}

void checkGoogleCloudDatapipelinesV1SdkVersion(
    api.GoogleCloudDatapipelinesV1SdkVersion o) {
  buildCounterGoogleCloudDatapipelinesV1SdkVersion++;
  if (buildCounterGoogleCloudDatapipelinesV1SdkVersion < 3) {
    unittest.expect(
      o.sdkSupportStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionDisplayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatapipelinesV1SdkVersion--;
}

core.int buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest = 0;
api.GoogleCloudDatapipelinesV1StopPipelineRequest
    buildGoogleCloudDatapipelinesV1StopPipelineRequest() {
  final o = api.GoogleCloudDatapipelinesV1StopPipelineRequest();
  buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest < 3) {}
  buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest--;
  return o;
}

void checkGoogleCloudDatapipelinesV1StopPipelineRequest(
    api.GoogleCloudDatapipelinesV1StopPipelineRequest o) {
  buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest++;
  if (buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest < 3) {}
  buildCounterGoogleCloudDatapipelinesV1StopPipelineRequest--;
}

core.int buildCounterGoogleCloudDatapipelinesV1Workload = 0;
api.GoogleCloudDatapipelinesV1Workload
    buildGoogleCloudDatapipelinesV1Workload() {
  final o = api.GoogleCloudDatapipelinesV1Workload();
  buildCounterGoogleCloudDatapipelinesV1Workload++;
  if (buildCounterGoogleCloudDatapipelinesV1Workload < 3) {
    o.dataflowFlexTemplateRequest =
        buildGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest();
    o.dataflowLaunchTemplateRequest =
        buildGoogleCloudDatapipelinesV1LaunchTemplateRequest();
  }
  buildCounterGoogleCloudDatapipelinesV1Workload--;
  return o;
}

void checkGoogleCloudDatapipelinesV1Workload(
    api.GoogleCloudDatapipelinesV1Workload o) {
  buildCounterGoogleCloudDatapipelinesV1Workload++;
  if (buildCounterGoogleCloudDatapipelinesV1Workload < 3) {
    checkGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest(
        o.dataflowFlexTemplateRequest!);
    checkGoogleCloudDatapipelinesV1LaunchTemplateRequest(
        o.dataflowLaunchTemplateRequest!);
  }
  buildCounterGoogleCloudDatapipelinesV1Workload--;
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

core.Map<core.String, core.Object?> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed12() => [
      buildUnnamed11(),
      buildUnnamed11(),
    ];

void checkUnnamed12(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed11(o[0]);
  checkUnnamed11(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed12();
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
    checkUnnamed12(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudDatapipelinesV1DataflowJobDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1DataflowJobDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1DataflowJobDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1DataflowJobDetails(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1Job();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1Job.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1Job(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1LaunchFlexTemplateParameter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1LaunchFlexTemplateRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatapipelinesV1LaunchTemplateParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1LaunchTemplateParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatapipelinesV1LaunchTemplateParameters.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1LaunchTemplateParameters(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1LaunchTemplateRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1LaunchTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1LaunchTemplateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1LaunchTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1ListPipelinesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1ListPipelinesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1ListPipelinesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1ListPipelinesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1Pipeline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1Pipeline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1Pipeline.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1Pipeline(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1RunPipelineRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1RunPipelineRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1RunPipelineRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1RunPipelineRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1RunPipelineResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1RunPipelineResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1RunPipelineResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1RunPipelineResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1RuntimeEnvironment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1RuntimeEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1RuntimeEnvironment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1RuntimeEnvironment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1ScheduleSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1ScheduleSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1ScheduleSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1ScheduleSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1SdkVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1SdkVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1SdkVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1SdkVersion(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1StopPipelineRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1StopPipelineRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1StopPipelineRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1StopPipelineRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatapipelinesV1Workload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatapipelinesV1Workload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatapipelinesV1Workload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatapipelinesV1Workload(od);
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--listPipelines', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations;
      final arg_parent = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudDatapipelinesV1ListPipelinesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listPipelines(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1ListPipelinesResponse(
          response as api.GoogleCloudDatapipelinesV1ListPipelinesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsPipelinesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines;
      final arg_request = buildGoogleCloudDatapipelinesV1Pipeline();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatapipelinesV1Pipeline.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatapipelinesV1Pipeline(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudDatapipelinesV1Pipeline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1Pipeline(
          response as api.GoogleCloudDatapipelinesV1Pipeline);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines;
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
        final resp =
            convert.json.encode(buildGoogleCloudDatapipelinesV1Pipeline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1Pipeline(
          response as api.GoogleCloudDatapipelinesV1Pipeline);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines;
      final arg_request = buildGoogleCloudDatapipelinesV1Pipeline();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatapipelinesV1Pipeline.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatapipelinesV1Pipeline(obj);

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDatapipelinesV1Pipeline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1Pipeline(
          response as api.GoogleCloudDatapipelinesV1Pipeline);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines;
      final arg_request = buildGoogleCloudDatapipelinesV1RunPipelineRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatapipelinesV1RunPipelineRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatapipelinesV1RunPipelineRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudDatapipelinesV1RunPipelineResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.run(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1RunPipelineResponse(
          response as api.GoogleCloudDatapipelinesV1RunPipelineResponse);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.DatapipelinesApi(mock).projects.locations.pipelines;
      final arg_request = buildGoogleCloudDatapipelinesV1StopPipelineRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatapipelinesV1StopPipelineRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatapipelinesV1StopPipelineRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudDatapipelinesV1Pipeline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.stop(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatapipelinesV1Pipeline(
          response as api.GoogleCloudDatapipelinesV1Pipeline);
    });
  });
}
