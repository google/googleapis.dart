library googleapis_beta.accessapproval.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/accessapproval/v1beta1.dart' as api;

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

buildUnnamed5241() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5241(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccessApprovalSettings = 0;
buildAccessApprovalSettings() {
  var o = new api.AccessApprovalSettings();
  buildCounterAccessApprovalSettings++;
  if (buildCounterAccessApprovalSettings < 3) {
    o.name = "foo";
    o.notificationEmails = buildUnnamed5241();
  }
  buildCounterAccessApprovalSettings--;
  return o;
}

checkAccessApprovalSettings(api.AccessApprovalSettings o) {
  buildCounterAccessApprovalSettings++;
  if (buildCounterAccessApprovalSettings < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5241(o.notificationEmails);
  }
  buildCounterAccessApprovalSettings--;
}

core.int buildCounterAccessLocations = 0;
buildAccessLocations() {
  var o = new api.AccessLocations();
  buildCounterAccessLocations++;
  if (buildCounterAccessLocations < 3) {
    o.principalOfficeCountry = "foo";
    o.principalPhysicalLocationCountry = "foo";
  }
  buildCounterAccessLocations--;
  return o;
}

checkAccessLocations(api.AccessLocations o) {
  buildCounterAccessLocations++;
  if (buildCounterAccessLocations < 3) {
    unittest.expect(o.principalOfficeCountry, unittest.equals('foo'));
    unittest.expect(o.principalPhysicalLocationCountry, unittest.equals('foo'));
  }
  buildCounterAccessLocations--;
}

core.int buildCounterAccessReason = 0;
buildAccessReason() {
  var o = new api.AccessReason();
  buildCounterAccessReason++;
  if (buildCounterAccessReason < 3) {
    o.detail = "foo";
    o.type = "foo";
  }
  buildCounterAccessReason--;
  return o;
}

checkAccessReason(api.AccessReason o) {
  buildCounterAccessReason++;
  if (buildCounterAccessReason < 3) {
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAccessReason--;
}

core.int buildCounterApprovalRequest = 0;
buildApprovalRequest() {
  var o = new api.ApprovalRequest();
  buildCounterApprovalRequest++;
  if (buildCounterApprovalRequest < 3) {
    o.approve = buildApproveDecision();
    o.dismiss = buildDismissDecision();
    o.name = "foo";
    o.requestTime = "foo";
    o.requestedExpiration = "foo";
    o.requestedLocations = buildAccessLocations();
    o.requestedReason = buildAccessReason();
    o.requestedResourceName = "foo";
    o.requestedResourceProperties = buildResourceProperties();
  }
  buildCounterApprovalRequest--;
  return o;
}

checkApprovalRequest(api.ApprovalRequest o) {
  buildCounterApprovalRequest++;
  if (buildCounterApprovalRequest < 3) {
    checkApproveDecision(o.approve);
    checkDismissDecision(o.dismiss);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.requestTime, unittest.equals('foo'));
    unittest.expect(o.requestedExpiration, unittest.equals('foo'));
    checkAccessLocations(o.requestedLocations);
    checkAccessReason(o.requestedReason);
    unittest.expect(o.requestedResourceName, unittest.equals('foo'));
    checkResourceProperties(o.requestedResourceProperties);
  }
  buildCounterApprovalRequest--;
}

core.int buildCounterApproveApprovalRequestMessage = 0;
buildApproveApprovalRequestMessage() {
  var o = new api.ApproveApprovalRequestMessage();
  buildCounterApproveApprovalRequestMessage++;
  if (buildCounterApproveApprovalRequestMessage < 3) {
    o.expireTime = "foo";
  }
  buildCounterApproveApprovalRequestMessage--;
  return o;
}

checkApproveApprovalRequestMessage(api.ApproveApprovalRequestMessage o) {
  buildCounterApproveApprovalRequestMessage++;
  if (buildCounterApproveApprovalRequestMessage < 3) {
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterApproveApprovalRequestMessage--;
}

core.int buildCounterApproveDecision = 0;
buildApproveDecision() {
  var o = new api.ApproveDecision();
  buildCounterApproveDecision++;
  if (buildCounterApproveDecision < 3) {
    o.approveTime = "foo";
    o.expireTime = "foo";
  }
  buildCounterApproveDecision--;
  return o;
}

checkApproveDecision(api.ApproveDecision o) {
  buildCounterApproveDecision++;
  if (buildCounterApproveDecision < 3) {
    unittest.expect(o.approveTime, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterApproveDecision--;
}

core.int buildCounterDismissApprovalRequestMessage = 0;
buildDismissApprovalRequestMessage() {
  var o = new api.DismissApprovalRequestMessage();
  buildCounterDismissApprovalRequestMessage++;
  if (buildCounterDismissApprovalRequestMessage < 3) {}
  buildCounterDismissApprovalRequestMessage--;
  return o;
}

checkDismissApprovalRequestMessage(api.DismissApprovalRequestMessage o) {
  buildCounterDismissApprovalRequestMessage++;
  if (buildCounterDismissApprovalRequestMessage < 3) {}
  buildCounterDismissApprovalRequestMessage--;
}

core.int buildCounterDismissDecision = 0;
buildDismissDecision() {
  var o = new api.DismissDecision();
  buildCounterDismissDecision++;
  if (buildCounterDismissDecision < 3) {
    o.dismissTime = "foo";
  }
  buildCounterDismissDecision--;
  return o;
}

checkDismissDecision(api.DismissDecision o) {
  buildCounterDismissDecision++;
  if (buildCounterDismissDecision < 3) {
    unittest.expect(o.dismissTime, unittest.equals('foo'));
  }
  buildCounterDismissDecision--;
}

buildUnnamed5242() {
  var o = new core.List<api.ApprovalRequest>();
  o.add(buildApprovalRequest());
  o.add(buildApprovalRequest());
  return o;
}

checkUnnamed5242(core.List<api.ApprovalRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApprovalRequest(o[0]);
  checkApprovalRequest(o[1]);
}

core.int buildCounterListApprovalRequestsResponse = 0;
buildListApprovalRequestsResponse() {
  var o = new api.ListApprovalRequestsResponse();
  buildCounterListApprovalRequestsResponse++;
  if (buildCounterListApprovalRequestsResponse < 3) {
    o.approvalRequests = buildUnnamed5242();
    o.nextPageToken = "foo";
  }
  buildCounterListApprovalRequestsResponse--;
  return o;
}

checkListApprovalRequestsResponse(api.ListApprovalRequestsResponse o) {
  buildCounterListApprovalRequestsResponse++;
  if (buildCounterListApprovalRequestsResponse < 3) {
    checkUnnamed5242(o.approvalRequests);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListApprovalRequestsResponse--;
}

core.int buildCounterResourceProperties = 0;
buildResourceProperties() {
  var o = new api.ResourceProperties();
  buildCounterResourceProperties++;
  if (buildCounterResourceProperties < 3) {
    o.excludesDescendants = true;
  }
  buildCounterResourceProperties--;
  return o;
}

checkResourceProperties(api.ResourceProperties o) {
  buildCounterResourceProperties++;
  if (buildCounterResourceProperties < 3) {
    unittest.expect(o.excludesDescendants, unittest.isTrue);
  }
  buildCounterResourceProperties--;
}

main() {
  unittest.group("obj-schema-AccessApprovalSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccessApprovalSettings();
      var od = new api.AccessApprovalSettings.fromJson(o.toJson());
      checkAccessApprovalSettings(od);
    });
  });

  unittest.group("obj-schema-AccessLocations", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccessLocations();
      var od = new api.AccessLocations.fromJson(o.toJson());
      checkAccessLocations(od);
    });
  });

  unittest.group("obj-schema-AccessReason", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccessReason();
      var od = new api.AccessReason.fromJson(o.toJson());
      checkAccessReason(od);
    });
  });

  unittest.group("obj-schema-ApprovalRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildApprovalRequest();
      var od = new api.ApprovalRequest.fromJson(o.toJson());
      checkApprovalRequest(od);
    });
  });

  unittest.group("obj-schema-ApproveApprovalRequestMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildApproveApprovalRequestMessage();
      var od = new api.ApproveApprovalRequestMessage.fromJson(o.toJson());
      checkApproveApprovalRequestMessage(od);
    });
  });

  unittest.group("obj-schema-ApproveDecision", () {
    unittest.test("to-json--from-json", () {
      var o = buildApproveDecision();
      var od = new api.ApproveDecision.fromJson(o.toJson());
      checkApproveDecision(od);
    });
  });

  unittest.group("obj-schema-DismissApprovalRequestMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildDismissApprovalRequestMessage();
      var od = new api.DismissApprovalRequestMessage.fromJson(o.toJson());
      checkDismissApprovalRequestMessage(od);
    });
  });

  unittest.group("obj-schema-DismissDecision", () {
    unittest.test("to-json--from-json", () {
      var o = buildDismissDecision();
      var od = new api.DismissDecision.fromJson(o.toJson());
      checkDismissDecision(od);
    });
  });

  unittest.group("obj-schema-ListApprovalRequestsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListApprovalRequestsResponse();
      var od = new api.ListApprovalRequestsResponse.fromJson(o.toJson());
      checkListApprovalRequestsResponse(od);
    });
  });

  unittest.group("obj-schema-ResourceProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceProperties();
      var od = new api.ResourceProperties.fromJson(o.toJson());
      checkResourceProperties(od);
    });
  });

  unittest.group("resource-FoldersResourceApi", () {
    unittest.test("method--getAccessApprovalSettings", () {
      var mock = new HttpServerMock();
      api.FoldersResourceApi res = new api.AccessapprovalApi(mock).folders;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildAccessApprovalSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAccessApprovalSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessApprovalSettings(response);
      })));
    });

    unittest.test("method--updateAccessApprovalSettings", () {
      var mock = new HttpServerMock();
      api.FoldersResourceApi res = new api.AccessapprovalApi(mock).folders;
      var arg_request = buildAccessApprovalSettings();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccessApprovalSettings.fromJson(json);
        checkAccessApprovalSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildAccessApprovalSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateAccessApprovalSettings(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessApprovalSettings(response);
      })));
    });
  });

  unittest.group("resource-FoldersApprovalRequestsResourceApi", () {
    unittest.test("method--approve", () {
      var mock = new HttpServerMock();
      api.FoldersApprovalRequestsResourceApi res =
          new api.AccessapprovalApi(mock).folders.approvalRequests;
      var arg_request = buildApproveApprovalRequestMessage();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ApproveApprovalRequestMessage.fromJson(json);
        checkApproveApprovalRequestMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildApprovalRequest());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .approve(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test("method--dismiss", () {
      var mock = new HttpServerMock();
      api.FoldersApprovalRequestsResourceApi res =
          new api.AccessapprovalApi(mock).folders.approvalRequests;
      var arg_request = buildDismissApprovalRequestMessage();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DismissApprovalRequestMessage.fromJson(json);
        checkDismissApprovalRequestMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildApprovalRequest());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .dismiss(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.FoldersApprovalRequestsResourceApi res =
          new api.AccessapprovalApi(mock).folders.approvalRequests;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildApprovalRequest());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.FoldersApprovalRequestsResourceApi res =
          new api.AccessapprovalApi(mock).folders.approvalRequests;
      var arg_parent = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListApprovalRequestsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListApprovalRequestsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsResourceApi", () {
    unittest.test("method--getAccessApprovalSettings", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.AccessapprovalApi(mock).organizations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildAccessApprovalSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAccessApprovalSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessApprovalSettings(response);
      })));
    });

    unittest.test("method--updateAccessApprovalSettings", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.AccessapprovalApi(mock).organizations;
      var arg_request = buildAccessApprovalSettings();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccessApprovalSettings.fromJson(json);
        checkAccessApprovalSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildAccessApprovalSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateAccessApprovalSettings(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessApprovalSettings(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsApprovalRequestsResourceApi", () {
    unittest.test("method--approve", () {
      var mock = new HttpServerMock();
      api.OrganizationsApprovalRequestsResourceApi res =
          new api.AccessapprovalApi(mock).organizations.approvalRequests;
      var arg_request = buildApproveApprovalRequestMessage();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ApproveApprovalRequestMessage.fromJson(json);
        checkApproveApprovalRequestMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildApprovalRequest());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .approve(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test("method--dismiss", () {
      var mock = new HttpServerMock();
      api.OrganizationsApprovalRequestsResourceApi res =
          new api.AccessapprovalApi(mock).organizations.approvalRequests;
      var arg_request = buildDismissApprovalRequestMessage();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DismissApprovalRequestMessage.fromJson(json);
        checkDismissApprovalRequestMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildApprovalRequest());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .dismiss(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsApprovalRequestsResourceApi res =
          new api.AccessapprovalApi(mock).organizations.approvalRequests;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildApprovalRequest());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsApprovalRequestsResourceApi res =
          new api.AccessapprovalApi(mock).organizations.approvalRequests;
      var arg_parent = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListApprovalRequestsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListApprovalRequestsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--getAccessApprovalSettings", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.AccessapprovalApi(mock).projects;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildAccessApprovalSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAccessApprovalSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessApprovalSettings(response);
      })));
    });

    unittest.test("method--updateAccessApprovalSettings", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.AccessapprovalApi(mock).projects;
      var arg_request = buildAccessApprovalSettings();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccessApprovalSettings.fromJson(json);
        checkAccessApprovalSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildAccessApprovalSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateAccessApprovalSettings(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessApprovalSettings(response);
      })));
    });
  });

  unittest.group("resource-ProjectsApprovalRequestsResourceApi", () {
    unittest.test("method--approve", () {
      var mock = new HttpServerMock();
      api.ProjectsApprovalRequestsResourceApi res =
          new api.AccessapprovalApi(mock).projects.approvalRequests;
      var arg_request = buildApproveApprovalRequestMessage();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ApproveApprovalRequestMessage.fromJson(json);
        checkApproveApprovalRequestMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildApprovalRequest());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .approve(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test("method--dismiss", () {
      var mock = new HttpServerMock();
      api.ProjectsApprovalRequestsResourceApi res =
          new api.AccessapprovalApi(mock).projects.approvalRequests;
      var arg_request = buildDismissApprovalRequestMessage();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DismissApprovalRequestMessage.fromJson(json);
        checkDismissApprovalRequestMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildApprovalRequest());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .dismiss(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsApprovalRequestsResourceApi res =
          new api.AccessapprovalApi(mock).projects.approvalRequests;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildApprovalRequest());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsApprovalRequestsResourceApi res =
          new api.AccessapprovalApi(mock).projects.approvalRequests;
      var arg_parent = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListApprovalRequestsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListApprovalRequestsResponse(response);
      })));
    });
  });
}
