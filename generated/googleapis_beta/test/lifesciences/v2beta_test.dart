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

import 'package:googleapis_beta/lifesciences/v2beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccelerator = 0;
api.Accelerator buildAccelerator() {
  var o = api.Accelerator();
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

core.List<core.String> buildUnnamed8321() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8321(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8322() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed8322(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8323() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed8323(core.Map<core.String, core.String> o) {
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

core.List<api.Mount> buildUnnamed8324() {
  var o = <api.Mount>[];
  o.add(buildMount());
  o.add(buildMount());
  return o;
}

void checkUnnamed8324(core.List<api.Mount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMount(o[0] as api.Mount);
  checkMount(o[1] as api.Mount);
}

core.Map<core.String, core.int> buildUnnamed8325() {
  var o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed8325(core.Map<core.String, core.int> o) {
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
  var o = api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.alwaysRun = true;
    o.blockExternalNetwork = true;
    o.commands = buildUnnamed8321();
    o.containerName = 'foo';
    o.credentials = buildSecret();
    o.disableImagePrefetch = true;
    o.disableStandardErrorCapture = true;
    o.enableFuse = true;
    o.encryptedEnvironment = buildSecret();
    o.entrypoint = 'foo';
    o.environment = buildUnnamed8322();
    o.ignoreExitStatus = true;
    o.imageUri = 'foo';
    o.labels = buildUnnamed8323();
    o.mounts = buildUnnamed8324();
    o.pidNamespace = 'foo';
    o.portMappings = buildUnnamed8325();
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
    checkUnnamed8321(o.commands!);
    unittest.expect(
      o.containerName!,
      unittest.equals('foo'),
    );
    checkSecret(o.credentials! as api.Secret);
    unittest.expect(o.disableImagePrefetch!, unittest.isTrue);
    unittest.expect(o.disableStandardErrorCapture!, unittest.isTrue);
    unittest.expect(o.enableFuse!, unittest.isTrue);
    checkSecret(o.encryptedEnvironment! as api.Secret);
    unittest.expect(
      o.entrypoint!,
      unittest.equals('foo'),
    );
    checkUnnamed8322(o.environment!);
    unittest.expect(o.ignoreExitStatus!, unittest.isTrue);
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
    checkUnnamed8323(o.labels!);
    checkUnnamed8324(o.mounts!);
    unittest.expect(
      o.pidNamespace!,
      unittest.equals('foo'),
    );
    checkUnnamed8325(o.portMappings!);
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

core.Map<core.String, core.int> buildUnnamed8326() {
  var o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed8326(core.Map<core.String, core.int> o) {
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
    o.portMappings = buildUnnamed8326();
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
    checkUnnamed8326(o.portMappings!);
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

core.List<core.String> buildUnnamed8327() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8327(core.List<core.String> o) {
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
    o.metrics = buildUnnamed8327();
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
    checkUnnamed8327(o.metrics!);
  }
  buildCounterDelayedEvent--;
}

core.int buildCounterDisk = 0;
api.Disk buildDisk() {
  var o = api.Disk();
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

core.int buildCounterEvent = 0;
api.Event buildEvent() {
  var o = api.Event();
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
    checkContainerKilledEvent(o.containerKilled! as api.ContainerKilledEvent);
    checkContainerStartedEvent(
        o.containerStarted! as api.ContainerStartedEvent);
    checkContainerStoppedEvent(
        o.containerStopped! as api.ContainerStoppedEvent);
    checkDelayedEvent(o.delayed! as api.DelayedEvent);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkFailedEvent(o.failed! as api.FailedEvent);
    checkPullStartedEvent(o.pullStarted! as api.PullStartedEvent);
    checkPullStoppedEvent(o.pullStopped! as api.PullStoppedEvent);
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    checkUnexpectedExitStatusEvent(
        o.unexpectedExitStatus! as api.UnexpectedExitStatusEvent);
    checkWorkerAssignedEvent(o.workerAssigned! as api.WorkerAssignedEvent);
    checkWorkerReleasedEvent(o.workerReleased! as api.WorkerReleasedEvent);
  }
  buildCounterEvent--;
}

core.int buildCounterExistingDisk = 0;
api.ExistingDisk buildExistingDisk() {
  var o = api.ExistingDisk();
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

core.List<api.Location> buildUnnamed8328() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed8328(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed8328();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed8328(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed8329() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed8329(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed8329();
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
    checkUnnamed8329(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed8330() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed8330(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed8331() {
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

void checkUnnamed8331(core.Map<core.String, core.Object> o) {
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
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed8330();
    o.locationId = 'foo';
    o.metadata = buildUnnamed8331();
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
    checkUnnamed8330(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed8331(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.List<api.Event> buildUnnamed8332() {
  var o = <api.Event>[];
  o.add(buildEvent());
  o.add(buildEvent());
  return o;
}

void checkUnnamed8332(core.List<api.Event> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEvent(o[0] as api.Event);
  checkEvent(o[1] as api.Event);
}

core.Map<core.String, core.String> buildUnnamed8333() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed8333(core.Map<core.String, core.String> o) {
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
  var o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.events = buildUnnamed8332();
    o.labels = buildUnnamed8333();
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
    checkUnnamed8332(o.events!);
    checkUnnamed8333(o.labels!);
    checkPipeline(o.pipeline! as api.Pipeline);
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
  var o = api.Mount();
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
  var o = api.NFSMount();
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
  var o = api.Network();
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

core.Map<core.String, core.Object> buildUnnamed8334() {
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

void checkUnnamed8334(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed8335() {
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

void checkUnnamed8335(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed8334();
    o.name = 'foo';
    o.response = buildUnnamed8335();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error! as api.Status);
    checkUnnamed8334(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8335(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPersistentDisk = 0;
api.PersistentDisk buildPersistentDisk() {
  var o = api.PersistentDisk();
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

core.List<api.Action> buildUnnamed8336() {
  var o = <api.Action>[];
  o.add(buildAction());
  o.add(buildAction());
  return o;
}

void checkUnnamed8336(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0] as api.Action);
  checkAction(o[1] as api.Action);
}

core.Map<core.String, core.String> buildUnnamed8337() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed8337(core.Map<core.String, core.String> o) {
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
  var o = api.Pipeline();
  buildCounterPipeline++;
  if (buildCounterPipeline < 3) {
    o.actions = buildUnnamed8336();
    o.encryptedEnvironment = buildSecret();
    o.environment = buildUnnamed8337();
    o.resources = buildResources();
    o.timeout = 'foo';
  }
  buildCounterPipeline--;
  return o;
}

void checkPipeline(api.Pipeline o) {
  buildCounterPipeline++;
  if (buildCounterPipeline < 3) {
    checkUnnamed8336(o.actions!);
    checkSecret(o.encryptedEnvironment! as api.Secret);
    checkUnnamed8337(o.environment!);
    checkResources(o.resources! as api.Resources);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterPipeline--;
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

core.List<core.String> buildUnnamed8338() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8338(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8339() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8339(core.List<core.String> o) {
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
  var o = api.Resources();
  buildCounterResources++;
  if (buildCounterResources < 3) {
    o.regions = buildUnnamed8338();
    o.virtualMachine = buildVirtualMachine();
    o.zones = buildUnnamed8339();
  }
  buildCounterResources--;
  return o;
}

void checkResources(api.Resources o) {
  buildCounterResources++;
  if (buildCounterResources < 3) {
    checkUnnamed8338(o.regions!);
    checkVirtualMachine(o.virtualMachine! as api.VirtualMachine);
    checkUnnamed8339(o.zones!);
  }
  buildCounterResources--;
}

core.Map<core.String, core.String> buildUnnamed8340() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed8340(core.Map<core.String, core.String> o) {
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
  var o = api.RunPipelineRequest();
  buildCounterRunPipelineRequest++;
  if (buildCounterRunPipelineRequest < 3) {
    o.labels = buildUnnamed8340();
    o.pipeline = buildPipeline();
    o.pubSubTopic = 'foo';
  }
  buildCounterRunPipelineRequest--;
  return o;
}

void checkRunPipelineRequest(api.RunPipelineRequest o) {
  buildCounterRunPipelineRequest++;
  if (buildCounterRunPipelineRequest < 3) {
    checkUnnamed8340(o.labels!);
    checkPipeline(o.pipeline! as api.Pipeline);
    unittest.expect(
      o.pubSubTopic!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunPipelineRequest--;
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

core.int buildCounterSecret = 0;
api.Secret buildSecret() {
  var o = api.Secret();
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

core.List<core.String> buildUnnamed8341() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8341(core.List<core.String> o) {
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
  var o = api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.email = 'foo';
    o.scopes = buildUnnamed8341();
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
    checkUnnamed8341(o.scopes!);
  }
  buildCounterServiceAccount--;
}

core.Map<core.String, core.Object> buildUnnamed8342() {
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

void checkUnnamed8342(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed8343() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed8342());
  o.add(buildUnnamed8342());
  return o;
}

void checkUnnamed8343(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8342(o[0]);
  checkUnnamed8342(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8343();
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
    checkUnnamed8343(o.details!);
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

core.List<api.Accelerator> buildUnnamed8344() {
  var o = <api.Accelerator>[];
  o.add(buildAccelerator());
  o.add(buildAccelerator());
  return o;
}

void checkUnnamed8344(core.List<api.Accelerator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccelerator(o[0] as api.Accelerator);
  checkAccelerator(o[1] as api.Accelerator);
}

core.List<api.Disk> buildUnnamed8345() {
  var o = <api.Disk>[];
  o.add(buildDisk());
  o.add(buildDisk());
  return o;
}

void checkUnnamed8345(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0] as api.Disk);
  checkDisk(o[1] as api.Disk);
}

core.List<core.String> buildUnnamed8346() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8346(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8347() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed8347(core.Map<core.String, core.String> o) {
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

core.List<api.Volume> buildUnnamed8348() {
  var o = <api.Volume>[];
  o.add(buildVolume());
  o.add(buildVolume());
  return o;
}

void checkUnnamed8348(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0] as api.Volume);
  checkVolume(o[1] as api.Volume);
}

core.int buildCounterVirtualMachine = 0;
api.VirtualMachine buildVirtualMachine() {
  var o = api.VirtualMachine();
  buildCounterVirtualMachine++;
  if (buildCounterVirtualMachine < 3) {
    o.accelerators = buildUnnamed8344();
    o.bootDiskSizeGb = 42;
    o.bootImage = 'foo';
    o.cpuPlatform = 'foo';
    o.disks = buildUnnamed8345();
    o.dockerCacheImages = buildUnnamed8346();
    o.enableStackdriverMonitoring = true;
    o.labels = buildUnnamed8347();
    o.machineType = 'foo';
    o.network = buildNetwork();
    o.nvidiaDriverVersion = 'foo';
    o.preemptible = true;
    o.serviceAccount = buildServiceAccount();
    o.volumes = buildUnnamed8348();
  }
  buildCounterVirtualMachine--;
  return o;
}

void checkVirtualMachine(api.VirtualMachine o) {
  buildCounterVirtualMachine++;
  if (buildCounterVirtualMachine < 3) {
    checkUnnamed8344(o.accelerators!);
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
    checkUnnamed8345(o.disks!);
    checkUnnamed8346(o.dockerCacheImages!);
    unittest.expect(o.enableStackdriverMonitoring!, unittest.isTrue);
    checkUnnamed8347(o.labels!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    checkNetwork(o.network! as api.Network);
    unittest.expect(
      o.nvidiaDriverVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.preemptible!, unittest.isTrue);
    checkServiceAccount(o.serviceAccount! as api.ServiceAccount);
    checkUnnamed8348(o.volumes!);
  }
  buildCounterVirtualMachine--;
}

core.int buildCounterVolume = 0;
api.Volume buildVolume() {
  var o = api.Volume();
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
    checkExistingDisk(o.existingDisk! as api.ExistingDisk);
    checkNFSMount(o.nfsMount! as api.NFSMount);
    checkPersistentDisk(o.persistentDisk! as api.PersistentDisk);
    unittest.expect(
      o.volume!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolume--;
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
  unittest.group('obj-schema-Accelerator', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAccelerator();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Accelerator.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccelerator(od as api.Accelerator);
    });
  });

  unittest.group('obj-schema-Action', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAction();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Action.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAction(od as api.Action);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCancelOperationRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-ContainerKilledEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildContainerKilledEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ContainerKilledEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContainerKilledEvent(od as api.ContainerKilledEvent);
    });
  });

  unittest.group('obj-schema-ContainerStartedEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildContainerStartedEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ContainerStartedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContainerStartedEvent(od as api.ContainerStartedEvent);
    });
  });

  unittest.group('obj-schema-ContainerStoppedEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildContainerStoppedEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ContainerStoppedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContainerStoppedEvent(od as api.ContainerStoppedEvent);
    });
  });

  unittest.group('obj-schema-DelayedEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDelayedEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DelayedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDelayedEvent(od as api.DelayedEvent);
    });
  });

  unittest.group('obj-schema-Disk', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDisk();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Disk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDisk(od as api.Disk);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Event.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEvent(od as api.Event);
    });
  });

  unittest.group('obj-schema-ExistingDisk', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExistingDisk();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ExistingDisk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExistingDisk(od as api.ExistingDisk);
    });
  });

  unittest.group('obj-schema-FailedEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFailedEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FailedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailedEvent(od as api.FailedEvent);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListLocationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListOperationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Metadata.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetadata(od as api.Metadata);
    });
  });

  unittest.group('obj-schema-Mount', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMount();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Mount.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMount(od as api.Mount);
    });
  });

  unittest.group('obj-schema-NFSMount', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNFSMount();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.NFSMount.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNFSMount(od as api.NFSMount);
    });
  });

  unittest.group('obj-schema-Network', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNetwork();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Network.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNetwork(od as api.Network);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-PersistentDisk', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPersistentDisk();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PersistentDisk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersistentDisk(od as api.PersistentDisk);
    });
  });

  unittest.group('obj-schema-Pipeline', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPipeline();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Pipeline.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPipeline(od as api.Pipeline);
    });
  });

  unittest.group('obj-schema-PullStartedEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPullStartedEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PullStartedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPullStartedEvent(od as api.PullStartedEvent);
    });
  });

  unittest.group('obj-schema-PullStoppedEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPullStoppedEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PullStoppedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPullStoppedEvent(od as api.PullStoppedEvent);
    });
  });

  unittest.group('obj-schema-Resources', () {
    unittest.test('to-json--from-json', () async {
      var o = buildResources();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Resources.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResources(od as api.Resources);
    });
  });

  unittest.group('obj-schema-RunPipelineRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRunPipelineRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RunPipelineRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunPipelineRequest(od as api.RunPipelineRequest);
    });
  });

  unittest.group('obj-schema-RunPipelineResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRunPipelineResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RunPipelineResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunPipelineResponse(od as api.RunPipelineResponse);
    });
  });

  unittest.group('obj-schema-Secret', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSecret();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Secret.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSecret(od as api.Secret);
    });
  });

  unittest.group('obj-schema-ServiceAccount', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServiceAccount();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServiceAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceAccount(od as api.ServiceAccount);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-UnexpectedExitStatusEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUnexpectedExitStatusEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UnexpectedExitStatusEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnexpectedExitStatusEvent(od as api.UnexpectedExitStatusEvent);
    });
  });

  unittest.group('obj-schema-VirtualMachine', () {
    unittest.test('to-json--from-json', () async {
      var o = buildVirtualMachine();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.VirtualMachine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVirtualMachine(od as api.VirtualMachine);
    });
  });

  unittest.group('obj-schema-Volume', () {
    unittest.test('to-json--from-json', () async {
      var o = buildVolume();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Volume.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVolume(od as api.Volume);
    });
  });

  unittest.group('obj-schema-WorkerAssignedEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWorkerAssignedEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.WorkerAssignedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerAssignedEvent(od as api.WorkerAssignedEvent);
    });
  });

  unittest.group('obj-schema-WorkerReleasedEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWorkerReleasedEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.WorkerReleasedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerReleasedEvent(od as api.WorkerReleasedEvent);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CloudLifeSciencesApi(mock).projects.locations;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v2beta/"),
        );
        pathOffset += 7;
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
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CloudLifeSciencesApi(mock).projects.locations;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v2beta/"),
        );
        pathOffset += 7;
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
        var resp = convert.json.encode(buildListLocationsResponse());
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
      var mock = HttpServerMock();
      var res = api.CloudLifeSciencesApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v2beta/"),
        );
        pathOffset += 7;
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
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CloudLifeSciencesApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v2beta/"),
        );
        pathOffset += 7;
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
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CloudLifeSciencesApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v2beta/"),
        );
        pathOffset += 7;
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
      var mock = HttpServerMock();
      var res = api.CloudLifeSciencesApi(mock).projects.locations.pipelines;
      var arg_request = buildRunPipelineRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RunPipelineRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunPipelineRequest(obj as api.RunPipelineRequest);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v2beta/"),
        );
        pathOffset += 7;
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
      final response =
          await res.run(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
