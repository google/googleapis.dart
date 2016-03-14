library googleapis.cloudlatencytest.v2.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/cloudlatencytest/v2.dart' as api;

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

buildUnnamed1629() {
  var o = new core.List<api.Stats>();
  o.add(buildStats());
  o.add(buildStats());
  return o;
}

checkUnnamed1629(core.List<api.Stats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStats(o[0]);
  checkStats(o[1]);
}

core.int buildCounterAggregatedStats = 0;
buildAggregatedStats() {
  var o = new api.AggregatedStats();
  buildCounterAggregatedStats++;
  if (buildCounterAggregatedStats < 3) {
    o.stats = buildUnnamed1629();
  }
  buildCounterAggregatedStats--;
  return o;
}

checkAggregatedStats(api.AggregatedStats o) {
  buildCounterAggregatedStats++;
  if (buildCounterAggregatedStats < 3) {
    checkUnnamed1629(o.stats);
  }
  buildCounterAggregatedStats--;
}

core.int buildCounterAggregatedStatsReply = 0;
buildAggregatedStatsReply() {
  var o = new api.AggregatedStatsReply();
  buildCounterAggregatedStatsReply++;
  if (buildCounterAggregatedStatsReply < 3) {
    o.testValue = "foo";
  }
  buildCounterAggregatedStatsReply--;
  return o;
}

checkAggregatedStatsReply(api.AggregatedStatsReply o) {
  buildCounterAggregatedStatsReply++;
  if (buildCounterAggregatedStatsReply < 3) {
    unittest.expect(o.testValue, unittest.equals('foo'));
  }
  buildCounterAggregatedStatsReply--;
}

core.int buildCounterDoubleValue = 0;
buildDoubleValue() {
  var o = new api.DoubleValue();
  buildCounterDoubleValue++;
  if (buildCounterDoubleValue < 3) {
    o.label = "foo";
    o.value = 42.0;
  }
  buildCounterDoubleValue--;
  return o;
}

