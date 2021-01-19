// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.admob.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/admob/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  var o = api.Date();
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
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDateRange = 0;
api.DateRange buildDateRange() {
  var o = api.DateRange();
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    o.endDate = buildDate();
    o.startDate = buildDate();
  }
  buildCounterDateRange--;
  return o;
}

void checkDateRange(api.DateRange o) {
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    checkDate(o.endDate);
    checkDate(o.startDate);
  }
  buildCounterDateRange--;
}

core.int buildCounterGenerateMediationReportRequest = 0;
api.GenerateMediationReportRequest buildGenerateMediationReportRequest() {
  var o = api.GenerateMediationReportRequest();
  buildCounterGenerateMediationReportRequest++;
  if (buildCounterGenerateMediationReportRequest < 3) {
    o.reportSpec = buildMediationReportSpec();
  }
  buildCounterGenerateMediationReportRequest--;
  return o;
}

void checkGenerateMediationReportRequest(api.GenerateMediationReportRequest o) {
  buildCounterGenerateMediationReportRequest++;
  if (buildCounterGenerateMediationReportRequest < 3) {
    checkMediationReportSpec(o.reportSpec);
  }
  buildCounterGenerateMediationReportRequest--;
}

core.int buildCounterGenerateMediationReportResponse = 0;
api.GenerateMediationReportResponse buildGenerateMediationReportResponse() {
  var o = api.GenerateMediationReportResponse();
  buildCounterGenerateMediationReportResponse++;
  if (buildCounterGenerateMediationReportResponse < 3) {
    o.footer = buildReportFooter();
    o.header = buildReportHeader();
    o.row = buildReportRow();
  }
  buildCounterGenerateMediationReportResponse--;
  return o;
}

void checkGenerateMediationReportResponse(
    api.GenerateMediationReportResponse o) {
  buildCounterGenerateMediationReportResponse++;
  if (buildCounterGenerateMediationReportResponse < 3) {
    checkReportFooter(o.footer);
    checkReportHeader(o.header);
    checkReportRow(o.row);
  }
  buildCounterGenerateMediationReportResponse--;
}

core.int buildCounterGenerateNetworkReportRequest = 0;
api.GenerateNetworkReportRequest buildGenerateNetworkReportRequest() {
  var o = api.GenerateNetworkReportRequest();
  buildCounterGenerateNetworkReportRequest++;
  if (buildCounterGenerateNetworkReportRequest < 3) {
    o.reportSpec = buildNetworkReportSpec();
  }
  buildCounterGenerateNetworkReportRequest--;
  return o;
}

void checkGenerateNetworkReportRequest(api.GenerateNetworkReportRequest o) {
  buildCounterGenerateNetworkReportRequest++;
  if (buildCounterGenerateNetworkReportRequest < 3) {
    checkNetworkReportSpec(o.reportSpec);
  }
  buildCounterGenerateNetworkReportRequest--;
}

core.int buildCounterGenerateNetworkReportResponse = 0;
api.GenerateNetworkReportResponse buildGenerateNetworkReportResponse() {
  var o = api.GenerateNetworkReportResponse();
  buildCounterGenerateNetworkReportResponse++;
  if (buildCounterGenerateNetworkReportResponse < 3) {
    o.footer = buildReportFooter();
    o.header = buildReportHeader();
    o.row = buildReportRow();
  }
  buildCounterGenerateNetworkReportResponse--;
  return o;
}

void checkGenerateNetworkReportResponse(api.GenerateNetworkReportResponse o) {
  buildCounterGenerateNetworkReportResponse++;
  if (buildCounterGenerateNetworkReportResponse < 3) {
    checkReportFooter(o.footer);
    checkReportHeader(o.header);
    checkReportRow(o.row);
  }
  buildCounterGenerateNetworkReportResponse--;
}

core.List<api.PublisherAccount> buildUnnamed5706() {
  var o = <api.PublisherAccount>[];
  o.add(buildPublisherAccount());
  o.add(buildPublisherAccount());
  return o;
}

void checkUnnamed5706(core.List<api.PublisherAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherAccount(o[0]);
  checkPublisherAccount(o[1]);
}

