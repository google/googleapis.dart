// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
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

library googleapis.admin.datatransfer_v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/admin/datatransfer_v1.dart' as api;

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

core.List<api.ApplicationTransferParam> buildUnnamed4811() {
  var o = <api.ApplicationTransferParam>[];
  o.add(buildApplicationTransferParam());
  o.add(buildApplicationTransferParam());
  return o;
}

void checkUnnamed4811(core.List<api.ApplicationTransferParam> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationTransferParam(o[0]);
  checkApplicationTransferParam(o[1]);
}

core.int buildCounterApplication = 0;
api.Application buildApplication() {
  var o = api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.transferParams = buildUnnamed4811();
  }
  buildCounterApplication--;
  return o;
}

void checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4811(o.transferParams);
  }
  buildCounterApplication--;
}

core.List<api.ApplicationTransferParam> buildUnnamed4812() {
  var o = <api.ApplicationTransferParam>[];
  o.add(buildApplicationTransferParam());
  o.add(buildApplicationTransferParam());
  return o;
}

void checkUnnamed4812(core.List<api.ApplicationTransferParam> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationTransferParam(o[0]);
  checkApplicationTransferParam(o[1]);
}

core.int buildCounterApplicationDataTransfer = 0;
api.ApplicationDataTransfer buildApplicationDataTransfer() {
  var o = api.ApplicationDataTransfer();
  buildCounterApplicationDataTransfer++;
  if (buildCounterApplicationDataTransfer < 3) {
    o.applicationId = 'foo';
    o.applicationTransferParams = buildUnnamed4812();
    o.applicationTransferStatus = 'foo';
  }
  buildCounterApplicationDataTransfer--;
  return o;
}

void checkApplicationDataTransfer(api.ApplicationDataTransfer o) {
  buildCounterApplicationDataTransfer++;
  if (buildCounterApplicationDataTransfer < 3) {
    unittest.expect(o.applicationId, unittest.equals('foo'));
    checkUnnamed4812(o.applicationTransferParams);
    unittest.expect(o.applicationTransferStatus, unittest.equals('foo'));
  }
  buildCounterApplicationDataTransfer--;
}

