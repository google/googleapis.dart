library googleapis.youtubeAnalytics.v1.test;

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

import 'package:googleapis/youtubeanalytics/v1.dart' as api;



core.int buildCounterBatchReportOutputs = 0;
buildBatchReportOutputs() {
  var o = new api.BatchReportOutputs();
  buildCounterBatchReportOutputs++;
  if (buildCounterBatchReportOutputs < 3) {
    o.downloadUrl = "foo";
    o.format = "foo";
    o.type = "foo";
  }
  buildCounterBatchReportOutputs--;
  return o;
}

checkBatchReportOutputs(api.BatchReportOutputs o) {
  buildCounterBatchReportOutputs++;
  if (buildCounterBatchReportOutputs < 3) {
    unittest.expect(o.downloadUrl, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBatchReportOutputs--;
}

buildUnnamed1457() {
  var o = new core.List<api.BatchReportOutputs>();
  o.add(buildBatchReportOutputs());
  o.add(buildBatchReportOutputs());
  return o;
}

checkUnnamed1457(core.List<api.BatchReportOutputs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchReportOutputs(o[0]);
  checkBatchReportOutputs(o[1]);
}

core.int buildCounterBatchReportTimeSpan = 0;
buildBatchReportTimeSpan() {
  var o = new api.BatchReportTimeSpan();
  buildCounterBatchReportTimeSpan++;
  if (buildCounterBatchReportTimeSpan < 3) {
    o.endTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.startTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterBatchReportTimeSpan--;
  return o;
}

checkBatchReportTimeSpan(api.BatchReportTimeSpan o) {
  buildCounterBatchReportTimeSpan++;
  if (buildCounterBatchReportTimeSpan < 3) {
    unittest.expect(o.endTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.startTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterBatchReportTimeSpan--;
}

core.int buildCounterBatchReport = 0;
buildBatchReport() {
  var o = new api.BatchReport();
  buildCounterBatchReport++;
  if (buildCounterBatchReport < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.outputs = buildUnnamed1457();
    o.reportId = "foo";
    o.timeSpan = buildBatchReportTimeSpan();
    o.timeUpdated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterBatchReport--;
  return o;
}

checkBatchReport(api.BatchReport o) {
  buildCounterBatchReport++;
  if (buildCounterBatchReport < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1457(o.outputs);
    unittest.expect(o.reportId, unittest.equals('foo'));
    checkBatchReportTimeSpan(o.timeSpan);
    unittest.expect(o.timeUpdated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterBatchReport--;
}

core.int buildCounterBatchReportDefinition = 0;
buildBatchReportDefinition() {
  var o = new api.BatchReportDefinition();
  buildCounterBatchReportDefinition++;
  if (buildCounterBatchReportDefinition < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.status = "foo";
    o.type = "foo";
  }
  buildCounterBatchReportDefinition--;
  return o;
}

checkBatchReportDefinition(api.BatchReportDefinition o) {
  buildCounterBatchReportDefinition++;
  if (buildCounterBatchReportDefinition < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBatchReportDefinition--;
}

buildUnnamed1458() {
  var o = new core.List<api.BatchReportDefinition>();
  o.add(buildBatchReportDefinition());
  o.add(buildBatchReportDefinition());
  return o;
}

checkUnnamed1458(core.List<api.BatchReportDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchReportDefinition(o[0]);
  checkBatchReportDefinition(o[1]);
}

core.int buildCounterBatchReportDefinitionList = 0;
buildBatchReportDefinitionList() {
  var o = new api.BatchReportDefinitionList();
  buildCounterBatchReportDefinitionList++;
  if (buildCounterBatchReportDefinitionList < 3) {
    o.items = buildUnnamed1458();
    o.kind = "foo";
  }
  buildCounterBatchReportDefinitionList--;
  return o;
}

checkBatchReportDefinitionList(api.BatchReportDefinitionList o) {
  buildCounterBatchReportDefinitionList++;
  if (buildCounterBatchReportDefinitionList < 3) {
    checkUnnamed1458(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBatchReportDefinitionList--;
}

buildUnnamed1459() {
  var o = new core.List<api.BatchReport>();
  o.add(buildBatchReport());
  o.add(buildBatchReport());
  return o;
}

checkUnnamed1459(core.List<api.BatchReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchReport(o[0]);
  checkBatchReport(o[1]);
}

core.int buildCounterBatchReportList = 0;
buildBatchReportList() {
  var o = new api.BatchReportList();
  buildCounterBatchReportList++;
  if (buildCounterBatchReportList < 3) {
    o.items = buildUnnamed1459();
    o.kind = "foo";
  }
  buildCounterBatchReportList--;
  return o;
}

checkBatchReportList(api.BatchReportList o) {
  buildCounterBatchReportList++;
  if (buildCounterBatchReportList < 3) {
    checkUnnamed1459(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBatchReportList--;
}

core.int buildCounterResultTableColumnHeaders = 0;
buildResultTableColumnHeaders() {
  var o = new api.ResultTableColumnHeaders();
  buildCounterResultTableColumnHeaders++;
  if (buildCounterResultTableColumnHeaders < 3) {
    o.columnType = "foo";
    o.dataType = "foo";
    o.name = "foo";
  }
  buildCounterResultTableColumnHeaders--;
  return o;
}

checkResultTableColumnHeaders(api.ResultTableColumnHeaders o) {
  buildCounterResultTableColumnHeaders++;
  if (buildCounterResultTableColumnHeaders < 3) {
    unittest.expect(o.columnType, unittest.equals('foo'));
    unittest.expect(o.dataType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterResultTableColumnHeaders--;
}

buildUnnamed1460() {
  var o = new core.List<api.ResultTableColumnHeaders>();
  o.add(buildResultTableColumnHeaders());
  o.add(buildResultTableColumnHeaders());
  return o;
}

checkUnnamed1460(core.List<api.ResultTableColumnHeaders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultTableColumnHeaders(o[0]);
  checkResultTableColumnHeaders(o[1]);
}

buildUnnamed1461() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed1461(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o[1]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed1462() {
  var o = new core.List<core.List<core.Object>>();
  o.add(buildUnnamed1461());
  o.add(buildUnnamed1461());
  return o;
}

checkUnnamed1462(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1461(o[0]);
  checkUnnamed1461(o[1]);
}

core.int buildCounterResultTable = 0;
buildResultTable() {
  var o = new api.ResultTable();
  buildCounterResultTable++;
  if (buildCounterResultTable < 3) {
    o.columnHeaders = buildUnnamed1460();
    o.kind = "foo";
    o.rows = buildUnnamed1462();
  }
  buildCounterResultTable--;
  return o;
}

checkResultTable(api.ResultTable o) {
  buildCounterResultTable++;
  if (buildCounterResultTable < 3) {
    checkUnnamed1460(o.columnHeaders);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1462(o.rows);
  }
  buildCounterResultTable--;
}


main() {
  unittest.group("obj-schema-BatchReportOutputs", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportOutputs();
      var od = new api.BatchReportOutputs.fromJson(o.toJson());
      checkBatchReportOutputs(od);
    });
  });


  unittest.group("obj-schema-BatchReportTimeSpan", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportTimeSpan();
      var od = new api.BatchReportTimeSpan.fromJson(o.toJson());
      checkBatchReportTimeSpan(od);
    });
  });


  unittest.group("obj-schema-BatchReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReport();
      var od = new api.BatchReport.fromJson(o.toJson());
      checkBatchReport(od);
    });
  });


  unittest.group("obj-schema-BatchReportDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportDefinition();
      var od = new api.BatchReportDefinition.fromJson(o.toJson());
      checkBatchReportDefinition(od);
    });
  });


  unittest.group("obj-schema-BatchReportDefinitionList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportDefinitionList();
      var od = new api.BatchReportDefinitionList.fromJson(o.toJson());
      checkBatchReportDefinitionList(od);
    });
  });


  unittest.group("obj-schema-BatchReportList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportList();
      var od = new api.BatchReportList.fromJson(o.toJson());
      checkBatchReportList(od);
    });
  });


  unittest.group("obj-schema-ResultTableColumnHeaders", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultTableColumnHeaders();
      var od = new api.ResultTableColumnHeaders.fromJson(o.toJson());
      checkResultTableColumnHeaders(od);
    });
  });


  unittest.group("obj-schema-ResultTable", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultTable();
      var od = new api.ResultTable.fromJson(o.toJson());
      checkResultTable(od);
    });
  });


  unittest.group("resource-BatchReportDefinitionsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.BatchReportDefinitionsResourceApi res = new api.YoutubeAnalyticsApi(mock).batchReportDefinitions;
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 22), unittest.equals("batchReportDefinitions"));
        pathOffset += 22;

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
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBatchReportDefinitionList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.BatchReportDefinitionList response) {
        checkBatchReportDefinitionList(response);
      })));
    });

  });


  unittest.group("resource-BatchReportsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.BatchReportsResourceApi res = new api.YoutubeAnalyticsApi(mock).batchReports;
      var arg_batchReportDefinitionId = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("batchReports"));
        pathOffset += 12;

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
        unittest.expect(queryMap["batchReportDefinitionId"].first, unittest.equals(arg_batchReportDefinitionId));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBatchReportList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_batchReportDefinitionId, arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.BatchReportList response) {
        checkBatchReportList(response);
      })));
    });

  });


  unittest.group("resource-ReportsResourceApi", () {
    unittest.test("method--query", () {

      var mock = new common_test.HttpServerMock();
      api.ReportsResourceApi res = new api.YoutubeAnalyticsApi(mock).reports;
      var arg_ids = "foo";
      var arg_start_date = "foo";
      var arg_end_date = "foo";
      var arg_metrics = "foo";
      var arg_dimensions = "foo";
      var arg_filters = "foo";
      var arg_max_results = 42;
      var arg_sort = "foo";
      var arg_start_index = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("reports"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["ids"].first, unittest.equals(arg_ids));
        unittest.expect(queryMap["start-date"].first, unittest.equals(arg_start_date));
        unittest.expect(queryMap["end-date"].first, unittest.equals(arg_end_date));
        unittest.expect(queryMap["metrics"].first, unittest.equals(arg_metrics));
        unittest.expect(queryMap["dimensions"].first, unittest.equals(arg_dimensions));
        unittest.expect(queryMap["filters"].first, unittest.equals(arg_filters));
        unittest.expect(core.int.parse(queryMap["max-results"].first), unittest.equals(arg_max_results));
        unittest.expect(queryMap["sort"].first, unittest.equals(arg_sort));
        unittest.expect(core.int.parse(queryMap["start-index"].first), unittest.equals(arg_start_index));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildResultTable());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.query(arg_ids, arg_start_date, arg_end_date, arg_metrics, dimensions: arg_dimensions, filters: arg_filters, max_results: arg_max_results, sort: arg_sort, start_index: arg_start_index).then(unittest.expectAsync(((api.ResultTable response) {
        checkResultTable(response);
      })));
    });

  });


}

