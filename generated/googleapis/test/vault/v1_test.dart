library googleapis.vault.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/vault/v1.dart' as api;

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
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAddMatterPermissionsRequest = 0;
buildAddMatterPermissionsRequest() {
  var o = new api.AddMatterPermissionsRequest();
  buildCounterAddMatterPermissionsRequest++;
  if (buildCounterAddMatterPermissionsRequest < 3) {
    o.ccMe = true;
    o.matterPermission = buildMatterPermission();
    o.sendEmails = true;
  }
  buildCounterAddMatterPermissionsRequest--;
  return o;
}

checkAddMatterPermissionsRequest(api.AddMatterPermissionsRequest o) {
  buildCounterAddMatterPermissionsRequest++;
  if (buildCounterAddMatterPermissionsRequest < 3) {
    unittest.expect(o.ccMe, unittest.isTrue);
    checkMatterPermission(o.matterPermission);
    unittest.expect(o.sendEmails, unittest.isTrue);
  }
  buildCounterAddMatterPermissionsRequest--;
}

core.int buildCounterCloseMatterRequest = 0;
buildCloseMatterRequest() {
  var o = new api.CloseMatterRequest();
  buildCounterCloseMatterRequest++;
  if (buildCounterCloseMatterRequest < 3) {}
  buildCounterCloseMatterRequest--;
  return o;
}

checkCloseMatterRequest(api.CloseMatterRequest o) {
  buildCounterCloseMatterRequest++;
  if (buildCounterCloseMatterRequest < 3) {}
  buildCounterCloseMatterRequest--;
}

core.int buildCounterCloseMatterResponse = 0;
buildCloseMatterResponse() {
  var o = new api.CloseMatterResponse();
  buildCounterCloseMatterResponse++;
  if (buildCounterCloseMatterResponse < 3) {
    o.matter = buildMatter();
  }
  buildCounterCloseMatterResponse--;
  return o;
}

checkCloseMatterResponse(api.CloseMatterResponse o) {
  buildCounterCloseMatterResponse++;
  if (buildCounterCloseMatterResponse < 3) {
    checkMatter(o.matter);
  }
  buildCounterCloseMatterResponse--;
}

core.int buildCounterCorpusQuery = 0;
buildCorpusQuery() {
  var o = new api.CorpusQuery();
  buildCounterCorpusQuery++;
  if (buildCounterCorpusQuery < 3) {
    o.driveQuery = buildHeldDriveQuery();
    o.groupsQuery = buildHeldGroupsQuery();
    o.mailQuery = buildHeldMailQuery();
  }
  buildCounterCorpusQuery--;
  return o;
}

checkCorpusQuery(api.CorpusQuery o) {
  buildCounterCorpusQuery++;
  if (buildCounterCorpusQuery < 3) {
    checkHeldDriveQuery(o.driveQuery);
    checkHeldGroupsQuery(o.groupsQuery);
    checkHeldMailQuery(o.mailQuery);
  }
  buildCounterCorpusQuery--;
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

core.int buildCounterHeldAccount = 0;
buildHeldAccount() {
  var o = new api.HeldAccount();
  buildCounterHeldAccount++;
  if (buildCounterHeldAccount < 3) {
    o.accountId = "foo";
    o.holdTime = "foo";
  }
  buildCounterHeldAccount--;
  return o;
}

checkHeldAccount(api.HeldAccount o) {
  buildCounterHeldAccount++;
  if (buildCounterHeldAccount < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.holdTime, unittest.equals('foo'));
  }
  buildCounterHeldAccount--;
}

core.int buildCounterHeldDriveQuery = 0;
buildHeldDriveQuery() {
  var o = new api.HeldDriveQuery();
  buildCounterHeldDriveQuery++;
  if (buildCounterHeldDriveQuery < 3) {
    o.includeTeamDriveFiles = true;
  }
  buildCounterHeldDriveQuery--;
  return o;
}

checkHeldDriveQuery(api.HeldDriveQuery o) {
  buildCounterHeldDriveQuery++;
  if (buildCounterHeldDriveQuery < 3) {
    unittest.expect(o.includeTeamDriveFiles, unittest.isTrue);
  }
  buildCounterHeldDriveQuery--;
}

core.int buildCounterHeldGroupsQuery = 0;
buildHeldGroupsQuery() {
  var o = new api.HeldGroupsQuery();
  buildCounterHeldGroupsQuery++;
  if (buildCounterHeldGroupsQuery < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
    o.terms = "foo";
  }
  buildCounterHeldGroupsQuery--;
  return o;
}

