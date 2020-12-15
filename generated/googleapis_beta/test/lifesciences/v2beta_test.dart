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

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAccelerator = 0;
buildAccelerator() {
  var o = new api.Accelerator();
  buildCounterAccelerator++;
  if (buildCounterAccelerator < 3) {
    o.count = "foo";
    o.type = "foo";
  }
  buildCounterAccelerator--;
  return o;
}

checkAccelerator(api.Accelerator o) {
  buildCounterAccelerator++;
  if (buildCounterAccelerator < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAccelerator--;
}

buildUnnamed6488() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6488(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6489() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6489(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed6490() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6490(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed6491() {
  var o = new core.List<api.Mount>();
  o.add(buildMount());
  o.add(buildMount());
  return o;
}

checkUnnamed6491(core.List<api.Mount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMount(o[0]);
  checkMount(o[1]);
}

buildUnnamed6492() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed6492(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42));
  unittest.expect(o["y"], unittest.equals(42));
}

core.int buildCounterAction = 0;
buildAction() {
  var o = new api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.alwaysRun = true;
    o.commands = buildUnnamed6488();
    o.containerName = "foo";
    o.credentials = buildSecret();
    o.disableImagePrefetch = true;
    o.disableStandardErrorCapture = true;
    o.enableFuse = true;
    o.entrypoint = "foo";
    o.environment = buildUnnamed6489();
    o.ignoreExitStatus = true;
    o.imageUri = "foo";
    o.labels = buildUnnamed6490();
    o.mounts = buildUnnamed6491();
    o.pidNamespace = "foo";
    o.portMappings = buildUnnamed6492();
    o.publishExposedPorts = true;
    o.runInBackground = true;
    o.timeout = "foo";
  }
  buildCounterAction--;
  return o;
}

checkAction(api.Action o) {
  buildCounterAction++;
  if (buildCounterAction < 3) {
    unittest.expect(o.alwaysRun, unittest.isTrue);
    checkUnnamed6488(o.commands);
    unittest.expect(o.containerName, unittest.equals('foo'));
    checkSecret(o.credentials);
    unittest.expect(o.disableImagePrefetch, unittest.isTrue);
    unittest.expect(o.disableStandardErrorCapture, unittest.isTrue);
    unittest.expect(o.enableFuse, unittest.isTrue);
    unittest.expect(o.entrypoint, unittest.equals('foo'));
    checkUnnamed6489(o.environment);
    unittest.expect(o.ignoreExitStatus, unittest.isTrue);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    checkUnnamed6490(o.labels);
    checkUnnamed6491(o.mounts);
    unittest.expect(o.pidNamespace, unittest.equals('foo'));
    checkUnnamed6492(o.portMappings);
    unittest.expect(o.publishExposedPorts, unittest.isTrue);
    unittest.expect(o.runInBackground, unittest.isTrue);
    unittest.expect(o.timeout, unittest.equals('foo'));
  }
  buildCounterAction--;
}

core.int buildCounterCancelOperationRequest = 0;
buildCancelOperationRequest() {
  var o = new api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterContainerKilledEvent = 0;
buildContainerKilledEvent() {
  var o = new api.ContainerKilledEvent();
  buildCounterContainerKilledEvent++;
  if (buildCounterContainerKilledEvent < 3) {
    o.actionId = 42;
  }
  buildCounterContainerKilledEvent--;
  return o;
}

checkContainerKilledEvent(api.ContainerKilledEvent o) {
  buildCounterContainerKilledEvent++;
  if (buildCounterContainerKilledEvent < 3) {
    unittest.expect(o.actionId, unittest.equals(42));
  }
  buildCounterContainerKilledEvent--;
}

buildUnnamed6493() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed6493(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42));
  unittest.expect(o["y"], unittest.equals(42));
}

core.int buildCounterContainerStartedEvent = 0;
buildContainerStartedEvent() {
  var o = new api.ContainerStartedEvent();
  buildCounterContainerStartedEvent++;
  if (buildCounterContainerStartedEvent < 3) {
    o.actionId = 42;
    o.ipAddress = "foo";
    o.portMappings = buildUnnamed6493();
  }
  buildCounterContainerStartedEvent--;
  return o;
}