core.List<core.String> buildUnnamed4813() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4813(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApplicationTransferParam = 0;
api.ApplicationTransferParam buildApplicationTransferParam() {
  var o = api.ApplicationTransferParam();
  buildCounterApplicationTransferParam++;
  if (buildCounterApplicationTransferParam < 3) {
    o.key = 'foo';
    o.value = buildUnnamed4813();
  }
  buildCounterApplicationTransferParam--;
  return o;
}

void checkApplicationTransferParam(api.ApplicationTransferParam o) {
  buildCounterApplicationTransferParam++;
  if (buildCounterApplicationTransferParam < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed4813(o.value);
  }
  buildCounterApplicationTransferParam--;
}

core.List<api.Application> buildUnnamed4814() {
  var o = <api.Application>[];
  o.add(buildApplication());
  o.add(buildApplication());
  return o;
}

void checkUnnamed4814(core.List<api.Application> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplication(o[0]);
  checkApplication(o[1]);
}

core.int buildCounterApplicationsListResponse = 0;
api.ApplicationsListResponse buildApplicationsListResponse() {
  var o = api.ApplicationsListResponse();
  buildCounterApplicationsListResponse++;
  if (buildCounterApplicationsListResponse < 3) {
    o.applications = buildUnnamed4814();
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
    checkUnnamed4814(o.applications);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterApplicationsListResponse--;
}

core.List<api.ApplicationDataTransfer> buildUnnamed4815() {
  var o = <api.ApplicationDataTransfer>[];
  o.add(buildApplicationDataTransfer());
  o.add(buildApplicationDataTransfer());
  return o;
}

void checkUnnamed4815(core.List<api.ApplicationDataTransfer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationDataTransfer(o[0]);
  checkApplicationDataTransfer(o[1]);
}

core.int buildCounterDataTransfer = 0;
api.DataTransfer buildDataTransfer() {
  var o = api.DataTransfer();
  buildCounterDataTransfer++;
  if (buildCounterDataTransfer < 3) {
    o.applicationDataTransfers = buildUnnamed4815();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.newOwnerUserId = 'foo';
    o.oldOwnerUserId = 'foo';
    o.overallTransferStatusCode = 'foo';
    o.requestTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterDataTransfer--;
  return o;
}

void checkDataTransfer(api.DataTransfer o) {
  buildCounterDataTransfer++;
  if (buildCounterDataTransfer < 3) {
    checkUnnamed4815(o.applicationDataTransfers);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.newOwnerUserId, unittest.equals('foo'));
    unittest.expect(o.oldOwnerUserId, unittest.equals('foo'));
    unittest.expect(o.overallTransferStatusCode, unittest.equals('foo'));
    unittest.expect(o.requestTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterDataTransfer--;
}

core.List<api.DataTransfer> buildUnnamed4816() {
  var o = <api.DataTransfer>[];
  o.add(buildDataTransfer());
  o.add(buildDataTransfer());
  return o;
}

void checkUnnamed4816(core.List<api.DataTransfer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataTransfer(o[0]);
  checkDataTransfer(o[1]);
}

core.int buildCounterDataTransfersListResponse = 0;
api.DataTransfersListResponse buildDataTransfersListResponse() {
  var o = api.DataTransfersListResponse();
  buildCounterDataTransfersListResponse++;
  if (buildCounterDataTransfersListResponse < 3) {
    o.dataTransfers = buildUnnamed4816();
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
    checkUnnamed4816(o.dataTransfers);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDataTransfersListResponse--;
}

void main() {
  unittest.group('obj-schema-Application', () {
    unittest.test('to-json--from-json', () {
      var o = buildApplication();
      var od = api.Application.fromJson(o.toJson());
      checkApplication(od);
    });
  });

  unittest.group('obj-schema-ApplicationDataTransfer', () {
    unittest.test('to-json--from-json', () {
      var o = buildApplicationDataTransfer();
      var od = api.ApplicationDataTransfer.fromJson(o.toJson());
      checkApplicationDataTransfer(od);
    });
  });

  unittest.group('obj-schema-ApplicationTransferParam', () {
    unittest.test('to-json--from-json', () {
      var o = buildApplicationTransferParam();
      var od = api.ApplicationTransferParam.fromJson(o.toJson());
      checkApplicationTransferParam(od);
    });
  });

  unittest.group('obj-schema-ApplicationsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildApplicationsListResponse();
      var od = api.ApplicationsListResponse.fromJson(o.toJson());
      checkApplicationsListResponse(od);
    });
  });

  unittest.group('obj-schema-DataTransfer', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataTransfer();
      var od = api.DataTransfer.fromJson(o.toJson());
      checkDataTransfer(od);
    });
  });

  unittest.group('obj-schema-DataTransfersListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataTransfersListResponse();
      var od = api.DataTransfersListResponse.fromJson(o.toJson());
      checkDataTransfersListResponse(od);
    });
  });

  unittest.group('resource-ApplicationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ApplicationsResourceApi res = api.AdminApi(mock).applications;
      var arg_applicationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("admin/datatransfer/v1/applications/"));
        pathOffset += 35;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_applicationId'));

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
        var resp = convert.json.encode(buildApplication());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_applicationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApplication(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ApplicationsResourceApi res = api.AdminApi(mock).applications;
      var arg_customerId = 'foo';
      var arg_maxResults = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 34),
            unittest.equals("admin/datatransfer/v1/applications"));
        pathOffset += 34;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApplicationsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              customerId: arg_customerId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApplicationsListResponse(response);
      })));
    });
  });

  unittest.group('resource-TransfersResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.TransfersResourceApi res = api.AdminApi(mock).transfers;
      var arg_dataTransferId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("admin/datatransfer/v1/transfers/"));
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_dataTransferId'));

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
        var resp = convert.json.encode(buildDataTransfer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_dataTransferId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataTransfer(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.TransfersResourceApi res = api.AdminApi(mock).transfers;
      var arg_request = buildDataTransfer();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DataTransfer.fromJson(json);
        checkDataTransfer(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("admin/datatransfer/v1/transfers"));
        pathOffset += 31;

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
        var resp = convert.json.encode(buildDataTransfer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataTransfer(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.TransfersResourceApi res = api.AdminApi(mock).transfers;
      var arg_customerId = 'foo';
      var arg_maxResults = 42;
      var arg_newOwnerUserId = 'foo';
      var arg_oldOwnerUserId = 'foo';
      var arg_pageToken = 'foo';
      var arg_status = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("admin/datatransfer/v1/transfers"));
        pathOffset += 31;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["newOwnerUserId"].first,
            unittest.equals(arg_newOwnerUserId));
        unittest.expect(queryMap["oldOwnerUserId"].first,
            unittest.equals(arg_oldOwnerUserId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["status"].first, unittest.equals(arg_status));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDataTransfersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              customerId: arg_customerId,
              maxResults: arg_maxResults,
              newOwnerUserId: arg_newOwnerUserId,
              oldOwnerUserId: arg_oldOwnerUserId,
              pageToken: arg_pageToken,
              status: arg_status,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataTransfersListResponse(response);
      })));
    });
  });
}
