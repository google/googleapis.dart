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

buildUnnamed5273() {
  var o = new core.List<api.ApplicationTransferParam>();
  o.add(buildApplicationTransferParam());
  o.add(buildApplicationTransferParam());
  return o;
}

checkUnnamed5273(core.List<api.ApplicationTransferParam> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationTransferParam(o[0]);
  checkApplicationTransferParam(o[1]);
}

core.int buildCounterApplication = 0;
buildApplication() {
  var o = new api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.transferParams = buildUnnamed5273();
  }
  buildCounterApplication--;
  return o;
}

checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5273(o.transferParams);
  }
  buildCounterApplication--;
}

buildUnnamed5274() {
  var o = new core.List<api.ApplicationTransferParam>();
  o.add(buildApplicationTransferParam());
  o.add(buildApplicationTransferParam());
  return o;
}

checkUnnamed5274(core.List<api.ApplicationTransferParam> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationTransferParam(o[0]);
  checkApplicationTransferParam(o[1]);
}

core.int buildCounterApplicationDataTransfer = 0;
buildApplicationDataTransfer() {
  var o = new api.ApplicationDataTransfer();
  buildCounterApplicationDataTransfer++;
  if (buildCounterApplicationDataTransfer < 3) {
    o.applicationId = "foo";
    o.applicationTransferParams = buildUnnamed5274();
    o.applicationTransferStatus = "foo";
  }
  buildCounterApplicationDataTransfer--;
  return o;
}

checkApplicationDataTransfer(api.ApplicationDataTransfer o) {
  buildCounterApplicationDataTransfer++;
  if (buildCounterApplicationDataTransfer < 3) {
    unittest.expect(o.applicationId, unittest.equals('foo'));
    checkUnnamed5274(o.applicationTransferParams);
    unittest.expect(o.applicationTransferStatus, unittest.equals('foo'));
  }
  buildCounterApplicationDataTransfer--;
}

