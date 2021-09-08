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

import 'package:googleapis/homegraph/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAgentDeviceId = 0;
api.AgentDeviceId buildAgentDeviceId() {
  final o = api.AgentDeviceId();
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
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterAgentDeviceId--;
}

core.int buildCounterAgentOtherDeviceId = 0;
api.AgentOtherDeviceId buildAgentOtherDeviceId() {
  final o = api.AgentOtherDeviceId();
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
    unittest.expect(
      o.agentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAgentOtherDeviceId--;
}

core.Map<core.String, core.Object> buildUnnamed1445() => {
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

void checkUnnamed1445(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1446() => {
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

void checkUnnamed1446(core.Map<core.String, core.Object> o) {
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

core.List<api.AgentOtherDeviceId> buildUnnamed1447() => [
      buildAgentOtherDeviceId(),
      buildAgentOtherDeviceId(),
    ];

void checkUnnamed1447(core.List<api.AgentOtherDeviceId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentOtherDeviceId(o[0]);
  checkAgentOtherDeviceId(o[1]);
}

core.List<core.String> buildUnnamed1448() => [
      'foo',
      'foo',
    ];

void checkUnnamed1448(core.List<core.String> o) {
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

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  final o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.attributes = buildUnnamed1445();
    o.customData = buildUnnamed1446();
    o.deviceInfo = buildDeviceInfo();
    o.id = 'foo';
    o.name = buildDeviceNames();
    o.notificationSupportedByAgent = true;
    o.otherDeviceIds = buildUnnamed1447();
    o.roomHint = 'foo';
    o.structureHint = 'foo';
    o.traits = buildUnnamed1448();
    o.type = 'foo';
    o.willReportState = true;
  }
  buildCounterDevice--;
  return o;
}

void checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    checkUnnamed1445(o.attributes!);
    checkUnnamed1446(o.customData!);
    checkDeviceInfo(o.deviceInfo!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDeviceNames(o.name!);
    unittest.expect(o.notificationSupportedByAgent!, unittest.isTrue);
    checkUnnamed1447(o.otherDeviceIds!);
    unittest.expect(
      o.roomHint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.structureHint!,
      unittest.equals('foo'),
    );
    checkUnnamed1448(o.traits!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(o.willReportState!, unittest.isTrue);
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceInfo = 0;
api.DeviceInfo buildDeviceInfo() {
  final o = api.DeviceInfo();
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
    unittest.expect(
      o.hwVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.swVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceInfo--;
}

core.List<core.String> buildUnnamed1449() => [
      'foo',
      'foo',
    ];

void checkUnnamed1449(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed1450() => [
      'foo',
      'foo',
    ];

void checkUnnamed1450(core.List<core.String> o) {
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

core.int buildCounterDeviceNames = 0;
api.DeviceNames buildDeviceNames() {
  final o = api.DeviceNames();
  buildCounterDeviceNames++;
  if (buildCounterDeviceNames < 3) {
    o.defaultNames = buildUnnamed1449();
    o.name = 'foo';
    o.nicknames = buildUnnamed1450();
  }
  buildCounterDeviceNames--;
  return o;
}

void checkDeviceNames(api.DeviceNames o) {
  buildCounterDeviceNames++;
  if (buildCounterDeviceNames < 3) {
    checkUnnamed1449(o.defaultNames!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1450(o.nicknames!);
  }
  buildCounterDeviceNames--;
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

core.List<api.QueryRequestInput> buildUnnamed1451() => [
      buildQueryRequestInput(),
      buildQueryRequestInput(),
    ];

void checkUnnamed1451(core.List<api.QueryRequestInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryRequestInput(o[0]);
  checkQueryRequestInput(o[1]);
}

core.int buildCounterQueryRequest = 0;
api.QueryRequest buildQueryRequest() {
  final o = api.QueryRequest();
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    o.agentUserId = 'foo';
    o.inputs = buildUnnamed1451();
    o.requestId = 'foo';
  }
  buildCounterQueryRequest--;
  return o;
}

void checkQueryRequest(api.QueryRequest o) {
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    unittest.expect(
      o.agentUserId!,
      unittest.equals('foo'),
    );
    checkUnnamed1451(o.inputs!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryRequest--;
}

core.int buildCounterQueryRequestInput = 0;
api.QueryRequestInput buildQueryRequestInput() {
  final o = api.QueryRequestInput();
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
    checkQueryRequestPayload(o.payload!);
  }
  buildCounterQueryRequestInput--;
}

core.List<api.AgentDeviceId> buildUnnamed1452() => [
      buildAgentDeviceId(),
      buildAgentDeviceId(),
    ];

void checkUnnamed1452(core.List<api.AgentDeviceId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentDeviceId(o[0]);
  checkAgentDeviceId(o[1]);
}

core.int buildCounterQueryRequestPayload = 0;
api.QueryRequestPayload buildQueryRequestPayload() {
  final o = api.QueryRequestPayload();
  buildCounterQueryRequestPayload++;
  if (buildCounterQueryRequestPayload < 3) {
    o.devices = buildUnnamed1452();
  }
  buildCounterQueryRequestPayload--;
  return o;
}

void checkQueryRequestPayload(api.QueryRequestPayload o) {
  buildCounterQueryRequestPayload++;
  if (buildCounterQueryRequestPayload < 3) {
    checkUnnamed1452(o.devices!);
  }
  buildCounterQueryRequestPayload--;
}

core.int buildCounterQueryResponse = 0;
api.QueryResponse buildQueryResponse() {
  final o = api.QueryResponse();
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
    checkQueryResponsePayload(o.payload!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryResponse--;
}

core.Map<core.String, core.Object> buildUnnamed1453() => {
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

void checkUnnamed1453(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Map<core.String, core.Object>> buildUnnamed1454() =>
    {
      'x': buildUnnamed1453(),
      'y': buildUnnamed1453(),
    };

void checkUnnamed1454(
    core.Map<core.String, core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1453(o['x']!);
  checkUnnamed1453(o['y']!);
}

core.int buildCounterQueryResponsePayload = 0;
api.QueryResponsePayload buildQueryResponsePayload() {
  final o = api.QueryResponsePayload();
  buildCounterQueryResponsePayload++;
  if (buildCounterQueryResponsePayload < 3) {
    o.devices = buildUnnamed1454();
  }
  buildCounterQueryResponsePayload--;
  return o;
}

void checkQueryResponsePayload(api.QueryResponsePayload o) {
  buildCounterQueryResponsePayload++;
  if (buildCounterQueryResponsePayload < 3) {
    checkUnnamed1454(o.devices!);
  }
  buildCounterQueryResponsePayload--;
}

core.Map<core.String, core.Object> buildUnnamed1455() => {
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

void checkUnnamed1455(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1456() => {
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

void checkUnnamed1456(core.Map<core.String, core.Object> o) {
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

core.int buildCounterReportStateAndNotificationDevice = 0;
api.ReportStateAndNotificationDevice buildReportStateAndNotificationDevice() {
  final o = api.ReportStateAndNotificationDevice();
  buildCounterReportStateAndNotificationDevice++;
  if (buildCounterReportStateAndNotificationDevice < 3) {
    o.notifications = buildUnnamed1455();
    o.states = buildUnnamed1456();
  }
  buildCounterReportStateAndNotificationDevice--;
  return o;
}

void checkReportStateAndNotificationDevice(
    api.ReportStateAndNotificationDevice o) {
  buildCounterReportStateAndNotificationDevice++;
  if (buildCounterReportStateAndNotificationDevice < 3) {
    checkUnnamed1455(o.notifications!);
    checkUnnamed1456(o.states!);
  }
  buildCounterReportStateAndNotificationDevice--;
}

core.int buildCounterReportStateAndNotificationRequest = 0;
api.ReportStateAndNotificationRequest buildReportStateAndNotificationRequest() {
  final o = api.ReportStateAndNotificationRequest();
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
    unittest.expect(
      o.agentUserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.followUpToken!,
      unittest.equals('foo'),
    );
    checkStateAndNotificationPayload(o.payload!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportStateAndNotificationRequest--;
}

core.int buildCounterReportStateAndNotificationResponse = 0;
api.ReportStateAndNotificationResponse
    buildReportStateAndNotificationResponse() {
  final o = api.ReportStateAndNotificationResponse();
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
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportStateAndNotificationResponse--;
}

core.int buildCounterRequestSyncDevicesRequest = 0;
api.RequestSyncDevicesRequest buildRequestSyncDevicesRequest() {
  final o = api.RequestSyncDevicesRequest();
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
    unittest.expect(
      o.agentUserId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.async!, unittest.isTrue);
  }
  buildCounterRequestSyncDevicesRequest--;
}

core.int buildCounterRequestSyncDevicesResponse = 0;
api.RequestSyncDevicesResponse buildRequestSyncDevicesResponse() {
  final o = api.RequestSyncDevicesResponse();
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
  final o = api.StateAndNotificationPayload();
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
    checkReportStateAndNotificationDevice(o.devices!);
  }
  buildCounterStateAndNotificationPayload--;
}

core.int buildCounterSyncRequest = 0;
api.SyncRequest buildSyncRequest() {
  final o = api.SyncRequest();
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
    unittest.expect(
      o.agentUserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSyncRequest--;
}

core.int buildCounterSyncResponse = 0;
api.SyncResponse buildSyncResponse() {
  final o = api.SyncResponse();
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
    checkSyncResponsePayload(o.payload!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSyncResponse--;
}

core.List<api.Device> buildUnnamed1457() => [
      buildDevice(),
      buildDevice(),
    ];

void checkUnnamed1457(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterSyncResponsePayload = 0;
api.SyncResponsePayload buildSyncResponsePayload() {
  final o = api.SyncResponsePayload();
  buildCounterSyncResponsePayload++;
  if (buildCounterSyncResponsePayload < 3) {
    o.agentUserId = 'foo';
    o.devices = buildUnnamed1457();
  }
  buildCounterSyncResponsePayload--;
  return o;
}

void checkSyncResponsePayload(api.SyncResponsePayload o) {
  buildCounterSyncResponsePayload++;
  if (buildCounterSyncResponsePayload < 3) {
    unittest.expect(
      o.agentUserId!,
      unittest.equals('foo'),
    );
    checkUnnamed1457(o.devices!);
  }
  buildCounterSyncResponsePayload--;
}

void main() {
  unittest.group('obj-schema-AgentDeviceId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentDeviceId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentDeviceId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAgentDeviceId(od);
    });
  });

  unittest.group('obj-schema-AgentOtherDeviceId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentOtherDeviceId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentOtherDeviceId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAgentOtherDeviceId(od);
    });
  });

  unittest.group('obj-schema-Device', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Device.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDevice(od);
    });
  });

  unittest.group('obj-schema-DeviceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DeviceInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeviceInfo(od);
    });
  });

  unittest.group('obj-schema-DeviceNames', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceNames();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceNames.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceNames(od);
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

  unittest.group('obj-schema-QueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryRequest(od);
    });
  });

  unittest.group('obj-schema-QueryRequestInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryRequestInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryRequestInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryRequestInput(od);
    });
  });

  unittest.group('obj-schema-QueryRequestPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryRequestPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryRequestPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryRequestPayload(od);
    });
  });

  unittest.group('obj-schema-QueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryResponse(od);
    });
  });

  unittest.group('obj-schema-QueryResponsePayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryResponsePayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryResponsePayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryResponsePayload(od);
    });
  });

  unittest.group('obj-schema-ReportStateAndNotificationDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportStateAndNotificationDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportStateAndNotificationDevice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportStateAndNotificationDevice(od);
    });
  });

  unittest.group('obj-schema-ReportStateAndNotificationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportStateAndNotificationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportStateAndNotificationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportStateAndNotificationRequest(od);
    });
  });

  unittest.group('obj-schema-ReportStateAndNotificationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportStateAndNotificationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportStateAndNotificationResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportStateAndNotificationResponse(od);
    });
  });

  unittest.group('obj-schema-RequestSyncDevicesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestSyncDevicesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestSyncDevicesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestSyncDevicesRequest(od);
    });
  });

  unittest.group('obj-schema-RequestSyncDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestSyncDevicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestSyncDevicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestSyncDevicesResponse(od);
    });
  });

  unittest.group('obj-schema-StateAndNotificationPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStateAndNotificationPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StateAndNotificationPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStateAndNotificationPayload(od);
    });
  });

  unittest.group('obj-schema-SyncRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSyncRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SyncRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSyncRequest(od);
    });
  });

  unittest.group('obj-schema-SyncResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSyncResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SyncResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSyncResponse(od);
    });
  });

  unittest.group('obj-schema-SyncResponsePayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSyncResponsePayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SyncResponsePayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSyncResponsePayload(od);
    });
  });

  unittest.group('resource-AgentUsersResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.HomeGraphServiceApi(mock).agentUsers;
      final arg_agentUserId = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
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
      final response = await res.delete(arg_agentUserId,
          requestId: arg_requestId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-DevicesResource', () {
    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.HomeGraphServiceApi(mock).devices;
      final arg_request = buildQueryRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.QueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/devices:query'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.query(arg_request, $fields: arg_$fields);
      checkQueryResponse(response as api.QueryResponse);
    });

    unittest.test('method--reportStateAndNotification', () async {
      final mock = HttpServerMock();
      final res = api.HomeGraphServiceApi(mock).devices;
      final arg_request = buildReportStateAndNotificationRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReportStateAndNotificationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportStateAndNotificationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 37),
          unittest.equals('v1/devices:reportStateAndNotification'),
        );
        pathOffset += 37;

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
            convert.json.encode(buildReportStateAndNotificationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reportStateAndNotification(arg_request,
          $fields: arg_$fields);
      checkReportStateAndNotificationResponse(
          response as api.ReportStateAndNotificationResponse);
    });

    unittest.test('method--requestSync', () async {
      final mock = HttpServerMock();
      final res = api.HomeGraphServiceApi(mock).devices;
      final arg_request = buildRequestSyncDevicesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RequestSyncDevicesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRequestSyncDevicesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('v1/devices:requestSync'),
        );
        pathOffset += 22;

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
        final resp = convert.json.encode(buildRequestSyncDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.requestSync(arg_request, $fields: arg_$fields);
      checkRequestSyncDevicesResponse(
          response as api.RequestSyncDevicesResponse);
    });

    unittest.test('method--sync', () async {
      final mock = HttpServerMock();
      final res = api.HomeGraphServiceApi(mock).devices;
      final arg_request = buildSyncRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SyncRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSyncRequest(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1/devices:sync'),
        );
        pathOffset += 15;

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
        final resp = convert.json.encode(buildSyncResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.sync(arg_request, $fields: arg_$fields);
      checkSyncResponse(response as api.SyncResponse);
    });
  });
}