core.int buildCounterListPublisherAccountsResponse = 0;
api.ListPublisherAccountsResponse buildListPublisherAccountsResponse() {
  var o = api.ListPublisherAccountsResponse();
  buildCounterListPublisherAccountsResponse++;
  if (buildCounterListPublisherAccountsResponse < 3) {
    o.account = buildUnnamed5706();
    o.nextPageToken = 'foo';
  }
  buildCounterListPublisherAccountsResponse--;
  return o;
}

void checkListPublisherAccountsResponse(api.ListPublisherAccountsResponse o) {
  buildCounterListPublisherAccountsResponse++;
  if (buildCounterListPublisherAccountsResponse < 3) {
    checkUnnamed5706(o.account);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListPublisherAccountsResponse--;
}

core.int buildCounterLocalizationSettings = 0;
api.LocalizationSettings buildLocalizationSettings() {
  var o = api.LocalizationSettings();
  buildCounterLocalizationSettings++;
  if (buildCounterLocalizationSettings < 3) {
    o.currencyCode = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterLocalizationSettings--;
  return o;
}

void checkLocalizationSettings(api.LocalizationSettings o) {
  buildCounterLocalizationSettings++;
  if (buildCounterLocalizationSettings < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterLocalizationSettings--;
}

core.List<api.MediationReportSpecDimensionFilter> buildUnnamed5707() {
  var o = <api.MediationReportSpecDimensionFilter>[];
  o.add(buildMediationReportSpecDimensionFilter());
  o.add(buildMediationReportSpecDimensionFilter());
  return o;
}

void checkUnnamed5707(core.List<api.MediationReportSpecDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediationReportSpecDimensionFilter(o[0]);
  checkMediationReportSpecDimensionFilter(o[1]);
}

core.List<core.String> buildUnnamed5708() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5708(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5709() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5709(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.MediationReportSpecSortCondition> buildUnnamed5710() {
  var o = <api.MediationReportSpecSortCondition>[];
  o.add(buildMediationReportSpecSortCondition());
  o.add(buildMediationReportSpecSortCondition());
  return o;
}

void checkUnnamed5710(core.List<api.MediationReportSpecSortCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediationReportSpecSortCondition(o[0]);
  checkMediationReportSpecSortCondition(o[1]);
}

core.int buildCounterMediationReportSpec = 0;
api.MediationReportSpec buildMediationReportSpec() {
  var o = api.MediationReportSpec();
  buildCounterMediationReportSpec++;
  if (buildCounterMediationReportSpec < 3) {
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed5707();
    o.dimensions = buildUnnamed5708();
    o.localizationSettings = buildLocalizationSettings();
    o.maxReportRows = 42;
    o.metrics = buildUnnamed5709();
    o.sortConditions = buildUnnamed5710();
    o.timeZone = 'foo';
  }
  buildCounterMediationReportSpec--;
  return o;
}

void checkMediationReportSpec(api.MediationReportSpec o) {
  buildCounterMediationReportSpec++;
  if (buildCounterMediationReportSpec < 3) {
    checkDateRange(o.dateRange);
    checkUnnamed5707(o.dimensionFilters);
    checkUnnamed5708(o.dimensions);
    checkLocalizationSettings(o.localizationSettings);
    unittest.expect(o.maxReportRows, unittest.equals(42));
    checkUnnamed5709(o.metrics);
    checkUnnamed5710(o.sortConditions);
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterMediationReportSpec--;
}

core.int buildCounterMediationReportSpecDimensionFilter = 0;
api.MediationReportSpecDimensionFilter
    buildMediationReportSpecDimensionFilter() {
  var o = api.MediationReportSpecDimensionFilter();
  buildCounterMediationReportSpecDimensionFilter++;
  if (buildCounterMediationReportSpecDimensionFilter < 3) {
    o.dimension = 'foo';
    o.matchesAny = buildStringList();
  }
  buildCounterMediationReportSpecDimensionFilter--;
  return o;
}

void checkMediationReportSpecDimensionFilter(
    api.MediationReportSpecDimensionFilter o) {
  buildCounterMediationReportSpecDimensionFilter++;
  if (buildCounterMediationReportSpecDimensionFilter < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    checkStringList(o.matchesAny);
  }
  buildCounterMediationReportSpecDimensionFilter--;
}

core.int buildCounterMediationReportSpecSortCondition = 0;
api.MediationReportSpecSortCondition buildMediationReportSpecSortCondition() {
  var o = api.MediationReportSpecSortCondition();
  buildCounterMediationReportSpecSortCondition++;
  if (buildCounterMediationReportSpecSortCondition < 3) {
    o.dimension = 'foo';
    o.metric = 'foo';
    o.order = 'foo';
  }
  buildCounterMediationReportSpecSortCondition--;
  return o;
}

void checkMediationReportSpecSortCondition(
    api.MediationReportSpecSortCondition o) {
  buildCounterMediationReportSpecSortCondition++;
  if (buildCounterMediationReportSpecSortCondition < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
    unittest.expect(o.order, unittest.equals('foo'));
  }
  buildCounterMediationReportSpecSortCondition--;
}

core.List<api.NetworkReportSpecDimensionFilter> buildUnnamed5711() {
  var o = <api.NetworkReportSpecDimensionFilter>[];
  o.add(buildNetworkReportSpecDimensionFilter());
  o.add(buildNetworkReportSpecDimensionFilter());
  return o;
}

void checkUnnamed5711(core.List<api.NetworkReportSpecDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkReportSpecDimensionFilter(o[0]);
  checkNetworkReportSpecDimensionFilter(o[1]);
}

core.List<core.String> buildUnnamed5712() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5712(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5713() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5713(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.NetworkReportSpecSortCondition> buildUnnamed5714() {
  var o = <api.NetworkReportSpecSortCondition>[];
  o.add(buildNetworkReportSpecSortCondition());
  o.add(buildNetworkReportSpecSortCondition());
  return o;
}

void checkUnnamed5714(core.List<api.NetworkReportSpecSortCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkReportSpecSortCondition(o[0]);
  checkNetworkReportSpecSortCondition(o[1]);
}

core.int buildCounterNetworkReportSpec = 0;
api.NetworkReportSpec buildNetworkReportSpec() {
  var o = api.NetworkReportSpec();
  buildCounterNetworkReportSpec++;
  if (buildCounterNetworkReportSpec < 3) {
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed5711();
    o.dimensions = buildUnnamed5712();
    o.localizationSettings = buildLocalizationSettings();
    o.maxReportRows = 42;
    o.metrics = buildUnnamed5713();
    o.sortConditions = buildUnnamed5714();
    o.timeZone = 'foo';
  }
  buildCounterNetworkReportSpec--;
  return o;
}

void checkNetworkReportSpec(api.NetworkReportSpec o) {
  buildCounterNetworkReportSpec++;
  if (buildCounterNetworkReportSpec < 3) {
    checkDateRange(o.dateRange);
    checkUnnamed5711(o.dimensionFilters);
    checkUnnamed5712(o.dimensions);
    checkLocalizationSettings(o.localizationSettings);
    unittest.expect(o.maxReportRows, unittest.equals(42));
    checkUnnamed5713(o.metrics);
    checkUnnamed5714(o.sortConditions);
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterNetworkReportSpec--;
}

core.int buildCounterNetworkReportSpecDimensionFilter = 0;
api.NetworkReportSpecDimensionFilter buildNetworkReportSpecDimensionFilter() {
  var o = api.NetworkReportSpecDimensionFilter();
  buildCounterNetworkReportSpecDimensionFilter++;
  if (buildCounterNetworkReportSpecDimensionFilter < 3) {
    o.dimension = 'foo';
    o.matchesAny = buildStringList();
  }
  buildCounterNetworkReportSpecDimensionFilter--;
  return o;
}

void checkNetworkReportSpecDimensionFilter(
    api.NetworkReportSpecDimensionFilter o) {
  buildCounterNetworkReportSpecDimensionFilter++;
  if (buildCounterNetworkReportSpecDimensionFilter < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    checkStringList(o.matchesAny);
  }
  buildCounterNetworkReportSpecDimensionFilter--;
}

core.int buildCounterNetworkReportSpecSortCondition = 0;
api.NetworkReportSpecSortCondition buildNetworkReportSpecSortCondition() {
  var o = api.NetworkReportSpecSortCondition();
  buildCounterNetworkReportSpecSortCondition++;
  if (buildCounterNetworkReportSpecSortCondition < 3) {
    o.dimension = 'foo';
    o.metric = 'foo';
    o.order = 'foo';
  }
  buildCounterNetworkReportSpecSortCondition--;
  return o;
}

void checkNetworkReportSpecSortCondition(api.NetworkReportSpecSortCondition o) {
  buildCounterNetworkReportSpecSortCondition++;
  if (buildCounterNetworkReportSpecSortCondition < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
    unittest.expect(o.order, unittest.equals('foo'));
  }
  buildCounterNetworkReportSpecSortCondition--;
}

core.int buildCounterPublisherAccount = 0;
api.PublisherAccount buildPublisherAccount() {
  var o = api.PublisherAccount();
  buildCounterPublisherAccount++;
  if (buildCounterPublisherAccount < 3) {
    o.currencyCode = 'foo';
    o.name = 'foo';
    o.publisherId = 'foo';
    o.reportingTimeZone = 'foo';
  }
  buildCounterPublisherAccount--;
  return o;
}

void checkPublisherAccount(api.PublisherAccount o) {
  buildCounterPublisherAccount++;
  if (buildCounterPublisherAccount < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.publisherId, unittest.equals('foo'));
    unittest.expect(o.reportingTimeZone, unittest.equals('foo'));
  }
  buildCounterPublisherAccount--;
}

core.List<api.ReportWarning> buildUnnamed5715() {
  var o = <api.ReportWarning>[];
  o.add(buildReportWarning());
  o.add(buildReportWarning());
  return o;
}

void checkUnnamed5715(core.List<api.ReportWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportWarning(o[0]);
  checkReportWarning(o[1]);
}

core.int buildCounterReportFooter = 0;
api.ReportFooter buildReportFooter() {
  var o = api.ReportFooter();
  buildCounterReportFooter++;
  if (buildCounterReportFooter < 3) {
    o.matchingRowCount = 'foo';
    o.warnings = buildUnnamed5715();
  }
  buildCounterReportFooter--;
  return o;
}

void checkReportFooter(api.ReportFooter o) {
  buildCounterReportFooter++;
  if (buildCounterReportFooter < 3) {
    unittest.expect(o.matchingRowCount, unittest.equals('foo'));
    checkUnnamed5715(o.warnings);
  }
  buildCounterReportFooter--;
}

core.int buildCounterReportHeader = 0;
api.ReportHeader buildReportHeader() {
  var o = api.ReportHeader();
  buildCounterReportHeader++;
  if (buildCounterReportHeader < 3) {
    o.dateRange = buildDateRange();
    o.localizationSettings = buildLocalizationSettings();
    o.reportingTimeZone = 'foo';
  }
  buildCounterReportHeader--;
  return o;
}

void checkReportHeader(api.ReportHeader o) {
  buildCounterReportHeader++;
  if (buildCounterReportHeader < 3) {
    checkDateRange(o.dateRange);
    checkLocalizationSettings(o.localizationSettings);
    unittest.expect(o.reportingTimeZone, unittest.equals('foo'));
  }
  buildCounterReportHeader--;
}

core.Map<core.String, api.ReportRowDimensionValue> buildUnnamed5716() {
  var o = <core.String, api.ReportRowDimensionValue>{};
  o['x'] = buildReportRowDimensionValue();
  o['y'] = buildReportRowDimensionValue();
  return o;
}

void checkUnnamed5716(core.Map<core.String, api.ReportRowDimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRowDimensionValue(o['x']);
  checkReportRowDimensionValue(o['y']);
}

core.Map<core.String, api.ReportRowMetricValue> buildUnnamed5717() {
  var o = <core.String, api.ReportRowMetricValue>{};
  o['x'] = buildReportRowMetricValue();
  o['y'] = buildReportRowMetricValue();
  return o;
}

void checkUnnamed5717(core.Map<core.String, api.ReportRowMetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRowMetricValue(o['x']);
  checkReportRowMetricValue(o['y']);
}

core.int buildCounterReportRow = 0;
api.ReportRow buildReportRow() {
  var o = api.ReportRow();
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    o.dimensionValues = buildUnnamed5716();
    o.metricValues = buildUnnamed5717();
  }
  buildCounterReportRow--;
  return o;
}

void checkReportRow(api.ReportRow o) {
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    checkUnnamed5716(o.dimensionValues);
    checkUnnamed5717(o.metricValues);
  }
  buildCounterReportRow--;
}

core.int buildCounterReportRowDimensionValue = 0;
api.ReportRowDimensionValue buildReportRowDimensionValue() {
  var o = api.ReportRowDimensionValue();
  buildCounterReportRowDimensionValue++;
  if (buildCounterReportRowDimensionValue < 3) {
    o.displayLabel = 'foo';
    o.value = 'foo';
  }
  buildCounterReportRowDimensionValue--;
  return o;
}

void checkReportRowDimensionValue(api.ReportRowDimensionValue o) {
  buildCounterReportRowDimensionValue++;
  if (buildCounterReportRowDimensionValue < 3) {
    unittest.expect(o.displayLabel, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterReportRowDimensionValue--;
}

core.int buildCounterReportRowMetricValue = 0;
api.ReportRowMetricValue buildReportRowMetricValue() {
  var o = api.ReportRowMetricValue();
  buildCounterReportRowMetricValue++;
  if (buildCounterReportRowMetricValue < 3) {
    o.doubleValue = 42.0;
    o.integerValue = 'foo';
    o.microsValue = 'foo';
  }
  buildCounterReportRowMetricValue--;
  return o;
}

void checkReportRowMetricValue(api.ReportRowMetricValue o) {
  buildCounterReportRowMetricValue++;
  if (buildCounterReportRowMetricValue < 3) {
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    unittest.expect(o.integerValue, unittest.equals('foo'));
    unittest.expect(o.microsValue, unittest.equals('foo'));
  }
  buildCounterReportRowMetricValue--;
}

core.int buildCounterReportWarning = 0;
api.ReportWarning buildReportWarning() {
  var o = api.ReportWarning();
  buildCounterReportWarning++;
  if (buildCounterReportWarning < 3) {
    o.description = 'foo';
    o.type = 'foo';
  }
  buildCounterReportWarning--;
  return o;
}

void checkReportWarning(api.ReportWarning o) {
  buildCounterReportWarning++;
  if (buildCounterReportWarning < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterReportWarning--;
}

core.List<core.String> buildUnnamed5718() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5718(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringList = 0;
api.StringList buildStringList() {
  var o = api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.values = buildUnnamed5718();
  }
  buildCounterStringList--;
  return o;
}

void checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed5718(o.values);
  }
  buildCounterStringList--;
}

void main() {
  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () {
      var o = buildDate();
      var od = api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DateRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildDateRange();
      var od = api.DateRange.fromJson(o.toJson());
      checkDateRange(od);
    });
  });

  unittest.group('obj-schema-GenerateMediationReportRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenerateMediationReportRequest();
      var od = api.GenerateMediationReportRequest.fromJson(o.toJson());
      checkGenerateMediationReportRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateMediationReportResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenerateMediationReportResponse();
      var od = api.GenerateMediationReportResponse.fromJson(o.toJson());
      checkGenerateMediationReportResponse(od);
    });
  });

  unittest.group('obj-schema-GenerateNetworkReportRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenerateNetworkReportRequest();
      var od = api.GenerateNetworkReportRequest.fromJson(o.toJson());
      checkGenerateNetworkReportRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateNetworkReportResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenerateNetworkReportResponse();
      var od = api.GenerateNetworkReportResponse.fromJson(o.toJson());
      checkGenerateNetworkReportResponse(od);
    });
  });

  unittest.group('obj-schema-ListPublisherAccountsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListPublisherAccountsResponse();
      var od = api.ListPublisherAccountsResponse.fromJson(o.toJson());
      checkListPublisherAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-LocalizationSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalizationSettings();
      var od = api.LocalizationSettings.fromJson(o.toJson());
      checkLocalizationSettings(od);
    });
  });

  unittest.group('obj-schema-MediationReportSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildMediationReportSpec();
      var od = api.MediationReportSpec.fromJson(o.toJson());
      checkMediationReportSpec(od);
    });
  });

  unittest.group('obj-schema-MediationReportSpecDimensionFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildMediationReportSpecDimensionFilter();
      var od = api.MediationReportSpecDimensionFilter.fromJson(o.toJson());
      checkMediationReportSpecDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-MediationReportSpecSortCondition', () {
    unittest.test('to-json--from-json', () {
      var o = buildMediationReportSpecSortCondition();
      var od = api.MediationReportSpecSortCondition.fromJson(o.toJson());
      checkMediationReportSpecSortCondition(od);
    });
  });

  unittest.group('obj-schema-NetworkReportSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildNetworkReportSpec();
      var od = api.NetworkReportSpec.fromJson(o.toJson());
      checkNetworkReportSpec(od);
    });
  });

  unittest.group('obj-schema-NetworkReportSpecDimensionFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildNetworkReportSpecDimensionFilter();
      var od = api.NetworkReportSpecDimensionFilter.fromJson(o.toJson());
      checkNetworkReportSpecDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-NetworkReportSpecSortCondition', () {
    unittest.test('to-json--from-json', () {
      var o = buildNetworkReportSpecSortCondition();
      var od = api.NetworkReportSpecSortCondition.fromJson(o.toJson());
      checkNetworkReportSpecSortCondition(od);
    });
  });

  unittest.group('obj-schema-PublisherAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildPublisherAccount();
      var od = api.PublisherAccount.fromJson(o.toJson());
      checkPublisherAccount(od);
    });
  });

  unittest.group('obj-schema-ReportFooter', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportFooter();
      var od = api.ReportFooter.fromJson(o.toJson());
      checkReportFooter(od);
    });
  });

  unittest.group('obj-schema-ReportHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportHeader();
      var od = api.ReportHeader.fromJson(o.toJson());
      checkReportHeader(od);
    });
  });

  unittest.group('obj-schema-ReportRow', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportRow();
      var od = api.ReportRow.fromJson(o.toJson());
      checkReportRow(od);
    });
  });

  unittest.group('obj-schema-ReportRowDimensionValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportRowDimensionValue();
      var od = api.ReportRowDimensionValue.fromJson(o.toJson());
      checkReportRowDimensionValue(od);
    });
  });

  unittest.group('obj-schema-ReportRowMetricValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportRowMetricValue();
      var od = api.ReportRowMetricValue.fromJson(o.toJson());
      checkReportRowMetricValue(od);
    });
  });

  unittest.group('obj-schema-ReportWarning', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportWarning();
      var od = api.ReportWarning.fromJson(o.toJson());
      checkReportWarning(od);
    });
  });

  unittest.group('obj-schema-StringList', () {
    unittest.test('to-json--from-json', () {
      var o = buildStringList();
      var od = api.StringList.fromJson(o.toJson());
      checkStringList(od);
    });
  });

  unittest.group('resource-AccountsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.AdmobApi(mock).accounts;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPublisherAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPublisherAccount(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.AdmobApi(mock).accounts;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/accounts"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListPublisherAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPublisherAccountsResponse(response);
      })));
    });
  });

  unittest.group('resource-AccountsMediationReportResourceApi', () {
    unittest.test('method--generate', () {
      var mock = HttpServerMock();
      api.AccountsMediationReportResourceApi res =
          api.AdmobApi(mock).accounts.mediationReport;
      var arg_request = buildGenerateMediationReportRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GenerateMediationReportRequest.fromJson(json);
        checkGenerateMediationReportRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGenerateMediationReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateMediationReportResponse(response);
      })));
    });
  });

  unittest.group('resource-AccountsNetworkReportResourceApi', () {
    unittest.test('method--generate', () {
      var mock = HttpServerMock();
      api.AccountsNetworkReportResourceApi res =
          api.AdmobApi(mock).accounts.networkReport;
      var arg_request = buildGenerateNetworkReportRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GenerateNetworkReportRequest.fromJson(json);
        checkGenerateNetworkReportRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGenerateNetworkReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateNetworkReportResponse(response);
      })));
    });
  });
}