buildUnnamed5275() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5275(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApplicationTransferParam = 0;
buildApplicationTransferParam() {
  var o = new api.ApplicationTransferParam();
  buildCounterApplicationTransferParam++;
  if (buildCounterApplicationTransferParam < 3) {
    o.key = "foo";
    o.value = buildUnnamed5275();
  }
  buildCounterApplicationTransferParam--;
  return o;
}

checkApplicationTransferParam(api.ApplicationTransferParam o) {
  buildCounterApplicationTransferParam++;
  if (buildCounterApplicationTransferParam < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed5275(o.value);
  }
  buildCounterApplicationTransferParam--;
}

buildUnnamed5276() {
  var o = new core.List<api.Application>();
  o.add(buildApplication());
  o.add(buildApplication());
  return o;
}

checkUnnamed5276(core.List<api.Application> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplication(o[0]);
  checkApplication(o[1]);
}

core.int buildCounterApplicationsListResponse = 0;
buildApplicationsListResponse() {
  var o = new api.ApplicationsListResponse();
  buildCounterApplicationsListResponse++;
  if (buildCounterApplicationsListResponse < 3) {
    o.applications = buildUnnamed5276();
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterApplicationsListResponse--;
  return o;
}

checkApplicationsListResponse(api.ApplicationsListResponse o) {
  buildCounterApplicationsListResponse++;
  if (buildCounterApplicationsListResponse < 3) {
    checkUnnamed5276(o.applications);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterApplicationsListResponse--;
}

buildUnnamed5277() {
  var o = new core.List<api.ApplicationDataTransfer>();
  o.add(buildApplicationDataTransfer());
  o.add(buildApplicationDataTransfer());
  return o;
}

checkUnnamed5277(core.List<api.ApplicationDataTransfer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationDataTransfer(o[0]);
  checkApplicationDataTransfer(o[1]);
}

core.int buildCounterDataTransfer = 0;
buildDataTransfer() {
  var o = new api.DataTransfer();
  buildCounterDataTransfer++;
  if (buildCounterDataTransfer < 3) {
    o.applicationDataTransfers = buildUnnamed5277();
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.newOwnerUserId = "foo";
    o.oldOwnerUserId = "foo";
    o.overallTransferStatusCode = "foo";
    o.requestTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterDataTransfer--;
  return o;
}

checkDataTransfer(api.DataTransfer o) {
  buildCounterDataTransfer++;
  if (buildCounterDataTransfer < 3) {
    checkUnnamed5277(o.applicationDataTransfers);
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

buildUnnamed5278() {
  var o = new core.List<api.DataTransfer>();
  o.add(buildDataTransfer());
  o.add(buildDataTransfer());
  return o;
}

checkUnnamed5278(core.List<api.DataTransfer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataTransfer(o[0]);
  checkDataTransfer(o[1]);
}

core.int buildCounterDataTransfersListResponse = 0;
buildDataTransfersListResponse() {
  var o = new api.DataTransfersListResponse();
  buildCounterDataTransfersListResponse++;
  if (buildCounterDataTransfersListResponse < 3) {
    o.dataTransfers = buildUnnamed5278();
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterDataTransfersListResponse--;
  return o;
}

checkDataTransfersListResponse(api.DataTransfersListResponse o) {
  buildCounterDataTransfersListResponse++;
  if (buildCounterDataTransfersListResponse < 3) {
    checkUnnamed5278(o.dataTransfers);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDataTransfersListResponse--;
}

main() {
  unittest.group("obj-schema-Application", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplication();
      var od = new api.Application.fromJson(o.toJson());
      checkApplication(od);
    });
  });

  unittest.group("obj-schema-ApplicationDataTransfer", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationDataTransfer();
      var od = new api.ApplicationDataTransfer.fromJson(o.toJson());
      checkApplicationDataTransfer(od);
    });
  });

  unittest.group("obj-schema-ApplicationTransferParam", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationTransferParam();
      var od = new api.ApplicationTransferParam.fromJson(o.toJson());
      checkApplicationTransferParam(od);
    });
  });

  unittest.group("obj-schema-ApplicationsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationsListResponse();
      var od = new api.ApplicationsListResponse.fromJson(o.toJson());
      checkApplicationsListResponse(od);
    });
  });

  unittest.group("obj-schema-DataTransfer", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataTransfer();
      var od = new api.DataTransfer.fromJson(o.toJson());
      checkDataTransfer(od);
    });
  });

  unittest.group("obj-schema-DataTransfersListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataTransfersListResponse();
      var od = new api.DataTransfersListResponse.fromJson(o.toJson());
      checkDataTransfersListResponse(od);
    });
  });

  unittest.group("resource-ApplicationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ApplicationsResourceApi res = new api.AdminApi(mock).applications;
      var arg_applicationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("admin/datatransfer/v1/applications/"));
        pathOffset += 35;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_applicationId"));

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
        var resp = convert.json.encode(buildApplication());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_applicationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApplication(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ApplicationsResourceApi res = new api.AdminApi(mock).applications;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_customerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 34),
            unittest.equals("admin/datatransfer/v1/applications"));
        pathOffset += 34;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildApplicationsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              customerId: arg_customerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApplicationsListResponse(response);
      })));
    });
  });

  unittest.group("resource-TransfersResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TransfersResourceApi res = new api.AdminApi(mock).transfers;
      var arg_dataTransferId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("admin/datatransfer/v1/transfers/"));
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_dataTransferId"));

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
        var resp = convert.json.encode(buildDataTransfer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_dataTransferId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataTransfer(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.TransfersResourceApi res = new api.AdminApi(mock).transfers;
      var arg_request = buildDataTransfer();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DataTransfer.fromJson(json);
        checkDataTransfer(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("admin/datatransfer/v1/transfers"));
        pathOffset += 31;

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
        var resp = convert.json.encode(buildDataTransfer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataTransfer(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TransfersResourceApi res = new api.AdminApi(mock).transfers;
      var arg_status = "foo";
      var arg_newOwnerUserId = "foo";
      var arg_pageToken = "foo";
      var arg_oldOwnerUserId = "foo";
      var arg_customerId = "foo";
      var arg_maxResults = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("admin/datatransfer/v1/transfers"));
        pathOffset += 31;

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
        unittest.expect(queryMap["status"].first, unittest.equals(arg_status));
        unittest.expect(queryMap["newOwnerUserId"].first,
            unittest.equals(arg_newOwnerUserId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["oldOwnerUserId"].first,
            unittest.equals(arg_oldOwnerUserId));
        unittest.expect(
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDataTransfersListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              status: arg_status,
              newOwnerUserId: arg_newOwnerUserId,
              pageToken: arg_pageToken,
              oldOwnerUserId: arg_oldOwnerUserId,
              customerId: arg_customerId,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataTransfersListResponse(response);
      })));
    });
  });
}
