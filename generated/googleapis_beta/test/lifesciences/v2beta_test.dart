// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis_beta.lifesciences.v2beta.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/lifesciences/v2beta.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
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
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAccelerator--;
}

core.List<core.String> buildUnnamed6850() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6850(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6851() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6851(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6852() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6852(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.Mount> buildUnnamed6853() {
  var o = <api.Mount>[];
  o.add(buildMount());
  o.add(buildMount());
  return o;
}

void checkUnnamed6853(core.List<api.Mount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMount(o[0]);
  checkMount(o[1]);
}

core.Map<core.String, core.int> buildUnnamed6854() {
  var o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed6854(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals(42));
  unittest.expect(o['y'], unittest.equals(42));
}

core.int buildCounterAction = 0;
api.Action buildAction() {
  var o = api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.alwaysRun = true;
    o.commands = buildUnnamed6850();
    o.containerName = 'foo';
    o.credentials = buildSecret();
    o.disableImagePrefetch = true;
    o.disableStandardErrorCapture = true;
    o.enableFuse = true;
    o.entrypoint = 'foo';
    o.environment = buildUnnamed6851();
    o.ignoreExitStatus = true;
    o.imageUri = 'foo';
    o.labels = buildUnnamed6852();
    o.mounts = buildUnnamed6853();
    o.pidNamespace = 'foo';
    o.portMappings = buildUnnamed6854();
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
    unittest.expect(o.alwaysRun, unittest.isTrue);
    checkUnnamed6850(o.commands);
    unittest.expect(o.containerName, unittest.equals('foo'));
    checkSecret(o.credentials);
    unittest.expect(o.disableImagePrefetch, unittest.isTrue);
    unittest.expect(o.disableStandardErrorCapture, unittest.isTrue);
    unittest.expect(o.enableFuse, unittest.isTrue);
    unittest.expect(o.entrypoint, unittest.equals('foo'));
    checkUnnamed6851(o.environment);
    unittest.expect(o.ignoreExitStatus, unittest.isTrue);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    checkUnnamed6852(o.labels);
    checkUnnamed6853(o.mounts);
    unittest.expect(o.pidNamespace, unittest.equals('foo'));
    checkUnnamed6854(o.portMappings);
    unittest.expect(o.publishExposedPorts, unittest.isTrue);
    unittest.expect(o.runInBackground, unittest.isTrue);
    unittest.expect(o.timeout, unittest.equals('foo'));
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
    unittest.expect(o.actionId, unittest.equals(42));
  }
  buildCounterContainerKilledEvent--;
}

core.Map<core.String, core.int> buildUnnamed6855() {
  var o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed6855(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals(42));
  unittest.expect(o['y'], unittest.equals(42));
}

core.int buildCounterContainerStartedEvent = 0;
api.ContainerStartedEvent buildContainerStartedEvent() {
  var o = api.ContainerStartedEvent();
  buildCounterContainerStartedEvent++;
  if (buildCounterContainerStartedEvent < 3) {
    o.actionId = 42;
    o.ipAddress = 'foo';
    o.portMappings = buildUnnamed6855();
  }
  buildCounterContainerStartedEvent--;
  return o;
}

void checkContainerStartedEvent(api.ContainerStartedEvent o) {
  buildCounterContainerStartedEvent++;
  if (buildCounterContainerStartedEvent < 3) {
    unittest.expect(o.actionId, unittest.equals(42));
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    checkUnnamed6855(o.portMappings);
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
    unittest.expect(o.actionId, unittest.equals(42));
    unittest.expect(o.exitStatus, unittest.equals(42));
    unittest.expect(o.stderr, unittest.equals('foo'));
  }
  buildCounterContainerStoppedEvent--;
}

core.List<core.String> buildUnnamed6856() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6856(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDelayedEvent = 0;
api.DelayedEvent buildDelayedEvent() {
  var o = api.DelayedEvent();
  buildCounterDelayedEvent++;
  if (buildCounterDelayedEvent < 3) {
    o.cause = 'foo';
    o.metrics = buildUnnamed6856();
  }
  buildCounterDelayedEvent--;
  return o;
}

void checkDelayedEvent(api.DelayedEvent o) {
  buildCounterDelayedEvent++;
  if (buildCounterDelayedEvent < 3) {
    unittest.expect(o.cause, unittest.equals('foo'));
    checkUnnamed6856(o.metrics);
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sizeGb, unittest.equals(42));
    unittest.expect(o.sourceImage, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
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
    checkContainerKilledEvent(o.containerKilled);
    checkContainerStartedEvent(o.containerStarted);
    checkContainerStoppedEvent(o.containerStopped);
    checkDelayedEvent(o.delayed);
    unittest.expect(o.description, unittest.equals('foo'));
    checkFailedEvent(o.failed);
    checkPullStartedEvent(o.pullStarted);
    checkPullStoppedEvent(o.pullStopped);
    unittest.expect(o.timestamp, unittest.equals('foo'));
    checkUnexpectedExitStatusEvent(o.unexpectedExitStatus);
    checkWorkerAssignedEvent(o.workerAssigned);
    checkWorkerReleasedEvent(o.workerReleased);
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
    unittest.expect(o.cause, unittest.equals('foo'));
    unittest.expect(o.code, unittest.equals('foo'));
  }
  buildCounterFailedEvent--;
}

core.List<api.Location> buildUnnamed6857() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed6857(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed6857();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed6857(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed6858() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed6858(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed6858();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6858(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed6859() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6859(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed6860() {
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

void checkUnnamed6860(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed6859();
    o.locationId = 'foo';
    o.metadata = buildUnnamed6860();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed6859(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed6860(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<api.Event> buildUnnamed6861() {
  var o = <api.Event>[];
  o.add(buildEvent());
  o.add(buildEvent());
  return o;
}

void checkUnnamed6861(core.List<api.Event> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEvent(o[0]);
  checkEvent(o[1]);
}

core.Map<core.String, core.String> buildUnnamed6862() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6862(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  var o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.events = buildUnnamed6861();
    o.labels = buildUnnamed6862();
    o.pipeline = buildPipeline();
    o.startTime = 'foo';
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed6861(o.events);
    checkUnnamed6862(o.labels);
    checkPipeline(o.pipeline);
    unittest.expect(o.startTime, unittest.equals('foo'));
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
    unittest.expect(o.disk, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.readOnly, unittest.isTrue);
  }
  buildCounterMount--;
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
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    unittest.expect(o.usePrivateAddress, unittest.isTrue);
  }
  buildCounterNetwork--;
}

core.Map<core.String, core.Object> buildUnnamed6863() {
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

void checkUnnamed6863(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed6864() {
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

void checkUnnamed6864(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed6863();
    o.name = 'foo';
    o.response = buildUnnamed6864();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed6863(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6864(o.response);
  }
  buildCounterOperation--;
}

core.List<api.Action> buildUnnamed6865() {
  var o = <api.Action>[];
  o.add(buildAction());
  o.add(buildAction());
  return o;
}

void checkUnnamed6865(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
}

core.Map<core.String, core.String> buildUnnamed6866() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6866(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterPipeline = 0;
api.Pipeline buildPipeline() {
  var o = api.Pipeline();
  buildCounterPipeline++;
  if (buildCounterPipeline < 3) {
    o.actions = buildUnnamed6865();
    o.environment = buildUnnamed6866();
    o.resources = buildResources();
    o.timeout = 'foo';
  }
  buildCounterPipeline--;
  return o;
}

void checkPipeline(api.Pipeline o) {
  buildCounterPipeline++;
  if (buildCounterPipeline < 3) {
    checkUnnamed6865(o.actions);
    checkUnnamed6866(o.environment);
    checkResources(o.resources);
    unittest.expect(o.timeout, unittest.equals('foo'));
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
    unittest.expect(o.imageUri, unittest.equals('foo'));
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
    unittest.expect(o.imageUri, unittest.equals('foo'));
  }
  buildCounterPullStoppedEvent--;
}

core.List<core.String> buildUnnamed6867() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6867(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6868() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6868(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResources = 0;
api.Resources buildResources() {
  var o = api.Resources();
  buildCounterResources++;
  if (buildCounterResources < 3) {
    o.regions = buildUnnamed6867();
    o.virtualMachine = buildVirtualMachine();
    o.zones = buildUnnamed6868();
  }
  buildCounterResources--;
  return o;
}

void checkResources(api.Resources o) {
  buildCounterResources++;
  if (buildCounterResources < 3) {
    checkUnnamed6867(o.regions);
    checkVirtualMachine(o.virtualMachine);
    checkUnnamed6868(o.zones);
  }
  buildCounterResources--;
}

core.Map<core.String, core.String> buildUnnamed6869() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6869(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterRunPipelineRequest = 0;
api.RunPipelineRequest buildRunPipelineRequest() {
  var o = api.RunPipelineRequest();
  buildCounterRunPipelineRequest++;
  if (buildCounterRunPipelineRequest < 3) {
    o.labels = buildUnnamed6869();
    o.pipeline = buildPipeline();
  }
  buildCounterRunPipelineRequest--;
  return o;
}

void checkRunPipelineRequest(api.RunPipelineRequest o) {
  buildCounterRunPipelineRequest++;
  if (buildCounterRunPipelineRequest < 3) {
    checkUnnamed6869(o.labels);
    checkPipeline(o.pipeline);
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
    unittest.expect(o.cipherText, unittest.equals('foo'));
    unittest.expect(o.keyName, unittest.equals('foo'));
  }
  buildCounterSecret--;
}

core.List<core.String> buildUnnamed6870() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6870(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  var o = api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.email = 'foo';
    o.scopes = buildUnnamed6870();
  }
  buildCounterServiceAccount--;
  return o;
}

void checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    checkUnnamed6870(o.scopes);
  }
  buildCounterServiceAccount--;
}

core.Map<core.String, core.Object> buildUnnamed6871() {
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

void checkUnnamed6871(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed6872() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6871());
  o.add(buildUnnamed6871());
  return o;
}

void checkUnnamed6872(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6871(o[0]);
  checkUnnamed6871(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6872();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6872(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
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
    unittest.expect(o.actionId, unittest.equals(42));
    unittest.expect(o.exitStatus, unittest.equals(42));
  }
  buildCounterUnexpectedExitStatusEvent--;
}

core.List<api.Accelerator> buildUnnamed6873() {
  var o = <api.Accelerator>[];
  o.add(buildAccelerator());
  o.add(buildAccelerator());
  return o;
}

void checkUnnamed6873(core.List<api.Accelerator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccelerator(o[0]);
  checkAccelerator(o[1]);
}

core.List<api.Disk> buildUnnamed6874() {
  var o = <api.Disk>[];
  o.add(buildDisk());
  o.add(buildDisk());
  return o;
}

void checkUnnamed6874(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0]);
  checkDisk(o[1]);
}

core.List<core.String> buildUnnamed6875() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6875(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6876() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6876(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterVirtualMachine = 0;
api.VirtualMachine buildVirtualMachine() {
  var o = api.VirtualMachine();
  buildCounterVirtualMachine++;
  if (buildCounterVirtualMachine < 3) {
    o.accelerators = buildUnnamed6873();
    o.bootDiskSizeGb = 42;
    o.bootImage = 'foo';
    o.cpuPlatform = 'foo';
    o.disks = buildUnnamed6874();
    o.dockerCacheImages = buildUnnamed6875();
    o.enableStackdriverMonitoring = true;
    o.labels = buildUnnamed6876();
    o.machineType = 'foo';
    o.network = buildNetwork();
    o.nvidiaDriverVersion = 'foo';
    o.preemptible = true;
    o.serviceAccount = buildServiceAccount();
  }
  buildCounterVirtualMachine--;
  return o;
}

void checkVirtualMachine(api.VirtualMachine o) {
  buildCounterVirtualMachine++;
  if (buildCounterVirtualMachine < 3) {
    checkUnnamed6873(o.accelerators);
    unittest.expect(o.bootDiskSizeGb, unittest.equals(42));
    unittest.expect(o.bootImage, unittest.equals('foo'));
    unittest.expect(o.cpuPlatform, unittest.equals('foo'));
    checkUnnamed6874(o.disks);
    checkUnnamed6875(o.dockerCacheImages);
    unittest.expect(o.enableStackdriverMonitoring, unittest.isTrue);
    checkUnnamed6876(o.labels);
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkNetwork(o.network);
    unittest.expect(o.nvidiaDriverVersion, unittest.equals('foo'));
    unittest.expect(o.preemptible, unittest.isTrue);
    checkServiceAccount(o.serviceAccount);
  }
  buildCounterVirtualMachine--;
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
    unittest.expect(o.instance, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
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
    unittest.expect(o.instance, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterWorkerReleasedEvent--;
}

void main() {
  unittest.group('obj-schema-Accelerator', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccelerator();
      var od = api.Accelerator.fromJson(o.toJson());
      checkAccelerator(od);
    });
  });

  unittest.group('obj-schema-Action', () {
    unittest.test('to-json--from-json', () {
      var o = buildAction();
      var od = api.Action.fromJson(o.toJson());
      checkAction(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-ContainerKilledEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildContainerKilledEvent();
      var od = api.ContainerKilledEvent.fromJson(o.toJson());
      checkContainerKilledEvent(od);
    });
  });

  unittest.group('obj-schema-ContainerStartedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildContainerStartedEvent();
      var od = api.ContainerStartedEvent.fromJson(o.toJson());
      checkContainerStartedEvent(od);
    });
  });

  unittest.group('obj-schema-ContainerStoppedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildContainerStoppedEvent();
      var od = api.ContainerStoppedEvent.fromJson(o.toJson());
      checkContainerStoppedEvent(od);
    });
  });

  unittest.group('obj-schema-DelayedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildDelayedEvent();
      var od = api.DelayedEvent.fromJson(o.toJson());
      checkDelayedEvent(od);
    });
  });

  unittest.group('obj-schema-Disk', () {
    unittest.test('to-json--from-json', () {
      var o = buildDisk();
      var od = api.Disk.fromJson(o.toJson());
      checkDisk(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () {
      var o = buildEvent();
      var od = api.Event.fromJson(o.toJson());
      checkEvent(od);
    });
  });

  unittest.group('obj-schema-FailedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildFailedEvent();
      var od = api.FailedEvent.fromJson(o.toJson());
      checkFailedEvent(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetadata();
      var od = api.Metadata.fromJson(o.toJson());
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-Mount', () {
    unittest.test('to-json--from-json', () {
      var o = buildMount();
      var od = api.Mount.fromJson(o.toJson());
      checkMount(od);
    });
  });

  unittest.group('obj-schema-Network', () {
    unittest.test('to-json--from-json', () {
      var o = buildNetwork();
      var od = api.Network.fromJson(o.toJson());
      checkNetwork(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Pipeline', () {
    unittest.test('to-json--from-json', () {
      var o = buildPipeline();
      var od = api.Pipeline.fromJson(o.toJson());
      checkPipeline(od);
    });
  });

  unittest.group('obj-schema-PullStartedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildPullStartedEvent();
      var od = api.PullStartedEvent.fromJson(o.toJson());
      checkPullStartedEvent(od);
    });
  });

  unittest.group('obj-schema-PullStoppedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildPullStoppedEvent();
      var od = api.PullStoppedEvent.fromJson(o.toJson());
      checkPullStoppedEvent(od);
    });
  });

  unittest.group('obj-schema-Resources', () {
    unittest.test('to-json--from-json', () {
      var o = buildResources();
      var od = api.Resources.fromJson(o.toJson());
      checkResources(od);
    });
  });

  unittest.group('obj-schema-RunPipelineRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRunPipelineRequest();
      var od = api.RunPipelineRequest.fromJson(o.toJson());
      checkRunPipelineRequest(od);
    });
  });

  unittest.group('obj-schema-RunPipelineResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRunPipelineResponse();
      var od = api.RunPipelineResponse.fromJson(o.toJson());
      checkRunPipelineResponse(od);
    });
  });

  unittest.group('obj-schema-Secret', () {
    unittest.test('to-json--from-json', () {
      var o = buildSecret();
      var od = api.Secret.fromJson(o.toJson());
      checkSecret(od);
    });
  });

  unittest.group('obj-schema-ServiceAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildServiceAccount();
      var od = api.ServiceAccount.fromJson(o.toJson());
      checkServiceAccount(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-UnexpectedExitStatusEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnexpectedExitStatusEvent();
      var od = api.UnexpectedExitStatusEvent.fromJson(o.toJson());
      checkUnexpectedExitStatusEvent(od);
    });
  });

  unittest.group('obj-schema-VirtualMachine', () {
    unittest.test('to-json--from-json', () {
      var o = buildVirtualMachine();
      var od = api.VirtualMachine.fromJson(o.toJson());
      checkVirtualMachine(od);
    });
  });

  unittest.group('obj-schema-WorkerAssignedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerAssignedEvent();
      var od = api.WorkerAssignedEvent.fromJson(o.toJson());
      checkWorkerAssignedEvent(od);
    });
  });

  unittest.group('obj-schema-WorkerReleasedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerReleasedEvent();
      var od = api.WorkerReleasedEvent.fromJson(o.toJson());
      checkWorkerReleasedEvent(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          api.LifesciencesApi(mock).projects.locations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v2beta/"));
        pathOffset += 7;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          api.LifesciencesApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_pageToken = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v2beta/"));
        pathOffset += 7;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              filter: arg_filter,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResourceApi', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          api.LifesciencesApi(mock).projects.locations.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v2beta/"));
        pathOffset += 7;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          api.LifesciencesApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v2beta/"));
        pathOffset += 7;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          api.LifesciencesApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_pageSize = 42;
      var arg_filter = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v2beta/"));
        pathOffset += 7;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsPipelinesResourceApi', () {
    unittest.test('method--run', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsPipelinesResourceApi res =
          api.LifesciencesApi(mock).projects.locations.pipelines;
      var arg_request = buildRunPipelineRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RunPipelineRequest.fromJson(json);
        checkRunPipelineRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v2beta/"));
        pathOffset += 7;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .run(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });
}
