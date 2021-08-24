// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/fitness/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Dataset> buildUnnamed1613() => [
      buildDataset(),
      buildDataset(),
    ];

void checkUnnamed1613(core.List<api.Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataset(o[0]);
  checkDataset(o[1]);
}

core.int buildCounterAggregateBucket = 0;
api.AggregateBucket buildAggregateBucket() {
  final o = api.AggregateBucket();
  buildCounterAggregateBucket++;
  if (buildCounterAggregateBucket < 3) {
    o.activity = 42;
    o.dataset = buildUnnamed1613();
    o.endTimeMillis = 'foo';
    o.session = buildSession();
    o.startTimeMillis = 'foo';
    o.type = 'foo';
  }
  buildCounterAggregateBucket--;
  return o;
}

void checkAggregateBucket(api.AggregateBucket o) {
  buildCounterAggregateBucket++;
  if (buildCounterAggregateBucket < 3) {
    unittest.expect(
      o.activity!,
      unittest.equals(42),
    );
    checkUnnamed1613(o.dataset!);
    unittest.expect(
      o.endTimeMillis!,
      unittest.equals('foo'),
    );
    checkSession(o.session!);
    unittest.expect(
      o.startTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAggregateBucket--;
}

core.int buildCounterAggregateBy = 0;
api.AggregateBy buildAggregateBy() {
  final o = api.AggregateBy();
  buildCounterAggregateBy++;
  if (buildCounterAggregateBy < 3) {
    o.dataSourceId = 'foo';
    o.dataTypeName = 'foo';
  }
  buildCounterAggregateBy--;
  return o;
}

void checkAggregateBy(api.AggregateBy o) {
  buildCounterAggregateBy++;
  if (buildCounterAggregateBy < 3) {
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataTypeName!,
      unittest.equals('foo'),
    );
  }
  buildCounterAggregateBy--;
}

core.List<api.AggregateBy> buildUnnamed1614() => [
      buildAggregateBy(),
      buildAggregateBy(),
    ];

void checkUnnamed1614(core.List<api.AggregateBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregateBy(o[0]);
  checkAggregateBy(o[1]);
}

core.List<core.String> buildUnnamed1615() => [
      'foo',
      'foo',
    ];

void checkUnnamed1615(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterAggregateRequest = 0;
api.AggregateRequest buildAggregateRequest() {
  final o = api.AggregateRequest();
  buildCounterAggregateRequest++;
  if (buildCounterAggregateRequest < 3) {
    o.aggregateBy = buildUnnamed1614();
    o.bucketByActivitySegment = buildBucketByActivity();
    o.bucketByActivityType = buildBucketByActivity();
    o.bucketBySession = buildBucketBySession();
    o.bucketByTime = buildBucketByTime();
    o.endTimeMillis = 'foo';
    o.filteredDataQualityStandard = buildUnnamed1615();
    o.startTimeMillis = 'foo';
  }
  buildCounterAggregateRequest--;
  return o;
}

void checkAggregateRequest(api.AggregateRequest o) {
  buildCounterAggregateRequest++;
  if (buildCounterAggregateRequest < 3) {
    checkUnnamed1614(o.aggregateBy!);
    checkBucketByActivity(o.bucketByActivitySegment!);
    checkBucketByActivity(o.bucketByActivityType!);
    checkBucketBySession(o.bucketBySession!);
    checkBucketByTime(o.bucketByTime!);
    unittest.expect(
      o.endTimeMillis!,
      unittest.equals('foo'),
    );
    checkUnnamed1615(o.filteredDataQualityStandard!);
    unittest.expect(
      o.startTimeMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterAggregateRequest--;
}

core.List<api.AggregateBucket> buildUnnamed1616() => [
      buildAggregateBucket(),
      buildAggregateBucket(),
    ];

void checkUnnamed1616(core.List<api.AggregateBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregateBucket(o[0]);
  checkAggregateBucket(o[1]);
}

core.int buildCounterAggregateResponse = 0;
api.AggregateResponse buildAggregateResponse() {
  final o = api.AggregateResponse();
  buildCounterAggregateResponse++;
  if (buildCounterAggregateResponse < 3) {
    o.bucket = buildUnnamed1616();
  }
  buildCounterAggregateResponse--;
  return o;
}

void checkAggregateResponse(api.AggregateResponse o) {
  buildCounterAggregateResponse++;
  if (buildCounterAggregateResponse < 3) {
    checkUnnamed1616(o.bucket!);
  }
  buildCounterAggregateResponse--;
}

core.int buildCounterApplication = 0;
api.Application buildApplication() {
  final o = api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.detailsUrl = 'foo';
    o.name = 'foo';
    o.packageName = 'foo';
    o.version = 'foo';
  }
  buildCounterApplication--;
  return o;
}

void checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(
      o.detailsUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplication--;
}

core.int buildCounterBucketByActivity = 0;
api.BucketByActivity buildBucketByActivity() {
  final o = api.BucketByActivity();
  buildCounterBucketByActivity++;
  if (buildCounterBucketByActivity < 3) {
    o.activityDataSourceId = 'foo';
    o.minDurationMillis = 'foo';
  }
  buildCounterBucketByActivity--;
  return o;
}

void checkBucketByActivity(api.BucketByActivity o) {
  buildCounterBucketByActivity++;
  if (buildCounterBucketByActivity < 3) {
    unittest.expect(
      o.activityDataSourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minDurationMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketByActivity--;
}

core.int buildCounterBucketBySession = 0;
api.BucketBySession buildBucketBySession() {
  final o = api.BucketBySession();
  buildCounterBucketBySession++;
  if (buildCounterBucketBySession < 3) {
    o.minDurationMillis = 'foo';
  }
  buildCounterBucketBySession--;
  return o;
}

void checkBucketBySession(api.BucketBySession o) {
  buildCounterBucketBySession++;
  if (buildCounterBucketBySession < 3) {
    unittest.expect(
      o.minDurationMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterBucketBySession--;
}

core.int buildCounterBucketByTime = 0;
api.BucketByTime buildBucketByTime() {
  final o = api.BucketByTime();
  buildCounterBucketByTime++;
  if (buildCounterBucketByTime < 3) {
    o.durationMillis = 'foo';
    o.period = buildBucketByTimePeriod();
  }
  buildCounterBucketByTime--;
  return o;
}

void checkBucketByTime(api.BucketByTime o) {
  buildCounterBucketByTime++;
  if (buildCounterBucketByTime < 3) {
    unittest.expect(
      o.durationMillis!,
      unittest.equals('foo'),
    );
    checkBucketByTimePeriod(o.period!);
  }
  buildCounterBucketByTime--;
}

core.int buildCounterBucketByTimePeriod = 0;
api.BucketByTimePeriod buildBucketByTimePeriod() {
  final o = api.BucketByTimePeriod();
  buildCounterBucketByTimePeriod++;
  if (buildCounterBucketByTimePeriod < 3) {
    o.timeZoneId = 'foo';
    o.type = 'foo';
    o.value = 42;
  }
  buildCounterBucketByTimePeriod--;
  return o;
}

void checkBucketByTimePeriod(api.BucketByTimePeriod o) {
  buildCounterBucketByTimePeriod++;
  if (buildCounterBucketByTimePeriod < 3) {
    unittest.expect(
      o.timeZoneId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42),
    );
  }
  buildCounterBucketByTimePeriod--;
}

core.List<api.Value> buildUnnamed1617() => [
      buildValue(),
      buildValue(),
    ];

void checkUnnamed1617(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterDataPoint = 0;
api.DataPoint buildDataPoint() {
  final o = api.DataPoint();
  buildCounterDataPoint++;
  if (buildCounterDataPoint < 3) {
    o.computationTimeMillis = 'foo';
    o.dataTypeName = 'foo';
    o.endTimeNanos = 'foo';
    o.modifiedTimeMillis = 'foo';
    o.originDataSourceId = 'foo';
    o.rawTimestampNanos = 'foo';
    o.startTimeNanos = 'foo';
    o.value = buildUnnamed1617();
  }
  buildCounterDataPoint--;
  return o;
}

void checkDataPoint(api.DataPoint o) {
  buildCounterDataPoint++;
  if (buildCounterDataPoint < 3) {
    unittest.expect(
      o.computationTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataTypeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTimeNanos!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modifiedTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originDataSourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rawTimestampNanos!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeNanos!,
      unittest.equals('foo'),
    );
    checkUnnamed1617(o.value!);
  }
  buildCounterDataPoint--;
}

core.List<core.String> buildUnnamed1618() => [
      'foo',
      'foo',
    ];

void checkUnnamed1618(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterDataSource = 0;
api.DataSource buildDataSource() {
  final o = api.DataSource();
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    o.application = buildApplication();
    o.dataQualityStandard = buildUnnamed1618();
    o.dataStreamId = 'foo';
    o.dataStreamName = 'foo';
    o.dataType = buildDataType();
    o.device = buildDevice();
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterDataSource--;
  return o;
}

void checkDataSource(api.DataSource o) {
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    checkApplication(o.application!);
    checkUnnamed1618(o.dataQualityStandard!);
    unittest.expect(
      o.dataStreamId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataStreamName!,
      unittest.equals('foo'),
    );
    checkDataType(o.dataType!);
    checkDevice(o.device!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataSource--;
}

core.List<api.DataTypeField> buildUnnamed1619() => [
      buildDataTypeField(),
      buildDataTypeField(),
    ];

void checkUnnamed1619(core.List<api.DataTypeField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataTypeField(o[0]);
  checkDataTypeField(o[1]);
}

core.int buildCounterDataType = 0;
api.DataType buildDataType() {
  final o = api.DataType();
  buildCounterDataType++;
  if (buildCounterDataType < 3) {
    o.field = buildUnnamed1619();
    o.name = 'foo';
  }
  buildCounterDataType--;
  return o;
}

void checkDataType(api.DataType o) {
  buildCounterDataType++;
  if (buildCounterDataType < 3) {
    checkUnnamed1619(o.field!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataType--;
}

core.int buildCounterDataTypeField = 0;
api.DataTypeField buildDataTypeField() {
  final o = api.DataTypeField();
  buildCounterDataTypeField++;
  if (buildCounterDataTypeField < 3) {
    o.format = 'foo';
    o.name = 'foo';
    o.optional = true;
  }
  buildCounterDataTypeField--;
  return o;
}

void checkDataTypeField(api.DataTypeField o) {
  buildCounterDataTypeField++;
  if (buildCounterDataTypeField < 3) {
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.optional!, unittest.isTrue);
  }
  buildCounterDataTypeField--;
}

core.List<api.DataPoint> buildUnnamed1620() => [
      buildDataPoint(),
      buildDataPoint(),
    ];

void checkUnnamed1620(core.List<api.DataPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataPoint(o[0]);
  checkDataPoint(o[1]);
}

core.int buildCounterDataset = 0;
api.Dataset buildDataset() {
  final o = api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.dataSourceId = 'foo';
    o.maxEndTimeNs = 'foo';
    o.minStartTimeNs = 'foo';
    o.nextPageToken = 'foo';
    o.point = buildUnnamed1620();
  }
  buildCounterDataset--;
  return o;
}

void checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxEndTimeNs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minStartTimeNs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1620(o.point!);
  }
  buildCounterDataset--;
}

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  final o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.manufacturer = 'foo';
    o.model = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.version = 'foo';
  }
  buildCounterDevice--;
  return o;
}

void checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterDevice--;
}

core.List<api.DataPoint> buildUnnamed1621() => [
      buildDataPoint(),
      buildDataPoint(),
    ];

void checkUnnamed1621(core.List<api.DataPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataPoint(o[0]);
  checkDataPoint(o[1]);
}

core.List<api.DataPoint> buildUnnamed1622() => [
      buildDataPoint(),
      buildDataPoint(),
    ];

void checkUnnamed1622(core.List<api.DataPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataPoint(o[0]);
  checkDataPoint(o[1]);
}

core.int buildCounterListDataPointChangesResponse = 0;
api.ListDataPointChangesResponse buildListDataPointChangesResponse() {
  final o = api.ListDataPointChangesResponse();
  buildCounterListDataPointChangesResponse++;
  if (buildCounterListDataPointChangesResponse < 3) {
    o.dataSourceId = 'foo';
    o.deletedDataPoint = buildUnnamed1621();
    o.insertedDataPoint = buildUnnamed1622();
    o.nextPageToken = 'foo';
  }
  buildCounterListDataPointChangesResponse--;
  return o;
}

void checkListDataPointChangesResponse(api.ListDataPointChangesResponse o) {
  buildCounterListDataPointChangesResponse++;
  if (buildCounterListDataPointChangesResponse < 3) {
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
    checkUnnamed1621(o.deletedDataPoint!);
    checkUnnamed1622(o.insertedDataPoint!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDataPointChangesResponse--;
}

core.List<api.DataSource> buildUnnamed1623() => [
      buildDataSource(),
      buildDataSource(),
    ];

void checkUnnamed1623(core.List<api.DataSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSource(o[0]);
  checkDataSource(o[1]);
}

core.int buildCounterListDataSourcesResponse = 0;
api.ListDataSourcesResponse buildListDataSourcesResponse() {
  final o = api.ListDataSourcesResponse();
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    o.dataSource = buildUnnamed1623();
  }
  buildCounterListDataSourcesResponse--;
  return o;
}

void checkListDataSourcesResponse(api.ListDataSourcesResponse o) {
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    checkUnnamed1623(o.dataSource!);
  }
  buildCounterListDataSourcesResponse--;
}

core.List<api.Session> buildUnnamed1624() => [
      buildSession(),
      buildSession(),
    ];

void checkUnnamed1624(core.List<api.Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSession(o[0]);
  checkSession(o[1]);
}

core.List<api.Session> buildUnnamed1625() => [
      buildSession(),
      buildSession(),
    ];

void checkUnnamed1625(core.List<api.Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSession(o[0]);
  checkSession(o[1]);
}

core.int buildCounterListSessionsResponse = 0;
api.ListSessionsResponse buildListSessionsResponse() {
  final o = api.ListSessionsResponse();
  buildCounterListSessionsResponse++;
  if (buildCounterListSessionsResponse < 3) {
    o.deletedSession = buildUnnamed1624();
    o.hasMoreData = true;
    o.nextPageToken = 'foo';
    o.session = buildUnnamed1625();
  }
  buildCounterListSessionsResponse--;
  return o;
}

void checkListSessionsResponse(api.ListSessionsResponse o) {
  buildCounterListSessionsResponse++;
  if (buildCounterListSessionsResponse < 3) {
    checkUnnamed1624(o.deletedSession!);
    unittest.expect(o.hasMoreData!, unittest.isTrue);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1625(o.session!);
  }
  buildCounterListSessionsResponse--;
}

core.int buildCounterMapValue = 0;
api.MapValue buildMapValue() {
  final o = api.MapValue();
  buildCounterMapValue++;
  if (buildCounterMapValue < 3) {
    o.fpVal = 42.0;
  }
  buildCounterMapValue--;
  return o;
}

void checkMapValue(api.MapValue o) {
  buildCounterMapValue++;
  if (buildCounterMapValue < 3) {
    unittest.expect(
      o.fpVal!,
      unittest.equals(42.0),
    );
  }
  buildCounterMapValue--;
}

core.int buildCounterSession = 0;
api.Session buildSession() {
  final o = api.Session();
  buildCounterSession++;
  if (buildCounterSession < 3) {
    o.activeTimeMillis = 'foo';
    o.activityType = 42;
    o.application = buildApplication();
    o.description = 'foo';
    o.endTimeMillis = 'foo';
    o.id = 'foo';
    o.modifiedTimeMillis = 'foo';
    o.name = 'foo';
    o.startTimeMillis = 'foo';
  }
  buildCounterSession--;
  return o;
}

void checkSession(api.Session o) {
  buildCounterSession++;
  if (buildCounterSession < 3) {
    unittest.expect(
      o.activeTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.activityType!,
      unittest.equals(42),
    );
    checkApplication(o.application!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modifiedTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterSession--;
}

core.List<api.ValueMapValEntry> buildUnnamed1626() => [
      buildValueMapValEntry(),
      buildValueMapValEntry(),
    ];

void checkUnnamed1626(core.List<api.ValueMapValEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueMapValEntry(o[0]);
  checkValueMapValEntry(o[1]);
}

core.int buildCounterValue = 0;
api.Value buildValue() {
  final o = api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.fpVal = 42.0;
    o.intVal = 42;
    o.mapVal = buildUnnamed1626();
    o.stringVal = 'foo';
  }
  buildCounterValue--;
  return o;
}

void checkValue(api.Value o) {
  buildCounterValue++;
  if (buildCounterValue < 3) {
    unittest.expect(
      o.fpVal!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.intVal!,
      unittest.equals(42),
    );
    checkUnnamed1626(o.mapVal!);
    unittest.expect(
      o.stringVal!,
      unittest.equals('foo'),
    );
  }
  buildCounterValue--;
}

core.int buildCounterValueMapValEntry = 0;
api.ValueMapValEntry buildValueMapValEntry() {
  final o = api.ValueMapValEntry();
  buildCounterValueMapValEntry++;
  if (buildCounterValueMapValEntry < 3) {
    o.key = 'foo';
    o.value = buildMapValue();
  }
  buildCounterValueMapValEntry--;
  return o;
}

void checkValueMapValEntry(api.ValueMapValEntry o) {
  buildCounterValueMapValEntry++;
  if (buildCounterValueMapValEntry < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkMapValue(o.value!);
  }
  buildCounterValueMapValEntry--;
}

core.List<core.String> buildUnnamed1627() => [
      'foo',
      'foo',
    ];

void checkUnnamed1627(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.int> buildUnnamed1628() => [
      42,
      42,
    ];

void checkUnnamed1628(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

void main() {
  unittest.group('obj-schema-AggregateBucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregateBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregateBucket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregateBucket(od);
    });
  });

  unittest.group('obj-schema-AggregateBy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregateBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregateBy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregateBy(od);
    });
  });

  unittest.group('obj-schema-AggregateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregateRequest(od);
    });
  });

  unittest.group('obj-schema-AggregateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregateResponse(od);
    });
  });

  unittest.group('obj-schema-Application', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Application.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplication(od);
    });
  });

  unittest.group('obj-schema-BucketByActivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketByActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketByActivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketByActivity(od);
    });
  });

  unittest.group('obj-schema-BucketBySession', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketBySession();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketBySession.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketBySession(od);
    });
  });

  unittest.group('obj-schema-BucketByTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketByTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketByTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketByTime(od);
    });
  });

  unittest.group('obj-schema-BucketByTimePeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketByTimePeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketByTimePeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketByTimePeriod(od);
    });
  });

  unittest.group('obj-schema-DataPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DataPoint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataPoint(od);
    });
  });

  unittest.group('obj-schema-DataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DataSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataSource(od);
    });
  });

  unittest.group('obj-schema-DataType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DataType.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataType(od);
    });
  });

  unittest.group('obj-schema-DataTypeField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataTypeField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataTypeField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataTypeField(od);
    });
  });

  unittest.group('obj-schema-Dataset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Dataset.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataset(od);
    });
  });

  unittest.group('obj-schema-Device', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Device.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDevice(od);
    });
  });

  unittest.group('obj-schema-ListDataPointChangesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDataPointChangesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDataPointChangesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDataPointChangesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDataSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDataSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDataSourcesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDataSourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListSessionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSessionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSessionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSessionsResponse(od);
    });
  });

  unittest.group('obj-schema-MapValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMapValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MapValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMapValue(od);
    });
  });

  unittest.group('obj-schema-Session', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSession();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Session.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSession(od);
    });
  });

  unittest.group('obj-schema-Value', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Value.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkValue(od);
    });
  });

  unittest.group('obj-schema-ValueMapValEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValueMapValEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValueMapValEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValueMapValEntry(od);
    });
  });

  unittest.group('resource-UsersDataSourcesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.dataSources;
      final arg_request = buildDataSource();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DataSource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDataSource(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_userId, $fields: arg_$fields);
      checkDataSource(response as api.DataSource);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.dataSources;
      final arg_userId = 'foo';
      final arg_dataSourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_userId, arg_dataSourceId, $fields: arg_$fields);
      checkDataSource(response as api.DataSource);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.dataSources;
      final arg_userId = 'foo';
      final arg_dataSourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_userId, arg_dataSourceId, $fields: arg_$fields);
      checkDataSource(response as api.DataSource);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.dataSources;
      final arg_userId = 'foo';
      final arg_dataTypeName = buildUnnamed1627();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['dataTypeName']!,
          unittest.equals(arg_dataTypeName),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDataSourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId,
          dataTypeName: arg_dataTypeName, $fields: arg_$fields);
      checkListDataSourcesResponse(response as api.ListDataSourcesResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.dataSources;
      final arg_request = buildDataSource();
      final arg_userId = 'foo';
      final arg_dataSourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DataSource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDataSource(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_userId, arg_dataSourceId,
          $fields: arg_$fields);
      checkDataSource(response as api.DataSource);
    });
  });

  unittest.group('resource-UsersDataSourcesDataPointChangesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.dataSources.dataPointChanges;
      final arg_userId = 'foo';
      final arg_dataSourceId = 'foo';
      final arg_limit = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDataPointChangesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId, arg_dataSourceId,
          limit: arg_limit, pageToken: arg_pageToken, $fields: arg_$fields);
      checkListDataPointChangesResponse(
          response as api.ListDataPointChangesResponse);
    });
  });

  unittest.group('resource-UsersDataSourcesDatasetsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.dataSources.datasets;
      final arg_userId = 'foo';
      final arg_dataSourceId = 'foo';
      final arg_datasetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_userId, arg_dataSourceId, arg_datasetId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.dataSources.datasets;
      final arg_userId = 'foo';
      final arg_dataSourceId = 'foo';
      final arg_datasetId = 'foo';
      final arg_limit = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['limit']!.first),
          unittest.equals(arg_limit),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_userId, arg_dataSourceId, arg_datasetId,
          limit: arg_limit, pageToken: arg_pageToken, $fields: arg_$fields);
      checkDataset(response as api.Dataset);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.dataSources.datasets;
      final arg_request = buildDataset();
      final arg_userId = 'foo';
      final arg_dataSourceId = 'foo';
      final arg_datasetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Dataset.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDataset(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_userId, arg_dataSourceId, arg_datasetId,
          $fields: arg_$fields);
      checkDataset(response as api.Dataset);
    });
  });

  unittest.group('resource-UsersDatasetResource', () {
    unittest.test('method--aggregate', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.dataset;
      final arg_request = buildAggregateRequest();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AggregateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAggregateRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAggregateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.aggregate(arg_request, arg_userId, $fields: arg_$fields);
      checkAggregateResponse(response as api.AggregateResponse);
    });
  });

  unittest.group('resource-UsersSessionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.sessions;
      final arg_userId = 'foo';
      final arg_sessionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_userId, arg_sessionId, $fields: arg_$fields);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.sessions;
      final arg_userId = 'foo';
      final arg_activityType = buildUnnamed1628();
      final arg_endTime = 'foo';
      final arg_includeDeleted = true;
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['activityType']!.map(core.int.parse).toList(),
          unittest.equals(arg_activityType),
        );
        unittest.expect(
          queryMap['endTime']!.first,
          unittest.equals(arg_endTime),
        );
        unittest.expect(
          queryMap['includeDeleted']!.first,
          unittest.equals('$arg_includeDeleted'),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['startTime']!.first,
          unittest.equals(arg_startTime),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListSessionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId,
          activityType: arg_activityType,
          endTime: arg_endTime,
          includeDeleted: arg_includeDeleted,
          pageToken: arg_pageToken,
          startTime: arg_startTime,
          $fields: arg_$fields);
      checkListSessionsResponse(response as api.ListSessionsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.FitnessApi(mock).users.sessions;
      final arg_request = buildSession();
      final arg_userId = 'foo';
      final arg_sessionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Session.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSession(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSession());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_userId, arg_sessionId,
          $fields: arg_$fields);
      checkSession(response as api.Session);
    });
  });
}