checkContainerStartedEvent(api.ContainerStartedEvent o) {
  buildCounterContainerStartedEvent++;
  if (buildCounterContainerStartedEvent < 3) {
    unittest.expect(o.actionId, unittest.equals(42));
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    checkUnnamed6493(o.portMappings);
  }
  buildCounterContainerStartedEvent--;
}

core.int buildCounterContainerStoppedEvent = 0;
buildContainerStoppedEvent() {
  var o = new api.ContainerStoppedEvent();
  buildCounterContainerStoppedEvent++;
  if (buildCounterContainerStoppedEvent < 3) {
    o.actionId = 42;
    o.exitStatus = 42;
    o.stderr = "foo";
  }
  buildCounterContainerStoppedEvent--;
  return o;
}

checkContainerStoppedEvent(api.ContainerStoppedEvent o) {
  buildCounterContainerStoppedEvent++;
  if (buildCounterContainerStoppedEvent < 3) {
    unittest.expect(o.actionId, unittest.equals(42));
    unittest.expect(o.exitStatus, unittest.equals(42));
    unittest.expect(o.stderr, unittest.equals('foo'));
  }
  buildCounterContainerStoppedEvent--;
}

buildUnnamed6494() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6494(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDelayedEvent = 0;
buildDelayedEvent() {
  var o = new api.DelayedEvent();
  buildCounterDelayedEvent++;
  if (buildCounterDelayedEvent < 3) {
    o.cause = "foo";
    o.metrics = buildUnnamed6494();
  }
  buildCounterDelayedEvent--;
  return o;
}

checkDelayedEvent(api.DelayedEvent o) {
  buildCounterDelayedEvent++;
  if (buildCounterDelayedEvent < 3) {
    unittest.expect(o.cause, unittest.equals('foo'));
    checkUnnamed6494(o.metrics);
  }
  buildCounterDelayedEvent--;
}

core.int buildCounterDisk = 0;
buildDisk() {
  var o = new api.Disk();
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    o.name = "foo";
    o.sizeGb = 42;
    o.sourceImage = "foo";
    o.type = "foo";
  }
  buildCounterDisk--;
  return o;
}

checkDisk(api.Disk o) {
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
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterEvent = 0;
buildEvent() {
  var o = new api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.containerKilled = buildContainerKilledEvent();
    o.containerStarted = buildContainerStartedEvent();
    o.containerStopped = buildContainerStoppedEvent();
    o.delayed = buildDelayedEvent();
    o.description = "foo";
    o.failed = buildFailedEvent();
    o.pullStarted = buildPullStartedEvent();
    o.pullStopped = buildPullStoppedEvent();
    o.timestamp = "foo";
    o.unexpectedExitStatus = buildUnexpectedExitStatusEvent();
    o.workerAssigned = buildWorkerAssignedEvent();
    o.workerReleased = buildWorkerReleasedEvent();
  }
  buildCounterEvent--;
  return o;
}

