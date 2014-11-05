library googleapis.fitness.v1.test;

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

import 'package:googleapis/fitness/v1.dart' as api;



core.int buildCounterApplication = 0;
buildApplication() {
  var o = new api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.detailsUrl = "foo";
    o.name = "foo";
    o.packageName = "foo";
    o.version = "foo";
  }
  buildCounterApplication--;
  return o;
}

checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(o.detailsUrl, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterApplication--;
}

buildUnnamed757() {
  var o = new core.List<api.Value>();
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

checkUnnamed757(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterDataPoint = 0;
buildDataPoint() {
  var o = new api.DataPoint();
  buildCounterDataPoint++;
  if (buildCounterDataPoint < 3) {
    o.computationTimeMillis = "foo";
    o.dataTypeName = "foo";
    o.endTimeNanos = "foo";
    o.modifiedTimeMillis = "foo";
    o.originDataSourceId = "foo";
    o.rawTimestampNanos = "foo";
    o.startTimeNanos = "foo";
    o.value = buildUnnamed757();
  }
  buildCounterDataPoint--;
  return o;
}

checkDataPoint(api.DataPoint o) {
  buildCounterDataPoint++;
  if (buildCounterDataPoint < 3) {
    unittest.expect(o.computationTimeMillis, unittest.equals('foo'));
    unittest.expect(o.dataTypeName, unittest.equals('foo'));
    unittest.expect(o.endTimeNanos, unittest.equals('foo'));
    unittest.expect(o.modifiedTimeMillis, unittest.equals('foo'));
    unittest.expect(o.originDataSourceId, unittest.equals('foo'));
    unittest.expect(o.rawTimestampNanos, unittest.equals('foo'));
    unittest.expect(o.startTimeNanos, unittest.equals('foo'));
    checkUnnamed757(o.value);
  }
  buildCounterDataPoint--;
}

core.int buildCounterDataSource = 0;
buildDataSource() {
  var o = new api.DataSource();
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    o.application = buildApplication();
    o.dataStreamId = "foo";
    o.dataStreamName = "foo";
    o.dataType = buildDataType();
    o.device = buildDevice();
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterDataSource--;
  return o;
}

checkDataSource(api.DataSource o) {
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    checkApplication(o.application);
    unittest.expect(o.dataStreamId, unittest.equals('foo'));
    unittest.expect(o.dataStreamName, unittest.equals('foo'));
    checkDataType(o.dataType);
    checkDevice(o.device);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDataSource--;
}

buildUnnamed758() {
  var o = new core.List<api.DataTypeField>();
  o.add(buildDataTypeField());
  o.add(buildDataTypeField());
  return o;
}

checkUnnamed758(core.List<api.DataTypeField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataTypeField(o[0]);
  checkDataTypeField(o[1]);
}

core.int buildCounterDataType = 0;
buildDataType() {
  var o = new api.DataType();
  buildCounterDataType++;
  if (buildCounterDataType < 3) {
    o.field = buildUnnamed758();
    o.name = "foo";
  }
  buildCounterDataType--;
  return o;
}

checkDataType(api.DataType o) {
  buildCounterDataType++;
  if (buildCounterDataType < 3) {
    checkUnnamed758(o.field);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterDataType--;
}

core.int buildCounterDataTypeField = 0;
buildDataTypeField() {
  var o = new api.DataTypeField();
  buildCounterDataTypeField++;
  if (buildCounterDataTypeField < 3) {
    o.format = "foo";
    o.name = "foo";
  }
  buildCounterDataTypeField--;
  return o;
}

checkDataTypeField(api.DataTypeField o) {
  buildCounterDataTypeField++;
  if (buildCounterDataTypeField < 3) {
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterDataTypeField--;
}

buildUnnamed759() {
  var o = new core.List<api.DataPoint>();
  o.add(buildDataPoint());
  o.add(buildDataPoint());
  return o;
}

checkUnnamed759(core.List<api.DataPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataPoint(o[0]);
  checkDataPoint(o[1]);
}

core.int buildCounterDataset = 0;
buildDataset() {
  var o = new api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.dataSourceId = "foo";
    o.maxEndTimeNs = "foo";
    o.minStartTimeNs = "foo";
    o.point = buildUnnamed759();
  }
  buildCounterDataset--;
  return o;
}

checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
    unittest.expect(o.maxEndTimeNs, unittest.equals('foo'));
    unittest.expect(o.minStartTimeNs, unittest.equals('foo'));
    checkUnnamed759(o.point);
  }
  buildCounterDataset--;
}

core.int buildCounterDevice = 0;
buildDevice() {
  var o = new api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.manufacturer = "foo";
    o.model = "foo";
    o.type = "foo";
    o.uid = "foo";
    o.version = "foo";
  }
  buildCounterDevice--;
  return o;
}

checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.uid, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterDevice--;
}

buildUnnamed760() {
  var o = new core.List<api.DataSource>();
  o.add(buildDataSource());
  o.add(buildDataSource());
  return o;
}

checkUnnamed760(core.List<api.DataSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSource(o[0]);
  checkDataSource(o[1]);
}