checkHeldGroupsQuery(api.HeldGroupsQuery o) {
  buildCounterHeldGroupsQuery++;
  if (buildCounterHeldGroupsQuery < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.terms, unittest.equals('foo'));
  }
  buildCounterHeldGroupsQuery--;
}

core.int buildCounterHeldMailQuery = 0;
buildHeldMailQuery() {
  var o = new api.HeldMailQuery();
  buildCounterHeldMailQuery++;
  if (buildCounterHeldMailQuery < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
    o.terms = "foo";
  }
  buildCounterHeldMailQuery--;
  return o;
}

checkHeldMailQuery(api.HeldMailQuery o) {
  buildCounterHeldMailQuery++;
  if (buildCounterHeldMailQuery < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.terms, unittest.equals('foo'));
  }
  buildCounterHeldMailQuery--;
}

core.int buildCounterHeldOrgUnit = 0;
buildHeldOrgUnit() {
  var o = new api.HeldOrgUnit();
  buildCounterHeldOrgUnit++;
  if (buildCounterHeldOrgUnit < 3) {
    o.holdTime = "foo";
    o.orgUnitId = "foo";
  }
  buildCounterHeldOrgUnit--;
  return o;
}

checkHeldOrgUnit(api.HeldOrgUnit o) {
  buildCounterHeldOrgUnit++;
  if (buildCounterHeldOrgUnit < 3) {
    unittest.expect(o.holdTime, unittest.equals('foo'));
    unittest.expect(o.orgUnitId, unittest.equals('foo'));
  }
  buildCounterHeldOrgUnit--;
}

buildUnnamed1633() {
  var o = new core.List<api.HeldAccount>();
  o.add(buildHeldAccount());
  o.add(buildHeldAccount());
  return o;
}

checkUnnamed1633(core.List<api.HeldAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeldAccount(o[0]);
  checkHeldAccount(o[1]);
}

core.int buildCounterHold = 0;
buildHold() {
  var o = new api.Hold();
  buildCounterHold++;
  if (buildCounterHold < 3) {
    o.accounts = buildUnnamed1633();
    o.corpus = "foo";
    o.holdId = "foo";
    o.name = "foo";
    o.orgUnit = buildHeldOrgUnit();
    o.query = buildCorpusQuery();
    o.updateTime = "foo";
  }
  buildCounterHold--;
  return o;
}