checkDoubleValue(api.DoubleValue o) {
  buildCounterDoubleValue++;
  if (buildCounterDoubleValue < 3) {
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterDoubleValue--;
}

core.int buildCounterIntValue = 0;
buildIntValue() {
  var o = new api.IntValue();
  buildCounterIntValue++;
  if (buildCounterIntValue < 3) {
    o.label = "foo";
    o.value = "foo";
  }
  buildCounterIntValue--;
  return o;
}

checkIntValue(api.IntValue o) {
  buildCounterIntValue++;
  if (buildCounterIntValue < 3) {
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterIntValue--;
}

buildUnnamed1630() {
  var o = new core.List<api.DoubleValue>();
  o.add(buildDoubleValue());
  o.add(buildDoubleValue());
  return o;
}

checkUnnamed1630(core.List<api.DoubleValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDoubleValue(o[0]);
  checkDoubleValue(o[1]);
}

buildUnnamed1631() {
  var o = new core.List<api.IntValue>();
  o.add(buildIntValue());
  o.add(buildIntValue());
  return o;
}

checkUnnamed1631(core.List<api.IntValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntValue(o[0]);
  checkIntValue(o[1]);
}

buildUnnamed1632() {
  var o = new core.List<api.StringValue>();
  o.add(buildStringValue());
  o.add(buildStringValue());
  return o;
}

checkUnnamed1632(core.List<api.StringValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStringValue(o[0]);
  checkStringValue(o[1]);
}

core.int buildCounterStats = 0;
buildStats() {
  var o = new api.Stats();
  buildCounterStats++;
  if (buildCounterStats < 3) {
    o.doubleValues = buildUnnamed1630();
    o.intValues = buildUnnamed1631();
    o.stringValues = buildUnnamed1632();
    o.time = 42.0;
  }
  buildCounterStats--;
  return o;
}

checkStats(api.Stats o) {
  buildCounterStats++;
  if (buildCounterStats < 3) {
    checkUnnamed1630(o.doubleValues);
    checkUnnamed1631(o.intValues);
    checkUnnamed1632(o.stringValues);
    unittest.expect(o.time, unittest.equals(42.0));
  }
  buildCounterStats--;
}

core.int buildCounterStatsReply = 0;
buildStatsReply() {
  var o = new api.StatsReply();
  buildCounterStatsReply++;
  if (buildCounterStatsReply < 3) {
    o.testValue = "foo";
  }
  buildCounterStatsReply--;
  return o;
}

checkStatsReply(api.StatsReply o) {
  buildCounterStatsReply++;
  if (buildCounterStatsReply < 3) {
    unittest.expect(o.testValue, unittest.equals('foo'));
  }
  buildCounterStatsReply--;
}

core.int buildCounterStringValue = 0;
buildStringValue() {
  var o = new api.StringValue();
  buildCounterStringValue++;
  if (buildCounterStringValue < 3) {
    o.label = "foo";
    o.value = "foo";
  }
  buildCounterStringValue--;
  return o;
}

checkStringValue(api.StringValue o) {
  buildCounterStringValue++;
  if (buildCounterStringValue < 3) {
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterStringValue--;
}


main() {
  unittest.group("obj-schema-AggregatedStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildAggregatedStats();
      var od = new api.AggregatedStats.fromJson(o.toJson());
      checkAggregatedStats(od);
    });
  });


  unittest.group("obj-schema-AggregatedStatsReply", () {
    unittest.test("to-json--from-json", () {
      var o = buildAggregatedStatsReply();
      var od = new api.AggregatedStatsReply.fromJson(o.toJson());
      checkAggregatedStatsReply(od);
    });
  });


  unittest.group("obj-schema-DoubleValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildDoubleValue();
      var od = new api.DoubleValue.fromJson(o.toJson());
      checkDoubleValue(od);
    });
  });


  unittest.group("obj-schema-IntValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntValue();
      var od = new api.IntValue.fromJson(o.toJson());
      checkIntValue(od);
    });
  });


  unittest.group("obj-schema-Stats", () {
    unittest.test("to-json--from-json", () {
      var o = buildStats();
      var od = new api.Stats.fromJson(o.toJson());
      checkStats(od);
    });
  });


  unittest.group("obj-schema-StatsReply", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatsReply();
      var od = new api.StatsReply.fromJson(o.toJson());
      checkStatsReply(od);
    });
  });


  unittest.group("obj-schema-StringValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildStringValue();
      var od = new api.StringValue.fromJson(o.toJson());
      checkStringValue(od);
    });
  });


  unittest.group("resource-StatscollectionResourceApi", () {
    unittest.test("method--updateaggregatedstats", () {

      var mock = new HttpServerMock();
      api.StatscollectionResourceApi res = new api.CloudlatencytestApi(mock).statscollection;
      var arg_request = buildAggregatedStats();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AggregatedStats.fromJson(json);
        checkAggregatedStats(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("v2/statscollection/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("updateaggregatedstats"));
        pathOffset += 21;

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
        var resp = convert.JSON.encode(buildAggregatedStatsReply());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.updateaggregatedstats(arg_request).then(unittest.expectAsync(((api.AggregatedStatsReply response) {
        checkAggregatedStatsReply(response);
      })));
    });

    unittest.test("method--updatestats", () {

      var mock = new HttpServerMock();
      api.StatscollectionResourceApi res = new api.CloudlatencytestApi(mock).statscollection;
      var arg_request = buildStats();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Stats.fromJson(json);
        checkStats(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("v2/statscollection/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("updatestats"));
        pathOffset += 11;

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
        var resp = convert.JSON.encode(buildStatsReply());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.updatestats(arg_request).then(unittest.expectAsync(((api.StatsReply response) {
        checkStatsReply(response);
      })));
    });

  });


}