checkEvent(api.Event o) {
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

core.int buildCounterExistingDisk = 0;
buildExistingDisk() {
  var o = new api.ExistingDisk();
  buildCounterExistingDisk++;
  if (buildCounterExistingDisk < 3) {
    o.disk = "foo";
  }
  buildCounterExistingDisk--;
  return o;
}

checkExistingDisk(api.ExistingDisk o) {
  buildCounterExistingDisk++;
  if (buildCounterExistingDisk < 3) {
    unittest.expect(o.disk, unittest.equals('foo'));
  }
  buildCounterExistingDisk--;
}

core.int buildCounterFailedEvent = 0;
buildFailedEvent() {
  var o = new api.FailedEvent();
  buildCounterFailedEvent++;
  if (buildCounterFailedEvent < 3) {
    o.cause = "foo";
    o.code = "foo";
  }
  buildCounterFailedEvent--;
  return o;
}

checkFailedEvent(api.FailedEvent o) {
  buildCounterFailedEvent++;
  if (buildCounterFailedEvent < 3) {
    unittest.expect(o.cause, unittest.equals('foo'));
    unittest.expect(o.code, unittest.equals('foo'));
  }
  buildCounterFailedEvent--;
}

buildUnnamed6495() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed6495(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed6495();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed6495(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed6496() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed6496(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed6496();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6496(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed6497() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6497(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed6498() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6498(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = "foo";
    o.labels = buildUnnamed6497();
    o.locationId = "foo";
    o.metadata = buildUnnamed6498();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed6497(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed6498(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

buildUnnamed6499() {
  var o = new core.List<api.Event>();
  o.add(buildEvent());
  o.add(buildEvent());
  return o;
}

checkUnnamed6499(core.List<api.Event> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEvent(o[0]);
  checkEvent(o[1]);
}

buildUnnamed6500() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6500(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMetadata = 0;
buildMetadata() {
  var o = new api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.events = buildUnnamed6499();
    o.labels = buildUnnamed6500();
    o.pipeline = buildPipeline();
    o.startTime = "foo";
  }
  buildCounterMetadata--;
  return o;
}

checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed6499(o.events);
    checkUnnamed6500(o.labels);
    checkPipeline(o.pipeline);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterMetadata--;
}

core.int buildCounterMount = 0;
buildMount() {
  var o = new api.Mount();
  buildCounterMount++;
  if (buildCounterMount < 3) {
    o.disk = "foo";
    o.path = "foo";
    o.readOnly = true;
  }
  buildCounterMount--;
  return o;
}

checkMount(api.Mount o) {
  buildCounterMount++;
  if (buildCounterMount < 3) {
    unittest.expect(o.disk, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.readOnly, unittest.isTrue);
  }
  buildCounterMount--;
}

core.int buildCounterNFSMount = 0;
buildNFSMount() {
  var o = new api.NFSMount();
  buildCounterNFSMount++;
  if (buildCounterNFSMount < 3) {
    o.target = "foo";
  }
  buildCounterNFSMount--;
  return o;
}

checkNFSMount(api.NFSMount o) {
  buildCounterNFSMount++;
  if (buildCounterNFSMount < 3) {
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterNFSMount--;
}

core.int buildCounterNetwork = 0;
buildNetwork() {
  var o = new api.Network();
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    o.network = "foo";
    o.subnetwork = "foo";
    o.usePrivateAddress = true;
  }
  buildCounterNetwork--;
  return o;
}

checkNetwork(api.Network o) {
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    unittest.expect(o.usePrivateAddress, unittest.isTrue);
  }
  buildCounterNetwork--;
}

buildUnnamed6501() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6501(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

buildUnnamed6502() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6502(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed6501();
    o.name = "foo";
    o.response = buildUnnamed6502();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed6501(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6502(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterPersistentDisk = 0;
buildPersistentDisk() {
  var o = new api.PersistentDisk();
  buildCounterPersistentDisk++;
  if (buildCounterPersistentDisk < 3) {
    o.sizeGb = 42;
    o.sourceImage = "foo";
    o.type = "foo";
  }
  buildCounterPersistentDisk--;
  return o;
}

checkPersistentDisk(api.PersistentDisk o) {
  buildCounterPersistentDisk++;
  if (buildCounterPersistentDisk < 3) {
    unittest.expect(o.sizeGb, unittest.equals(42));
    unittest.expect(o.sourceImage, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPersistentDisk--;
}

buildUnnamed6503() {
  var o = new core.List<api.Action>();
  o.add(buildAction());
  o.add(buildAction());
  return o;
}

checkUnnamed6503(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
}

buildUnnamed6504() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6504(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterPipeline = 0;
buildPipeline() {
  var o = new api.Pipeline();
  buildCounterPipeline++;
  if (buildCounterPipeline < 3) {
    o.actions = buildUnnamed6503();
    o.environment = buildUnnamed6504();
    o.resources = buildResources();
    o.timeout = "foo";
  }
  buildCounterPipeline--;
  return o;
}

checkPipeline(api.Pipeline o) {
  buildCounterPipeline++;
  if (buildCounterPipeline < 3) {
    checkUnnamed6503(o.actions);
    checkUnnamed6504(o.environment);
    checkResources(o.resources);
    unittest.expect(o.timeout, unittest.equals('foo'));
  }
  buildCounterPipeline--;
}

core.int buildCounterPullStartedEvent = 0;
buildPullStartedEvent() {
  var o = new api.PullStartedEvent();
  buildCounterPullStartedEvent++;
  if (buildCounterPullStartedEvent < 3) {
    o.imageUri = "foo";
  }
  buildCounterPullStartedEvent--;
  return o;
}

checkPullStartedEvent(api.PullStartedEvent o) {
  buildCounterPullStartedEvent++;
  if (buildCounterPullStartedEvent < 3) {
    unittest.expect(o.imageUri, unittest.equals('foo'));
  }
  buildCounterPullStartedEvent--;
}

core.int buildCounterPullStoppedEvent = 0;
buildPullStoppedEvent() {
  var o = new api.PullStoppedEvent();
  buildCounterPullStoppedEvent++;
  if (buildCounterPullStoppedEvent < 3) {
    o.imageUri = "foo";
  }
  buildCounterPullStoppedEvent--;
  return o;
}

checkPullStoppedEvent(api.PullStoppedEvent o) {
  buildCounterPullStoppedEvent++;
  if (buildCounterPullStoppedEvent < 3) {
    unittest.expect(o.imageUri, unittest.equals('foo'));
  }
  buildCounterPullStoppedEvent--;
}

buildUnnamed6505() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6505(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6506() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6506(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResources = 0;
buildResources() {
  var o = new api.Resources();
  buildCounterResources++;
  if (buildCounterResources < 3) {
    o.regions = buildUnnamed6505();
    o.virtualMachine = buildVirtualMachine();
    o.zones = buildUnnamed6506();
  }
  buildCounterResources--;
  return o;
}

checkResources(api.Resources o) {
  buildCounterResources++;
  if (buildCounterResources < 3) {
    checkUnnamed6505(o.regions);
    checkVirtualMachine(o.virtualMachine);
    checkUnnamed6506(o.zones);
  }
  buildCounterResources--;
}

buildUnnamed6507() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6507(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterRunPipelineRequest = 0;
buildRunPipelineRequest() {
  var o = new api.RunPipelineRequest();
  buildCounterRunPipelineRequest++;
  if (buildCounterRunPipelineRequest < 3) {
    o.labels = buildUnnamed6507();
    o.pipeline = buildPipeline();
  }
  buildCounterRunPipelineRequest--;
  return o;
}

checkRunPipelineRequest(api.RunPipelineRequest o) {
  buildCounterRunPipelineRequest++;
  if (buildCounterRunPipelineRequest < 3) {
    checkUnnamed6507(o.labels);
    checkPipeline(o.pipeline);
  }
  buildCounterRunPipelineRequest--;
}

core.int buildCounterRunPipelineResponse = 0;
buildRunPipelineResponse() {
  var o = new api.RunPipelineResponse();
  buildCounterRunPipelineResponse++;
  if (buildCounterRunPipelineResponse < 3) {}
  buildCounterRunPipelineResponse--;
  return o;
}

checkRunPipelineResponse(api.RunPipelineResponse o) {
  buildCounterRunPipelineResponse++;
  if (buildCounterRunPipelineResponse < 3) {}
  buildCounterRunPipelineResponse--;
}

core.int buildCounterSecret = 0;
buildSecret() {
  var o = new api.Secret();
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    o.cipherText = "foo";
    o.keyName = "foo";
  }
  buildCounterSecret--;
  return o;
}

checkSecret(api.Secret o) {
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    unittest.expect(o.cipherText, unittest.equals('foo'));
    unittest.expect(o.keyName, unittest.equals('foo'));
  }
  buildCounterSecret--;
}

buildUnnamed6508() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6508(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterServiceAccount = 0;
buildServiceAccount() {
  var o = new api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.email = "foo";
    o.scopes = buildUnnamed6508();
  }
  buildCounterServiceAccount--;
  return o;
}

checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    checkUnnamed6508(o.scopes);
  }
  buildCounterServiceAccount--;
}

buildUnnamed6509() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6509(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

buildUnnamed6510() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed6509());
  o.add(buildUnnamed6509());
  return o;
}

checkUnnamed6510(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6509(o[0]);
  checkUnnamed6509(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6510();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6510(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterUnexpectedExitStatusEvent = 0;
buildUnexpectedExitStatusEvent() {
  var o = new api.UnexpectedExitStatusEvent();
  buildCounterUnexpectedExitStatusEvent++;
  if (buildCounterUnexpectedExitStatusEvent < 3) {
    o.actionId = 42;
    o.exitStatus = 42;
  }
  buildCounterUnexpectedExitStatusEvent--;
  return o;
}

checkUnexpectedExitStatusEvent(api.UnexpectedExitStatusEvent o) {
  buildCounterUnexpectedExitStatusEvent++;
  if (buildCounterUnexpectedExitStatusEvent < 3) {
    unittest.expect(o.actionId, unittest.equals(42));
    unittest.expect(o.exitStatus, unittest.equals(42));
  }
  buildCounterUnexpectedExitStatusEvent--;
}

buildUnnamed6511() {
  var o = new core.List<api.Accelerator>();
  o.add(buildAccelerator());
  o.add(buildAccelerator());
  return o;
}

checkUnnamed6511(core.List<api.Accelerator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccelerator(o[0]);
  checkAccelerator(o[1]);
}

buildUnnamed6512() {
  var o = new core.List<api.Disk>();
  o.add(buildDisk());
  o.add(buildDisk());
  return o;
}

checkUnnamed6512(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0]);
  checkDisk(o[1]);
}

buildUnnamed6513() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6513(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6514() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6514(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed6515() {
  var o = new core.List<api.Volume>();
  o.add(buildVolume());
  o.add(buildVolume());
  return o;
}

checkUnnamed6515(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterVirtualMachine = 0;
buildVirtualMachine() {
  var o = new api.VirtualMachine();
  buildCounterVirtualMachine++;
  if (buildCounterVirtualMachine < 3) {
    o.accelerators = buildUnnamed6511();
    o.bootDiskSizeGb = 42;
    o.bootImage = "foo";
    o.cpuPlatform = "foo";
    o.disks = buildUnnamed6512();
    o.dockerCacheImages = buildUnnamed6513();
    o.enableStackdriverMonitoring = true;
    o.labels = buildUnnamed6514();
    o.machineType = "foo";
    o.network = buildNetwork();
    o.nvidiaDriverVersion = "foo";
    o.preemptible = true;
    o.serviceAccount = buildServiceAccount();
    o.volumes = buildUnnamed6515();
  }
  buildCounterVirtualMachine--;
  return o;
}

checkVirtualMachine(api.VirtualMachine o) {
  buildCounterVirtualMachine++;
  if (buildCounterVirtualMachine < 3) {
    checkUnnamed6511(o.accelerators);
    unittest.expect(o.bootDiskSizeGb, unittest.equals(42));
    unittest.expect(o.bootImage, unittest.equals('foo'));
    unittest.expect(o.cpuPlatform, unittest.equals('foo'));
    checkUnnamed6512(o.disks);
    checkUnnamed6513(o.dockerCacheImages);
    unittest.expect(o.enableStackdriverMonitoring, unittest.isTrue);
    checkUnnamed6514(o.labels);
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkNetwork(o.network);
    unittest.expect(o.nvidiaDriverVersion, unittest.equals('foo'));
    unittest.expect(o.preemptible, unittest.isTrue);
    checkServiceAccount(o.serviceAccount);
    checkUnnamed6515(o.volumes);
  }
  buildCounterVirtualMachine--;
}

core.int buildCounterVolume = 0;
buildVolume() {
  var o = new api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.existingDisk = buildExistingDisk();
    o.nfsMount = buildNFSMount();
    o.persistentDisk = buildPersistentDisk();
    o.volume = "foo";
  }
  buildCounterVolume--;
  return o;
}

checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    checkExistingDisk(o.existingDisk);
    checkNFSMount(o.nfsMount);
    checkPersistentDisk(o.persistentDisk);
    unittest.expect(o.volume, unittest.equals('foo'));
  }
  buildCounterVolume--;
}

core.int buildCounterWorkerAssignedEvent = 0;
buildWorkerAssignedEvent() {
  var o = new api.WorkerAssignedEvent();
  buildCounterWorkerAssignedEvent++;
  if (buildCounterWorkerAssignedEvent < 3) {
    o.instance = "foo";
    o.machineType = "foo";
    o.zone = "foo";
  }
  buildCounterWorkerAssignedEvent--;
  return o;
}

checkWorkerAssignedEvent(api.WorkerAssignedEvent o) {
  buildCounterWorkerAssignedEvent++;
  if (buildCounterWorkerAssignedEvent < 3) {
    unittest.expect(o.instance, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterWorkerAssignedEvent--;
}

core.int buildCounterWorkerReleasedEvent = 0;
buildWorkerReleasedEvent() {
  var o = new api.WorkerReleasedEvent();
  buildCounterWorkerReleasedEvent++;
  if (buildCounterWorkerReleasedEvent < 3) {
    o.instance = "foo";
    o.zone = "foo";
  }
  buildCounterWorkerReleasedEvent--;
  return o;
}

checkWorkerReleasedEvent(api.WorkerReleasedEvent o) {
  buildCounterWorkerReleasedEvent++;
  if (buildCounterWorkerReleasedEvent < 3) {
    unittest.expect(o.instance, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterWorkerReleasedEvent--;
}

main() {
  unittest.group("obj-schema-Accelerator", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccelerator();
      var od = new api.Accelerator.fromJson(o.toJson());
      checkAccelerator(od);
    });
  });

  unittest.group("obj-schema-Action", () {
    unittest.test("to-json--from-json", () {
      var o = buildAction();
      var od = new api.Action.fromJson(o.toJson());
      checkAction(od);
    });
  });

  unittest.group("obj-schema-CancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelOperationRequest();
      var od = new api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });

  unittest.group("obj-schema-ContainerKilledEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildContainerKilledEvent();
      var od = new api.ContainerKilledEvent.fromJson(o.toJson());
      checkContainerKilledEvent(od);
    });
  });

  unittest.group("obj-schema-ContainerStartedEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildContainerStartedEvent();
      var od = new api.ContainerStartedEvent.fromJson(o.toJson());
      checkContainerStartedEvent(od);
    });
  });

  unittest.group("obj-schema-ContainerStoppedEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildContainerStoppedEvent();
      var od = new api.ContainerStoppedEvent.fromJson(o.toJson());
      checkContainerStoppedEvent(od);
    });
  });

  unittest.group("obj-schema-DelayedEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildDelayedEvent();
      var od = new api.DelayedEvent.fromJson(o.toJson());
      checkDelayedEvent(od);
    });
  });

  unittest.group("obj-schema-Disk", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisk();
      var od = new api.Disk.fromJson(o.toJson());
      checkDisk(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Event", () {
    unittest.test("to-json--from-json", () {
      var o = buildEvent();
      var od = new api.Event.fromJson(o.toJson());
      checkEvent(od);
    });
  });

  unittest.group("obj-schema-ExistingDisk", () {
    unittest.test("to-json--from-json", () {
      var o = buildExistingDisk();
      var od = new api.ExistingDisk.fromJson(o.toJson());
      checkExistingDisk(od);
    });
  });

  unittest.group("obj-schema-FailedEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildFailedEvent();
      var od = new api.FailedEvent.fromJson(o.toJson());
      checkFailedEvent(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-Metadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetadata();
      var od = new api.Metadata.fromJson(o.toJson());
      checkMetadata(od);
    });
  });

  unittest.group("obj-schema-Mount", () {
    unittest.test("to-json--from-json", () {
      var o = buildMount();
      var od = new api.Mount.fromJson(o.toJson());
      checkMount(od);
    });
  });

  unittest.group("obj-schema-NFSMount", () {
    unittest.test("to-json--from-json", () {
      var o = buildNFSMount();
      var od = new api.NFSMount.fromJson(o.toJson());
      checkNFSMount(od);
    });
  });

  unittest.group("obj-schema-Network", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetwork();
      var od = new api.Network.fromJson(o.toJson());
      checkNetwork(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-PersistentDisk", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersistentDisk();
      var od = new api.PersistentDisk.fromJson(o.toJson());
      checkPersistentDisk(od);
    });
  });

  unittest.group("obj-schema-Pipeline", () {
    unittest.test("to-json--from-json", () {
      var o = buildPipeline();
      var od = new api.Pipeline.fromJson(o.toJson());
      checkPipeline(od);
    });
  });

  unittest.group("obj-schema-PullStartedEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildPullStartedEvent();
      var od = new api.PullStartedEvent.fromJson(o.toJson());
      checkPullStartedEvent(od);
    });
  });

  unittest.group("obj-schema-PullStoppedEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildPullStoppedEvent();
      var od = new api.PullStoppedEvent.fromJson(o.toJson());
      checkPullStoppedEvent(od);
    });
  });

  unittest.group("obj-schema-Resources", () {
    unittest.test("to-json--from-json", () {
      var o = buildResources();
      var od = new api.Resources.fromJson(o.toJson());
      checkResources(od);
    });
  });

  unittest.group("obj-schema-RunPipelineRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRunPipelineRequest();
      var od = new api.RunPipelineRequest.fromJson(o.toJson());
      checkRunPipelineRequest(od);
    });
  });

  unittest.group("obj-schema-RunPipelineResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRunPipelineResponse();
      var od = new api.RunPipelineResponse.fromJson(o.toJson());
      checkRunPipelineResponse(od);
    });
  });

  unittest.group("obj-schema-Secret", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecret();
      var od = new api.Secret.fromJson(o.toJson());
      checkSecret(od);
    });
  });

  unittest.group("obj-schema-ServiceAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceAccount();
      var od = new api.ServiceAccount.fromJson(o.toJson());
      checkServiceAccount(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-UnexpectedExitStatusEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnexpectedExitStatusEvent();
      var od = new api.UnexpectedExitStatusEvent.fromJson(o.toJson());
      checkUnexpectedExitStatusEvent(od);
    });
  });

  unittest.group("obj-schema-VirtualMachine", () {
    unittest.test("to-json--from-json", () {
      var o = buildVirtualMachine();
      var od = new api.VirtualMachine.fromJson(o.toJson());
      checkVirtualMachine(od);
    });
  });

  unittest.group("obj-schema-Volume", () {
    unittest.test("to-json--from-json", () {
      var o = buildVolume();
      var od = new api.Volume.fromJson(o.toJson());
      checkVolume(od);
    });
  });

  unittest.group("obj-schema-WorkerAssignedEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerAssignedEvent();
      var od = new api.WorkerAssignedEvent.fromJson(o.toJson());
      checkWorkerAssignedEvent(od);
    });
  });

  unittest.group("obj-schema-WorkerReleasedEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerReleasedEvent();
      var od = new api.WorkerReleasedEvent.fromJson(o.toJson());
      checkWorkerReleasedEvent(od);
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.LifesciencesApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLocation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.LifesciencesApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.LifesciencesApi(mock).projects.locations.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.LifesciencesApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.LifesciencesApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsPipelinesResourceApi", () {
    unittest.test("method--run", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsPipelinesResourceApi res =
          new api.LifesciencesApi(mock).projects.locations.pipelines;
      var arg_request = buildRunPipelineRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RunPipelineRequest.fromJson(json);
        checkRunPipelineRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .run(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });
}
