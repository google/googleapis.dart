library googleapis.freebase.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/freebase/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterReconcileCandidateNotable = 0;
buildReconcileCandidateNotable() {
  var o = new api.ReconcileCandidateNotable();
  buildCounterReconcileCandidateNotable++;
  if (buildCounterReconcileCandidateNotable < 3) {
    o.id = "foo";
    o.name = "foo";
  }
  buildCounterReconcileCandidateNotable--;
  return o;
}

checkReconcileCandidateNotable(api.ReconcileCandidateNotable o) {
  buildCounterReconcileCandidateNotable++;
  if (buildCounterReconcileCandidateNotable < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterReconcileCandidateNotable--;
}

core.int buildCounterReconcileCandidate = 0;
buildReconcileCandidate() {
  var o = new api.ReconcileCandidate();
  buildCounterReconcileCandidate++;
  if (buildCounterReconcileCandidate < 3) {
    o.confidence = 42.0;
    o.lang = "foo";
    o.mid = "foo";
    o.name = "foo";
    o.notable = buildReconcileCandidateNotable();
  }
  buildCounterReconcileCandidate--;
  return o;
}

checkReconcileCandidate(api.ReconcileCandidate o) {
  buildCounterReconcileCandidate++;
  if (buildCounterReconcileCandidate < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.lang, unittest.equals('foo'));
    unittest.expect(o.mid, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkReconcileCandidateNotable(o.notable);
  }
  buildCounterReconcileCandidate--;
}

buildUnnamed2069() {
  var o = new core.List<api.ReconcileCandidate>();
  o.add(buildReconcileCandidate());
  o.add(buildReconcileCandidate());
  return o;
}

checkUnnamed2069(core.List<api.ReconcileCandidate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReconcileCandidate(o[0]);
  checkReconcileCandidate(o[1]);
}

core.int buildCounterReconcileGetCosts = 0;
buildReconcileGetCosts() {
  var o = new api.ReconcileGetCosts();
  buildCounterReconcileGetCosts++;
  if (buildCounterReconcileGetCosts < 3) {
    o.hits = 42;
    o.ms = 42;
  }
  buildCounterReconcileGetCosts--;
  return o;
}

checkReconcileGetCosts(api.ReconcileGetCosts o) {
  buildCounterReconcileGetCosts++;
  if (buildCounterReconcileGetCosts < 3) {
    unittest.expect(o.hits, unittest.equals(42));
    unittest.expect(o.ms, unittest.equals(42));
  }
  buildCounterReconcileGetCosts--;
}

core.int buildCounterReconcileGetWarning = 0;
buildReconcileGetWarning() {
  var o = new api.ReconcileGetWarning();
  buildCounterReconcileGetWarning++;
  if (buildCounterReconcileGetWarning < 3) {
    o.location = "foo";
    o.message = "foo";
    o.reason = "foo";
  }
  buildCounterReconcileGetWarning--;
  return o;
}

checkReconcileGetWarning(api.ReconcileGetWarning o) {
  buildCounterReconcileGetWarning++;
  if (buildCounterReconcileGetWarning < 3) {
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterReconcileGetWarning--;
}

buildUnnamed2070() {
  var o = new core.List<api.ReconcileGetWarning>();
  o.add(buildReconcileGetWarning());
  o.add(buildReconcileGetWarning());
  return o;
}

checkUnnamed2070(core.List<api.ReconcileGetWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReconcileGetWarning(o[0]);
  checkReconcileGetWarning(o[1]);
}

core.int buildCounterReconcileGet = 0;
buildReconcileGet() {
  var o = new api.ReconcileGet();
  buildCounterReconcileGet++;
  if (buildCounterReconcileGet < 3) {
    o.candidate = buildUnnamed2069();
    o.costs = buildReconcileGetCosts();
    o.match = buildReconcileCandidate();
    o.warning = buildUnnamed2070();
  }
  buildCounterReconcileGet--;
  return o;
}

checkReconcileGet(api.ReconcileGet o) {
  buildCounterReconcileGet++;
  if (buildCounterReconcileGet < 3) {
    checkUnnamed2069(o.candidate);
    checkReconcileGetCosts(o.costs);
    checkReconcileCandidate(o.match);
    checkUnnamed2070(o.warning);
  }
  buildCounterReconcileGet--;
}

buildUnnamed2071() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2071(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2072() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2072(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2073() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2073(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2074() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2074(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2075() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2075(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2076() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2076(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2077() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2077(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2078() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2078(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2079() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2079(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2080() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2080(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
  unittest.group("obj-schema-ReconcileCandidateNotable", () {
    unittest.test("to-json--from-json", () {
      var o = buildReconcileCandidateNotable();
      var od = new api.ReconcileCandidateNotable.fromJson(o.toJson());
      checkReconcileCandidateNotable(od);
    });
  });


  unittest.group("obj-schema-ReconcileCandidate", () {
    unittest.test("to-json--from-json", () {
      var o = buildReconcileCandidate();
      var od = new api.ReconcileCandidate.fromJson(o.toJson());
      checkReconcileCandidate(od);
    });
  });


  unittest.group("obj-schema-ReconcileGetCosts", () {
    unittest.test("to-json--from-json", () {
      var o = buildReconcileGetCosts();
      var od = new api.ReconcileGetCosts.fromJson(o.toJson());
      checkReconcileGetCosts(od);
    });
  });


  unittest.group("obj-schema-ReconcileGetWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildReconcileGetWarning();
      var od = new api.ReconcileGetWarning.fromJson(o.toJson());
      checkReconcileGetWarning(od);
    });
  });


  unittest.group("obj-schema-ReconcileGet", () {
    unittest.test("to-json--from-json", () {
      var o = buildReconcileGet();
      var od = new api.ReconcileGet.fromJson(o.toJson());
      checkReconcileGet(od);
    });
  });


  unittest.group("resource-FreebaseApi", () {
    unittest.test("method--reconcile", () {

      var mock = new HttpServerMock();
      api.FreebaseApi res = new api.FreebaseApi(mock);
      var arg_confidence = 42.0;
      var arg_kind = buildUnnamed2071();
      var arg_lang = buildUnnamed2072();
      var arg_limit = 42;
      var arg_name = "foo";
      var arg_prop = buildUnnamed2073();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("freebase/v1/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("reconcile"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.num.parse(queryMap["confidence"].first), unittest.equals(arg_confidence));
        unittest.expect(queryMap["kind"], unittest.equals(arg_kind));
        unittest.expect(queryMap["lang"], unittest.equals(arg_lang));
        unittest.expect(core.int.parse(queryMap["limit"].first), unittest.equals(arg_limit));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["prop"], unittest.equals(arg_prop));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildReconcileGet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.reconcile(confidence: arg_confidence, kind: arg_kind, lang: arg_lang, limit: arg_limit, name: arg_name, prop: arg_prop).then(unittest.expectAsync(((api.ReconcileGet response) {
        checkReconcileGet(response);
      })));
    });

    unittest.test("method--search", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.FreebaseApi res = new api.FreebaseApi(mock);
      var arg_asOfTime = "foo";
      var arg_callback = "foo";
      var arg_cursor = 42;
      var arg_domain = buildUnnamed2074();
      var arg_encode = "foo";
      var arg_exact = true;
      var arg_filter = buildUnnamed2075();
      var arg_format = "foo";
      var arg_help = "foo";
      var arg_indent = true;
      var arg_lang = buildUnnamed2076();
      var arg_limit = 42;
      var arg_mid = buildUnnamed2077();
      var arg_mqlOutput = "foo";
      var arg_output = "foo";
      var arg_prefixed = true;
      var arg_query = "foo";
      var arg_scoring = "foo";
      var arg_spell = "foo";
      var arg_stemmed = true;
      var arg_type = buildUnnamed2078();
      var arg_with_ = buildUnnamed2079();
      var arg_without = buildUnnamed2080();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("freebase/v1/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("search"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["as_of_time"].first, unittest.equals(arg_asOfTime));
        unittest.expect(queryMap["callback"].first, unittest.equals(arg_callback));
        unittest.expect(core.int.parse(queryMap["cursor"].first), unittest.equals(arg_cursor));
        unittest.expect(queryMap["domain"], unittest.equals(arg_domain));
        unittest.expect(queryMap["encode"].first, unittest.equals(arg_encode));
        unittest.expect(queryMap["exact"].first, unittest.equals("$arg_exact"));
        unittest.expect(queryMap["filter"], unittest.equals(arg_filter));
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(queryMap["help"].first, unittest.equals(arg_help));
        unittest.expect(queryMap["indent"].first, unittest.equals("$arg_indent"));
        unittest.expect(queryMap["lang"], unittest.equals(arg_lang));
        unittest.expect(core.int.parse(queryMap["limit"].first), unittest.equals(arg_limit));
        unittest.expect(queryMap["mid"], unittest.equals(arg_mid));
        unittest.expect(queryMap["mql_output"].first, unittest.equals(arg_mqlOutput));
        unittest.expect(queryMap["output"].first, unittest.equals(arg_output));
        unittest.expect(queryMap["prefixed"].first, unittest.equals("$arg_prefixed"));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["scoring"].first, unittest.equals(arg_scoring));
        unittest.expect(queryMap["spell"].first, unittest.equals(arg_spell));
        unittest.expect(queryMap["stemmed"].first, unittest.equals("$arg_stemmed"));
        unittest.expect(queryMap["type"], unittest.equals(arg_type));
        unittest.expect(queryMap["with"], unittest.equals(arg_with_));
        unittest.expect(queryMap["without"], unittest.equals(arg_without));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(asOfTime: arg_asOfTime, callback: arg_callback, cursor: arg_cursor, domain: arg_domain, encode: arg_encode, exact: arg_exact, filter: arg_filter, format: arg_format, help: arg_help, indent: arg_indent, lang: arg_lang, limit: arg_limit, mid: arg_mid, mqlOutput: arg_mqlOutput, output: arg_output, prefixed: arg_prefixed, query: arg_query, scoring: arg_scoring, spell: arg_spell, stemmed: arg_stemmed, type: arg_type, with_: arg_with_, without: arg_without).then(unittest.expectAsync((_) {}));
    });

  });


}

