// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
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
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

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

core.int buildCounterAgentDeviceId = 0;
api.AgentDeviceId buildAgentDeviceId() {
  var o = api.AgentDeviceId();
  buildCounterAgentDeviceId++;
  if (buildCounterAgentDeviceId < 3) {
    o.id = 'foo';
  }
  buildCounterAgentDeviceId--;
  return o;
}

void checkAgentDeviceId(api.AgentDeviceId o) {
  buildCounterAgentDeviceId++;
  if (buildCounterAgentDeviceId < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterAgentDeviceId--;
}

core.int buildCounterAgentOtherDeviceId = 0;
api.AgentOtherDeviceId buildAgentOtherDeviceId() {
  var o = api.AgentOtherDeviceId();
  buildCounterAgentOtherDeviceId++;
  if (buildCounterAgentOtherDeviceId < 3) {
    o.agentId = 'foo';
    o.deviceId = 'foo';
  }
  buildCounterAgentOtherDeviceId--;
  return o;
}

void checkAgentOtherDeviceId(api.AgentOtherDeviceId o) {
  buildCounterAgentOtherDeviceId++;
  if (buildCounterAgentOtherDeviceId < 3) {
    unittest.expect(o.agentId, unittest.equals('foo'));
    unittest.expect(o.deviceId, unittest.equals('foo'));
  }
  buildCounterAgentOtherDeviceId--;
}

core.Map<core.String, core.Object> buildUnnamed1162() {
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

void checkUnnamed1162(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1163() {
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

void checkUnnamed1163(core.Map<core.String, core.Object> o) {
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

core.List<api.AgentOtherDeviceId> buildUnnamed1164() {
  var o = <api.AgentOtherDeviceId>[];
  o.add(buildAgentOtherDeviceId());
  o.add(buildAgentOtherDeviceId());
  return o;
}

void checkUnnamed1164(core.List<api.AgentOtherDeviceId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentOtherDeviceId(o[0]);
  checkAgentOtherDeviceId(o[1]);
}

core.List<core.String> buildUnnamed1165() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1165(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  var o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.attributes = buildUnnamed1162();
    o.customData = buildUnnamed1163();
    o.deviceInfo = buildDeviceInfo();
    o.id = 'foo';
    o.name = buildDeviceNames();
    o.notificationSupportedByAgent = true;
    o.otherDeviceIds = buildUnnamed1164();
    o.roomHint = 'foo';
    o.structureHint = 'foo';
    o.traits = buildUnnamed1165();
    o.type = 'foo';
    o.willReportState = true;
  }
  buildCounterDevice--;
  return o;
}

void checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    checkUnnamed1162(o.attributes);
    checkUnnamed1163(o.customData);
    checkDeviceInfo(o.deviceInfo);
    unittest.expect(o.id, unittest.equals('foo'));
    checkDeviceNames(o.name);
    unittest.expect(o.notificationSupportedByAgent, unittest.isTrue);
    checkUnnamed1164(o.otherDeviceIds);
    unittest.expect(o.roomHint, unittest.equals('foo'));
    unittest.expect(o.structureHint, unittest.equals('foo'));
    checkUnnamed1165(o.traits);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.willReportState, unittest.isTrue);
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceInfo = 0;
api.DeviceInfo buildDeviceInfo() {
  var o = api.DeviceInfo();
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    o.hwVersion = 'foo';
    o.manufacturer = 'foo';
    o.model = 'foo';
    o.swVersion = 'foo';
  }
  buildCounterDeviceInfo--;
  return o;
}

void checkDeviceInfo(api.DeviceInfo o) {
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    unittest.expect(o.hwVersion, unittest.equals('foo'));
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.swVersion, unittest.equals('foo'));
  }
  buildCounterDeviceInfo--;
}

