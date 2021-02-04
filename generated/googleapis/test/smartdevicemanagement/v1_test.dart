// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/smartdevicemanagement/v1.dart' as api;

import '../test_shared.dart';

core.List<api.GoogleHomeEnterpriseSdmV1ParentRelation> buildUnnamed6247() {
  var o = <api.GoogleHomeEnterpriseSdmV1ParentRelation>[];
  o.add(buildGoogleHomeEnterpriseSdmV1ParentRelation());
  o.add(buildGoogleHomeEnterpriseSdmV1ParentRelation());
  return o;
}

void checkUnnamed6247(
    core.List<api.GoogleHomeEnterpriseSdmV1ParentRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleHomeEnterpriseSdmV1ParentRelation(
      o[0] as api.GoogleHomeEnterpriseSdmV1ParentRelation);
  checkGoogleHomeEnterpriseSdmV1ParentRelation(
      o[1] as api.GoogleHomeEnterpriseSdmV1ParentRelation);
}

core.Map<core.String, core.Object> buildUnnamed6248() {
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

void checkUnnamed6248(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleHomeEnterpriseSdmV1Device = 0;
api.GoogleHomeEnterpriseSdmV1Device buildGoogleHomeEnterpriseSdmV1Device() {
  var o = api.GoogleHomeEnterpriseSdmV1Device();
  buildCounterGoogleHomeEnterpriseSdmV1Device++;
  if (buildCounterGoogleHomeEnterpriseSdmV1Device < 3) {
    o.name = 'foo';
    o.parentRelations = buildUnnamed6247();
    o.traits = buildUnnamed6248();
    o.type = 'foo';
  }
  buildCounterGoogleHomeEnterpriseSdmV1Device--;
  return o;
}

void checkGoogleHomeEnterpriseSdmV1Device(
    api.GoogleHomeEnterpriseSdmV1Device o) {
  buildCounterGoogleHomeEnterpriseSdmV1Device++;
  if (buildCounterGoogleHomeEnterpriseSdmV1Device < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6247(o.parentRelations);
    checkUnnamed6248(o.traits);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleHomeEnterpriseSdmV1Device--;
}

core.Map<core.String, core.Object> buildUnnamed6249() {
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

void checkUnnamed6249(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest = 0;
api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest
    buildGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest() {
  var o = api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest();
  buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest++;
  if (buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest < 3) {
    o.command = 'foo';
    o.params = buildUnnamed6249();
  }
  buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest--;
  return o;
}

void checkGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest(
    api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest o) {
  buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest++;
  if (buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest < 3) {
    unittest.expect(o.command, unittest.equals('foo'));
    checkUnnamed6249(o.params);
  }
  buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest--;
}

core.Map<core.String, core.Object> buildUnnamed6250() {
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

void checkUnnamed6250(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse = 0;
api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse
    buildGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse() {
  var o = api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse();
  buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse++;
  if (buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse < 3) {
    o.results = buildUnnamed6250();
  }
  buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse--;
  return o;
}

void checkGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse(
    api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse o) {
  buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse++;
  if (buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse < 3) {
    checkUnnamed6250(o.results);
  }
  buildCounterGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse--;
}

core.List<api.GoogleHomeEnterpriseSdmV1Device> buildUnnamed6251() {
  var o = <api.GoogleHomeEnterpriseSdmV1Device>[];
  o.add(buildGoogleHomeEnterpriseSdmV1Device());
  o.add(buildGoogleHomeEnterpriseSdmV1Device());
  return o;
}

void checkUnnamed6251(core.List<api.GoogleHomeEnterpriseSdmV1Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleHomeEnterpriseSdmV1Device(
      o[0] as api.GoogleHomeEnterpriseSdmV1Device);
  checkGoogleHomeEnterpriseSdmV1Device(
      o[1] as api.GoogleHomeEnterpriseSdmV1Device);
}

core.int buildCounterGoogleHomeEnterpriseSdmV1ListDevicesResponse = 0;
api.GoogleHomeEnterpriseSdmV1ListDevicesResponse
    buildGoogleHomeEnterpriseSdmV1ListDevicesResponse() {
  var o = api.GoogleHomeEnterpriseSdmV1ListDevicesResponse();
  buildCounterGoogleHomeEnterpriseSdmV1ListDevicesResponse++;
  if (buildCounterGoogleHomeEnterpriseSdmV1ListDevicesResponse < 3) {
    o.devices = buildUnnamed6251();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleHomeEnterpriseSdmV1ListDevicesResponse--;
  return o;
}

void checkGoogleHomeEnterpriseSdmV1ListDevicesResponse(
    api.GoogleHomeEnterpriseSdmV1ListDevicesResponse o) {
  buildCounterGoogleHomeEnterpriseSdmV1ListDevicesResponse++;
  if (buildCounterGoogleHomeEnterpriseSdmV1ListDevicesResponse < 3) {
    checkUnnamed6251(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleHomeEnterpriseSdmV1ListDevicesResponse--;
}

core.List<api.GoogleHomeEnterpriseSdmV1Room> buildUnnamed6252() {
  var o = <api.GoogleHomeEnterpriseSdmV1Room>[];
  o.add(buildGoogleHomeEnterpriseSdmV1Room());
  o.add(buildGoogleHomeEnterpriseSdmV1Room());
  return o;
}

void checkUnnamed6252(core.List<api.GoogleHomeEnterpriseSdmV1Room> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleHomeEnterpriseSdmV1Room(o[0] as api.GoogleHomeEnterpriseSdmV1Room);
  checkGoogleHomeEnterpriseSdmV1Room(o[1] as api.GoogleHomeEnterpriseSdmV1Room);
}

core.int buildCounterGoogleHomeEnterpriseSdmV1ListRoomsResponse = 0;
api.GoogleHomeEnterpriseSdmV1ListRoomsResponse
    buildGoogleHomeEnterpriseSdmV1ListRoomsResponse() {
  var o = api.GoogleHomeEnterpriseSdmV1ListRoomsResponse();
  buildCounterGoogleHomeEnterpriseSdmV1ListRoomsResponse++;
  if (buildCounterGoogleHomeEnterpriseSdmV1ListRoomsResponse < 3) {
    o.nextPageToken = 'foo';
    o.rooms = buildUnnamed6252();
  }
  buildCounterGoogleHomeEnterpriseSdmV1ListRoomsResponse--;
  return o;
}

void checkGoogleHomeEnterpriseSdmV1ListRoomsResponse(
    api.GoogleHomeEnterpriseSdmV1ListRoomsResponse o) {
  buildCounterGoogleHomeEnterpriseSdmV1ListRoomsResponse++;
  if (buildCounterGoogleHomeEnterpriseSdmV1ListRoomsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6252(o.rooms);
  }
  buildCounterGoogleHomeEnterpriseSdmV1ListRoomsResponse--;
}

core.List<api.GoogleHomeEnterpriseSdmV1Structure> buildUnnamed6253() {
  var o = <api.GoogleHomeEnterpriseSdmV1Structure>[];
  o.add(buildGoogleHomeEnterpriseSdmV1Structure());
  o.add(buildGoogleHomeEnterpriseSdmV1Structure());
  return o;
}

void checkUnnamed6253(core.List<api.GoogleHomeEnterpriseSdmV1Structure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleHomeEnterpriseSdmV1Structure(
      o[0] as api.GoogleHomeEnterpriseSdmV1Structure);
  checkGoogleHomeEnterpriseSdmV1Structure(
      o[1] as api.GoogleHomeEnterpriseSdmV1Structure);
}

core.int buildCounterGoogleHomeEnterpriseSdmV1ListStructuresResponse = 0;
api.GoogleHomeEnterpriseSdmV1ListStructuresResponse
    buildGoogleHomeEnterpriseSdmV1ListStructuresResponse() {
  var o = api.GoogleHomeEnterpriseSdmV1ListStructuresResponse();
  buildCounterGoogleHomeEnterpriseSdmV1ListStructuresResponse++;
  if (buildCounterGoogleHomeEnterpriseSdmV1ListStructuresResponse < 3) {
    o.nextPageToken = 'foo';
    o.structures = buildUnnamed6253();
  }
  buildCounterGoogleHomeEnterpriseSdmV1ListStructuresResponse--;
  return o;
}

void checkGoogleHomeEnterpriseSdmV1ListStructuresResponse(
    api.GoogleHomeEnterpriseSdmV1ListStructuresResponse o) {
  buildCounterGoogleHomeEnterpriseSdmV1ListStructuresResponse++;
  if (buildCounterGoogleHomeEnterpriseSdmV1ListStructuresResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6253(o.structures);
  }
  buildCounterGoogleHomeEnterpriseSdmV1ListStructuresResponse--;
}

core.int buildCounterGoogleHomeEnterpriseSdmV1ParentRelation = 0;
api.GoogleHomeEnterpriseSdmV1ParentRelation
    buildGoogleHomeEnterpriseSdmV1ParentRelation() {
  var o = api.GoogleHomeEnterpriseSdmV1ParentRelation();
  buildCounterGoogleHomeEnterpriseSdmV1ParentRelation++;
  if (buildCounterGoogleHomeEnterpriseSdmV1ParentRelation < 3) {
    o.displayName = 'foo';
    o.parent = 'foo';
  }
  buildCounterGoogleHomeEnterpriseSdmV1ParentRelation--;
  return o;
}

void checkGoogleHomeEnterpriseSdmV1ParentRelation(
    api.GoogleHomeEnterpriseSdmV1ParentRelation o) {
  buildCounterGoogleHomeEnterpriseSdmV1ParentRelation++;
  if (buildCounterGoogleHomeEnterpriseSdmV1ParentRelation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
  }
  buildCounterGoogleHomeEnterpriseSdmV1ParentRelation--;
}

core.Map<core.String, core.Object> buildUnnamed6254() {
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

void checkUnnamed6254(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleHomeEnterpriseSdmV1Room = 0;
api.GoogleHomeEnterpriseSdmV1Room buildGoogleHomeEnterpriseSdmV1Room() {
  var o = api.GoogleHomeEnterpriseSdmV1Room();
  buildCounterGoogleHomeEnterpriseSdmV1Room++;
  if (buildCounterGoogleHomeEnterpriseSdmV1Room < 3) {
    o.name = 'foo';
    o.traits = buildUnnamed6254();
  }
  buildCounterGoogleHomeEnterpriseSdmV1Room--;
  return o;
}

void checkGoogleHomeEnterpriseSdmV1Room(api.GoogleHomeEnterpriseSdmV1Room o) {
  buildCounterGoogleHomeEnterpriseSdmV1Room++;
  if (buildCounterGoogleHomeEnterpriseSdmV1Room < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6254(o.traits);
  }
  buildCounterGoogleHomeEnterpriseSdmV1Room--;
}

core.Map<core.String, core.Object> buildUnnamed6255() {
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

void checkUnnamed6255(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleHomeEnterpriseSdmV1Structure = 0;
api.GoogleHomeEnterpriseSdmV1Structure
    buildGoogleHomeEnterpriseSdmV1Structure() {
  var o = api.GoogleHomeEnterpriseSdmV1Structure();
  buildCounterGoogleHomeEnterpriseSdmV1Structure++;
  if (buildCounterGoogleHomeEnterpriseSdmV1Structure < 3) {
    o.name = 'foo';
    o.traits = buildUnnamed6255();
  }
  buildCounterGoogleHomeEnterpriseSdmV1Structure--;
  return o;
}

void checkGoogleHomeEnterpriseSdmV1Structure(
    api.GoogleHomeEnterpriseSdmV1Structure o) {
  buildCounterGoogleHomeEnterpriseSdmV1Structure++;
  if (buildCounterGoogleHomeEnterpriseSdmV1Structure < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6255(o.traits);
  }
  buildCounterGoogleHomeEnterpriseSdmV1Structure--;
}

void main() {
  unittest.group('obj-schema-GoogleHomeEnterpriseSdmV1Device', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleHomeEnterpriseSdmV1Device();
      var od = api.GoogleHomeEnterpriseSdmV1Device.fromJson(o.toJson());
      checkGoogleHomeEnterpriseSdmV1Device(
          od as api.GoogleHomeEnterpriseSdmV1Device);
    });
  });

  unittest.group(
      'obj-schema-GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest();
      var od =
          api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest.fromJson(
              o.toJson());
      checkGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest(
          od as api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse();
      var od =
          api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse.fromJson(
              o.toJson());
      checkGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse(
          od as api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse);
    });
  });

  unittest.group('obj-schema-GoogleHomeEnterpriseSdmV1ListDevicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleHomeEnterpriseSdmV1ListDevicesResponse();
      var od =
          api.GoogleHomeEnterpriseSdmV1ListDevicesResponse.fromJson(o.toJson());
      checkGoogleHomeEnterpriseSdmV1ListDevicesResponse(
          od as api.GoogleHomeEnterpriseSdmV1ListDevicesResponse);
    });
  });

  unittest.group('obj-schema-GoogleHomeEnterpriseSdmV1ListRoomsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleHomeEnterpriseSdmV1ListRoomsResponse();
      var od =
          api.GoogleHomeEnterpriseSdmV1ListRoomsResponse.fromJson(o.toJson());
      checkGoogleHomeEnterpriseSdmV1ListRoomsResponse(
          od as api.GoogleHomeEnterpriseSdmV1ListRoomsResponse);
    });
  });

  unittest.group('obj-schema-GoogleHomeEnterpriseSdmV1ListStructuresResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleHomeEnterpriseSdmV1ListStructuresResponse();
      var od = api.GoogleHomeEnterpriseSdmV1ListStructuresResponse.fromJson(
          o.toJson());
      checkGoogleHomeEnterpriseSdmV1ListStructuresResponse(
          od as api.GoogleHomeEnterpriseSdmV1ListStructuresResponse);
    });
  });

  unittest.group('obj-schema-GoogleHomeEnterpriseSdmV1ParentRelation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleHomeEnterpriseSdmV1ParentRelation();
      var od = api.GoogleHomeEnterpriseSdmV1ParentRelation.fromJson(o.toJson());
      checkGoogleHomeEnterpriseSdmV1ParentRelation(
          od as api.GoogleHomeEnterpriseSdmV1ParentRelation);
    });
  });

  unittest.group('obj-schema-GoogleHomeEnterpriseSdmV1Room', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleHomeEnterpriseSdmV1Room();
      var od = api.GoogleHomeEnterpriseSdmV1Room.fromJson(o.toJson());
      checkGoogleHomeEnterpriseSdmV1Room(
          od as api.GoogleHomeEnterpriseSdmV1Room);
    });
  });

  unittest.group('obj-schema-GoogleHomeEnterpriseSdmV1Structure', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleHomeEnterpriseSdmV1Structure();
      var od = api.GoogleHomeEnterpriseSdmV1Structure.fromJson(o.toJson());
      checkGoogleHomeEnterpriseSdmV1Structure(
          od as api.GoogleHomeEnterpriseSdmV1Structure);
    });
  });

  unittest.group('resource-EnterprisesDevicesResource', () {
    unittest.test('method--executeCommand', () {
      var mock = HttpServerMock();
      var res = api.SmartDeviceManagementApi(mock).enterprises.devices;
      var arg_request =
          buildGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest(
            obj as api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .executeCommand(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse(response
            as api.GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SmartDeviceManagementApi(mock).enterprises.devices;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleHomeEnterpriseSdmV1Device());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleHomeEnterpriseSdmV1Device(
            response as api.GoogleHomeEnterpriseSdmV1Device);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SmartDeviceManagementApi(mock).enterprises.devices;
      var arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleHomeEnterpriseSdmV1ListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleHomeEnterpriseSdmV1ListDevicesResponse(
            response as api.GoogleHomeEnterpriseSdmV1ListDevicesResponse);
      })));
    });
  });

  unittest.group('resource-EnterprisesStructuresResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SmartDeviceManagementApi(mock).enterprises.structures;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleHomeEnterpriseSdmV1Structure());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleHomeEnterpriseSdmV1Structure(
            response as api.GoogleHomeEnterpriseSdmV1Structure);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SmartDeviceManagementApi(mock).enterprises.structures;
      var arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleHomeEnterpriseSdmV1ListStructuresResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleHomeEnterpriseSdmV1ListStructuresResponse(
            response as api.GoogleHomeEnterpriseSdmV1ListStructuresResponse);
      })));
    });
  });

  unittest.group('resource-EnterprisesStructuresRoomsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SmartDeviceManagementApi(mock).enterprises.structures.rooms;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleHomeEnterpriseSdmV1Room());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleHomeEnterpriseSdmV1Room(
            response as api.GoogleHomeEnterpriseSdmV1Room);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SmartDeviceManagementApi(mock).enterprises.structures.rooms;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleHomeEnterpriseSdmV1ListRoomsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleHomeEnterpriseSdmV1ListRoomsResponse(
            response as api.GoogleHomeEnterpriseSdmV1ListRoomsResponse);
      })));
    });
  });
}