core.int buildCounterListDataSourcesResponse = 0;
buildListDataSourcesResponse() {
  var o = new api.ListDataSourcesResponse();
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    o.dataSource = buildUnnamed760();
  }
  buildCounterListDataSourcesResponse--;
  return o;
}

checkListDataSourcesResponse(api.ListDataSourcesResponse o) {
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    checkUnnamed760(o.dataSource);
  }
  buildCounterListDataSourcesResponse--;
}

buildUnnamed761() {
  var o = new core.List<api.Session>();
  o.add(buildSession());
  o.add(buildSession());
  return o;
}

checkUnnamed761(core.List<api.Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSession(o[0]);
  checkSession(o[1]);
}

buildUnnamed762() {
  var o = new core.List<api.Session>();
  o.add(buildSession());
  o.add(buildSession());
  return o;
}

checkUnnamed762(core.List<api.Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSession(o[0]);
  checkSession(o[1]);
}

core.int buildCounterListSessionsResponse = 0;
buildListSessionsResponse() {
  var o = new api.ListSessionsResponse();
  buildCounterListSessionsResponse++;
  if (buildCounterListSessionsResponse < 3) {
    o.deletedSession = buildUnnamed761();
    o.nextPageToken = "foo";
    o.session = buildUnnamed762();
  }
  buildCounterListSessionsResponse--;
  return o;
}

checkListSessionsResponse(api.ListSessionsResponse o) {
  buildCounterListSessionsResponse++;
  if (buildCounterListSessionsResponse < 3) {
    checkUnnamed761(o.deletedSession);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed762(o.session);
  }
  buildCounterListSessionsResponse--;
}

core.int buildCounterSession = 0;
buildSession() {
  var o = new api.Session();
  buildCounterSession++;
  if (buildCounterSession < 3) {
    o.activityType = 42;
    o.application = buildApplication();
    o.description = "foo";
    o.endTimeMillis = "foo";
    o.id = "foo";
    o.modifiedTimeMillis = "foo";
    o.name = "foo";
    o.startTimeMillis = "foo";
  }
  buildCounterSession--;
  return o;
}

checkSession(api.Session o) {
  buildCounterSession++;
  if (buildCounterSession < 3) {
    unittest.expect(o.activityType, unittest.equals(42));
    checkApplication(o.application);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.endTimeMillis, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.modifiedTimeMillis, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.startTimeMillis, unittest.equals('foo'));
  }
  buildCounterSession--;
}

core.int buildCounterValue = 0;
buildValue() {
  var o = new api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.fpVal = 42.0;
    o.intVal = 42;
  }
  buildCounterValue--;
  return o;
}

checkValue(api.Value o) {
  buildCounterValue++;
  if (buildCounterValue < 3) {
    unittest.expect(o.fpVal, unittest.equals(42.0));
    unittest.expect(o.intVal, unittest.equals(42));
  }
  buildCounterValue--;
}

