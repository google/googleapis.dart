library googleapis.fitness.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/fitness/v1.dart' as api;

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

buildUnnamed1056() {
  var o = new core.List<api.Dataset>();
  o.add(buildDataset());
  o.add(buildDataset());
  return o;
}

checkUnnamed1056(core.List<api.Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataset(o[0]);
  checkDataset(o[1]);
}

core.int buildCounterAggregateBucket = 0;
buildAggregateBucket() {
  var o = new api.AggregateBucket();
  buildCounterAggregateBucket++;
  if (buildCounterAggregateBucket < 3) {
    o.activity = 42;
    o.dataset = buildUnnamed1056();
    o.endTimeMillis = "foo";
    o.session = buildSession();
    o.startTimeMillis = "foo";
    o.type = "foo";
  }
  buildCounterAggregateBucket--;
  return o;
}

checkAggregateBucket(api.AggregateBucket o) {
  buildCounterAggregateBucket++;
  if (buildCounterAggregateBucket < 3) {
    unittest.expect(o.activity, unittest.equals(42));
    checkUnnamed1056(o.dataset);
    unittest.expect(o.endTimeMillis, unittest.equals('foo'));
    checkSession(o.session);
    unittest.expect(o.startTimeMillis, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAggregateBucket--;
}

core.int buildCounterAggregateBy = 0;
buildAggregateBy() {
  var o = new api.AggregateBy();
  buildCounterAggregateBy++;
  if (buildCounterAggregateBy < 3) {
    o.dataSourceId = "foo";
    o.dataTypeName = "foo";
  }
  buildCounterAggregateBy--;
  return o;
}

checkAggregateBy(api.AggregateBy o) {
  buildCounterAggregateBy++;
  if (buildCounterAggregateBy < 3) {
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
    unittest.expect(o.dataTypeName, unittest.equals('foo'));
  }
  buildCounterAggregateBy--;
}

buildUnnamed1057() {
  var o = new core.List<api.AggregateBy>();
  o.add(buildAggregateBy());
  o.add(buildAggregateBy());
  return o;
}

checkUnnamed1057(core.List<api.AggregateBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregateBy(o[0]);
  checkAggregateBy(o[1]);
}

buildUnnamed1058() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1058(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAggregateRequest = 0;
buildAggregateRequest() {
  var o = new api.AggregateRequest();
  buildCounterAggregateRequest++;
  if (buildCounterAggregateRequest < 3) {
    o.aggregateBy = buildUnnamed1057();
    o.bucketByActivitySegment = buildBucketByActivity();
    o.bucketByActivityType = buildBucketByActivity();
    o.bucketBySession = buildBucketBySession();
    o.bucketByTime = buildBucketByTime();
    o.endTimeMillis = "foo";
    o.filteredDataQualityStandard = buildUnnamed1058();
    o.startTimeMillis = "foo";
  }
  buildCounterAggregateRequest--;
  return o;
}

checkAggregateRequest(api.AggregateRequest o) {
  buildCounterAggregateRequest++;
  if (buildCounterAggregateRequest < 3) {
    checkUnnamed1057(o.aggregateBy);
    checkBucketByActivity(o.bucketByActivitySegment);
    checkBucketByActivity(o.bucketByActivityType);
    checkBucketBySession(o.bucketBySession);
    checkBucketByTime(o.bucketByTime);
    unittest.expect(o.endTimeMillis, unittest.equals('foo'));
    checkUnnamed1058(o.filteredDataQualityStandard);
    unittest.expect(o.startTimeMillis, unittest.equals('foo'));
  }
  buildCounterAggregateRequest--;
}

buildUnnamed1059() {
  var o = new core.List<api.AggregateBucket>();
  o.add(buildAggregateBucket());
  o.add(buildAggregateBucket());
  return o;
}

checkUnnamed1059(core.List<api.AggregateBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregateBucket(o[0]);
  checkAggregateBucket(o[1]);
}

core.int buildCounterAggregateResponse = 0;
buildAggregateResponse() {
  var o = new api.AggregateResponse();
  buildCounterAggregateResponse++;
  if (buildCounterAggregateResponse < 3) {
    o.bucket = buildUnnamed1059();
  }
  buildCounterAggregateResponse--;
  return o;
}

checkAggregateResponse(api.AggregateResponse o) {
  buildCounterAggregateResponse++;
  if (buildCounterAggregateResponse < 3) {
    checkUnnamed1059(o.bucket);
  }
  buildCounterAggregateResponse--;
}

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

core.int buildCounterBucketByActivity = 0;
buildBucketByActivity() {
  var o = new api.BucketByActivity();
  buildCounterBucketByActivity++;
  if (buildCounterBucketByActivity < 3) {
    o.activityDataSourceId = "foo";
    o.minDurationMillis = "foo";
  }
  buildCounterBucketByActivity--;
  return o;
}

checkBucketByActivity(api.BucketByActivity o) {
  buildCounterBucketByActivity++;
  if (buildCounterBucketByActivity < 3) {
    unittest.expect(o.activityDataSourceId, unittest.equals('foo'));
    unittest.expect(o.minDurationMillis, unittest.equals('foo'));
  }
  buildCounterBucketByActivity--;
}

core.int buildCounterBucketBySession = 0;
buildBucketBySession() {
  var o = new api.BucketBySession();
  buildCounterBucketBySession++;
  if (buildCounterBucketBySession < 3) {
    o.minDurationMillis = "foo";
  }
  buildCounterBucketBySession--;
  return o;
}

checkBucketBySession(api.BucketBySession o) {
  buildCounterBucketBySession++;
  if (buildCounterBucketBySession < 3) {
    unittest.expect(o.minDurationMillis, unittest.equals('foo'));
  }
  buildCounterBucketBySession--;
}

core.int buildCounterBucketByTime = 0;
buildBucketByTime() {
  var o = new api.BucketByTime();
  buildCounterBucketByTime++;
  if (buildCounterBucketByTime < 3) {
    o.durationMillis = "foo";
    o.period = buildBucketByTimePeriod();
  }
  buildCounterBucketByTime--;
  return o;
}

checkBucketByTime(api.BucketByTime o) {
  buildCounterBucketByTime++;
  if (buildCounterBucketByTime < 3) {
    unittest.expect(o.durationMillis, unittest.equals('foo'));
    checkBucketByTimePeriod(o.period);
  }
  buildCounterBucketByTime--;
}

core.int buildCounterBucketByTimePeriod = 0;
buildBucketByTimePeriod() {
  var o = new api.BucketByTimePeriod();
  buildCounterBucketByTimePeriod++;
  if (buildCounterBucketByTimePeriod < 3) {
    o.timeZoneId = "foo";
    o.type = "foo";
    o.value = 42;
  }
  buildCounterBucketByTimePeriod--;
  return o;
}

checkBucketByTimePeriod(api.BucketByTimePeriod o) {
  buildCounterBucketByTimePeriod++;
  if (buildCounterBucketByTimePeriod < 3) {
    unittest.expect(o.timeZoneId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42));
  }
  buildCounterBucketByTimePeriod--;
}

buildUnnamed1060() {
  var o = new core.List<api.Value>();
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

checkUnnamed1060(core.List<api.Value> o) {
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
    o.value = buildUnnamed1060();
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
    checkUnnamed1060(o.value);
  }
  buildCounterDataPoint--;
}

buildUnnamed1061() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1061(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDataSource = 0;
buildDataSource() {
  var o = new api.DataSource();
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    o.application = buildApplication();
    o.dataQualityStandard = buildUnnamed1061();
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
    checkUnnamed1061(o.dataQualityStandard);
    unittest.expect(o.dataStreamId, unittest.equals('foo'));
    unittest.expect(o.dataStreamName, unittest.equals('foo'));
    checkDataType(o.dataType);
    checkDevice(o.device);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDataSource--;
}

buildUnnamed1062() {
  var o = new core.List<api.DataTypeField>();
  o.add(buildDataTypeField());
  o.add(buildDataTypeField());
  return o;
}

checkUnnamed1062(core.List<api.DataTypeField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataTypeField(o[0]);
  checkDataTypeField(o[1]);
}

core.int buildCounterDataType = 0;
buildDataType() {
  var o = new api.DataType();
  buildCounterDataType++;
  if (buildCounterDataType < 3) {
    o.field = buildUnnamed1062();
    o.name = "foo";
  }
  buildCounterDataType--;
  return o;
}

checkDataType(api.DataType o) {
  buildCounterDataType++;
  if (buildCounterDataType < 3) {
    checkUnnamed1062(o.field);
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
    o.optional = true;
  }
  buildCounterDataTypeField--;
  return o;
}

checkDataTypeField(api.DataTypeField o) {
  buildCounterDataTypeField++;
  if (buildCounterDataTypeField < 3) {
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optional, unittest.isTrue);
  }
  buildCounterDataTypeField--;
}

buildUnnamed1063() {
  var o = new core.List<api.DataPoint>();
  o.add(buildDataPoint());
  o.add(buildDataPoint());
  return o;
}

checkUnnamed1063(core.List<api.DataPoint> o) {
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
    o.nextPageToken = "foo";
    o.point = buildUnnamed1063();
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
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1063(o.point);
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

buildUnnamed1064() {
  var o = new core.List<api.DataPoint>();
  o.add(buildDataPoint());
  o.add(buildDataPoint());
  return o;
}

checkUnnamed1064(core.List<api.DataPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataPoint(o[0]);
  checkDataPoint(o[1]);
}

buildUnnamed1065() {
  var o = new core.List<api.DataPoint>();
  o.add(buildDataPoint());
  o.add(buildDataPoint());
  return o;
}

checkUnnamed1065(core.List<api.DataPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataPoint(o[0]);
  checkDataPoint(o[1]);
}

core.int buildCounterListDataPointChangesResponse = 0;
buildListDataPointChangesResponse() {
  var o = new api.ListDataPointChangesResponse();
  buildCounterListDataPointChangesResponse++;
  if (buildCounterListDataPointChangesResponse < 3) {
    o.dataSourceId = "foo";
    o.deletedDataPoint = buildUnnamed1064();
    o.insertedDataPoint = buildUnnamed1065();
    o.nextPageToken = "foo";
  }
  buildCounterListDataPointChangesResponse--;
  return o;
}

checkListDataPointChangesResponse(api.ListDataPointChangesResponse o) {
  buildCounterListDataPointChangesResponse++;
  if (buildCounterListDataPointChangesResponse < 3) {
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
    checkUnnamed1064(o.deletedDataPoint);
    checkUnnamed1065(o.insertedDataPoint);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDataPointChangesResponse--;
}

buildUnnamed1066() {
  var o = new core.List<api.DataSource>();
  o.add(buildDataSource());
  o.add(buildDataSource());
  return o;
}

checkUnnamed1066(core.List<api.DataSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSource(o[0]);
  checkDataSource(o[1]);
}

core.int buildCounterListDataSourcesResponse = 0;
buildListDataSourcesResponse() {
  var o = new api.ListDataSourcesResponse();
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    o.dataSource = buildUnnamed1066();
  }
  buildCounterListDataSourcesResponse--;
  return o;
}

checkListDataSourcesResponse(api.ListDataSourcesResponse o) {
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    checkUnnamed1066(o.dataSource);
  }
  buildCounterListDataSourcesResponse--;
}

buildUnnamed1067() {
  var o = new core.List<api.Session>();
  o.add(buildSession());
  o.add(buildSession());
  return o;
}

checkUnnamed1067(core.List<api.Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSession(o[0]);
  checkSession(o[1]);
}

buildUnnamed1068() {
  var o = new core.List<api.Session>();
  o.add(buildSession());
  o.add(buildSession());
  return o;
}

checkUnnamed1068(core.List<api.Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSession(o[0]);
  checkSession(o[1]);
}

core.int buildCounterListSessionsResponse = 0;
buildListSessionsResponse() {
  var o = new api.ListSessionsResponse();
  buildCounterListSessionsResponse++;
  if (buildCounterListSessionsResponse < 3) {
    o.deletedSession = buildUnnamed1067();
    o.hasMoreData = true;
    o.nextPageToken = "foo";
    o.session = buildUnnamed1068();
  }
  buildCounterListSessionsResponse--;
  return o;
}

checkListSessionsResponse(api.ListSessionsResponse o) {
  buildCounterListSessionsResponse++;
  if (buildCounterListSessionsResponse < 3) {
    checkUnnamed1067(o.deletedSession);
    unittest.expect(o.hasMoreData, unittest.isTrue);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1068(o.session);
  }
  buildCounterListSessionsResponse--;
}

core.int buildCounterMapValue = 0;
buildMapValue() {
  var o = new api.MapValue();
  buildCounterMapValue++;
  if (buildCounterMapValue < 3) {
    o.fpVal = 42.0;
  }
  buildCounterMapValue--;
  return o;
}

checkMapValue(api.MapValue o) {
  buildCounterMapValue++;
  if (buildCounterMapValue < 3) {
    unittest.expect(o.fpVal, unittest.equals(42.0));
  }
  buildCounterMapValue--;
}

core.int buildCounterSession = 0;
buildSession() {
  var o = new api.Session();
  buildCounterSession++;
  if (buildCounterSession < 3) {
    o.activeTimeMillis = "foo";
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
    unittest.expect(o.activeTimeMillis, unittest.equals('foo'));
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

buildUnnamed1069() {
  var o = new core.List<api.ValueMapValEntry>();
  o.add(buildValueMapValEntry());
  o.add(buildValueMapValEntry());
  return o;
}

checkUnnamed1069(core.List<api.ValueMapValEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueMapValEntry(o[0]);
  checkValueMapValEntry(o[1]);
}

core.int buildCounterValue = 0;
buildValue() {
  var o = new api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.fpVal = 42.0;
    o.intVal = 42;
    o.mapVal = buildUnnamed1069();
    o.stringVal = "foo";
  }
  buildCounterValue--;
  return o;
}

checkValue(api.Value o) {
  buildCounterValue++;
  if (buildCounterValue < 3) {
    unittest.expect(o.fpVal, unittest.equals(42.0));
    unittest.expect(o.intVal, unittest.equals(42));
    checkUnnamed1069(o.mapVal);
    unittest.expect(o.stringVal, unittest.equals('foo'));
  }
  buildCounterValue--;
}

core.int buildCounterValueMapValEntry = 0;
buildValueMapValEntry() {
  var o = new api.ValueMapValEntry();
  buildCounterValueMapValEntry++;
  if (buildCounterValueMapValEntry < 3) {
    o.key = "foo";
    o.value = buildMapValue();
  }
  buildCounterValueMapValEntry--;
  return o;
}

checkValueMapValEntry(api.ValueMapValEntry o) {
  buildCounterValueMapValEntry++;
  if (buildCounterValueMapValEntry < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkMapValue(o.value);
  }
  buildCounterValueMapValEntry--;
}

buildUnnamed1070() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1070(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-AggregateBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildAggregateBucket();
      var od = new api.AggregateBucket.fromJson(o.toJson());
      checkAggregateBucket(od);
    });
  });

  unittest.group("obj-schema-AggregateBy", () {
    unittest.test("to-json--from-json", () {
      var o = buildAggregateBy();
      var od = new api.AggregateBy.fromJson(o.toJson());
      checkAggregateBy(od);
    });
  });

  unittest.group("obj-schema-AggregateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAggregateRequest();
      var od = new api.AggregateRequest.fromJson(o.toJson());
      checkAggregateRequest(od);
    });
  });

  unittest.group("obj-schema-AggregateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAggregateResponse();
      var od = new api.AggregateResponse.fromJson(o.toJson());
      checkAggregateResponse(od);
    });
  });

  unittest.group("obj-schema-Application", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplication();
      var od = new api.Application.fromJson(o.toJson());
      checkApplication(od);
    });
  });

  unittest.group("obj-schema-BucketByActivity", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketByActivity();
      var od = new api.BucketByActivity.fromJson(o.toJson());
      checkBucketByActivity(od);
    });
  });

  unittest.group("obj-schema-BucketBySession", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketBySession();
      var od = new api.BucketBySession.fromJson(o.toJson());
      checkBucketBySession(od);
    });
  });

  unittest.group("obj-schema-BucketByTime", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketByTime();
      var od = new api.BucketByTime.fromJson(o.toJson());
      checkBucketByTime(od);
    });
  });

  unittest.group("obj-schema-BucketByTimePeriod", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketByTimePeriod();
      var od = new api.BucketByTimePeriod.fromJson(o.toJson());
      checkBucketByTimePeriod(od);
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

  unittest.group("obj-schema-ListDataPointChangesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDataPointChangesResponse();
      var od = new api.ListDataPointChangesResponse.fromJson(o.toJson());
      checkListDataPointChangesResponse(od);
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

  unittest.group("obj-schema-MapValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildMapValue();
      var od = new api.MapValue.fromJson(o.toJson());
      checkMapValue(od);
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

  unittest.group("obj-schema-ValueMapValEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildValueMapValEntry();
      var od = new api.ValueMapValEntry.fromJson(o.toJson());
      checkValueMapValEntry(od);
    });
  });

  unittest.group("resource-UsersDataSourcesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.UsersDataSourcesResourceApi res =
          new api.FitnessApi(mock).users.dataSources;
      var arg_request = buildDataSource();
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DataSource.fromJson(json);
        checkDataSource(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildDataSource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataSource(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.UsersDataSourcesResourceApi res =
          new api.FitnessApi(mock).users.dataSources;
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildDataSource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_userId, arg_dataSourceId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataSource(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.UsersDataSourcesResourceApi res =
          new api.FitnessApi(mock).users.dataSources;
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildDataSource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userId, arg_dataSourceId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataSource(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UsersDataSourcesResourceApi res =
          new api.FitnessApi(mock).users.dataSources;
      var arg_userId = "foo";
      var arg_dataTypeName = buildUnnamed1070();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["dataTypeName"], unittest.equals(arg_dataTypeName));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDataSourcesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userId,
              dataTypeName: arg_dataTypeName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDataSourcesResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.UsersDataSourcesResourceApi res =
          new api.FitnessApi(mock).users.dataSources;
      var arg_request = buildDataSource();
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DataSource.fromJson(json);
        checkDataSource(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildDataSource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_userId, arg_dataSourceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataSource(response);
      })));
    });
  });

  unittest.group("resource-UsersDataSourcesDataPointChangesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UsersDataSourcesDataPointChangesResourceApi res =
          new api.FitnessApi(mock).users.dataSources.dataPointChanges;
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
      var arg_limit = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDataPointChangesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userId, arg_dataSourceId,
              limit: arg_limit, pageToken: arg_pageToken, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDataPointChangesResponse(response);
      })));
    });
  });

  unittest.group("resource-UsersDataSourcesDatasetsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.UsersDataSourcesDatasetsResourceApi res =
          new api.FitnessApi(mock).users.dataSources.datasets;
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
      var arg_datasetId = "foo";
      var arg_currentTimeMillis = "foo";
      var arg_modifiedTimeMillis = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["currentTimeMillis"].first,
            unittest.equals(arg_currentTimeMillis));
        unittest.expect(queryMap["modifiedTimeMillis"].first,
            unittest.equals(arg_modifiedTimeMillis));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_userId, arg_dataSourceId, arg_datasetId,
              currentTimeMillis: arg_currentTimeMillis,
              modifiedTimeMillis: arg_modifiedTimeMillis,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.UsersDataSourcesDatasetsResourceApi res =
          new api.FitnessApi(mock).users.dataSources.datasets;
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
      var arg_datasetId = "foo";
      var arg_limit = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["limit"].first),
            unittest.equals(arg_limit));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userId, arg_dataSourceId, arg_datasetId,
              limit: arg_limit, pageToken: arg_pageToken, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.UsersDataSourcesDatasetsResourceApi res =
          new api.FitnessApi(mock).users.dataSources.datasets;
      var arg_request = buildDataset();
      var arg_userId = "foo";
      var arg_dataSourceId = "foo";
      var arg_datasetId = "foo";
      var arg_currentTimeMillis = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["currentTimeMillis"].first,
            unittest.equals(arg_currentTimeMillis));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_userId, arg_dataSourceId, arg_datasetId,
              currentTimeMillis: arg_currentTimeMillis, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataset(response);
      })));
    });
  });

  unittest.group("resource-UsersDatasetResourceApi", () {
    unittest.test("method--aggregate", () {
      var mock = new HttpServerMock();
      api.UsersDatasetResourceApi res = new api.FitnessApi(mock).users.dataset;
      var arg_request = buildAggregateRequest();
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AggregateRequest.fromJson(json);
        checkAggregateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAggregateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregate(arg_request, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAggregateResponse(response);
      })));
    });
  });

  unittest.group("resource-UsersSessionsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.UsersSessionsResourceApi res =
          new api.FitnessApi(mock).users.sessions;
      var arg_userId = "foo";
      var arg_sessionId = "foo";
      var arg_currentTimeMillis = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["currentTimeMillis"].first,
            unittest.equals(arg_currentTimeMillis));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_userId, arg_sessionId,
              currentTimeMillis: arg_currentTimeMillis, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UsersSessionsResourceApi res =
          new api.FitnessApi(mock).users.sessions;
      var arg_userId = "foo";
      var arg_endTime = "foo";
      var arg_includeDeleted = true;
      var arg_pageToken = "foo";
      var arg_startTime = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(queryMap["includeDeleted"].first,
            unittest.equals("$arg_includeDeleted"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListSessionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userId,
              endTime: arg_endTime,
              includeDeleted: arg_includeDeleted,
              pageToken: arg_pageToken,
              startTime: arg_startTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSessionsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.UsersSessionsResourceApi res =
          new api.FitnessApi(mock).users.sessions;
      var arg_request = buildSession();
      var arg_userId = "foo";
      var arg_sessionId = "foo";
      var arg_currentTimeMillis = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Session.fromJson(json);
        checkSession(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["currentTimeMillis"].first,
            unittest.equals(arg_currentTimeMillis));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSession());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_userId, arg_sessionId,
              currentTimeMillis: arg_currentTimeMillis, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSession(response);
      })));
    });
  });
}
