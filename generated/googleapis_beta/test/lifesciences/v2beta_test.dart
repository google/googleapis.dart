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

import 'package:googleapis_beta/lifesciences/v2beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccelerator = 0;
api.Accelerator buildAccelerator() {
  final o = api.Accelerator();
  buildCounterAccelerator++;
  if (buildCounterAccelerator < 3) {
    o.count = 'foo';
    o.type = 'foo';
  }
  buildCounterAccelerator--;
  return o;
}

void checkAccelerator(api.Accelerator o) {
  buildCounterAccelerator++;
  if (buildCounterAccelerator < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccelerator--;
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

core.Map<core.String, core.String> buildUnnamed1() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1(core.Map<core.String, core.String> o) {
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

core.List<api.Mount> buildUnnamed3() => [
      buildMount(),
      buildMount(),
    ];

void checkUnnamed3(core.List<api.Mount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMount(o[0]);
  checkMount(o[1]);
}

core.Map<core.String, core.int> buildUnnamed4() => {
      'x': 42,
      'y': 42,
    };

void checkUnnamed4(core.Map<core.String, core.int> o) {
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

core.int buildCounterAction = 0;
api.Action buildAction() {
  final o = api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.alwaysRun = true;
    o.blockExternalNetwork = true;
    o.commands = buildUnnamed0();
    o.containerName = 'foo';
    o.credentials = buildSecret();
    o.disableImagePrefetch = true;
    o.disableStandardErrorCapture = true;
    o.enableFuse = true;
    o.encryptedEnvironment = buildSecret();
    o.entrypoint = 'foo';
    o.environment = buildUnnamed1();
    o.ignoreExitStatus = true;
    o.imageUri = 'foo';
    o.labels = buildUnnamed2();
    o.mounts = buildUnnamed3();
    o.pidNamespace = 'foo';
    o.portMappings = buildUnnamed4();
    o.publishExposedPorts = true;
    o.runInBackground = true;
    o.timeout = 'foo';
  }
  buildCounterAction--;
  return o;
}

void checkAction(api.Action o) {
  buildCounterAction++;
  if (buildCounterAction < 3) {
    unittest.expect(o.alwaysRun!, unittest.isTrue);
    unittest.expect(o.blockExternalNetwork!, unittest.isTrue);
    checkUnnamed0(o.commands!);
    unittest.expect(
      o.containerName!,
      unittest.equals('foo'),
    );
    checkSecret(o.credentials!);
    unittest.expect(o.disableImagePrefetch!, unittest.isTrue);
    unittest.expect(o.disableStandardErrorCapture!, unittest.isTrue);
    unittest.expect(o.enableFuse!, unittest.isTrue);
    checkSecret(o.encryptedEnvironment!);
    unittest.expect(
      o.entrypoint!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.environment!);
    unittest.expect(o.ignoreExitStatus!, unittest.isTrue);
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.labels!);
    checkUnnamed3(o.mounts!);
    unittest.expect(
      o.pidNamespace!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.portMappings!);
    unittest.expect(o.publishExposedPorts!, unittest.isTrue);
    unittest.expect(o.runInBackground!, unittest.isTrue);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterAction--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
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

core.int buildCounterContainerKilledEvent = 0;
api.ContainerKilledEvent buildContainerKilledEvent() {
  final o = api.ContainerKilledEvent();
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

core.Map<core.String, core.int> buildUnnamed5() => {
      'x': 42,
      'y': 42,
    };

void checkUnnamed5(core.Map<core.String, core.int> o) {
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
  final o = api.ContainerStartedEvent();
  buildCounterContainerStartedEvent++;
  if (buildCounterContainerStartedEvent < 3) {
    o.actionId = 42;
    o.ipAddress = 'foo';
    o.portMappings = buildUnnamed5();
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
    checkUnnamed5(o.portMappings!);
  }
  buildCounterContainerStartedEvent--;
}

core.int buildCounterContainerStoppedEvent = 0;
api.ContainerStoppedEvent buildContainerStoppedEvent() {
  final o = api.ContainerStoppedEvent();
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

core.int buildCounterDelayedEvent = 0;
api.DelayedEvent buildDelayedEvent() {
  final o = api.DelayedEvent();
  buildCounterDelayedEvent++;
  if (buildCounterDelayedEvent < 3) {
    o.cause = 'foo';
    o.metrics = buildUnnamed6();
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
    checkUnnamed6(o.metrics!);
  }
  buildCounterDelayedEvent--;
}

core.int buildCounterDisk = 0;
api.Disk buildDisk() {
  final o = api.Disk();
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    o.name = 'foo';
    o.sizeGb = 42;
    o.sourceImage = 'foo';
    o.type = 'foo';
  }
  buildCounterDisk--;
  return o;
}

void checkDisk(api.Disk o) {
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sourceImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisk--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
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

core.int buildCounterEvent = 0;
api.Event buildEvent() {
  final o = api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.containerKilled = buildContainerKilledEvent();
    o.containerStarted = buildContainerStartedEvent();
    o.containerStopped = buildContainerStoppedEvent();
    o.delayed = buildDelayedEvent();
    o.description = 'foo';
    o.failed = buildFailedEvent();
    o.pullStarted = buildPullStartedEvent();
    o.pullStopped = buildPullStoppedEvent();
    o.timestamp = 'foo';
    o.unexpectedExitStatus = buildUnexpectedExitStatusEvent();
    o.workerAssigned = buildWorkerAssignedEvent();
    o.workerReleased = buildWorkerReleasedEvent();
  }
  buildCounterEvent--;
  return o;
}

void checkEvent(api.Event o) {
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    checkContainerKilledEvent(o.containerKilled!);
    checkContainerStartedEvent(o.containerStarted!);
    checkContainerStoppedEvent(o.containerStopped!);
    checkDelayedEvent(o.delayed!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkFailedEvent(o.failed!);
    checkPullStartedEvent(o.pullStarted!);
    checkPullStoppedEvent(o.pullStopped!);
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    checkUnexpectedExitStatusEvent(o.unexpectedExitStatus!);
    checkWorkerAssignedEvent(o.workerAssigned!);
    checkWorkerReleasedEvent(o.workerReleased!);
  }
  buildCounterEvent--;
}

core.int buildCounterExistingDisk = 0;
api.ExistingDisk buildExistingDisk() {
  final o = api.ExistingDisk();
  buildCounterExistingDisk++;
  if (buildCounterExistingDisk < 3) {
    o.disk = 'foo';
  }
  buildCounterExistingDisk--;
  return o;
}

void checkExistingDisk(api.ExistingDisk o) {
  buildCounterExistingDisk++;
  if (buildCounterExistingDisk < 3) {
    unittest.expect(
      o.disk!,
      unittest.equals('foo'),
    );
  }
  buildCounterExistingDisk--;
}

core.int buildCounterFailedEvent = 0;
api.FailedEvent buildFailedEvent() {
  final o = api.FailedEvent();
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

core.List<api.Location> buildUnnamed7() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed7(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed7(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed8() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed8(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed8();
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
    checkUnnamed8(o.operations!);
  }
  buildCounterListOperationsResponse--;
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

core.Map<core.String, core.Object> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed9();
    o.locationId = 'foo';
    o.metadata = buildUnnamed10();
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
    checkUnnamed9(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.List<api.Event> buildUnnamed11() => [
      buildEvent(),
      buildEvent(),
    ];

void checkUnnamed11(core.List<api.Event> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEvent(o[0]);
  checkEvent(o[1]);
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

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.events = buildUnnamed11();
    o.labels = buildUnnamed12();
    o.pipeline = buildPipeline();
    o.pubSubTopic = 'foo';
    o.startTime = 'foo';
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.events!);
    checkUnnamed12(o.labels!);
    checkPipeline(o.pipeline!);
    unittest.expect(
      o.pubSubTopic!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetadata--;
}

core.int buildCounterMount = 0;
api.Mount buildMount() {
  final o = api.Mount();
  buildCounterMount++;
  if (buildCounterMount < 3) {
    o.disk = 'foo';
    o.path = 'foo';
    o.readOnly = true;
  }
  buildCounterMount--;
  return o;
}

void checkMount(api.Mount o) {
  buildCounterMount++;
  if (buildCounterMount < 3) {
    unittest.expect(
      o.disk!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(o.readOnly!, unittest.isTrue);
  }
  buildCounterMount--;
}

core.int buildCounterNFSMount = 0;
api.NFSMount buildNFSMount() {
  final o = api.NFSMount();
  buildCounterNFSMount++;
  if (buildCounterNFSMount < 3) {
    o.target = 'foo';
  }
  buildCounterNFSMount--;
  return o;
}

void checkNFSMount(api.NFSMount o) {
  buildCounterNFSMount++;
  if (buildCounterNFSMount < 3) {
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
  }
  buildCounterNFSMount--;
}

core.int buildCounterNetwork = 0;
api.Network buildNetwork() {
  final o = api.Network();
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    o.network = 'foo';
    o.subnetwork = 'foo';
    o.usePrivateAddress = true;
  }
  buildCounterNetwork--;
  return o;
}

void checkNetwork(api.Network o) {
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(o.usePrivateAddress!, unittest.isTrue);
  }
  buildCounterNetwork--;
}

core.Map<core.String, core.Object> buildUnnamed13() => {
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

void checkUnnamed13(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object> o) {
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
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed13();
    o.name = 'foo';
    o.response = buildUnnamed14();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed13(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPersistentDisk = 0;
api.PersistentDisk buildPersistentDisk() {
  final o = api.PersistentDisk();
  buildCounterPersistentDisk++;
  if (buildCounterPersistentDisk < 3) {
    o.sizeGb = 42;
    o.sourceImage = 'foo';
    o.type = 'foo';
  }
  buildCounterPersistentDisk--;
  return o;
}

void checkPersistentDisk(api.PersistentDisk o) {
  buildCounterPersistentDisk++;
  if (buildCounterPersistentDisk < 3) {
    unittest.expect(
      o.sizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sourceImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterPersistentDisk--;
}

core.List<api.Action> buildUnnamed15() => [
      buildAction(),
      buildAction(),
    ];

void checkUnnamed15(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
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

core.int buildCounterPipeline = 0;
api.Pipeline buildPipeline() {
  final o = api.Pipeline();
  buildCounterPipeline++;
  if (buildCounterPipeline < 3) {
    o.actions = buildUnnamed15();
    o.encryptedEnvironment = buildSecret();
    o.environment = buildUnnamed16();
    o.resources = buildResources();
    o.timeout = 'foo';
  }
  buildCounterPipeline--;
  return o;
}

void checkPipeline(api.Pipeline o) {
  buildCounterPipeline++;
  if (buildCounterPipeline < 3) {
    checkUnnamed15(o.actions!);
    checkSecret(o.encryptedEnvironment!);
    checkUnnamed16(o.environment!);
    checkResources(o.resources!);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterPipeline--;
}

core.int buildCounterPullStartedEvent = 0;
api.PullStartedEvent buildPullStartedEvent() {
  final o = api.PullStartedEvent();
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
  final o = api.PullStoppedEvent();
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

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int buildCounterResources = 0;
api.Resources buildResources() {
  final o = api.Resources();
  buildCounterResources++;
  if (buildCounterResources < 3) {
    o.regions = buildUnnamed17();
    o.virtualMachine = buildVirtualMachine();
    o.zones = buildUnnamed18();
  }
  buildCounterResources--;
  return o;
}

void checkResources(api.Resources o) {
  buildCounterResources++;
  if (buildCounterResources < 3) {
    checkUnnamed17(o.regions!);
    checkVirtualMachine(o.virtualMachine!);
    checkUnnamed18(o.zones!);
  }
  buildCounterResources--;
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

core.int buildCounterRunPipelineRequest = 0;
api.RunPipelineRequest buildRunPipelineRequest() {
  final o = api.RunPipelineRequest();
  buildCounterRunPipelineRequest++;
  if (buildCounterRunPipelineRequest < 3) {
    o.labels = buildUnnamed19();
    o.pipeline = buildPipeline();
    o.pubSubTopic = 'foo';
  }
  buildCounterRunPipelineRequest--;
  return o;
}

void checkRunPipelineRequest(api.RunPipelineRequest o) {
  buildCounterRunPipelineRequest++;
  if (buildCounterRunPipelineRequest < 3) {
    checkUnnamed19(o.labels!);
    checkPipeline(o.pipeline!);
    unittest.expect(
      o.pubSubTopic!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunPipelineRequest--;
}

core.int buildCounterRunPipelineResponse = 0;
api.RunPipelineResponse buildRunPipelineResponse() {
  final o = api.RunPipelineResponse();
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

core.int buildCounterSecret = 0;
api.Secret buildSecret() {
  final o = api.Secret();
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    o.cipherText = 'foo';
    o.keyName = 'foo';
  }
  buildCounterSecret--;
  return o;
}

void checkSecret(api.Secret o) {
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    unittest.expect(
      o.cipherText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecret--;
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  final o = api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.email = 'foo';
    o.scopes = buildUnnamed20();
  }
  buildCounterServiceAccount--;
  return o;
}

void checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.scopes!);
  }
  buildCounterServiceAccount--;
}

core.Map<core.String, core.Object> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed22() => [
      buildUnnamed21(),
      buildUnnamed21(),
    ];

void checkUnnamed22(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed21(o[0]);
  checkUnnamed21(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed22();
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
    checkUnnamed22(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterUnexpectedExitStatusEvent = 0;
api.UnexpectedExitStatusEvent buildUnexpectedExitStatusEvent() {
  final o = api.UnexpectedExitStatusEvent();
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

core.List<api.Accelerator> buildUnnamed23() => [
      buildAccelerator(),
      buildAccelerator(),
    ];

void checkUnnamed23(core.List<api.Accelerator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccelerator(o[0]);
  checkAccelerator(o[1]);
}

core.List<api.Disk> buildUnnamed24() => [
      buildDisk(),
      buildDisk(),
    ];

void checkUnnamed24(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0]);
  checkDisk(o[1]);
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

core.List<api.Volume> buildUnnamed27() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed27(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterVirtualMachine = 0;
api.VirtualMachine buildVirtualMachine() {
  final o = api.VirtualMachine();
  buildCounterVirtualMachine++;
  if (buildCounterVirtualMachine < 3) {
    o.accelerators = buildUnnamed23();
    o.bootDiskSizeGb = 42;
    o.bootImage = 'foo';
    o.cpuPlatform = 'foo';
    o.disks = buildUnnamed24();
    o.dockerCacheImages = buildUnnamed25();
    o.enableStackdriverMonitoring = true;
    o.labels = buildUnnamed26();
    o.machineType = 'foo';
    o.network = buildNetwork();
    o.nvidiaDriverVersion = 'foo';
    o.preemptible = true;
    o.reservation = 'foo';
    o.serviceAccount = buildServiceAccount();
    o.volumes = buildUnnamed27();
  }
  buildCounterVirtualMachine--;
  return o;
}

void checkVirtualMachine(api.VirtualMachine o) {
  buildCounterVirtualMachine++;
  if (buildCounterVirtualMachine < 3) {
    checkUnnamed23(o.accelerators!);
    unittest.expect(
      o.bootDiskSizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.bootImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuPlatform!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.disks!);
    checkUnnamed25(o.dockerCacheImages!);
    unittest.expect(o.enableStackdriverMonitoring!, unittest.isTrue);
    checkUnnamed26(o.labels!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    checkNetwork(o.network!);
    unittest.expect(
      o.nvidiaDriverVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.preemptible!, unittest.isTrue);
    unittest.expect(
      o.reservation!,
      unittest.equals('foo'),
    );
    checkServiceAccount(o.serviceAccount!);
    checkUnnamed27(o.volumes!);
  }
  buildCounterVirtualMachine--;
}

core.int buildCounterVolume = 0;
api.Volume buildVolume() {
  final o = api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.existingDisk = buildExistingDisk();
    o.nfsMount = buildNFSMount();
    o.persistentDisk = buildPersistentDisk();
    o.volume = 'foo';
  }
  buildCounterVolume--;
  return o;
}

void checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    checkExistingDisk(o.existingDisk!);
    checkNFSMount(o.nfsMount!);
    checkPersistentDisk(o.persistentDisk!);
    unittest.expect(
      o.volume!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolume--;
}

core.int buildCounterWorkerAssignedEvent = 0;
api.WorkerAssignedEvent buildWorkerAssignedEvent() {
  final o = api.WorkerAssignedEvent();
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
  final o = api.WorkerReleasedEvent();
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
  unittest.group('obj-schema-Accelerator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccelerator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Accelerator.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccelerator(od);
    });
  });

  unittest.group('obj-schema-Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Action.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAction(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-ContainerKilledEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerKilledEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerKilledEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContainerKilledEvent(od);
    });
  });

  unittest.group('obj-schema-ContainerStartedEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerStartedEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerStartedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContainerStartedEvent(od);
    });
  });

  unittest.group('obj-schema-ContainerStoppedEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerStoppedEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerStoppedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContainerStoppedEvent(od);
    });
  });

  unittest.group('obj-schema-DelayedEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDelayedEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DelayedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDelayedEvent(od);
    });
  });

  unittest.group('obj-schema-Disk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Disk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDisk(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Event.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEvent(od);
    });
  });

  unittest.group('obj-schema-ExistingDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExistingDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExistingDisk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExistingDisk(od);
    });
  });

  unittest.group('obj-schema-FailedEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailedEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailedEvent(od);
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

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
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

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metadata.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-Mount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Mount.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMount(od);
    });
  });

  unittest.group('obj-schema-NFSMount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNFSMount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NFSMount.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNFSMount(od);
    });
  });

  unittest.group('obj-schema-Network', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Network.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNetwork(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-PersistentDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersistentDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersistentDisk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersistentDisk(od);
    });
  });

  unittest.group('obj-schema-Pipeline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPipeline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Pipeline.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPipeline(od);
    });
  });

  unittest.group('obj-schema-PullStartedEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullStartedEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullStartedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPullStartedEvent(od);
    });
  });

  unittest.group('obj-schema-PullStoppedEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullStoppedEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullStoppedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPullStoppedEvent(od);
    });
  });

  unittest.group('obj-schema-Resources', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Resources.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResources(od);
    });
  });

  unittest.group('obj-schema-RunPipelineRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunPipelineRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunPipelineRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunPipelineRequest(od);
    });
  });

  unittest.group('obj-schema-RunPipelineResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunPipelineResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunPipelineResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunPipelineResponse(od);
    });
  });

  unittest.group('obj-schema-Secret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Secret.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSecret(od);
    });
  });

  unittest.group('obj-schema-ServiceAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceAccount(od);
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

  unittest.group('obj-schema-UnexpectedExitStatusEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnexpectedExitStatusEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnexpectedExitStatusEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnexpectedExitStatusEvent(od);
    });
  });

  unittest.group('obj-schema-VirtualMachine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualMachine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VirtualMachine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVirtualMachine(od);
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

  unittest.group('obj-schema-WorkerAssignedEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerAssignedEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerAssignedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerAssignedEvent(od);
    });
  });

  unittest.group('obj-schema-WorkerReleasedEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerReleasedEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerReleasedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerReleasedEvent(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudLifeSciencesApi(mock).projects.locations;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudLifeSciencesApi(mock).projects.locations;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudLifeSciencesApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudLifeSciencesApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudLifeSciencesApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsPipelinesResource', () {
    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.CloudLifeSciencesApi(mock).projects.locations.pipelines;
      final arg_request = buildRunPipelineRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunPipelineRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunPipelineRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.run(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
