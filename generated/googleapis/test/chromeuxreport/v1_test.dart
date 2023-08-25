// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/chromeuxreport/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterBin = 0;
api.Bin buildBin() {
  final o = api.Bin();
  buildCounterBin++;
  if (buildCounterBin < 3) {
    o.density = 42.0;
    o.end = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.start = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterBin--;
  return o;
}

void checkBin(api.Bin o) {
  buildCounterBin++;
  if (buildCounterBin < 3) {
    unittest.expect(
      o.density!,
      unittest.equals(42.0),
    );
    var casted1 = (o.end!) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(
      casted1['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted1['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted1['string'],
      unittest.equals('foo'),
    );
    var casted2 = (o.start!) as core.Map;
    unittest.expect(casted2, unittest.hasLength(3));
    unittest.expect(
      casted2['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted2['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted2['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterBin--;
}

core.int buildCounterCollectionPeriod = 0;
api.CollectionPeriod buildCollectionPeriod() {
  final o = api.CollectionPeriod();
  buildCounterCollectionPeriod++;
  if (buildCounterCollectionPeriod < 3) {
    o.firstDate = buildDate();
    o.lastDate = buildDate();
  }
  buildCounterCollectionPeriod--;
  return o;
}

void checkCollectionPeriod(api.CollectionPeriod o) {
  buildCounterCollectionPeriod++;
  if (buildCounterCollectionPeriod < 3) {
    checkDate(o.firstDate!);
    checkDate(o.lastDate!);
  }
  buildCounterCollectionPeriod--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
}

core.int buildCounterHistoryKey = 0;
api.HistoryKey buildHistoryKey() {
  final o = api.HistoryKey();
  buildCounterHistoryKey++;
  if (buildCounterHistoryKey < 3) {
    o.formFactor = 'foo';
    o.origin = 'foo';
    o.url = 'foo';
  }
  buildCounterHistoryKey--;
  return o;
}

void checkHistoryKey(api.HistoryKey o) {
  buildCounterHistoryKey++;
  if (buildCounterHistoryKey < 3) {
    unittest.expect(
      o.formFactor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.origin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterHistoryKey--;
}

core.List<api.CollectionPeriod> buildUnnamed0() => [
      buildCollectionPeriod(),
      buildCollectionPeriod(),
    ];

void checkUnnamed0(core.List<api.CollectionPeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionPeriod(o[0]);
  checkCollectionPeriod(o[1]);
}

core.Map<core.String, api.MetricTimeseries> buildUnnamed1() => {
      'x': buildMetricTimeseries(),
      'y': buildMetricTimeseries(),
    };

void checkUnnamed1(core.Map<core.String, api.MetricTimeseries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricTimeseries(o['x']!);
  checkMetricTimeseries(o['y']!);
}

core.int buildCounterHistoryRecord = 0;
api.HistoryRecord buildHistoryRecord() {
  final o = api.HistoryRecord();
  buildCounterHistoryRecord++;
  if (buildCounterHistoryRecord < 3) {
    o.collectionPeriods = buildUnnamed0();
    o.key = buildHistoryKey();
    o.metrics = buildUnnamed1();
  }
  buildCounterHistoryRecord--;
  return o;
}

void checkHistoryRecord(api.HistoryRecord o) {
  buildCounterHistoryRecord++;
  if (buildCounterHistoryRecord < 3) {
    checkUnnamed0(o.collectionPeriods!);
    checkHistoryKey(o.key!);
    checkUnnamed1(o.metrics!);
  }
  buildCounterHistoryRecord--;
}

core.int buildCounterKey = 0;
api.Key buildKey() {
  final o = api.Key();
  buildCounterKey++;
  if (buildCounterKey < 3) {
    o.effectiveConnectionType = 'foo';
    o.formFactor = 'foo';
    o.origin = 'foo';
    o.url = 'foo';
  }
  buildCounterKey--;
  return o;
}

void checkKey(api.Key o) {
  buildCounterKey++;
  if (buildCounterKey < 3) {
    unittest.expect(
      o.effectiveConnectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formFactor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.origin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterKey--;
}

core.Map<core.String, core.double> buildUnnamed2() => {
      'x': 42.0,
      'y': 42.0,
    };

void checkUnnamed2(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42.0),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42.0),
  );
}

core.List<api.Bin> buildUnnamed3() => [
      buildBin(),
      buildBin(),
    ];

void checkUnnamed3(core.List<api.Bin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBin(o[0]);
  checkBin(o[1]);
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  final o = api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.fractions = buildUnnamed2();
    o.histogram = buildUnnamed3();
    o.percentiles = buildPercentiles();
  }
  buildCounterMetric--;
  return o;
}

void checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    checkUnnamed2(o.fractions!);
    checkUnnamed3(o.histogram!);
    checkPercentiles(o.percentiles!);
  }
  buildCounterMetric--;
}

core.List<api.TimeseriesBin> buildUnnamed4() => [
      buildTimeseriesBin(),
      buildTimeseriesBin(),
    ];

void checkUnnamed4(core.List<api.TimeseriesBin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeseriesBin(o[0]);
  checkTimeseriesBin(o[1]);
}

core.int buildCounterMetricTimeseries = 0;
api.MetricTimeseries buildMetricTimeseries() {
  final o = api.MetricTimeseries();
  buildCounterMetricTimeseries++;
  if (buildCounterMetricTimeseries < 3) {
    o.histogramTimeseries = buildUnnamed4();
    o.percentilesTimeseries = buildTimeseriesPercentiles();
  }
  buildCounterMetricTimeseries--;
  return o;
}

void checkMetricTimeseries(api.MetricTimeseries o) {
  buildCounterMetricTimeseries++;
  if (buildCounterMetricTimeseries < 3) {
    checkUnnamed4(o.histogramTimeseries!);
    checkTimeseriesPercentiles(o.percentilesTimeseries!);
  }
  buildCounterMetricTimeseries--;
}

core.int buildCounterPercentiles = 0;
api.Percentiles buildPercentiles() {
  final o = api.Percentiles();
  buildCounterPercentiles++;
  if (buildCounterPercentiles < 3) {
    o.p75 = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterPercentiles--;
  return o;
}

void checkPercentiles(api.Percentiles o) {
  buildCounterPercentiles++;
  if (buildCounterPercentiles < 3) {
    var casted3 = (o.p75!) as core.Map;
    unittest.expect(casted3, unittest.hasLength(3));
    unittest.expect(
      casted3['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted3['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted3['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterPercentiles--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.int buildCounterQueryHistoryRequest = 0;
api.QueryHistoryRequest buildQueryHistoryRequest() {
  final o = api.QueryHistoryRequest();
  buildCounterQueryHistoryRequest++;
  if (buildCounterQueryHistoryRequest < 3) {
    o.formFactor = 'foo';
    o.metrics = buildUnnamed5();
    o.origin = 'foo';
    o.url = 'foo';
  }
  buildCounterQueryHistoryRequest--;
  return o;
}

void checkQueryHistoryRequest(api.QueryHistoryRequest o) {
  buildCounterQueryHistoryRequest++;
  if (buildCounterQueryHistoryRequest < 3) {
    unittest.expect(
      o.formFactor!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.metrics!);
    unittest.expect(
      o.origin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryHistoryRequest--;
}

core.int buildCounterQueryHistoryResponse = 0;
api.QueryHistoryResponse buildQueryHistoryResponse() {
  final o = api.QueryHistoryResponse();
  buildCounterQueryHistoryResponse++;
  if (buildCounterQueryHistoryResponse < 3) {
    o.record = buildHistoryRecord();
    o.urlNormalizationDetails = buildUrlNormalization();
  }
  buildCounterQueryHistoryResponse--;
  return o;
}

void checkQueryHistoryResponse(api.QueryHistoryResponse o) {
  buildCounterQueryHistoryResponse++;
  if (buildCounterQueryHistoryResponse < 3) {
    checkHistoryRecord(o.record!);
    checkUrlNormalization(o.urlNormalizationDetails!);
  }
  buildCounterQueryHistoryResponse--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterQueryRequest = 0;
api.QueryRequest buildQueryRequest() {
  final o = api.QueryRequest();
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    o.effectiveConnectionType = 'foo';
    o.formFactor = 'foo';
    o.metrics = buildUnnamed6();
    o.origin = 'foo';
    o.url = 'foo';
  }
  buildCounterQueryRequest--;
  return o;
}

void checkQueryRequest(api.QueryRequest o) {
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    unittest.expect(
      o.effectiveConnectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formFactor!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.metrics!);
    unittest.expect(
      o.origin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryRequest--;
}

core.int buildCounterQueryResponse = 0;
api.QueryResponse buildQueryResponse() {
  final o = api.QueryResponse();
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    o.record = buildRecord();
    o.urlNormalizationDetails = buildUrlNormalization();
  }
  buildCounterQueryResponse--;
  return o;
}

void checkQueryResponse(api.QueryResponse o) {
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    checkRecord(o.record!);
    checkUrlNormalization(o.urlNormalizationDetails!);
  }
  buildCounterQueryResponse--;
}

core.Map<core.String, api.Metric> buildUnnamed7() => {
      'x': buildMetric(),
      'y': buildMetric(),
    };

void checkUnnamed7(core.Map<core.String, api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o['x']!);
  checkMetric(o['y']!);
}

core.int buildCounterRecord = 0;
api.Record buildRecord() {
  final o = api.Record();
  buildCounterRecord++;
  if (buildCounterRecord < 3) {
    o.collectionPeriod = buildCollectionPeriod();
    o.key = buildKey();
    o.metrics = buildUnnamed7();
  }
  buildCounterRecord--;
  return o;
}

void checkRecord(api.Record o) {
  buildCounterRecord++;
  if (buildCounterRecord < 3) {
    checkCollectionPeriod(o.collectionPeriod!);
    checkKey(o.key!);
    checkUnnamed7(o.metrics!);
  }
  buildCounterRecord--;
}

core.List<core.double> buildUnnamed8() => [
      42.0,
      42.0,
    ];

void checkUnnamed8(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterTimeseriesBin = 0;
api.TimeseriesBin buildTimeseriesBin() {
  final o = api.TimeseriesBin();
  buildCounterTimeseriesBin++;
  if (buildCounterTimeseriesBin < 3) {
    o.densities = buildUnnamed8();
    o.end = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.start = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterTimeseriesBin--;
  return o;
}

void checkTimeseriesBin(api.TimeseriesBin o) {
  buildCounterTimeseriesBin++;
  if (buildCounterTimeseriesBin < 3) {
    checkUnnamed8(o.densities!);
    var casted4 = (o.end!) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(
      casted4['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted4['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted4['string'],
      unittest.equals('foo'),
    );
    var casted5 = (o.start!) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(
      casted5['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted5['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted5['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterTimeseriesBin--;
}

core.List<core.Object?> buildUnnamed9() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed9(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted6 = (o[0]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
  var casted7 = (o[1]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterTimeseriesPercentiles = 0;
api.TimeseriesPercentiles buildTimeseriesPercentiles() {
  final o = api.TimeseriesPercentiles();
  buildCounterTimeseriesPercentiles++;
  if (buildCounterTimeseriesPercentiles < 3) {
    o.p75s = buildUnnamed9();
  }
  buildCounterTimeseriesPercentiles--;
  return o;
}

void checkTimeseriesPercentiles(api.TimeseriesPercentiles o) {
  buildCounterTimeseriesPercentiles++;
  if (buildCounterTimeseriesPercentiles < 3) {
    checkUnnamed9(o.p75s!);
  }
  buildCounterTimeseriesPercentiles--;
}

core.int buildCounterUrlNormalization = 0;
api.UrlNormalization buildUrlNormalization() {
  final o = api.UrlNormalization();
  buildCounterUrlNormalization++;
  if (buildCounterUrlNormalization < 3) {
    o.normalizedUrl = 'foo';
    o.originalUrl = 'foo';
  }
  buildCounterUrlNormalization--;
  return o;
}

void checkUrlNormalization(api.UrlNormalization o) {
  buildCounterUrlNormalization++;
  if (buildCounterUrlNormalization < 3) {
    unittest.expect(
      o.normalizedUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterUrlNormalization--;
}

void main() {
  unittest.group('obj-schema-Bin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Bin.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBin(od);
    });
  });

  unittest.group('obj-schema-CollectionPeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollectionPeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollectionPeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCollectionPeriod(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
    });
  });

  unittest.group('obj-schema-HistoryKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistoryKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HistoryKey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHistoryKey(od);
    });
  });

  unittest.group('obj-schema-HistoryRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistoryRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HistoryRecord.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHistoryRecord(od);
    });
  });

  unittest.group('obj-schema-Key', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Key.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKey(od);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metric.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetric(od);
    });
  });

  unittest.group('obj-schema-MetricTimeseries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricTimeseries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricTimeseries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricTimeseries(od);
    });
  });

  unittest.group('obj-schema-Percentiles', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPercentiles();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Percentiles.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPercentiles(od);
    });
  });

  unittest.group('obj-schema-QueryHistoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryHistoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryHistoryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryHistoryRequest(od);
    });
  });

  unittest.group('obj-schema-QueryHistoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryHistoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryHistoryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryHistoryResponse(od);
    });
  });

  unittest.group('obj-schema-QueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryRequest(od);
    });
  });

  unittest.group('obj-schema-QueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryResponse(od);
    });
  });

  unittest.group('obj-schema-Record', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Record.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRecord(od);
    });
  });

  unittest.group('obj-schema-TimeseriesBin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeseriesBin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeseriesBin.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimeseriesBin(od);
    });
  });

  unittest.group('obj-schema-TimeseriesPercentiles', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeseriesPercentiles();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeseriesPercentiles.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimeseriesPercentiles(od);
    });
  });

  unittest.group('obj-schema-UrlNormalization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUrlNormalization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UrlNormalization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUrlNormalization(od);
    });
  });

  unittest.group('resource-RecordsResource', () {
    unittest.test('method--queryHistoryRecord', () async {
      final mock = HttpServerMock();
      final res = api.ChromeUXReportApi(mock).records;
      final arg_request = buildQueryHistoryRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.QueryHistoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryHistoryRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('v1/records:queryHistoryRecord'),
        );
        pathOffset += 29;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildQueryHistoryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.queryHistoryRecord(arg_request, $fields: arg_$fields);
      checkQueryHistoryResponse(response as api.QueryHistoryResponse);
    });

    unittest.test('method--queryRecord', () async {
      final mock = HttpServerMock();
      final res = api.ChromeUXReportApi(mock).records;
      final arg_request = buildQueryRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.QueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('v1/records:queryRecord'),
        );
        pathOffset += 22;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.queryRecord(arg_request, $fields: arg_$fields);
      checkQueryResponse(response as api.QueryResponse);
    });
  });
}
