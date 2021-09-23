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

import 'package:googleapis_beta/firebasedatabase/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterDatabaseInstance = 0;
api.DatabaseInstance buildDatabaseInstance() {
  final o = api.DatabaseInstance();
  buildCounterDatabaseInstance++;
  if (buildCounterDatabaseInstance < 3) {
    o.databaseUrl = 'foo';
    o.name = 'foo';
    o.project = 'foo';
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterDatabaseInstance--;
  return o;
}

void checkDatabaseInstance(api.DatabaseInstance o) {
  buildCounterDatabaseInstance++;
  if (buildCounterDatabaseInstance < 3) {
    unittest.expect(
      o.databaseUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabaseInstance--;
}

core.int buildCounterDisableDatabaseInstanceRequest = 0;
api.DisableDatabaseInstanceRequest buildDisableDatabaseInstanceRequest() {
  final o = api.DisableDatabaseInstanceRequest();
  buildCounterDisableDatabaseInstanceRequest++;
  if (buildCounterDisableDatabaseInstanceRequest < 3) {}
  buildCounterDisableDatabaseInstanceRequest--;
  return o;
}

void checkDisableDatabaseInstanceRequest(api.DisableDatabaseInstanceRequest o) {
  buildCounterDisableDatabaseInstanceRequest++;
  if (buildCounterDisableDatabaseInstanceRequest < 3) {}
  buildCounterDisableDatabaseInstanceRequest--;
}

core.List<api.DatabaseInstance> buildUnnamed0() => [
      buildDatabaseInstance(),
      buildDatabaseInstance(),
    ];

void checkUnnamed0(core.List<api.DatabaseInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseInstance(o[0]);
  checkDatabaseInstance(o[1]);
}

core.int buildCounterListDatabaseInstancesResponse = 0;
api.ListDatabaseInstancesResponse buildListDatabaseInstancesResponse() {
  final o = api.ListDatabaseInstancesResponse();
  buildCounterListDatabaseInstancesResponse++;
  if (buildCounterListDatabaseInstancesResponse < 3) {
    o.instances = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterListDatabaseInstancesResponse--;
  return o;
}

void checkListDatabaseInstancesResponse(api.ListDatabaseInstancesResponse o) {
  buildCounterListDatabaseInstancesResponse++;
  if (buildCounterListDatabaseInstancesResponse < 3) {
    checkUnnamed0(o.instances!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDatabaseInstancesResponse--;
}

core.int buildCounterReenableDatabaseInstanceRequest = 0;
api.ReenableDatabaseInstanceRequest buildReenableDatabaseInstanceRequest() {
  final o = api.ReenableDatabaseInstanceRequest();
  buildCounterReenableDatabaseInstanceRequest++;
  if (buildCounterReenableDatabaseInstanceRequest < 3) {}
  buildCounterReenableDatabaseInstanceRequest--;
  return o;
}

void checkReenableDatabaseInstanceRequest(
    api.ReenableDatabaseInstanceRequest o) {
  buildCounterReenableDatabaseInstanceRequest++;
  if (buildCounterReenableDatabaseInstanceRequest < 3) {}
  buildCounterReenableDatabaseInstanceRequest--;
}

void main() {
  unittest.group('obj-schema-DatabaseInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseInstance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseInstance(od);
    });
  });

  unittest.group('obj-schema-DisableDatabaseInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableDatabaseInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableDatabaseInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableDatabaseInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-ListDatabaseInstancesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDatabaseInstancesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDatabaseInstancesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDatabaseInstancesResponse(od);
    });
  });

  unittest.group('obj-schema-ReenableDatabaseInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReenableDatabaseInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReenableDatabaseInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReenableDatabaseInstanceRequest(od);
    });
  });

  unittest.group('resource-ProjectsLocationsInstancesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseRealtimeDatabaseApi(mock).projects.locations.instances;
      final arg_request = buildDatabaseInstance();
      final arg_parent = 'foo';
      final arg_databaseId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DatabaseInstance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatabaseInstance(obj);

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
          unittest.equals('v1beta/'),
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
          queryMap['databaseId']!.first,
          unittest.equals(arg_databaseId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDatabaseInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          databaseId: arg_databaseId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkDatabaseInstance(response as api.DatabaseInstance);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseRealtimeDatabaseApi(mock).projects.locations.instances;
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
          unittest.equals('v1beta/'),
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
        final resp = convert.json.encode(buildDatabaseInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkDatabaseInstance(response as api.DatabaseInstance);
    });

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseRealtimeDatabaseApi(mock).projects.locations.instances;
      final arg_request = buildDisableDatabaseInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DisableDatabaseInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableDatabaseInstanceRequest(obj);

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
          unittest.equals('v1beta/'),
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
        final resp = convert.json.encode(buildDatabaseInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.disable(arg_request, arg_name, $fields: arg_$fields);
      checkDatabaseInstance(response as api.DatabaseInstance);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseRealtimeDatabaseApi(mock).projects.locations.instances;
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
          unittest.equals('v1beta/'),
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
        final resp = convert.json.encode(buildDatabaseInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDatabaseInstance(response as api.DatabaseInstance);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseRealtimeDatabaseApi(mock).projects.locations.instances;
      final arg_parent = 'foo';
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
          unittest.equals('v1beta/'),
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
        final resp = convert.json.encode(buildListDatabaseInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDatabaseInstancesResponse(
          response as api.ListDatabaseInstancesResponse);
    });

    unittest.test('method--reenable', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseRealtimeDatabaseApi(mock).projects.locations.instances;
      final arg_request = buildReenableDatabaseInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReenableDatabaseInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReenableDatabaseInstanceRequest(obj);

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
          unittest.equals('v1beta/'),
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
        final resp = convert.json.encode(buildDatabaseInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reenable(arg_request, arg_name, $fields: arg_$fields);
      checkDatabaseInstance(response as api.DatabaseInstance);
    });
  });
}
