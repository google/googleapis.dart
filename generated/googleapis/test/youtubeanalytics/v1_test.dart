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



buildUnnamed182() {
  var o = new core.List<api.BatchReportDefinitionTemplate>();
  o.add(buildBatchReportDefinitionTemplate());
  o.add(buildBatchReportDefinitionTemplate());
  return o;
}

checkUnnamed182(core.List<api.BatchReportDefinitionTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchReportDefinitionTemplate(o[0]);
  checkBatchReportDefinitionTemplate(o[1]);
}

core.int buildCounterBatchReportDefinitionList = 0;
buildBatchReportDefinitionList() {
  var o = new api.BatchReportDefinitionList();
  buildCounterBatchReportDefinitionList++;
  if (buildCounterBatchReportDefinitionList < 3) {
    o.items = buildUnnamed182();
    o.kind = "foo";
  }
  buildCounterBatchReportDefinitionList--;
  return o;
}

checkBatchReportDefinitionList(api.BatchReportDefinitionList o) {
  buildCounterBatchReportDefinitionList++;
  if (buildCounterBatchReportDefinitionList < 3) {
    checkUnnamed182(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBatchReportDefinitionList--;
}

core.int buildCounterBatchReportDefinitionTemplateDefaultOutput = 0;
buildBatchReportDefinitionTemplateDefaultOutput() {
  var o = new api.BatchReportDefinitionTemplateDefaultOutput();
  buildCounterBatchReportDefinitionTemplateDefaultOutput++;
  if (buildCounterBatchReportDefinitionTemplateDefaultOutput < 3) {
    o.format = "foo";
    o.type = "foo";
  }
  buildCounterBatchReportDefinitionTemplateDefaultOutput--;
  return o;
}

checkBatchReportDefinitionTemplateDefaultOutput(api.BatchReportDefinitionTemplateDefaultOutput o) {
  buildCounterBatchReportDefinitionTemplateDefaultOutput++;
  if (buildCounterBatchReportDefinitionTemplateDefaultOutput < 3) {
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBatchReportDefinitionTemplateDefaultOutput--;
}

buildUnnamed183() {
  var o = new core.List<api.BatchReportDefinitionTemplateDefaultOutput>();
  o.add(buildBatchReportDefinitionTemplateDefaultOutput());
  o.add(buildBatchReportDefinitionTemplateDefaultOutput());
  return o;
}

checkUnnamed183(core.List<api.BatchReportDefinitionTemplateDefaultOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchReportDefinitionTemplateDefaultOutput(o[0]);
  checkBatchReportDefinitionTemplateDefaultOutput(o[1]);
}

core.int buildCounterBatchReportDefinitionTemplate = 0;
buildBatchReportDefinitionTemplate() {
  var o = new api.BatchReportDefinitionTemplate();
  buildCounterBatchReportDefinitionTemplate++;
  if (buildCounterBatchReportDefinitionTemplate < 3) {
    o.defaultOutput = buildUnnamed183();
    o.id = "foo";
    o.name = "foo";
    o.status = "foo";
    o.type = "foo";
  }
  buildCounterBatchReportDefinitionTemplate--;
  return o;
}

checkBatchReportDefinitionTemplate(api.BatchReportDefinitionTemplate o) {
  buildCounterBatchReportDefinitionTemplate++;
  if (buildCounterBatchReportDefinitionTemplate < 3) {
    checkUnnamed183(o.defaultOutput);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBatchReportDefinitionTemplate--;
}

buildUnnamed184() {
  var o = new core.List<api.BatchReportTemplate>();
  o.add(buildBatchReportTemplate());
  o.add(buildBatchReportTemplate());
  return o;
}

checkUnnamed184(core.List<api.BatchReportTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchReportTemplate(o[0]);
  checkBatchReportTemplate(o[1]);
}

core.int buildCounterBatchReportList = 0;
buildBatchReportList() {
  var o = new api.BatchReportList();
  buildCounterBatchReportList++;
  if (buildCounterBatchReportList < 3) {
    o.items = buildUnnamed184();
    o.kind = "foo";
  }
  buildCounterBatchReportList--;
  return o;
}

checkBatchReportList(api.BatchReportList o) {
  buildCounterBatchReportList++;
  if (buildCounterBatchReportList < 3) {
    checkUnnamed184(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBatchReportList--;
}

core.int buildCounterBatchReportTemplateOutputs = 0;
buildBatchReportTemplateOutputs() {
  var o = new api.BatchReportTemplateOutputs();
  buildCounterBatchReportTemplateOutputs++;
  if (buildCounterBatchReportTemplateOutputs < 3) {
    o.downloadUrl = "foo";
    o.format = "foo";
    o.type = "foo";
  }
  buildCounterBatchReportTemplateOutputs--;
  return o;
}

checkBatchReportTemplateOutputs(api.BatchReportTemplateOutputs o) {
  buildCounterBatchReportTemplateOutputs++;
  if (buildCounterBatchReportTemplateOutputs < 3) {
    unittest.expect(o.downloadUrl, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBatchReportTemplateOutputs--;
}

buildUnnamed185() {
  var o = new core.List<api.BatchReportTemplateOutputs>();
  o.add(buildBatchReportTemplateOutputs());
  o.add(buildBatchReportTemplateOutputs());
  return o;
}

checkUnnamed185(core.List<api.BatchReportTemplateOutputs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchReportTemplateOutputs(o[0]);
  checkBatchReportTemplateOutputs(o[1]);
}

core.int buildCounterBatchReportTemplateTimeSpan = 0;
buildBatchReportTemplateTimeSpan() {
  var o = new api.BatchReportTemplateTimeSpan();
  buildCounterBatchReportTemplateTimeSpan++;
  if (buildCounterBatchReportTemplateTimeSpan < 3) {
    o.endTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.startTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterBatchReportTemplateTimeSpan--;
  return o;
}

checkBatchReportTemplateTimeSpan(api.BatchReportTemplateTimeSpan o) {
  buildCounterBatchReportTemplateTimeSpan++;
  if (buildCounterBatchReportTemplateTimeSpan < 3) {
    unittest.expect(o.endTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.startTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterBatchReportTemplateTimeSpan--;
}

core.int buildCounterBatchReportTemplate = 0;
buildBatchReportTemplate() {
  var o = new api.BatchReportTemplate();
  buildCounterBatchReportTemplate++;
  if (buildCounterBatchReportTemplate < 3) {
    o.id = "foo";
    o.outputs = buildUnnamed185();
    o.reportId = "foo";
    o.timeSpan = buildBatchReportTemplateTimeSpan();
    o.timeUpdated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterBatchReportTemplate--;
  return o;
}

checkBatchReportTemplate(api.BatchReportTemplate o) {
  buildCounterBatchReportTemplate++;
  if (buildCounterBatchReportTemplate < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed185(o.outputs);
    unittest.expect(o.reportId, unittest.equals('foo'));
    checkBatchReportTemplateTimeSpan(o.timeSpan);
    unittest.expect(o.timeUpdated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterBatchReportTemplate--;
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

buildUnnamed186() {
  var o = new core.List<api.ResultTableColumnHeaders>();
  o.add(buildResultTableColumnHeaders());
  o.add(buildResultTableColumnHeaders());
  return o;
}

checkUnnamed186(core.List<api.ResultTableColumnHeaders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultTableColumnHeaders(o[0]);
  checkResultTableColumnHeaders(o[1]);
}

buildUnnamed187() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed187(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o[1]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed188() {
  var o = new core.List<core.List<core.Object>>();
  o.add(buildUnnamed187());
  o.add(buildUnnamed187());
  return o;
}

checkUnnamed188(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed187(o[0]);
  checkUnnamed187(o[1]);
}

core.int buildCounterResultTable = 0;
buildResultTable() {
  var o = new api.ResultTable();
  buildCounterResultTable++;
  if (buildCounterResultTable < 3) {
    o.columnHeaders = buildUnnamed186();
    o.kind = "foo";
    o.rows = buildUnnamed188();
  }
  buildCounterResultTable--;
  return o;
}

checkResultTable(api.ResultTable o) {
  buildCounterResultTable++;
  if (buildCounterResultTable < 3) {
    checkUnnamed186(o.columnHeaders);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed188(o.rows);
  }
  buildCounterResultTable--;
}


main() {
  unittest.group("obj-schema-BatchReportDefinitionList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportDefinitionList();
      var od = new api.BatchReportDefinitionList.fromJson(o.toJson());
      checkBatchReportDefinitionList(od);
    });
  });


  unittest.group("obj-schema-BatchReportDefinitionTemplateDefaultOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportDefinitionTemplateDefaultOutput();
      var od = new api.BatchReportDefinitionTemplateDefaultOutput.fromJson(o.toJson());
      checkBatchReportDefinitionTemplateDefaultOutput(od);
    });
  });


  unittest.group("obj-schema-BatchReportDefinitionTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportDefinitionTemplate();
      var od = new api.BatchReportDefinitionTemplate.fromJson(o.toJson());
      checkBatchReportDefinitionTemplate(od);
    });
  });


  unittest.group("obj-schema-BatchReportList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportList();
      var od = new api.BatchReportList.fromJson(o.toJson());
      checkBatchReportList(od);
    });
  });


  unittest.group("obj-schema-BatchReportTemplateOutputs", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportTemplateOutputs();
      var od = new api.BatchReportTemplateOutputs.fromJson(o.toJson());
      checkBatchReportTemplateOutputs(od);
    });
  });


  unittest.group("obj-schema-BatchReportTemplateTimeSpan", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportTemplateTimeSpan();
      var od = new api.BatchReportTemplateTimeSpan.fromJson(o.toJson());
      checkBatchReportTemplateTimeSpan(od);
    });
  });


  unittest.group("obj-schema-BatchReportTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportTemplate();
      var od = new api.BatchReportTemplate.fromJson(o.toJson());
      checkBatchReportTemplate(od);
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