buildUnnamed763() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed763(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
  unittest.group("obj-schema-Application", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplication();
      var od = new api.Application.fromJson(o.toJson());
      checkApplication(od);
    });
  });


  unittest.group("obj-schema-DataPoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataPoint();
      var od = new api.DataPoint.fromJson(o.toJson());
      checkDataPoint(od);
    });
  });


  unittest.group("obj-schema-DataSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataSource();
      var od = new api.DataSource.fromJson(o.toJson());
      checkDataSource(od);
    });
  });


  unittest.group("obj-schema-DataType", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataType();
      var od = new api.DataType.fromJson(o.toJson());
      checkDataType(od);
    });
  });


  unittest.group("obj-schema-DataTypeField", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataTypeField();
      var od = new api.DataTypeField.fromJson(o.toJson());
      checkDataTypeField(od);
    });
  });


  unittest.group("obj-schema-Dataset", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataset();
      var od = new api.Dataset.fromJson(o.toJson());
      checkDataset(od);
    });
  });


  unittest.group("obj-schema-Device", () {
    unittest.test("to-json--from-json", () {
      var o = buildDevice();
      var od = new api.Device.fromJson(o.toJson());
      checkDevice(od);
    });
  });


  unittest.group("obj-schema-ListDataSourcesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDataSourcesResponse();
      var od = new api.ListDataSourcesResponse.fromJson(o.toJson());
      checkListDataSourcesResponse(od);
    });
  });


  unittest.group("obj-schema-ListSessionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSessionsResponse();
      var od = new api.ListSessionsResponse.fromJson(o.toJson());
      checkListSessionsResponse(od);
    });
  });


  unittest.group("obj-schema-Session", () {
    unittest.test("to-json--from-json", () {
      var o = buildSession();
      var od = new api.Session.fromJson(o.toJson());
      checkSession(od);
    });
  });


  unittest.group("obj-schema-Value", () {
    unittest.test("to-json--from-json", () {
      var o = buildValue();
      var od = new api.Value.fromJson(o.toJson());
      checkValue(od);
    });
  });


  unittest.group("resource-UsersDataSourcesResourceApi", () {
    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
      api.UsersDataSourcesResourceApi res = new api.FitnessApi(mock).users.dataSources;
      var arg_request = buildDataSource();
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DataSource.fromJson(json);
        checkDataSource(obj);

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
        var resp = convert.JSON.encode(buildDataSource());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_userId).then(unittest.expectAsync(((api.DataSource response) {
        checkDataSource(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.UsersDataSourcesResourceApi res = new api.FitnessApi(mock).users.dataSources;
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
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
        var resp = convert.JSON.encode(buildDataSource());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_dataSourceId).then(unittest.expectAsync(((api.DataSource response) {
        checkDataSource(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.UsersDataSourcesResourceApi res = new api.FitnessApi(mock).users.dataSources;
      var arg_userId = "foo";
      var arg_dataTypeName = buildUnnamed763();
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
        unittest.expect(queryMap["dataTypeName"], unittest.equals(arg_dataTypeName));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDataSourcesResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId, dataTypeName: arg_dataTypeName).then(unittest.expectAsync(((api.ListDataSourcesResponse response) {
        checkListDataSourcesResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.UsersDataSourcesResourceApi res = new api.FitnessApi(mock).users.dataSources;
      var arg_request = buildDataSource();
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DataSource.fromJson(json);
        checkDataSource(obj);

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
        var resp = convert.JSON.encode(buildDataSource());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_userId, arg_dataSourceId).then(unittest.expectAsync(((api.DataSource response) {
        checkDataSource(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.UsersDataSourcesResourceApi res = new api.FitnessApi(mock).users.dataSources;
      var arg_request = buildDataSource();
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DataSource.fromJson(json);
        checkDataSource(obj);

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
        var resp = convert.JSON.encode(buildDataSource());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_userId, arg_dataSourceId).then(unittest.expectAsync(((api.DataSource response) {
        checkDataSource(response);
      })));
    });

  });


  unittest.group("resource-UsersDataSourcesDatasetsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.UsersDataSourcesDatasetsResourceApi res = new api.FitnessApi(mock).users.dataSources.datasets;
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
      var arg_datasetId = "foo";
      var arg_currentTimeMillis = "foo";
      var arg_modifiedTimeMillis = "foo";
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
        unittest.expect(queryMap["currentTimeMillis"].first, unittest.equals(arg_currentTimeMillis));
        unittest.expect(queryMap["modifiedTimeMillis"].first, unittest.equals(arg_modifiedTimeMillis));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_userId, arg_dataSourceId, arg_datasetId, currentTimeMillis: arg_currentTimeMillis, modifiedTimeMillis: arg_modifiedTimeMillis).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.UsersDataSourcesDatasetsResourceApi res = new api.FitnessApi(mock).users.dataSources.datasets;
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
      var arg_datasetId = "foo";
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
        var resp = convert.JSON.encode(buildDataset());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_dataSourceId, arg_datasetId).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.UsersDataSourcesDatasetsResourceApi res = new api.FitnessApi(mock).users.dataSources.datasets;
      var arg_request = buildDataset();
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
      var arg_datasetId = "foo";
      var arg_currentTimeMillis = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

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
        unittest.expect(queryMap["currentTimeMillis"].first, unittest.equals(arg_currentTimeMillis));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDataset());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_userId, arg_dataSourceId, arg_datasetId, currentTimeMillis: arg_currentTimeMillis).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

  });


  unittest.group("resource-UsersSessionsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.UsersSessionsResourceApi res = new api.FitnessApi(mock).users.sessions;
      var arg_userId = "foo";
      var arg_sessionId = "foo";
      var arg_currentTimeMillis = "foo";
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
        unittest.expect(queryMap["currentTimeMillis"].first, unittest.equals(arg_currentTimeMillis));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_userId, arg_sessionId, currentTimeMillis: arg_currentTimeMillis).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.UsersSessionsResourceApi res = new api.FitnessApi(mock).users.sessions;
      var arg_userId = "foo";
      var arg_endTime = "foo";
      var arg_includeDeleted = true;
      var arg_pageToken = "foo";
      var arg_startTime = "foo";
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
        unittest.expect(queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(queryMap["includeDeleted"].first, unittest.equals("$arg_includeDeleted"));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["startTime"].first, unittest.equals(arg_startTime));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListSessionsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId, endTime: arg_endTime, includeDeleted: arg_includeDeleted, pageToken: arg_pageToken, startTime: arg_startTime).then(unittest.expectAsync(((api.ListSessionsResponse response) {
        checkListSessionsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.UsersSessionsResourceApi res = new api.FitnessApi(mock).users.sessions;
      var arg_request = buildSession();
      var arg_userId = "foo";
      var arg_sessionId = "foo";
      var arg_currentTimeMillis = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Session.fromJson(json);
        checkSession(obj);

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
        unittest.expect(queryMap["currentTimeMillis"].first, unittest.equals(arg_currentTimeMillis));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSession());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_userId, arg_sessionId, currentTimeMillis: arg_currentTimeMillis).then(unittest.expectAsync(((api.Session response) {
        checkSession(response);
      })));
    });

  });


}

