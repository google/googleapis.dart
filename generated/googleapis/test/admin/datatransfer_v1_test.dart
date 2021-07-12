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

import 'package:googleapis/admin/datatransfer_v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.ApplicationTransferParam> buildUnnamed6228() {
  final o = <api.ApplicationTransferParam>[];
  o.add(buildApplicationTransferParam());
  o.add(buildApplicationTransferParam());
  return o;
}

void checkUnnamed6228(core.List<api.ApplicationTransferParam> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationTransferParam(o[0]);
  checkApplicationTransferParam(o[1]);
}

core.int buildCounterApplication = 0;
api.Application buildApplication() {
  final o = api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.transferParams = buildUnnamed6228();
  }
  buildCounterApplication--;
  return o;
}

void checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6228(o.transferParams!);
  }
  buildCounterApplication--;
}

core.List<api.ApplicationTransferParam> buildUnnamed6229() {
  final o = <api.ApplicationTransferParam>[];
  o.add(buildApplicationTransferParam());
  o.add(buildApplicationTransferParam());
  return o;
}

void checkUnnamed6229(core.List<api.ApplicationTransferParam> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationTransferParam(o[0]);
  checkApplicationTransferParam(o[1]);
}

core.int buildCounterApplicationDataTransfer = 0;
api.ApplicationDataTransfer buildApplicationDataTransfer() {
  final o = api.ApplicationDataTransfer();
  buildCounterApplicationDataTransfer++;
  if (buildCounterApplicationDataTransfer < 3) {
    o.applicationId = 'foo';
    o.applicationTransferParams = buildUnnamed6229();
    o.applicationTransferStatus = 'foo';
  }
  buildCounterApplicationDataTransfer--;
  return o;
}

