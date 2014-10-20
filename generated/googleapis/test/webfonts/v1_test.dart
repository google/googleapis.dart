library googleapis.webfonts.v1.test;

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

import 'package:googleapis/webfonts/v1.dart' as api;



buildUnnamed772() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed772(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed773() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed773(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed774() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed774(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWebfont = 0;
buildWebfont() {
  var o = new api.Webfont();
  buildCounterWebfont++;
  if (buildCounterWebfont < 3) {
    o.category = "foo";
    o.family = "foo";
    o.files = buildUnnamed772();
    o.kind = "foo";
    o.lastModified = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.subsets = buildUnnamed773();
    o.variants = buildUnnamed774();
    o.version = "foo";
  }
  buildCounterWebfont--;
  return o;
}

checkWebfont(api.Webfont o) {
  buildCounterWebfont++;
  if (buildCounterWebfont < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.family, unittest.equals('foo'));
    checkUnnamed772(o.files);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastModified, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    checkUnnamed773(o.subsets);
    checkUnnamed774(o.variants);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterWebfont--;
}

buildUnnamed775() {
  var o = new core.List<api.Webfont>();
  o.add(buildWebfont());
  o.add(buildWebfont());
  return o;
}

checkUnnamed775(core.List<api.Webfont> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebfont(o[0]);
  checkWebfont(o[1]);
}

core.int buildCounterWebfontList = 0;
buildWebfontList() {
  var o = new api.WebfontList();
  buildCounterWebfontList++;
  if (buildCounterWebfontList < 3) {
    o.items = buildUnnamed775();
    o.kind = "foo";
  }
  buildCounterWebfontList--;
  return o;
}

checkWebfontList(api.WebfontList o) {
  buildCounterWebfontList++;
  if (buildCounterWebfontList < 3) {
    checkUnnamed775(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterWebfontList--;
}


main() {
  unittest.group("obj-schema-Webfont", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebfont();
      var od = new api.Webfont.fromJson(o.toJson());
      checkWebfont(od);
    });
  });


  unittest.group("obj-schema-WebfontList", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebfontList();
      var od = new api.WebfontList.fromJson(o.toJson());
      checkWebfontList(od);
    });
  });


  unittest.group("resource-WebfontsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.WebfontsResourceApi res = new api.WebfontsApi(mock).webfonts;
      var arg_sort = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("webfonts/v1/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("webfonts"));
        pathOffset += 8;

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
        unittest.expect(queryMap["sort"].first, unittest.equals(arg_sort));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildWebfontList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(sort: arg_sort).then(unittest.expectAsync(((api.WebfontList response) {
        checkWebfontList(response);
      })));
    });

  });


}