checkHold(api.Hold o) {
  buildCounterHold++;
  if (buildCounterHold < 3) {
    checkUnnamed1633(o.accounts);
    unittest.expect(o.corpus, unittest.equals('foo'));
    unittest.expect(o.holdId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkHeldOrgUnit(o.orgUnit);
    checkCorpusQuery(o.query);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterHold--;
}

buildUnnamed1634() {
  var o = new core.List<api.HeldAccount>();
  o.add(buildHeldAccount());
  o.add(buildHeldAccount());
  return o;
}

checkUnnamed1634(core.List<api.HeldAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeldAccount(o[0]);
  checkHeldAccount(o[1]);
}

core.int buildCounterListHeldAccountsResponse = 0;
buildListHeldAccountsResponse() {
  var o = new api.ListHeldAccountsResponse();
  buildCounterListHeldAccountsResponse++;
  if (buildCounterListHeldAccountsResponse < 3) {
    o.accounts = buildUnnamed1634();
  }
  buildCounterListHeldAccountsResponse--;
  return o;
}

checkListHeldAccountsResponse(api.ListHeldAccountsResponse o) {
  buildCounterListHeldAccountsResponse++;
  if (buildCounterListHeldAccountsResponse < 3) {
    checkUnnamed1634(o.accounts);
  }
  buildCounterListHeldAccountsResponse--;
}

buildUnnamed1635() {
  var o = new core.List<api.Hold>();
  o.add(buildHold());
  o.add(buildHold());
  return o;
}

checkUnnamed1635(core.List<api.Hold> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHold(o[0]);
  checkHold(o[1]);
}

core.int buildCounterListHoldsResponse = 0;
buildListHoldsResponse() {
  var o = new api.ListHoldsResponse();
  buildCounterListHoldsResponse++;
  if (buildCounterListHoldsResponse < 3) {
    o.holds = buildUnnamed1635();
    o.nextPageToken = "foo";
  }
  buildCounterListHoldsResponse--;
  return o;
}

checkListHoldsResponse(api.ListHoldsResponse o) {
  buildCounterListHoldsResponse++;
  if (buildCounterListHoldsResponse < 3) {
    checkUnnamed1635(o.holds);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListHoldsResponse--;
}

buildUnnamed1636() {
  var o = new core.List<api.Matter>();
  o.add(buildMatter());
  o.add(buildMatter());
  return o;
}

checkUnnamed1636(core.List<api.Matter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatter(o[0]);
  checkMatter(o[1]);
}

core.int buildCounterListMattersResponse = 0;
buildListMattersResponse() {
  var o = new api.ListMattersResponse();
  buildCounterListMattersResponse++;
  if (buildCounterListMattersResponse < 3) {
    o.matters = buildUnnamed1636();
    o.nextPageToken = "foo";
  }
  buildCounterListMattersResponse--;
  return o;
}

checkListMattersResponse(api.ListMattersResponse o) {
  buildCounterListMattersResponse++;
  if (buildCounterListMattersResponse < 3) {
    checkUnnamed1636(o.matters);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListMattersResponse--;
}

buildUnnamed1637() {
  var o = new core.List<api.MatterPermission>();
  o.add(buildMatterPermission());
  o.add(buildMatterPermission());
  return o;
}

checkUnnamed1637(core.List<api.MatterPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatterPermission(o[0]);
  checkMatterPermission(o[1]);
}

core.int buildCounterMatter = 0;
buildMatter() {
  var o = new api.Matter();
  buildCounterMatter++;
  if (buildCounterMatter < 3) {
    o.description = "foo";
    o.matterId = "foo";
    o.matterPermissions = buildUnnamed1637();
    o.name = "foo";
    o.state = "foo";
  }
  buildCounterMatter--;
  return o;
}

checkMatter(api.Matter o) {
  buildCounterMatter++;
  if (buildCounterMatter < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.matterId, unittest.equals('foo'));
    checkUnnamed1637(o.matterPermissions);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterMatter--;
}

core.int buildCounterMatterPermission = 0;
buildMatterPermission() {
  var o = new api.MatterPermission();
  buildCounterMatterPermission++;
  if (buildCounterMatterPermission < 3) {
    o.accountId = "foo";
    o.role = "foo";
  }
  buildCounterMatterPermission--;
  return o;
}

checkMatterPermission(api.MatterPermission o) {
  buildCounterMatterPermission++;
  if (buildCounterMatterPermission < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterMatterPermission--;
}

core.int buildCounterRemoveMatterPermissionsRequest = 0;
buildRemoveMatterPermissionsRequest() {
  var o = new api.RemoveMatterPermissionsRequest();
  buildCounterRemoveMatterPermissionsRequest++;
  if (buildCounterRemoveMatterPermissionsRequest < 3) {
    o.accountId = "foo";
  }
  buildCounterRemoveMatterPermissionsRequest--;
  return o;
}

checkRemoveMatterPermissionsRequest(api.RemoveMatterPermissionsRequest o) {
  buildCounterRemoveMatterPermissionsRequest++;
  if (buildCounterRemoveMatterPermissionsRequest < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
  }
  buildCounterRemoveMatterPermissionsRequest--;
}

core.int buildCounterReopenMatterRequest = 0;
buildReopenMatterRequest() {
  var o = new api.ReopenMatterRequest();
  buildCounterReopenMatterRequest++;
  if (buildCounterReopenMatterRequest < 3) {}
  buildCounterReopenMatterRequest--;
  return o;
}

checkReopenMatterRequest(api.ReopenMatterRequest o) {
  buildCounterReopenMatterRequest++;
  if (buildCounterReopenMatterRequest < 3) {}
  buildCounterReopenMatterRequest--;
}

core.int buildCounterReopenMatterResponse = 0;
buildReopenMatterResponse() {
  var o = new api.ReopenMatterResponse();
  buildCounterReopenMatterResponse++;
  if (buildCounterReopenMatterResponse < 3) {
    o.matter = buildMatter();
  }
  buildCounterReopenMatterResponse--;
  return o;
}

checkReopenMatterResponse(api.ReopenMatterResponse o) {
  buildCounterReopenMatterResponse++;
  if (buildCounterReopenMatterResponse < 3) {
    checkMatter(o.matter);
  }
  buildCounterReopenMatterResponse--;
}

core.int buildCounterUndeleteMatterRequest = 0;
buildUndeleteMatterRequest() {
  var o = new api.UndeleteMatterRequest();
  buildCounterUndeleteMatterRequest++;
  if (buildCounterUndeleteMatterRequest < 3) {}
  buildCounterUndeleteMatterRequest--;
  return o;
}

checkUndeleteMatterRequest(api.UndeleteMatterRequest o) {
  buildCounterUndeleteMatterRequest++;
  if (buildCounterUndeleteMatterRequest < 3) {}
  buildCounterUndeleteMatterRequest--;
}

main() {
  unittest.group("obj-schema-AddMatterPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddMatterPermissionsRequest();
      var od = new api.AddMatterPermissionsRequest.fromJson(o.toJson());
      checkAddMatterPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-CloseMatterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloseMatterRequest();
      var od = new api.CloseMatterRequest.fromJson(o.toJson());
      checkCloseMatterRequest(od);
    });
  });

  unittest.group("obj-schema-CloseMatterResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloseMatterResponse();
      var od = new api.CloseMatterResponse.fromJson(o.toJson());
      checkCloseMatterResponse(od);
    });
  });

  unittest.group("obj-schema-CorpusQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildCorpusQuery();
      var od = new api.CorpusQuery.fromJson(o.toJson());
      checkCorpusQuery(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-HeldAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeldAccount();
      var od = new api.HeldAccount.fromJson(o.toJson());
      checkHeldAccount(od);
    });
  });

  unittest.group("obj-schema-HeldDriveQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeldDriveQuery();
      var od = new api.HeldDriveQuery.fromJson(o.toJson());
      checkHeldDriveQuery(od);
    });
  });

  unittest.group("obj-schema-HeldGroupsQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeldGroupsQuery();
      var od = new api.HeldGroupsQuery.fromJson(o.toJson());
      checkHeldGroupsQuery(od);
    });
  });

  unittest.group("obj-schema-HeldMailQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeldMailQuery();
      var od = new api.HeldMailQuery.fromJson(o.toJson());
      checkHeldMailQuery(od);
    });
  });

  unittest.group("obj-schema-HeldOrgUnit", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeldOrgUnit();
      var od = new api.HeldOrgUnit.fromJson(o.toJson());
      checkHeldOrgUnit(od);
    });
  });

  unittest.group("obj-schema-Hold", () {
    unittest.test("to-json--from-json", () {
      var o = buildHold();
      var od = new api.Hold.fromJson(o.toJson());
      checkHold(od);
    });
  });

  unittest.group("obj-schema-ListHeldAccountsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListHeldAccountsResponse();
      var od = new api.ListHeldAccountsResponse.fromJson(o.toJson());
      checkListHeldAccountsResponse(od);
    });
  });

  unittest.group("obj-schema-ListHoldsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListHoldsResponse();
      var od = new api.ListHoldsResponse.fromJson(o.toJson());
      checkListHoldsResponse(od);
    });
  });

  unittest.group("obj-schema-ListMattersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListMattersResponse();
      var od = new api.ListMattersResponse.fromJson(o.toJson());
      checkListMattersResponse(od);
    });
  });

  unittest.group("obj-schema-Matter", () {
    unittest.test("to-json--from-json", () {
      var o = buildMatter();
      var od = new api.Matter.fromJson(o.toJson());
      checkMatter(od);
    });
  });

  unittest.group("obj-schema-MatterPermission", () {
    unittest.test("to-json--from-json", () {
      var o = buildMatterPermission();
      var od = new api.MatterPermission.fromJson(o.toJson());
      checkMatterPermission(od);
    });
  });

  unittest.group("obj-schema-RemoveMatterPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveMatterPermissionsRequest();
      var od = new api.RemoveMatterPermissionsRequest.fromJson(o.toJson());
      checkRemoveMatterPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-ReopenMatterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReopenMatterRequest();
      var od = new api.ReopenMatterRequest.fromJson(o.toJson());
      checkReopenMatterRequest(od);
    });
  });

  unittest.group("obj-schema-ReopenMatterResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReopenMatterResponse();
      var od = new api.ReopenMatterResponse.fromJson(o.toJson());
      checkReopenMatterResponse(od);
    });
  });

  unittest.group("obj-schema-UndeleteMatterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUndeleteMatterRequest();
      var od = new api.UndeleteMatterRequest.fromJson(o.toJson());
      checkUndeleteMatterRequest(od);
    });
  });

  unittest.group("resource-MattersResourceApi", () {
    unittest.test("method--addPermissions", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildAddMatterPermissionsRequest();
      var arg_matterId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddMatterPermissionsRequest.fromJson(json);
        checkAddMatterPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(":addPermissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals(":addPermissions"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMatterPermission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addPermissions(arg_request, arg_matterId)
          .then(unittest.expectAsync1(((api.MatterPermission response) {
        checkMatterPermission(response);
      })));
    });

    unittest.test("method--close", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildCloseMatterRequest();
      var arg_matterId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CloseMatterRequest.fromJson(json);
        checkCloseMatterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(":close", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":close"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCloseMatterResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .close(arg_request, arg_matterId)
          .then(unittest.expectAsync1(((api.CloseMatterResponse response) {
        checkCloseMatterResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildMatter();
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Matter.fromJson(json);
        checkMatter(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/matters"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMatter());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request)
          .then(unittest.expectAsync1(((api.Matter response) {
        checkMatter(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_matterId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMatter());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId)
          .then(unittest.expectAsync1(((api.Matter response) {
        checkMatter(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_matterId = "foo";
      var arg_view = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMatter());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_matterId, view: arg_view)
          .then(unittest.expectAsync1(((api.Matter response) {
        checkMatter(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_view = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/matters"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListMattersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken, pageSize: arg_pageSize, view: arg_view)
          .then(unittest.expectAsync1(((api.ListMattersResponse response) {
        checkListMattersResponse(response);
      })));
    });

    unittest.test("method--removePermissions", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildRemoveMatterPermissionsRequest();
      var arg_matterId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RemoveMatterPermissionsRequest.fromJson(json);
        checkRemoveMatterPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(":removePermissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals(":removePermissions"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removePermissions(arg_request, arg_matterId)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--reopen", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildReopenMatterRequest();
      var arg_matterId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReopenMatterRequest.fromJson(json);
        checkReopenMatterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(":reopen", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":reopen"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildReopenMatterResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reopen(arg_request, arg_matterId)
          .then(unittest.expectAsync1(((api.ReopenMatterResponse response) {
        checkReopenMatterResponse(response);
      })));
    });

    unittest.test("method--undelete", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildUndeleteMatterRequest();
      var arg_matterId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UndeleteMatterRequest.fromJson(json);
        checkUndeleteMatterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(":undelete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":undelete"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMatter());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .undelete(arg_request, arg_matterId)
          .then(unittest.expectAsync1(((api.Matter response) {
        checkMatter(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildMatter();
      var arg_matterId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Matter.fromJson(json);
        checkMatter(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMatter());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_matterId)
          .then(unittest.expectAsync1(((api.Matter response) {
        checkMatter(response);
      })));
    });
  });

  unittest.group("resource-MattersHoldsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.MattersHoldsResourceApi res = new api.VaultApi(mock).matters.holds;
      var arg_request = buildHold();
      var arg_matterId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Hold.fromJson(json);
        checkHold(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/holds"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHold());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_matterId)
          .then(unittest.expectAsync1(((api.Hold response) {
        checkHold(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.MattersHoldsResourceApi res = new api.VaultApi(mock).matters.holds;
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId, arg_holdId)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.MattersHoldsResourceApi res = new api.VaultApi(mock).matters.holds;
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHold());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_matterId, arg_holdId)
          .then(unittest.expectAsync1(((api.Hold response) {
        checkHold(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MattersHoldsResourceApi res = new api.VaultApi(mock).matters.holds;
      var arg_matterId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/holds"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListHoldsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_matterId, pageToken: arg_pageToken, pageSize: arg_pageSize)
          .then(unittest.expectAsync1(((api.ListHoldsResponse response) {
        checkListHoldsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.MattersHoldsResourceApi res = new api.VaultApi(mock).matters.holds;
      var arg_request = buildHold();
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Hold.fromJson(json);
        checkHold(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHold());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_matterId, arg_holdId)
          .then(unittest.expectAsync1(((api.Hold response) {
        checkHold(response);
      })));
    });
  });

  unittest.group("resource-MattersHoldsAccountsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.MattersHoldsAccountsResourceApi res =
          new api.VaultApi(mock).matters.holds.accounts;
      var arg_request = buildHeldAccount();
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HeldAccount.fromJson(json);
        checkHeldAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf("/accounts", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/accounts"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHeldAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_matterId, arg_holdId)
          .then(unittest.expectAsync1(((api.HeldAccount response) {
        checkHeldAccount(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.MattersHoldsAccountsResourceApi res =
          new api.VaultApi(mock).matters.holds.accounts;
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      var arg_accountId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf("/accounts/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/accounts/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId, arg_holdId, arg_accountId)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MattersHoldsAccountsResourceApi res =
          new api.VaultApi(mock).matters.holds.accounts;
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf("/accounts", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/accounts"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListHeldAccountsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_matterId, arg_holdId)
          .then(unittest.expectAsync1(((api.ListHeldAccountsResponse response) {
        checkListHeldAccountsResponse(response);
      })));
    });
  });
}