core.List<core.String> buildUnnamed1166() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1166(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1167() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1167(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeviceNames = 0;
api.DeviceNames buildDeviceNames() {
  var o = api.DeviceNames();
  buildCounterDeviceNames++;
  if (buildCounterDeviceNames < 3) {
    o.defaultNames = buildUnnamed1166();
    o.name = 'foo';
    o.nicknames = buildUnnamed1167();
  }
  buildCounterDeviceNames--;
  return o;
}

void checkDeviceNames(api.DeviceNames o) {
  buildCounterDeviceNames++;
  if (buildCounterDeviceNames < 3) {
    checkUnnamed1166(o.defaultNames);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1167(o.nicknames);
  }
  buildCounterDeviceNames--;
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

core.List<api.QueryRequestInput> buildUnnamed1168() {
  var o = <api.QueryRequestInput>[];
  o.add(buildQueryRequestInput());
  o.add(buildQueryRequestInput());
  return o;
}

void checkUnnamed1168(core.List<api.QueryRequestInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryRequestInput(o[0]);
  checkQueryRequestInput(o[1]);
}

core.int buildCounterQueryRequest = 0;
api.QueryRequest buildQueryRequest() {
  var o = api.QueryRequest();
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    o.agentUserId = 'foo';
    o.inputs = buildUnnamed1168();
    o.requestId = 'foo';
  }
  buildCounterQueryRequest--;
  return o;
}

void checkQueryRequest(api.QueryRequest o) {
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    checkUnnamed1168(o.inputs);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterQueryRequest--;
}

core.int buildCounterQueryRequestInput = 0;
api.QueryRequestInput buildQueryRequestInput() {
  var o = api.QueryRequestInput();
  buildCounterQueryRequestInput++;
  if (buildCounterQueryRequestInput < 3) {
    o.payload = buildQueryRequestPayload();
  }
  buildCounterQueryRequestInput--;
  return o;
}

void checkQueryRequestInput(api.QueryRequestInput o) {
  buildCounterQueryRequestInput++;
  if (buildCounterQueryRequestInput < 3) {
    checkQueryRequestPayload(o.payload);
  }
  buildCounterQueryRequestInput--;
}

core.List<api.AgentDeviceId> buildUnnamed1169() {
  var o = <api.AgentDeviceId>[];
  o.add(buildAgentDeviceId());
  o.add(buildAgentDeviceId());
  return o;
}

void checkUnnamed1169(core.List<api.AgentDeviceId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentDeviceId(o[0]);
  checkAgentDeviceId(o[1]);
}

core.int buildCounterQueryRequestPayload = 0;
api.QueryRequestPayload buildQueryRequestPayload() {
  var o = api.QueryRequestPayload();
  buildCounterQueryRequestPayload++;
  if (buildCounterQueryRequestPayload < 3) {
    o.devices = buildUnnamed1169();
  }
  buildCounterQueryRequestPayload--;
  return o;
}

void checkQueryRequestPayload(api.QueryRequestPayload o) {
  buildCounterQueryRequestPayload++;
  if (buildCounterQueryRequestPayload < 3) {
    checkUnnamed1169(o.devices);
  }
  buildCounterQueryRequestPayload--;
}

core.int buildCounterQueryResponse = 0;
api.QueryResponse buildQueryResponse() {
  var o = api.QueryResponse();
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    o.payload = buildQueryResponsePayload();
    o.requestId = 'foo';
  }
  buildCounterQueryResponse--;
  return o;
}

void checkQueryResponse(api.QueryResponse o) {
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    checkQueryResponsePayload(o.payload);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterQueryResponse--;
}

core.Map<core.String, core.Object> buildUnnamed1170() {
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

void checkUnnamed1170(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Map<core.String, core.Object>> buildUnnamed1171() {
  var o = <core.String, core.Map<core.String, core.Object>>{};
  o['x'] = buildUnnamed1170();
  o['y'] = buildUnnamed1170();
  return o;
}

void checkUnnamed1171(
    core.Map<core.String, core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1170(o['x']);
  checkUnnamed1170(o['y']);
}

core.int buildCounterQueryResponsePayload = 0;
api.QueryResponsePayload buildQueryResponsePayload() {
  var o = api.QueryResponsePayload();
  buildCounterQueryResponsePayload++;
  if (buildCounterQueryResponsePayload < 3) {
    o.devices = buildUnnamed1171();
  }
  buildCounterQueryResponsePayload--;
  return o;
}

void checkQueryResponsePayload(api.QueryResponsePayload o) {
  buildCounterQueryResponsePayload++;
  if (buildCounterQueryResponsePayload < 3) {
    checkUnnamed1171(o.devices);
  }
  buildCounterQueryResponsePayload--;
}

core.Map<core.String, core.Object> buildUnnamed1172() {
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

void checkUnnamed1172(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1173() {
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

void checkUnnamed1173(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.int buildCounterReportStateAndNotificationDevice = 0;
api.ReportStateAndNotificationDevice buildReportStateAndNotificationDevice() {
  var o = api.ReportStateAndNotificationDevice();
  buildCounterReportStateAndNotificationDevice++;
  if (buildCounterReportStateAndNotificationDevice < 3) {
    o.notifications = buildUnnamed1172();
    o.states = buildUnnamed1173();
  }
  buildCounterReportStateAndNotificationDevice--;
  return o;
}

void checkReportStateAndNotificationDevice(
    api.ReportStateAndNotificationDevice o) {
  buildCounterReportStateAndNotificationDevice++;
  if (buildCounterReportStateAndNotificationDevice < 3) {
    checkUnnamed1172(o.notifications);
    checkUnnamed1173(o.states);
  }
  buildCounterReportStateAndNotificationDevice--;
}

core.int buildCounterReportStateAndNotificationRequest = 0;
api.ReportStateAndNotificationRequest buildReportStateAndNotificationRequest() {
  var o = api.ReportStateAndNotificationRequest();
  buildCounterReportStateAndNotificationRequest++;
  if (buildCounterReportStateAndNotificationRequest < 3) {
    o.agentUserId = 'foo';
    o.eventId = 'foo';
    o.followUpToken = 'foo';
    o.payload = buildStateAndNotificationPayload();
    o.requestId = 'foo';
  }
  buildCounterReportStateAndNotificationRequest--;
  return o;
}

void checkReportStateAndNotificationRequest(
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
api.ReportStateAndNotificationResponse
    buildReportStateAndNotificationResponse() {
  var o = api.ReportStateAndNotificationResponse();
  buildCounterReportStateAndNotificationResponse++;
  if (buildCounterReportStateAndNotificationResponse < 3) {
    o.requestId = 'foo';
  }
  buildCounterReportStateAndNotificationResponse--;
  return o;
}

void checkReportStateAndNotificationResponse(
    api.ReportStateAndNotificationResponse o) {
  buildCounterReportStateAndNotificationResponse++;
  if (buildCounterReportStateAndNotificationResponse < 3) {
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterReportStateAndNotificationResponse--;
}

core.int buildCounterRequestSyncDevicesRequest = 0;
api.RequestSyncDevicesRequest buildRequestSyncDevicesRequest() {
  var o = api.RequestSyncDevicesRequest();
  buildCounterRequestSyncDevicesRequest++;
  if (buildCounterRequestSyncDevicesRequest < 3) {
    o.agentUserId = 'foo';
    o.async = true;
  }
  buildCounterRequestSyncDevicesRequest--;
  return o;
}

void checkRequestSyncDevicesRequest(api.RequestSyncDevicesRequest o) {
  buildCounterRequestSyncDevicesRequest++;
  if (buildCounterRequestSyncDevicesRequest < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    unittest.expect(o.async, unittest.isTrue);
  }
  buildCounterRequestSyncDevicesRequest--;
}

core.int buildCounterRequestSyncDevicesResponse = 0;
api.RequestSyncDevicesResponse buildRequestSyncDevicesResponse() {
  var o = api.RequestSyncDevicesResponse();
  buildCounterRequestSyncDevicesResponse++;
  if (buildCounterRequestSyncDevicesResponse < 3) {}
  buildCounterRequestSyncDevicesResponse--;
  return o;
}

void checkRequestSyncDevicesResponse(api.RequestSyncDevicesResponse o) {
  buildCounterRequestSyncDevicesResponse++;
  if (buildCounterRequestSyncDevicesResponse < 3) {}
  buildCounterRequestSyncDevicesResponse--;
}

core.int buildCounterStateAndNotificationPayload = 0;
api.StateAndNotificationPayload buildStateAndNotificationPayload() {
  var o = api.StateAndNotificationPayload();
  buildCounterStateAndNotificationPayload++;
  if (buildCounterStateAndNotificationPayload < 3) {
    o.devices = buildReportStateAndNotificationDevice();
  }
  buildCounterStateAndNotificationPayload--;
  return o;
}

void checkStateAndNotificationPayload(api.StateAndNotificationPayload o) {
  buildCounterStateAndNotificationPayload++;
  if (buildCounterStateAndNotificationPayload < 3) {
    checkReportStateAndNotificationDevice(o.devices);
  }
  buildCounterStateAndNotificationPayload--;
}

core.int buildCounterSyncRequest = 0;
api.SyncRequest buildSyncRequest() {
  var o = api.SyncRequest();
  buildCounterSyncRequest++;
  if (buildCounterSyncRequest < 3) {
    o.agentUserId = 'foo';
    o.requestId = 'foo';
  }
  buildCounterSyncRequest--;
  return o;
}

void checkSyncRequest(api.SyncRequest o) {
  buildCounterSyncRequest++;
  if (buildCounterSyncRequest < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterSyncRequest--;
}

core.int buildCounterSyncResponse = 0;
api.SyncResponse buildSyncResponse() {
  var o = api.SyncResponse();
  buildCounterSyncResponse++;
  if (buildCounterSyncResponse < 3) {
    o.payload = buildSyncResponsePayload();
    o.requestId = 'foo';
  }
  buildCounterSyncResponse--;
  return o;
}

void checkSyncResponse(api.SyncResponse o) {
  buildCounterSyncResponse++;
  if (buildCounterSyncResponse < 3) {
    checkSyncResponsePayload(o.payload);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterSyncResponse--;
}

core.List<api.Device> buildUnnamed1174() {
  var o = <api.Device>[];
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

void checkUnnamed1174(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterSyncResponsePayload = 0;
api.SyncResponsePayload buildSyncResponsePayload() {
  var o = api.SyncResponsePayload();
  buildCounterSyncResponsePayload++;
  if (buildCounterSyncResponsePayload < 3) {
    o.agentUserId = 'foo';
    o.devices = buildUnnamed1174();
  }
  buildCounterSyncResponsePayload--;
  return o;
}

void checkSyncResponsePayload(api.SyncResponsePayload o) {
  buildCounterSyncResponsePayload++;
  if (buildCounterSyncResponsePayload < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    checkUnnamed1174(o.devices);
  }
  buildCounterSyncResponsePayload--;
}

void main() {
  unittest.group('obj-schema-AgentDeviceId', () {
    unittest.test('to-json--from-json', () {
      var o = buildAgentDeviceId();
      var od = api.AgentDeviceId.fromJson(o.toJson());
      checkAgentDeviceId(od);
    });
  });

  unittest.group('obj-schema-AgentOtherDeviceId', () {
    unittest.test('to-json--from-json', () {
      var o = buildAgentOtherDeviceId();
      var od = api.AgentOtherDeviceId.fromJson(o.toJson());
      checkAgentOtherDeviceId(od);
    });
  });

  unittest.group('obj-schema-Device', () {
    unittest.test('to-json--from-json', () {
      var o = buildDevice();
      var od = api.Device.fromJson(o.toJson());
      checkDevice(od);
    });
  });

  unittest.group('obj-schema-DeviceInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceInfo();
      var od = api.DeviceInfo.fromJson(o.toJson());
      checkDeviceInfo(od);
    });
  });

  unittest.group('obj-schema-DeviceNames', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceNames();
      var od = api.DeviceNames.fromJson(o.toJson());
      checkDeviceNames(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-QueryRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryRequest();
      var od = api.QueryRequest.fromJson(o.toJson());
      checkQueryRequest(od);
    });
  });

  unittest.group('obj-schema-QueryRequestInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryRequestInput();
      var od = api.QueryRequestInput.fromJson(o.toJson());
      checkQueryRequestInput(od);
    });
  });

  unittest.group('obj-schema-QueryRequestPayload', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryRequestPayload();
      var od = api.QueryRequestPayload.fromJson(o.toJson());
      checkQueryRequestPayload(od);
    });
  });

  unittest.group('obj-schema-QueryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryResponse();
      var od = api.QueryResponse.fromJson(o.toJson());
      checkQueryResponse(od);
    });
  });

  unittest.group('obj-schema-QueryResponsePayload', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryResponsePayload();
      var od = api.QueryResponsePayload.fromJson(o.toJson());
      checkQueryResponsePayload(od);
    });
  });

  unittest.group('obj-schema-ReportStateAndNotificationDevice', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportStateAndNotificationDevice();
      var od = api.ReportStateAndNotificationDevice.fromJson(o.toJson());
      checkReportStateAndNotificationDevice(od);
    });
  });

  unittest.group('obj-schema-ReportStateAndNotificationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportStateAndNotificationRequest();
      var od = api.ReportStateAndNotificationRequest.fromJson(o.toJson());
      checkReportStateAndNotificationRequest(od);
    });
  });

  unittest.group('obj-schema-ReportStateAndNotificationResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportStateAndNotificationResponse();
      var od = api.ReportStateAndNotificationResponse.fromJson(o.toJson());
      checkReportStateAndNotificationResponse(od);
    });
  });

  unittest.group('obj-schema-RequestSyncDevicesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRequestSyncDevicesRequest();
      var od = api.RequestSyncDevicesRequest.fromJson(o.toJson());
      checkRequestSyncDevicesRequest(od);
    });
  });

  unittest.group('obj-schema-RequestSyncDevicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRequestSyncDevicesResponse();
      var od = api.RequestSyncDevicesResponse.fromJson(o.toJson());
      checkRequestSyncDevicesResponse(od);
    });
  });

  unittest.group('obj-schema-StateAndNotificationPayload', () {
    unittest.test('to-json--from-json', () {
      var o = buildStateAndNotificationPayload();
      var od = api.StateAndNotificationPayload.fromJson(o.toJson());
      checkStateAndNotificationPayload(od);
    });
  });

  unittest.group('obj-schema-SyncRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSyncRequest();
      var od = api.SyncRequest.fromJson(o.toJson());
      checkSyncRequest(od);
    });
  });

  unittest.group('obj-schema-SyncResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSyncResponse();
      var od = api.SyncResponse.fromJson(o.toJson());
      checkSyncResponse(od);
    });
  });

  unittest.group('obj-schema-SyncResponsePayload', () {
    unittest.test('to-json--from-json', () {
      var o = buildSyncResponsePayload();
      var od = api.SyncResponsePayload.fromJson(o.toJson());
      checkSyncResponsePayload(od);
    });
  });

  unittest.group('resource-AgentUsersResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.AgentUsersResourceApi res = api.HomegraphApi(mock).agentUsers;
      var arg_agentUserId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_agentUserId,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });
  });

  unittest.group('resource-DevicesResourceApi', () {
    unittest.test('method--query', () {
      var mock = HttpServerMock();
      api.DevicesResourceApi res = api.HomegraphApi(mock).devices;
      var arg_request = buildQueryRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.QueryRequest.fromJson(json);
        checkQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/devices:query"));
        pathOffset += 16;

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
        var resp = convert.json.encode(buildQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryResponse(response);
      })));
    });

    unittest.test('method--reportStateAndNotification', () {
      var mock = HttpServerMock();
      api.DevicesResourceApi res = api.HomegraphApi(mock).devices;
      var arg_request = buildReportStateAndNotificationRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReportStateAndNotificationRequest.fromJson(json);
        checkReportStateAndNotificationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 37),
            unittest.equals("v1/devices:reportStateAndNotification"));
        pathOffset += 37;

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
        var resp =
            convert.json.encode(buildReportStateAndNotificationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reportStateAndNotification(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReportStateAndNotificationResponse(response);
      })));
    });

    unittest.test('method--requestSync', () {
      var mock = HttpServerMock();
      api.DevicesResourceApi res = api.HomegraphApi(mock).devices;
      var arg_request = buildRequestSyncDevicesRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RequestSyncDevicesRequest.fromJson(json);
        checkRequestSyncDevicesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v1/devices:requestSync"));
        pathOffset += 22;

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
        var resp = convert.json.encode(buildRequestSyncDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .requestSync(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRequestSyncDevicesResponse(response);
      })));
    });

    unittest.test('method--sync', () {
      var mock = HttpServerMock();
      api.DevicesResourceApi res = api.HomegraphApi(mock).devices;
      var arg_request = buildSyncRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SyncRequest.fromJson(json);
        checkSyncRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/devices:sync"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildSyncResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sync(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSyncResponse(response);
      })));
    });
  });
}
