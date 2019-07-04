library googleapis.abusiveexperiencereport.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/abusiveexperiencereport/v1.dart' as api;

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

core.int buildCounterSiteSummaryResponse = 0;
buildSiteSummaryResponse() {
  var o = new api.SiteSummaryResponse();
  buildCounterSiteSummaryResponse++;
  if (buildCounterSiteSummaryResponse < 3) {
    o.abusiveStatus = "foo";
    o.enforcementTime = "foo";
    o.filterStatus = "foo";
    o.lastChangeTime = "foo";
    o.reportUrl = "foo";
    o.reviewedSite = "foo";
    o.underReview = true;
  }
  buildCounterSiteSummaryResponse--;
  return o;
}

checkSiteSummaryResponse(api.SiteSummaryResponse o) {
  buildCounterSiteSummaryResponse++;
  if (buildCounterSiteSummaryResponse < 3) {
    unittest.expect(o.abusiveStatus, unittest.equals('foo'));
    unittest.expect(o.enforcementTime, unittest.equals('foo'));
    unittest.expect(o.filterStatus, unittest.equals('foo'));
    unittest.expect(o.lastChangeTime, unittest.equals('foo'));
    unittest.expect(o.reportUrl, unittest.equals('foo'));
    unittest.expect(o.reviewedSite, unittest.equals('foo'));
    unittest.expect(o.underReview, unittest.isTrue);
  }
  buildCounterSiteSummaryResponse--;
}

buildUnnamed2385() {
  var o = new core.List<api.SiteSummaryResponse>();
  o.add(buildSiteSummaryResponse());
  o.add(buildSiteSummaryResponse());
  return o;
}

checkUnnamed2385(core.List<api.SiteSummaryResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSiteSummaryResponse(o[0]);
  checkSiteSummaryResponse(o[1]);
}

core.int buildCounterViolatingSitesResponse = 0;
buildViolatingSitesResponse() {
  var o = new api.ViolatingSitesResponse();
  buildCounterViolatingSitesResponse++;
  if (buildCounterViolatingSitesResponse < 3) {
    o.violatingSites = buildUnnamed2385();
  }
  buildCounterViolatingSitesResponse--;
  return o;
}

checkViolatingSitesResponse(api.ViolatingSitesResponse o) {
  buildCounterViolatingSitesResponse++;
  if (buildCounterViolatingSitesResponse < 3) {
    checkUnnamed2385(o.violatingSites);
  }
  buildCounterViolatingSitesResponse--;
}

main() {
  unittest.group("obj-schema-SiteSummaryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSiteSummaryResponse();
      var od = new api.SiteSummaryResponse.fromJson(o.toJson());
      checkSiteSummaryResponse(od);
    });
  });

  unittest.group("obj-schema-ViolatingSitesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildViolatingSitesResponse();
      var od = new api.ViolatingSitesResponse.fromJson(o.toJson());
      checkViolatingSitesResponse(od);
    });
  });

  unittest.group("resource-SitesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SitesResourceApi res = new api.AbusiveexperiencereportApi(mock).sites;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildSiteSummaryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSiteSummaryResponse(response);
      })));
    });
  });

  unittest.group("resource-ViolatingSitesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ViolatingSitesResourceApi res =
          new api.AbusiveexperiencereportApi(mock).violatingSites;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v1/violatingSites"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildViolatingSitesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkViolatingSitesResponse(response);
      })));
    });
  });
}