void checkApplicationDataTransfer(api.ApplicationDataTransfer o) {
  buildCounterApplicationDataTransfer++;
  if (buildCounterApplicationDataTransfer < 3) {
    unittest.expect(
      o.applicationId!,
      unittest.equals('foo'),
    );
    checkUnnamed6229(o.applicationTransferParams!);
    unittest.expect(
      o.applicationTransferStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplicationDataTransfer--;
}

core.List<core.String> buildUnnamed6230() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6230(core.List<core.String> o) {
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

core.int buildCounterApplicationTransferParam = 0;
api.ApplicationTransferParam buildApplicationTransferParam() {
  final o = api.ApplicationTransferParam();
  buildCounterApplicationTransferParam++;
  if (buildCounterApplicationTransferParam < 3) {
    o.key = 'foo';
    o.value = buildUnnamed6230();
  }
  buildCounterApplicationTransferParam--;
  return o;
}

void checkApplicationTransferParam(api.ApplicationTransferParam o) {
  buildCounterApplicationTransferParam++;
  if (buildCounterApplicationTransferParam < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkUnnamed6230(o.value!);
  }
  buildCounterApplicationTransferParam--;
}

core.List<api.Application> buildUnnamed6231() {
  final o = <api.Application>[];
  o.add(buildApplication());
  o.add(buildApplication());
  return o;
}

void checkUnnamed6231(core.List<api.Application> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplication(o[0]);
  checkApplication(o[1]);
}

core.int buildCounterApplicationsListResponse = 0;
api.ApplicationsListResponse buildApplicationsListResponse() {
  final o = api.ApplicationsListResponse();
  buildCounterApplicationsListResponse++;
  if (buildCounterApplicationsListResponse < 3) {
    o.applications = buildUnnamed6231();
    o.etag = 'foo';
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterApplicationsListResponse--;
  return o;
}

void checkApplicationsListResponse(api.ApplicationsListResponse o) {
  buildCounterApplicationsListResponse++;
  if (buildCounterApplicationsListResponse < 3) {
    checkUnnamed6231(o.applications!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplicationsListResponse--;
}

core.List<api.ApplicationDataTransfer> buildUnnamed6232() {
  final o = <api.ApplicationDataTransfer>[];
  o.add(buildApplicationDataTransfer());
  o.add(buildApplicationDataTransfer());
  return o;
}

void checkUnnamed6232(core.List<api.ApplicationDataTransfer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationDataTransfer(o[0]);
  checkApplicationDataTransfer(o[1]);
}

core.int buildCounterDataTransfer = 0;
api.DataTransfer buildDataTransfer() {
  final o = api.DataTransfer();
  buildCounterDataTransfer++;
  if (buildCounterDataTransfer < 3) {
    o.applicationDataTransfers = buildUnnamed6232();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.newOwnerUserId = 'foo';
    o.oldOwnerUserId = 'foo';
    o.overallTransferStatusCode = 'foo';
    o.requestTime = core.DateTime.parse('2002-02-27T14:01:02');
  }
  buildCounterDataTransfer--;
  return o;
}

void checkDataTransfer(api.DataTransfer o) {
  buildCounterDataTransfer++;
  if (buildCounterDataTransfer < 3) {
    checkUnnamed6232(o.applicationDataTransfers!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newOwnerUserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oldOwnerUserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.overallTransferStatusCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
  }
  buildCounterDataTransfer--;
}

core.List<api.DataTransfer> buildUnnamed6233() {
  final o = <api.DataTransfer>[];
  o.add(buildDataTransfer());
  o.add(buildDataTransfer());
  return o;
}

void checkUnnamed6233(core.List<api.DataTransfer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataTransfer(o[0]);
  checkDataTransfer(o[1]);
}

core.int buildCounterDataTransfersListResponse = 0;
api.DataTransfersListResponse buildDataTransfersListResponse() {
  final o = api.DataTransfersListResponse();
  buildCounterDataTransfersListResponse++;
  if (buildCounterDataTransfersListResponse < 3) {
    o.dataTransfers = buildUnnamed6233();
    o.etag = 'foo';
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterDataTransfersListResponse--;
  return o;
}

void checkDataTransfersListResponse(api.DataTransfersListResponse o) {
  buildCounterDataTransfersListResponse++;
  if (buildCounterDataTransfersListResponse < 3) {
    checkUnnamed6233(o.dataTransfers!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataTransfersListResponse--;
}

void main() {
  unittest.group('obj-schema-Application', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Application.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplication(od);
    });
  });

  unittest.group('obj-schema-ApplicationDataTransfer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationDataTransfer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationDataTransfer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationDataTransfer(od);
    });
  });

  unittest.group('obj-schema-ApplicationTransferParam', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationTransferParam();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationTransferParam.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationTransferParam(od);
    });
  });

  unittest.group('obj-schema-ApplicationsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationsListResponse(od);
    });
  });

  unittest.group('obj-schema-DataTransfer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataTransfer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataTransfer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataTransfer(od);
    });
  });

  unittest.group('obj-schema-DataTransfersListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataTransfersListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataTransfersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataTransfersListResponse(od);
    });
  });

  unittest.group('resource-ApplicationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataTransferApi(mock).applications;
      final arg_applicationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 35),
          unittest.equals('admin/datatransfer/v1/applications/'),
        );
        pathOffset += 35;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_applicationId'),
        );

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
        final resp = convert.json.encode(buildApplication());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_applicationId, $fields: arg_$fields);
      checkApplication(response as api.Application);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataTransferApi(mock).applications;
      final arg_customerId = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 34),
          unittest.equals('admin/datatransfer/v1/applications'),
        );
        pathOffset += 34;

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
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildApplicationsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          customerId: arg_customerId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkApplicationsListResponse(response as api.ApplicationsListResponse);
    });
  });

  unittest.group('resource-TransfersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataTransferApi(mock).transfers;
      final arg_dataTransferId = 'foo';
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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('admin/datatransfer/v1/transfers/'),
        );
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_dataTransferId'),
        );

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
        final resp = convert.json.encode(buildDataTransfer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_dataTransferId, $fields: arg_$fields);
      checkDataTransfer(response as api.DataTransfer);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DataTransferApi(mock).transfers;
      final arg_request = buildDataTransfer();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DataTransfer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDataTransfer(obj);

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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('admin/datatransfer/v1/transfers'),
        );
        pathOffset += 31;

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
        final resp = convert.json.encode(buildDataTransfer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkDataTransfer(response as api.DataTransfer);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataTransferApi(mock).transfers;
      final arg_customerId = 'foo';
      final arg_maxResults = 42;
      final arg_newOwnerUserId = 'foo';
      final arg_oldOwnerUserId = 'foo';
      final arg_pageToken = 'foo';
      final arg_status = 'foo';
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('admin/datatransfer/v1/transfers'),
        );
        pathOffset += 31;

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
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['newOwnerUserId']!.first,
          unittest.equals(arg_newOwnerUserId),
        );
        unittest.expect(
          queryMap['oldOwnerUserId']!.first,
          unittest.equals(arg_oldOwnerUserId),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['status']!.first,
          unittest.equals(arg_status),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataTransfersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          customerId: arg_customerId,
          maxResults: arg_maxResults,
          newOwnerUserId: arg_newOwnerUserId,
          oldOwnerUserId: arg_oldOwnerUserId,
          pageToken: arg_pageToken,
          status: arg_status,
          $fields: arg_$fields);
      checkDataTransfersListResponse(response as api.DataTransfersListResponse);
    });
  });
}
