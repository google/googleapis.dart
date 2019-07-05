library googleapis.genomics.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/genomics/v1.dart' as api;

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

buildUnnamed664() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed664(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterComputeEngine = 0;
buildComputeEngine() {
  var o = new api.ComputeEngine();
  buildCounterComputeEngine++;
  if (buildCounterComputeEngine < 3) {
    o.diskNames = buildUnnamed664();
    o.instanceName = "foo";
    o.machineType = "foo";
    o.zone = "foo";
  }
  buildCounterComputeEngine--;
  return o;
}

checkComputeEngine(api.ComputeEngine o) {
  buildCounterComputeEngine++;
  if (buildCounterComputeEngine < 3) {
    checkUnnamed664(o.diskNames);
    unittest.expect(o.instanceName, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterComputeEngine--;
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

buildUnnamed665() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed665(core.Map<core.String, core.int> o) {
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
    o.portMappings = buildUnnamed665();
  }
  buildCounterContainerStartedEvent--;
  return o;
}

checkContainerStartedEvent(api.ContainerStartedEvent o) {
  buildCounterContainerStartedEvent++;
  if (buildCounterContainerStartedEvent < 3) {
    unittest.expect(o.actionId, unittest.equals(42));
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    checkUnnamed665(o.portMappings);
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

buildUnnamed666() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed666(core.List<core.String> o) {
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
    o.metrics = buildUnnamed666();
  }
  buildCounterDelayedEvent--;
  return o;
}

checkDelayedEvent(api.DelayedEvent o) {
  buildCounterDelayedEvent++;
  if (buildCounterDelayedEvent < 3) {
    unittest.expect(o.cause, unittest.equals('foo'));
    checkUnnamed666(o.metrics);
  }
  buildCounterDelayedEvent--;
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

buildUnnamed667() {
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

checkUnnamed667(core.Map<core.String, core.Object> o) {
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

core.int buildCounterEvent = 0;
buildEvent() {
  var o = new api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.description = "foo";
    o.details = buildUnnamed667();
    o.timestamp = "foo";
  }
  buildCounterEvent--;
  return o;
}

checkEvent(api.Event o) {
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed667(o.details);
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterEvent--;
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

buildUnnamed668() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed668(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed668();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed668(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed669() {
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

checkUnnamed669(core.Map<core.String, core.Object> o) {
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

buildUnnamed670() {
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

checkUnnamed670(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed669();
    o.name = "foo";
    o.response = buildUnnamed670();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed669(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed670(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationEvent = 0;
buildOperationEvent() {
  var o = new api.OperationEvent();
  buildCounterOperationEvent++;
  if (buildCounterOperationEvent < 3) {
    o.description = "foo";
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterOperationEvent--;
  return o;
}

checkOperationEvent(api.OperationEvent o) {
  buildCounterOperationEvent++;
  if (buildCounterOperationEvent < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterOperationEvent--;
}

buildUnnamed671() {
  var o = new core.List<api.OperationEvent>();
  o.add(buildOperationEvent());
  o.add(buildOperationEvent());
  return o;
}

checkUnnamed671(core.List<api.OperationEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationEvent(o[0]);
  checkOperationEvent(o[1]);
}

buildUnnamed672() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed672(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed673() {
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

checkUnnamed673(core.Map<core.String, core.Object> o) {
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

buildUnnamed674() {
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

checkUnnamed674(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o["x"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
  var casted10 = (o["y"]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
}

core.int buildCounterOperationMetadata = 0;
buildOperationMetadata() {
  var o = new api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.clientId = "foo";
    o.createTime = "foo";
    o.endTime = "foo";
    o.events = buildUnnamed671();
    o.labels = buildUnnamed672();
    o.projectId = "foo";
    o.request = buildUnnamed673();
    o.runtimeMetadata = buildUnnamed674();
    o.startTime = "foo";
  }
  buildCounterOperationMetadata--;
  return o;
}

checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed671(o.events);
    checkUnnamed672(o.labels);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed673(o.request);
    checkUnnamed674(o.runtimeMetadata);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterOperationMetadata--;
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

core.int buildCounterRuntimeMetadata = 0;
buildRuntimeMetadata() {
  var o = new api.RuntimeMetadata();
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    o.computeEngine = buildComputeEngine();
  }
  buildCounterRuntimeMetadata--;
  return o;
}

checkRuntimeMetadata(api.RuntimeMetadata o) {
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    checkComputeEngine(o.computeEngine);
  }
  buildCounterRuntimeMetadata--;
}

buildUnnamed675() {
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

checkUnnamed675(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o["x"]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted11["bool"], unittest.equals(true));
  unittest.expect(casted11["string"], unittest.equals('foo'));
  var casted12 = (o["y"]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted12["bool"], unittest.equals(true));
  unittest.expect(casted12["string"], unittest.equals('foo'));
}

buildUnnamed676() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed675());
  o.add(buildUnnamed675());
  return o;
}

checkUnnamed676(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed675(o[0]);
  checkUnnamed675(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed676();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed676(o.details);
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

core.int buildCounterWorkerAssignedEvent = 0;
buildWorkerAssignedEvent() {
  var o = new api.WorkerAssignedEvent();
  buildCounterWorkerAssignedEvent++;
  if (buildCounterWorkerAssignedEvent < 3) {
    o.instance = "foo";
    o.zone = "foo";
  }
  buildCounterWorkerAssignedEvent--;
  return o;
}

checkWorkerAssignedEvent(api.WorkerAssignedEvent o) {
  buildCounterWorkerAssignedEvent++;
  if (buildCounterWorkerAssignedEvent < 3) {
    unittest.expect(o.instance, unittest.equals('foo'));
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
  unittest.group("obj-schema-CancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelOperationRequest();
      var od = new api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });

  unittest.group("obj-schema-ComputeEngine", () {
    unittest.test("to-json--from-json", () {
      var o = buildComputeEngine();
      var od = new api.ComputeEngine.fromJson(o.toJson());
      checkComputeEngine(od);
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

  unittest.group("obj-schema-FailedEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildFailedEvent();
      var od = new api.FailedEvent.fromJson(o.toJson());
      checkFailedEvent(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OperationEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationEvent();
      var od = new api.OperationEvent.fromJson(o.toJson());
      checkOperationEvent(od);
    });
  });

  unittest.group("obj-schema-OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadata();
      var od = new api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od);
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

  unittest.group("obj-schema-RunPipelineResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRunPipelineResponse();
      var od = new api.RunPipelineResponse.fromJson(o.toJson());
      checkRunPipelineResponse(od);
    });
  });

  unittest.group("obj-schema-RuntimeMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildRuntimeMetadata();
      var od = new api.RuntimeMetadata.fromJson(o.toJson());
      checkRuntimeMetadata(od);
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

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.GenomicsApi(mock).operations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
      api.OperationsResourceApi res = new api.GenomicsApi(mock).operations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
      api.OperationsResourceApi res = new api.GenomicsApi(mock).operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });
}
