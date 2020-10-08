library googleapis.homegraph.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/homegraph/v1.dart' as api;

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

core.int buildCounterAgentDeviceId = 0;
buildAgentDeviceId() {
  var o = new api.AgentDeviceId();
  buildCounterAgentDeviceId++;
  if (buildCounterAgentDeviceId < 3) {
    o.id = "foo";
  }
  buildCounterAgentDeviceId--;
  return o;
}

checkAgentDeviceId(api.AgentDeviceId o) {
  buildCounterAgentDeviceId++;
  if (buildCounterAgentDeviceId < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterAgentDeviceId--;
}

core.int buildCounterAgentOtherDeviceId = 0;
buildAgentOtherDeviceId() {
  var o = new api.AgentOtherDeviceId();
  buildCounterAgentOtherDeviceId++;
  if (buildCounterAgentOtherDeviceId < 3) {
    o.agentId = "foo";
    o.deviceId = "foo";
  }
  buildCounterAgentOtherDeviceId--;
  return o;
}

checkAgentOtherDeviceId(api.AgentOtherDeviceId o) {
  buildCounterAgentOtherDeviceId++;
  if (buildCounterAgentOtherDeviceId < 3) {
    unittest.expect(o.agentId, unittest.equals('foo'));
    unittest.expect(o.deviceId, unittest.equals('foo'));
  }
  buildCounterAgentOtherDeviceId--;
}

buildUnnamed4074() {
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

checkUnnamed4074(core.Map<core.String, core.Object> o) {
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

buildUnnamed4075() {
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

checkUnnamed4075(core.Map<core.String, core.Object> o) {
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

buildUnnamed4076() {
  var o = new core.List<api.AgentOtherDeviceId>();
  o.add(buildAgentOtherDeviceId());
  o.add(buildAgentOtherDeviceId());
  return o;
}

checkUnnamed4076(core.List<api.AgentOtherDeviceId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentOtherDeviceId(o[0]);
  checkAgentOtherDeviceId(o[1]);
}

buildUnnamed4077() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4077(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDevice = 0;
buildDevice() {
  var o = new api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.attributes = buildUnnamed4074();
    o.customData = buildUnnamed4075();
    o.deviceInfo = buildDeviceInfo();
    o.id = "foo";
    o.name = buildDeviceNames();
    o.notificationSupportedByAgent = true;
    o.otherDeviceIds = buildUnnamed4076();
    o.roomHint = "foo";
    o.structureHint = "foo";
    o.traits = buildUnnamed4077();
    o.type = "foo";
    o.willReportState = true;
  }
  buildCounterDevice--;
  return o;
}

checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    checkUnnamed4074(o.attributes);
    checkUnnamed4075(o.customData);
    checkDeviceInfo(o.deviceInfo);
    unittest.expect(o.id, unittest.equals('foo'));
    checkDeviceNames(o.name);
    unittest.expect(o.notificationSupportedByAgent, unittest.isTrue);
    checkUnnamed4076(o.otherDeviceIds);
    unittest.expect(o.roomHint, unittest.equals('foo'));
    unittest.expect(o.structureHint, unittest.equals('foo'));
    checkUnnamed4077(o.traits);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.willReportState, unittest.isTrue);
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceInfo = 0;
buildDeviceInfo() {
  var o = new api.DeviceInfo();
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    o.hwVersion = "foo";
    o.manufacturer = "foo";
    o.model = "foo";
    o.swVersion = "foo";
  }
  buildCounterDeviceInfo--;
  return o;
}

checkDeviceInfo(api.DeviceInfo o) {
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    unittest.expect(o.hwVersion, unittest.equals('foo'));
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.swVersion, unittest.equals('foo'));
  }
  buildCounterDeviceInfo--;
}

buildUnnamed4078() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4078(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4079() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4079(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeviceNames = 0;
buildDeviceNames() {
  var o = new api.DeviceNames();
  buildCounterDeviceNames++;
  if (buildCounterDeviceNames < 3) {
    o.defaultNames = buildUnnamed4078();
    o.name = "foo";
    o.nicknames = buildUnnamed4079();
  }
  buildCounterDeviceNames--;
  return o;
}

checkDeviceNames(api.DeviceNames o) {
  buildCounterDeviceNames++;
  if (buildCounterDeviceNames < 3) {
    checkUnnamed4078(o.defaultNames);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4079(o.nicknames);
  }
  buildCounterDeviceNames--;
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

buildUnnamed4080() {
  var o = new core.List<api.QueryRequestInput>();
  o.add(buildQueryRequestInput());
  o.add(buildQueryRequestInput());
  return o;
}

checkUnnamed4080(core.List<api.QueryRequestInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryRequestInput(o[0]);
  checkQueryRequestInput(o[1]);
}

core.int buildCounterQueryRequest = 0;
buildQueryRequest() {
  var o = new api.QueryRequest();
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    o.agentUserId = "foo";
    o.inputs = buildUnnamed4080();
    o.requestId = "foo";
  }
  buildCounterQueryRequest--;
  return o;
}

checkQueryRequest(api.QueryRequest o) {
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    checkUnnamed4080(o.inputs);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterQueryRequest--;
}

core.int buildCounterQueryRequestInput = 0;
buildQueryRequestInput() {
  var o = new api.QueryRequestInput();
  buildCounterQueryRequestInput++;
  if (buildCounterQueryRequestInput < 3) {
    o.payload = buildQueryRequestPayload();
  }
  buildCounterQueryRequestInput--;
  return o;
}

checkQueryRequestInput(api.QueryRequestInput o) {
  buildCounterQueryRequestInput++;
  if (buildCounterQueryRequestInput < 3) {
    checkQueryRequestPayload(o.payload);
  }
  buildCounterQueryRequestInput--;
}

buildUnnamed4081() {
  var o = new core.List<api.AgentDeviceId>();
  o.add(buildAgentDeviceId());
  o.add(buildAgentDeviceId());
  return o;
}

checkUnnamed4081(core.List<api.AgentDeviceId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentDeviceId(o[0]);
  checkAgentDeviceId(o[1]);
}

core.int buildCounterQueryRequestPayload = 0;
buildQueryRequestPayload() {
  var o = new api.QueryRequestPayload();
  buildCounterQueryRequestPayload++;
  if (buildCounterQueryRequestPayload < 3) {
    o.devices = buildUnnamed4081();
  }
  buildCounterQueryRequestPayload--;
  return o;
}

checkQueryRequestPayload(api.QueryRequestPayload o) {
  buildCounterQueryRequestPayload++;
  if (buildCounterQueryRequestPayload < 3) {
    checkUnnamed4081(o.devices);
  }
  buildCounterQueryRequestPayload--;
}

core.int buildCounterQueryResponse = 0;
buildQueryResponse() {
  var o = new api.QueryResponse();
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    o.payload = buildQueryResponsePayload();
    o.requestId = "foo";
  }
  buildCounterQueryResponse--;
  return o;
}

checkQueryResponse(api.QueryResponse o) {
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    checkQueryResponsePayload(o.payload);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterQueryResponse--;
}

buildUnnamed4082() {
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

checkUnnamed4082(core.Map<core.String, core.Object> o) {
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

buildUnnamed4083() {
  var o = new core.Map<core.String, core.Map<core.String, core.Object>>();
  o["x"] = buildUnnamed4082();
  o["y"] = buildUnnamed4082();
  return o;
}

checkUnnamed4083(core.Map<core.String, core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4082(o["x"]);
  checkUnnamed4082(o["y"]);
}

core.int buildCounterQueryResponsePayload = 0;
buildQueryResponsePayload() {
  var o = new api.QueryResponsePayload();
  buildCounterQueryResponsePayload++;
  if (buildCounterQueryResponsePayload < 3) {
    o.devices = buildUnnamed4083();
  }
  buildCounterQueryResponsePayload--;
  return o;
}

checkQueryResponsePayload(api.QueryResponsePayload o) {
  buildCounterQueryResponsePayload++;
  if (buildCounterQueryResponsePayload < 3) {
    checkUnnamed4083(o.devices);
  }
  buildCounterQueryResponsePayload--;
}

buildUnnamed4084() {
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

checkUnnamed4084(core.Map<core.String, core.Object> o) {
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

buildUnnamed4085() {
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

checkUnnamed4085(core.Map<core.String, core.Object> o) {
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

core.int buildCounterReportStateAndNotificationDevice = 0;
buildReportStateAndNotificationDevice() {
  var o = new api.ReportStateAndNotificationDevice();
  buildCounterReportStateAndNotificationDevice++;
  if (buildCounterReportStateAndNotificationDevice < 3) {
    o.notifications = buildUnnamed4084();
    o.states = buildUnnamed4085();
  }
  buildCounterReportStateAndNotificationDevice--;
  return o;
}

checkReportStateAndNotificationDevice(api.ReportStateAndNotificationDevice o) {
  buildCounterReportStateAndNotificationDevice++;
  if (buildCounterReportStateAndNotificationDevice < 3) {
    checkUnnamed4084(o.notifications);
    checkUnnamed4085(o.states);
  }
  buildCounterReportStateAndNotificationDevice--;
}

core.int buildCounterReportStateAndNotificationRequest = 0;
buildReportStateAndNotificationRequest() {
  var o = new api.ReportStateAndNotificationRequest();
  buildCounterReportStateAndNotificationRequest++;
  if (buildCounterReportStateAndNotificationRequest < 3) {
    o.agentUserId = "foo";
    o.eventId = "foo";
    o.followUpToken = "foo";
    o.payload = buildStateAndNotificationPayload();
    o.requestId = "foo";
  }
  buildCounterReportStateAndNotificationRequest--;
  return o;
}

checkReportStateAndNotificationRequest(
    api.ReportStateAndNotificationRequest o) {
  buildCounterReportStateAndNotificationRequest++;
  if (buildCounterReportStateAndNotificationRequest < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    unittest.expect(o.followUpToken, unittest.equals('foo'));
    checkStateAndNotificationPayload(o.payload);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterReportStateAndNotificationRequest--;
}

core.int buildCounterReportStateAndNotificationResponse = 0;
buildReportStateAndNotificationResponse() {
  var o = new api.ReportStateAndNotificationResponse();
  buildCounterReportStateAndNotificationResponse++;
  if (buildCounterReportStateAndNotificationResponse < 3) {
    o.requestId = "foo";
  }
  buildCounterReportStateAndNotificationResponse--;
  return o;
}

checkReportStateAndNotificationResponse(
    api.ReportStateAndNotificationResponse o) {
  buildCounterReportStateAndNotificationResponse++;
  if (buildCounterReportStateAndNotificationResponse < 3) {
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterReportStateAndNotificationResponse--;
}

core.int buildCounterRequestSyncDevicesRequest = 0;
buildRequestSyncDevicesRequest() {
  var o = new api.RequestSyncDevicesRequest();
  buildCounterRequestSyncDevicesRequest++;
  if (buildCounterRequestSyncDevicesRequest < 3) {
    o.agentUserId = "foo";
    o.async = true;
  }
  buildCounterRequestSyncDevicesRequest--;
  return o;
}

checkRequestSyncDevicesRequest(api.RequestSyncDevicesRequest o) {
  buildCounterRequestSyncDevicesRequest++;
  if (buildCounterRequestSyncDevicesRequest < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    unittest.expect(o.async, unittest.isTrue);
  }
  buildCounterRequestSyncDevicesRequest--;
}

core.int buildCounterRequestSyncDevicesResponse = 0;
buildRequestSyncDevicesResponse() {
  var o = new api.RequestSyncDevicesResponse();
  buildCounterRequestSyncDevicesResponse++;
  if (buildCounterRequestSyncDevicesResponse < 3) {}
  buildCounterRequestSyncDevicesResponse--;
  return o;
}

checkRequestSyncDevicesResponse(api.RequestSyncDevicesResponse o) {
  buildCounterRequestSyncDevicesResponse++;
  if (buildCounterRequestSyncDevicesResponse < 3) {}
  buildCounterRequestSyncDevicesResponse--;
}

core.int buildCounterStateAndNotificationPayload = 0;
buildStateAndNotificationPayload() {
  var o = new api.StateAndNotificationPayload();
  buildCounterStateAndNotificationPayload++;
  if (buildCounterStateAndNotificationPayload < 3) {
    o.devices = buildReportStateAndNotificationDevice();
  }
  buildCounterStateAndNotificationPayload--;
  return o;
}

checkStateAndNotificationPayload(api.StateAndNotificationPayload o) {
  buildCounterStateAndNotificationPayload++;
  if (buildCounterStateAndNotificationPayload < 3) {
    checkReportStateAndNotificationDevice(o.devices);
  }
  buildCounterStateAndNotificationPayload--;
}

core.int buildCounterSyncRequest = 0;
buildSyncRequest() {
  var o = new api.SyncRequest();
  buildCounterSyncRequest++;
  if (buildCounterSyncRequest < 3) {
    o.agentUserId = "foo";
    o.requestId = "foo";
  }
  buildCounterSyncRequest--;
  return o;
}

checkSyncRequest(api.SyncRequest o) {
  buildCounterSyncRequest++;
  if (buildCounterSyncRequest < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterSyncRequest--;
}

core.int buildCounterSyncResponse = 0;
buildSyncResponse() {
  var o = new api.SyncResponse();
  buildCounterSyncResponse++;
  if (buildCounterSyncResponse < 3) {
    o.payload = buildSyncResponsePayload();
    o.requestId = "foo";
  }
  buildCounterSyncResponse--;
  return o;
}

checkSyncResponse(api.SyncResponse o) {
  buildCounterSyncResponse++;
  if (buildCounterSyncResponse < 3) {
    checkSyncResponsePayload(o.payload);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterSyncResponse--;
}

buildUnnamed4086() {
  var o = new core.List<api.Device>();
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

checkUnnamed4086(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterSyncResponsePayload = 0;
buildSyncResponsePayload() {
  var o = new api.SyncResponsePayload();
  buildCounterSyncResponsePayload++;
  if (buildCounterSyncResponsePayload < 3) {
    o.agentUserId = "foo";
    o.devices = buildUnnamed4086();
  }
  buildCounterSyncResponsePayload--;
  return o;
}

checkSyncResponsePayload(api.SyncResponsePayload o) {
  buildCounterSyncResponsePayload++;
  if (buildCounterSyncResponsePayload < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    checkUnnamed4086(o.devices);
  }
  buildCounterSyncResponsePayload--;
}

main() {
  unittest.group("obj-schema-AgentDeviceId", () {
    unittest.test("to-json--from-json", () {
      var o = buildAgentDeviceId();
      var od = new api.AgentDeviceId.fromJson(o.toJson());
      checkAgentDeviceId(od);
    });
  });

  unittest.group("obj-schema-AgentOtherDeviceId", () {
    unittest.test("to-json--from-json", () {
      var o = buildAgentOtherDeviceId();
      var od = new api.AgentOtherDeviceId.fromJson(o.toJson());
      checkAgentOtherDeviceId(od);
    });
  });

  unittest.group("obj-schema-Device", () {
    unittest.test("to-json--from-json", () {
      var o = buildDevice();
      var od = new api.Device.fromJson(o.toJson());
      checkDevice(od);
    });
  });

  unittest.group("obj-schema-DeviceInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceInfo();
      var od = new api.DeviceInfo.fromJson(o.toJson());
      checkDeviceInfo(od);
    });
  });

  unittest.group("obj-schema-DeviceNames", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceNames();
      var od = new api.DeviceNames.fromJson(o.toJson());
      checkDeviceNames(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-QueryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryRequest();
      var od = new api.QueryRequest.fromJson(o.toJson());
      checkQueryRequest(od);
    });
  });

  unittest.group("obj-schema-QueryRequestInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryRequestInput();
      var od = new api.QueryRequestInput.fromJson(o.toJson());
      checkQueryRequestInput(od);
    });
  });

  unittest.group("obj-schema-QueryRequestPayload", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryRequestPayload();
      var od = new api.QueryRequestPayload.fromJson(o.toJson());
      checkQueryRequestPayload(od);
    });
  });

  unittest.group("obj-schema-QueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryResponse();
      var od = new api.QueryResponse.fromJson(o.toJson());
      checkQueryResponse(od);
    });
  });

  unittest.group("obj-schema-QueryResponsePayload", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryResponsePayload();
      var od = new api.QueryResponsePayload.fromJson(o.toJson());
      checkQueryResponsePayload(od);
    });
  });

  unittest.group("obj-schema-ReportStateAndNotificationDevice", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportStateAndNotificationDevice();
      var od = new api.ReportStateAndNotificationDevice.fromJson(o.toJson());
      checkReportStateAndNotificationDevice(od);
    });
  });

  unittest.group("obj-schema-ReportStateAndNotificationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportStateAndNotificationRequest();
      var od = new api.ReportStateAndNotificationRequest.fromJson(o.toJson());
      checkReportStateAndNotificationRequest(od);
    });
  });

  unittest.group("obj-schema-ReportStateAndNotificationResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportStateAndNotificationResponse();
      var od = new api.ReportStateAndNotificationResponse.fromJson(o.toJson());
      checkReportStateAndNotificationResponse(od);
    });
  });

  unittest.group("obj-schema-RequestSyncDevicesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestSyncDevicesRequest();
      var od = new api.RequestSyncDevicesRequest.fromJson(o.toJson());
      checkRequestSyncDevicesRequest(od);
    });
  });

  unittest.group("obj-schema-RequestSyncDevicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestSyncDevicesResponse();
      var od = new api.RequestSyncDevicesResponse.fromJson(o.toJson());
      checkRequestSyncDevicesResponse(od);
    });
  });

  unittest.group("obj-schema-StateAndNotificationPayload", () {
    unittest.test("to-json--from-json", () {
      var o = buildStateAndNotificationPayload();
      var od = new api.StateAndNotificationPayload.fromJson(o.toJson());
      checkStateAndNotificationPayload(od);
    });
  });

  unittest.group("obj-schema-SyncRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSyncRequest();
      var od = new api.SyncRequest.fromJson(o.toJson());
      checkSyncRequest(od);
    });
  });

  unittest.group("obj-schema-SyncResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSyncResponse();
      var od = new api.SyncResponse.fromJson(o.toJson());
      checkSyncResponse(od);
    });
  });

  unittest.group("obj-schema-SyncResponsePayload", () {
    unittest.test("to-json--from-json", () {
      var o = buildSyncResponsePayload();
      var od = new api.SyncResponsePayload.fromJson(o.toJson());
      checkSyncResponsePayload(od);
    });
  });

  unittest.group("resource-AgentUsersResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AgentUsersResourceApi res = new api.HomegraphApi(mock).agentUsers;
      var arg_agentUserId = "foo";
      var arg_requestId = "foo";
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
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_agentUserId,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });
  });

  unittest.group("resource-DevicesResourceApi", () {
    unittest.test("method--query", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.HomegraphApi(mock).devices;
      var arg_request = buildQueryRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.QueryRequest.fromJson(json);
        checkQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/devices:query"));
        pathOffset += 16;

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
        var resp = convert.json.encode(buildQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryResponse(response);
      })));
    });

    unittest.test("method--reportStateAndNotification", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.HomegraphApi(mock).devices;
      var arg_request = buildReportStateAndNotificationRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReportStateAndNotificationRequest.fromJson(json);
        checkReportStateAndNotificationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 37),
            unittest.equals("v1/devices:reportStateAndNotification"));
        pathOffset += 37;

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
        var resp =
            convert.json.encode(buildReportStateAndNotificationResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reportStateAndNotification(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReportStateAndNotificationResponse(response);
      })));
    });

    unittest.test("method--requestSync", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.HomegraphApi(mock).devices;
      var arg_request = buildRequestSyncDevicesRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RequestSyncDevicesRequest.fromJson(json);
        checkRequestSyncDevicesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v1/devices:requestSync"));
        pathOffset += 22;

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
        var resp = convert.json.encode(buildRequestSyncDevicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .requestSync(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRequestSyncDevicesResponse(response);
      })));
    });

    unittest.test("method--sync", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.HomegraphApi(mock).devices;
      var arg_request = buildSyncRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SyncRequest.fromJson(json);
        checkSyncRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/devices:sync"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildSyncResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sync(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSyncResponse(response);
      })));
    });
  });
}
