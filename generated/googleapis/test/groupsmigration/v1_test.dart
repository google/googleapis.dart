library googleapis.groupsmigration.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/groupsmigration/v1.dart' as api;



core.int buildCounterGroups = 0;
buildGroups() {
  var o = new api.Groups();
  buildCounterGroups++;
  if (buildCounterGroups < 3) {
    o.kind = "foo";
    o.responseCode = "foo";
  }
  buildCounterGroups--;
  return o;
}

checkGroups(api.Groups o) {
  buildCounterGroups++;
  if (buildCounterGroups < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.responseCode, unittest.equals('foo'));
  }
  buildCounterGroups--;
}


main() {
  unittest.group("obj-schema-Groups", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroups();
      var od = new api.Groups.fromJson(o.toJson());
      checkGroups(od);
    });
  });


  unittest.group("resource-ArchiveResourceApi", () {
    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.ArchiveResourceApi res = new api.GroupsmigrationApi(mock).archive;
      var arg_groupId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroups());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_groupId).then(unittest.expectAsync(((api.Groups response) {
        checkGroups(response);
      })));
    });

  });


}

