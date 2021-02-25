// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/genomics/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  var o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.List<core.String> buildUnnamed6752() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6752(core.List<core.String> o) {
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

core.int buildCounterComputeEngine = 0;
api.ComputeEngine buildComputeEngine() {
  var o = api.ComputeEngine();
  buildCounterComputeEngine++;
  if (buildCounterComputeEngine < 3) {
    o.diskNames = buildUnnamed6752();
    o.instanceName = 'foo';
    o.machineType = 'foo';
    o.zone = 'foo';
  }
  buildCounterComputeEngine--;
  return o;
}

void checkComputeEngine(api.ComputeEngine o) {
  buildCounterComputeEngine++;
  if (buildCounterComputeEngine < 3) {
    checkUnnamed6752(o.diskNames!);
    unittest.expect(
      o.instanceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterComputeEngine--;
}

core.int buildCounterContainerKilledEvent = 0;
api.ContainerKilledEvent buildContainerKilledEvent() {
  var o = api.ContainerKilledEvent();
  buildCounterContainerKilledEvent++;
  if (buildCounterContainerKilledEvent < 3) {
    o.actionId = 42;
  }
  buildCounterContainerKilledEvent--;
  return o;
}

void checkContainerKilledEvent(api.ContainerKilledEvent o) {
  buildCounterContainerKilledEvent++;
  if (buildCounterContainerKilledEvent < 3) {
    unittest.expect(
      o.actionId!,
      unittest.equals(42),
    );
  }
  buildCounterContainerKilledEvent--;
}

core.Map<core.String, core.int> buildUnnamed6753() {
  var o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed6753(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42),
  );
}

core.int buildCounterContainerStartedEvent = 0;
api.ContainerStartedEvent buildContainerStartedEvent() {
  var o = api.ContainerStartedEvent();
  buildCounterContainerStartedEvent++;
  if (buildCounterContainerStartedEvent < 3) {
    o.actionId = 42;
    o.ipAddress = 'foo';
    o.portMappings = buildUnnamed6753();
  }
  buildCounterContainerStartedEvent--;
  return o;
}

void checkContainerStartedEvent(api.ContainerStartedEvent o) {
  buildCounterContainerStartedEvent++;
  if (buildCounterContainerStartedEvent < 3) {
    unittest.expect(
      o.actionId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    checkUnnamed6753(o.portMappings!);
  }
  buildCounterContainerStartedEvent--;
}

core.int buildCounterContainerStoppedEvent = 0;
api.ContainerStoppedEvent buildContainerStoppedEvent() {
  var o = api.ContainerStoppedEvent();
  buildCounterContainerStoppedEvent++;
  if (buildCounterContainerStoppedEvent < 3) {
    o.actionId = 42;
    o.exitStatus = 42;
    o.stderr = 'foo';
  }
  buildCounterContainerStoppedEvent--;
  return o;
}

void checkContainerStoppedEvent(api.ContainerStoppedEvent o) {
  buildCounterContainerStoppedEvent++;
  if (buildCounterContainerStoppedEvent < 3) {
    unittest.expect(
      o.actionId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.exitStatus!,
      unittest.equals(42),
    );
    unittest.expect(
      o.stderr!,
      unittest.equals('foo'),
    );
  }
  buildCounterContainerStoppedEvent--;
}

core.List<core.String> buildUnnamed6754() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6754(core.List<core.String> o) {
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

core.int buildCounterDelayedEvent = 0;
api.DelayedEvent buildDelayedEvent() {
  var o = api.DelayedEvent();
  buildCounterDelayedEvent++;
  if (buildCounterDelayedEvent < 3) {
    o.cause = 'foo';
    o.metrics = buildUnnamed6754();
  }
  buildCounterDelayedEvent--;
  return o;
}

void checkDelayedEvent(api.DelayedEvent o) {
  buildCounterDelayedEvent++;
  if (buildCounterDelayedEvent < 3) {
    unittest.expect(
      o.cause!,
      unittest.equals('foo'),
    );
    checkUnnamed6754(o.metrics!);
  }
  buildCounterDelayedEvent--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.Map<core.String, core.Object> buildUnnamed6755() {
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

void checkUnnamed6755(core.Map<core.String, core.Object> o) {
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

core.int buildCounterEvent = 0;
api.Event buildEvent() {
  var o = api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.description = 'foo';
    o.details = buildUnnamed6755();
    o.timestamp = 'foo';
  }
  buildCounterEvent--;
  return o;
}

void checkEvent(api.Event o) {
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed6755(o.details!);
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterEvent--;
}

core.int buildCounterFailedEvent = 0;
api.FailedEvent buildFailedEvent() {
  var o = api.FailedEvent();
  buildCounterFailedEvent++;
  if (buildCounterFailedEvent < 3) {
    o.cause = 'foo';
    o.code = 'foo';
  }
  buildCounterFailedEvent--;
  return o;
}

void checkFailedEvent(api.FailedEvent o) {
  buildCounterFailedEvent++;
  if (buildCounterFailedEvent < 3) {
    unittest.expect(
      o.cause!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterFailedEvent--;
}

core.List<api.Operation> buildUnnamed6756() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed6756(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed6756();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6756(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed6757() {
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

void checkUnnamed6757(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6758() {
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

void checkUnnamed6758(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed6757();
    o.name = 'foo';
    o.response = buildUnnamed6758();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error! as api.Status);
    checkUnnamed6757(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6758(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationEvent = 0;
api.OperationEvent buildOperationEvent() {
  var o = api.OperationEvent();
  buildCounterOperationEvent++;
  if (buildCounterOperationEvent < 3) {
    o.description = 'foo';
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterOperationEvent--;
  return o;
}

void checkOperationEvent(api.OperationEvent o) {
  buildCounterOperationEvent++;
  if (buildCounterOperationEvent < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationEvent--;
}

core.List<api.OperationEvent> buildUnnamed6759() {
  var o = <api.OperationEvent>[];
  o.add(buildOperationEvent());
  o.add(buildOperationEvent());
  return o;
}

void checkUnnamed6759(core.List<api.OperationEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationEvent(o[0] as api.OperationEvent);
  checkOperationEvent(o[1] as api.OperationEvent);
}

core.Map<core.String, core.String> buildUnnamed6760() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6760(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed6761() {
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

void checkUnnamed6761(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed6762() {
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

void checkUnnamed6762(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  var o = api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.clientId = 'foo';
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.events = buildUnnamed6759();
    o.labels = buildUnnamed6760();
    o.projectId = 'foo';
    o.request = buildUnnamed6761();
    o.runtimeMetadata = buildUnnamed6762();
    o.startTime = 'foo';
  }
  buildCounterOperationMetadata--;
  return o;
}

void checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkUnnamed6759(o.events!);
    checkUnnamed6760(o.labels!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkUnnamed6761(o.request!);
    checkUnnamed6762(o.runtimeMetadata!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationMetadata--;
}

core.int buildCounterPullStartedEvent = 0;
api.PullStartedEvent buildPullStartedEvent() {
  var o = api.PullStartedEvent();
  buildCounterPullStartedEvent++;
  if (buildCounterPullStartedEvent < 3) {
    o.imageUri = 'foo';
  }
  buildCounterPullStartedEvent--;
  return o;
}

void checkPullStartedEvent(api.PullStartedEvent o) {
  buildCounterPullStartedEvent++;
  if (buildCounterPullStartedEvent < 3) {
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterPullStartedEvent--;
}

core.int buildCounterPullStoppedEvent = 0;
api.PullStoppedEvent buildPullStoppedEvent() {
  var o = api.PullStoppedEvent();
  buildCounterPullStoppedEvent++;
  if (buildCounterPullStoppedEvent < 3) {
    o.imageUri = 'foo';
  }
  buildCounterPullStoppedEvent--;
  return o;
}

void checkPullStoppedEvent(api.PullStoppedEvent o) {
  buildCounterPullStoppedEvent++;
  if (buildCounterPullStoppedEvent < 3) {
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterPullStoppedEvent--;
}

core.int buildCounterRunPipelineResponse = 0;
api.RunPipelineResponse buildRunPipelineResponse() {
  var o = api.RunPipelineResponse();
  buildCounterRunPipelineResponse++;
  if (buildCounterRunPipelineResponse < 3) {}
  buildCounterRunPipelineResponse--;
  return o;
}

void checkRunPipelineResponse(api.RunPipelineResponse o) {
  buildCounterRunPipelineResponse++;
  if (buildCounterRunPipelineResponse < 3) {}
  buildCounterRunPipelineResponse--;
}

core.int buildCounterRuntimeMetadata = 0;
api.RuntimeMetadata buildRuntimeMetadata() {
  var o = api.RuntimeMetadata();
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    o.computeEngine = buildComputeEngine();
  }
  buildCounterRuntimeMetadata--;
  return o;
}

void checkRuntimeMetadata(api.RuntimeMetadata o) {
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    checkComputeEngine(o.computeEngine! as api.ComputeEngine);
  }
  buildCounterRuntimeMetadata--;
}

core.Map<core.String, core.Object> buildUnnamed6763() {
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

void checkUnnamed6763(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed6764() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6763());
  o.add(buildUnnamed6763());
  return o;
}

void checkUnnamed6764(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6763(o[0]);
  checkUnnamed6763(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6764();
    o.message = 'foo';
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
    checkUnnamed6764(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterUnexpectedExitStatusEvent = 0;
api.UnexpectedExitStatusEvent buildUnexpectedExitStatusEvent() {
  var o = api.UnexpectedExitStatusEvent();
  buildCounterUnexpectedExitStatusEvent++;
  if (buildCounterUnexpectedExitStatusEvent < 3) {
    o.actionId = 42;
    o.exitStatus = 42;
  }
  buildCounterUnexpectedExitStatusEvent--;
  return o;
}

void checkUnexpectedExitStatusEvent(api.UnexpectedExitStatusEvent o) {
  buildCounterUnexpectedExitStatusEvent++;
  if (buildCounterUnexpectedExitStatusEvent < 3) {
    unittest.expect(
      o.actionId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.exitStatus!,
      unittest.equals(42),
    );
  }
  buildCounterUnexpectedExitStatusEvent--;
}

core.int buildCounterWorkerAssignedEvent = 0;
api.WorkerAssignedEvent buildWorkerAssignedEvent() {
  var o = api.WorkerAssignedEvent();
  buildCounterWorkerAssignedEvent++;
  if (buildCounterWorkerAssignedEvent < 3) {
    o.instance = 'foo';
    o.machineType = 'foo';
    o.zone = 'foo';
  }
  buildCounterWorkerAssignedEvent--;
  return o;
}

void checkWorkerAssignedEvent(api.WorkerAssignedEvent o) {
  buildCounterWorkerAssignedEvent++;
  if (buildCounterWorkerAssignedEvent < 3) {
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkerAssignedEvent--;
}

core.int buildCounterWorkerReleasedEvent = 0;
api.WorkerReleasedEvent buildWorkerReleasedEvent() {
  var o = api.WorkerReleasedEvent();
  buildCounterWorkerReleasedEvent++;
  if (buildCounterWorkerReleasedEvent < 3) {
    o.instance = 'foo';
    o.zone = 'foo';
  }
  buildCounterWorkerReleasedEvent--;
  return o;
}

void checkWorkerReleasedEvent(api.WorkerReleasedEvent o) {
  buildCounterWorkerReleasedEvent++;
  if (buildCounterWorkerReleasedEvent < 3) {
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkerReleasedEvent--;
}

void main() {
  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-ComputeEngine', () {
    unittest.test('to-json--from-json', () {
      var o = buildComputeEngine();
      var od = api.ComputeEngine.fromJson(o.toJson());
      checkComputeEngine(od as api.ComputeEngine);
    });
  });

  unittest.group('obj-schema-ContainerKilledEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildContainerKilledEvent();
      var od = api.ContainerKilledEvent.fromJson(o.toJson());
      checkContainerKilledEvent(od as api.ContainerKilledEvent);
    });
  });

  unittest.group('obj-schema-ContainerStartedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildContainerStartedEvent();
      var od = api.ContainerStartedEvent.fromJson(o.toJson());
      checkContainerStartedEvent(od as api.ContainerStartedEvent);
    });
  });

  unittest.group('obj-schema-ContainerStoppedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildContainerStoppedEvent();
      var od = api.ContainerStoppedEvent.fromJson(o.toJson());
      checkContainerStoppedEvent(od as api.ContainerStoppedEvent);
    });
  });

  unittest.group('obj-schema-DelayedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildDelayedEvent();
      var od = api.DelayedEvent.fromJson(o.toJson());
      checkDelayedEvent(od as api.DelayedEvent);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () {
      var o = buildEvent();
      var od = api.Event.fromJson(o.toJson());
      checkEvent(od as api.Event);
    });
  });

  unittest.group('obj-schema-FailedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildFailedEvent();
      var od = api.FailedEvent.fromJson(o.toJson());
      checkFailedEvent(od as api.FailedEvent);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationEvent();
      var od = api.OperationEvent.fromJson(o.toJson());
      checkOperationEvent(od as api.OperationEvent);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationMetadata();
      var od = api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od as api.OperationMetadata);
    });
  });

  unittest.group('obj-schema-PullStartedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildPullStartedEvent();
      var od = api.PullStartedEvent.fromJson(o.toJson());
      checkPullStartedEvent(od as api.PullStartedEvent);
    });
  });

  unittest.group('obj-schema-PullStoppedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildPullStoppedEvent();
      var od = api.PullStoppedEvent.fromJson(o.toJson());
      checkPullStoppedEvent(od as api.PullStoppedEvent);
    });
  });

  unittest.group('obj-schema-RunPipelineResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRunPipelineResponse();
      var od = api.RunPipelineResponse.fromJson(o.toJson());
      checkRunPipelineResponse(od as api.RunPipelineResponse);
    });
  });

  unittest.group('obj-schema-RuntimeMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildRuntimeMetadata();
      var od = api.RuntimeMetadata.fromJson(o.toJson());
      checkRuntimeMetadata(od as api.RuntimeMetadata);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-UnexpectedExitStatusEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnexpectedExitStatusEvent();
      var od = api.UnexpectedExitStatusEvent.fromJson(o.toJson());
      checkUnexpectedExitStatusEvent(od as api.UnexpectedExitStatusEvent);
    });
  });

  unittest.group('obj-schema-WorkerAssignedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerAssignedEvent();
      var od = api.WorkerAssignedEvent.fromJson(o.toJson());
      checkWorkerAssignedEvent(od as api.WorkerAssignedEvent);
    });
  });

  unittest.group('obj-schema-WorkerReleasedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerReleasedEvent();
      var od = api.WorkerReleasedEvent.fromJson(o.toJson());
      checkWorkerReleasedEvent(od as api.WorkerReleasedEvent);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.GenomicsApi(mock).operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GenomicsApi(mock).operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GenomicsApi(mock).operations;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response as api.ListOperationsResponse);
      })));
    });
  });
}
