// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/firebasedatabase/v1beta.dart' as api;

import '../test_shared.dart';

core.int buildCounterDatabaseInstance = 0;
api.DatabaseInstance buildDatabaseInstance() {
  var o = api.DatabaseInstance();
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
    unittest.expect(o.databaseUrl, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.project, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDatabaseInstance--;
}

core.int buildCounterDisableDatabaseInstanceRequest = 0;
api.DisableDatabaseInstanceRequest buildDisableDatabaseInstanceRequest() {
  var o = api.DisableDatabaseInstanceRequest();
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

core.List<api.DatabaseInstance> buildUnnamed7753() {
  var o = <api.DatabaseInstance>[];
  o.add(buildDatabaseInstance());
  o.add(buildDatabaseInstance());
  return o;
}

void checkUnnamed7753(core.List<api.DatabaseInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseInstance(o[0] as api.DatabaseInstance);
  checkDatabaseInstance(o[1] as api.DatabaseInstance);
}

core.int buildCounterListDatabaseInstancesResponse = 0;
api.ListDatabaseInstancesResponse buildListDatabaseInstancesResponse() {
  var o = api.ListDatabaseInstancesResponse();
  buildCounterListDatabaseInstancesResponse++;
  if (buildCounterListDatabaseInstancesResponse < 3) {
    o.instances = buildUnnamed7753();
    o.nextPageToken = 'foo';
  }
  buildCounterListDatabaseInstancesResponse--;
  return o;
}

void checkListDatabaseInstancesResponse(api.ListDatabaseInstancesResponse o) {
  buildCounterListDatabaseInstancesResponse++;
  if (buildCounterListDatabaseInstancesResponse < 3) {
    checkUnnamed7753(o.instances);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDatabaseInstancesResponse--;
}

core.int buildCounterReenableDatabaseInstanceRequest = 0;
api.ReenableDatabaseInstanceRequest buildReenableDatabaseInstanceRequest() {
  var o = api.ReenableDatabaseInstanceRequest();
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
    unittest.test('to-json--from-json', () {
      var o = buildDatabaseInstance();
      var od = api.DatabaseInstance.fromJson(o.toJson());
      checkDatabaseInstance(od as api.DatabaseInstance);
    });
  });

  unittest.group('obj-schema-DisableDatabaseInstanceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDisableDatabaseInstanceRequest();
      var od = api.DisableDatabaseInstanceRequest.fromJson(o.toJson());
      checkDisableDatabaseInstanceRequest(
          od as api.DisableDatabaseInstanceRequest);
    });
  });

  unittest.group('obj-schema-ListDatabaseInstancesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListDatabaseInstancesResponse();
      var od = api.ListDatabaseInstancesResponse.fromJson(o.toJson());
      checkListDatabaseInstancesResponse(
          od as api.ListDatabaseInstancesResponse);
    });
  });

  unittest.group('obj-schema-ReenableDatabaseInstanceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReenableDatabaseInstanceRequest();
      var od = api.ReenableDatabaseInstanceRequest.fromJson(o.toJson());
      checkReenableDatabaseInstanceRequest(
          od as api.ReenableDatabaseInstanceRequest);
    });
  });

  unittest.group('resource-ProjectsLocationsInstancesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res =
          api.FirebaseRealtimeDatabaseApi(mock).projects.locations.instances;
      var arg_request = buildDatabaseInstance();
      var arg_parent = 'foo';
      var arg_databaseId = 'foo';
      var arg_validateOnly = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DatabaseInstance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatabaseInstance(obj as api.DatabaseInstance);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
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
            queryMap["databaseId"].first, unittest.equals(arg_databaseId));
        unittest.expect(queryMap["validateOnly"].first,
            unittest.equals("$arg_validateOnly"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatabaseInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              databaseId: arg_databaseId,
              validateOnly: arg_validateOnly,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatabaseInstance(response as api.DatabaseInstance);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res =
          api.FirebaseRealtimeDatabaseApi(mock).projects.locations.instances;
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
            unittest.equals("v1beta/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatabaseInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatabaseInstance(response as api.DatabaseInstance);
      })));
    });

    unittest.test('method--disable', () {
      var mock = HttpServerMock();
      var res =
          api.FirebaseRealtimeDatabaseApi(mock).projects.locations.instances;
      var arg_request = buildDisableDatabaseInstanceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DisableDatabaseInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableDatabaseInstanceRequest(
            obj as api.DisableDatabaseInstanceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatabaseInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .disable(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatabaseInstance(response as api.DatabaseInstance);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res =
          api.FirebaseRealtimeDatabaseApi(mock).projects.locations.instances;
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
            unittest.equals("v1beta/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatabaseInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatabaseInstance(response as api.DatabaseInstance);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.FirebaseRealtimeDatabaseApi(mock).projects.locations.instances;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDatabaseInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDatabaseInstancesResponse(
            response as api.ListDatabaseInstancesResponse);
      })));
    });

    unittest.test('method--reenable', () {
      var mock = HttpServerMock();
      var res =
          api.FirebaseRealtimeDatabaseApi(mock).projects.locations.instances;
      var arg_request = buildReenableDatabaseInstanceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReenableDatabaseInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReenableDatabaseInstanceRequest(
            obj as api.ReenableDatabaseInstanceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatabaseInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reenable(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatabaseInstance(response as api.DatabaseInstance);
      })));
    });
  });
}
