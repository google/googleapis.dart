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

core.int buildCounterDate = 0;
buildDate() {
  var o = new api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDateRange = 0;
buildDateRange() {
  var o = new api.DateRange();
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    o.endDate = buildDate();
    o.startDate = buildDate();
  }
  buildCounterDateRange--;
  return o;
}

checkDateRange(api.DateRange o) {
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    checkDate(o.endDate);
    checkDate(o.startDate);
  }
  buildCounterDateRange--;
}

core.int buildCounterGenerateMediationReportRequest = 0;
buildGenerateMediationReportRequest() {
  var o = new api.GenerateMediationReportRequest();
  buildCounterGenerateMediationReportRequest++;
  if (buildCounterGenerateMediationReportRequest < 3) {
    o.reportSpec = buildMediationReportSpec();
  }
  buildCounterGenerateMediationReportRequest--;
  return o;
}

checkGenerateMediationReportRequest(api.GenerateMediationReportRequest o) {
  buildCounterGenerateMediationReportRequest++;
  if (buildCounterGenerateMediationReportRequest < 3) {
    checkMediationReportSpec(o.reportSpec);
  }
  buildCounterGenerateMediationReportRequest--;
}

core.int buildCounterGenerateMediationReportResponse = 0;
buildGenerateMediationReportResponse() {
  var o = new api.GenerateMediationReportResponse();
  buildCounterGenerateMediationReportResponse++;
  if (buildCounterGenerateMediationReportResponse < 3) {
    o.footer = buildReportFooter();
    o.header = buildReportHeader();
    o.row = buildReportRow();
  }
  buildCounterGenerateMediationReportResponse--;
  return o;
}

checkGenerateMediationReportResponse(api.GenerateMediationReportResponse o) {
  buildCounterGenerateMediationReportResponse++;
  if (buildCounterGenerateMediationReportResponse < 3) {
    checkReportFooter(o.footer);
    checkReportHeader(o.header);
    checkReportRow(o.row);
  }
  buildCounterGenerateMediationReportResponse--;
}

core.int buildCounterGenerateNetworkReportRequest = 0;
buildGenerateNetworkReportRequest() {
  var o = new api.GenerateNetworkReportRequest();
  buildCounterGenerateNetworkReportRequest++;
  if (buildCounterGenerateNetworkReportRequest < 3) {
    o.reportSpec = buildNetworkReportSpec();
  }
  buildCounterGenerateNetworkReportRequest--;
  return o;
}

checkGenerateNetworkReportRequest(api.GenerateNetworkReportRequest o) {
  buildCounterGenerateNetworkReportRequest++;
  if (buildCounterGenerateNetworkReportRequest < 3) {
    checkNetworkReportSpec(o.reportSpec);
  }
  buildCounterGenerateNetworkReportRequest--;
}

core.int buildCounterGenerateNetworkReportResponse = 0;
buildGenerateNetworkReportResponse() {
  var o = new api.GenerateNetworkReportResponse();
  buildCounterGenerateNetworkReportResponse++;
  if (buildCounterGenerateNetworkReportResponse < 3) {
    o.footer = buildReportFooter();
    o.header = buildReportHeader();
    o.row = buildReportRow();
  }
  buildCounterGenerateNetworkReportResponse--;
  return o;
}

checkGenerateNetworkReportResponse(api.GenerateNetworkReportResponse o) {
  buildCounterGenerateNetworkReportResponse++;
  if (buildCounterGenerateNetworkReportResponse < 3) {
    checkReportFooter(o.footer);
    checkReportHeader(o.header);
    checkReportRow(o.row);
  }
  buildCounterGenerateNetworkReportResponse--;
}

buildUnnamed50() {
  var o = new core.List<api.PublisherAccount>();
  o.add(buildPublisherAccount());
  o.add(buildPublisherAccount());
  return o;
}

checkUnnamed50(core.List<api.PublisherAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherAccount(o[0]);
  checkPublisherAccount(o[1]);
}

core.int buildCounterListPublisherAccountsResponse = 0;
buildListPublisherAccountsResponse() {
  var o = new api.ListPublisherAccountsResponse();
  buildCounterListPublisherAccountsResponse++;
  if (buildCounterListPublisherAccountsResponse < 3) {
    o.account = buildUnnamed50();
    o.nextPageToken = "foo";
  }
  buildCounterListPublisherAccountsResponse--;
  return o;
}

checkListPublisherAccountsResponse(api.ListPublisherAccountsResponse o) {
  buildCounterListPublisherAccountsResponse++;
  if (buildCounterListPublisherAccountsResponse < 3) {
    checkUnnamed50(o.account);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListPublisherAccountsResponse--;
}

core.int buildCounterLocalizationSettings = 0;
buildLocalizationSettings() {
  var o = new api.LocalizationSettings();
  buildCounterLocalizationSettings++;
  if (buildCounterLocalizationSettings < 3) {
    o.currencyCode = "foo";
    o.languageCode = "foo";
  }
  buildCounterLocalizationSettings--;
  return o;
}

checkLocalizationSettings(api.LocalizationSettings o) {
  buildCounterLocalizationSettings++;
  if (buildCounterLocalizationSettings < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterLocalizationSettings--;
}

buildUnnamed51() {
  var o = new core.List<api.MediationReportSpecDimensionFilter>();
  o.add(buildMediationReportSpecDimensionFilter());
  o.add(buildMediationReportSpecDimensionFilter());
  return o;
}

checkUnnamed51(core.List<api.MediationReportSpecDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediationReportSpecDimensionFilter(o[0]);
  checkMediationReportSpecDimensionFilter(o[1]);
}

buildUnnamed52() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed53() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed54() {
  var o = new core.List<api.MediationReportSpecSortCondition>();
  o.add(buildMediationReportSpecSortCondition());
  o.add(buildMediationReportSpecSortCondition());
  return o;
}

checkUnnamed54(core.List<api.MediationReportSpecSortCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediationReportSpecSortCondition(o[0]);
  checkMediationReportSpecSortCondition(o[1]);
}

core.int buildCounterMediationReportSpec = 0;
buildMediationReportSpec() {
  var o = new api.MediationReportSpec();
  buildCounterMediationReportSpec++;
  if (buildCounterMediationReportSpec < 3) {
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed51();
    o.dimensions = buildUnnamed52();
    o.localizationSettings = buildLocalizationSettings();
    o.maxReportRows = 42;
    o.metrics = buildUnnamed53();
    o.sortConditions = buildUnnamed54();
    o.timeZone = "foo";
  }
  buildCounterMediationReportSpec--;
  return o;
}

checkMediationReportSpec(api.MediationReportSpec o) {
  buildCounterMediationReportSpec++;
  if (buildCounterMediationReportSpec < 3) {
    checkDateRange(o.dateRange);
    checkUnnamed51(o.dimensionFilters);
    checkUnnamed52(o.dimensions);
    checkLocalizationSettings(o.localizationSettings);
    unittest.expect(o.maxReportRows, unittest.equals(42));
    checkUnnamed53(o.metrics);
    checkUnnamed54(o.sortConditions);
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterMediationReportSpec--;
}

core.int buildCounterMediationReportSpecDimensionFilter = 0;
buildMediationReportSpecDimensionFilter() {
  var o = new api.MediationReportSpecDimensionFilter();
  buildCounterMediationReportSpecDimensionFilter++;
  if (buildCounterMediationReportSpecDimensionFilter < 3) {
    o.dimension = "foo";
    o.matchesAny = buildStringList();
  }
  buildCounterMediationReportSpecDimensionFilter--;
  return o;
}

checkMediationReportSpecDimensionFilter(
    api.MediationReportSpecDimensionFilter o) {
  buildCounterMediationReportSpecDimensionFilter++;
  if (buildCounterMediationReportSpecDimensionFilter < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    checkStringList(o.matchesAny);
  }
  buildCounterMediationReportSpecDimensionFilter--;
}

core.int buildCounterMediationReportSpecSortCondition = 0;
buildMediationReportSpecSortCondition() {
  var o = new api.MediationReportSpecSortCondition();
  buildCounterMediationReportSpecSortCondition++;
  if (buildCounterMediationReportSpecSortCondition < 3) {
    o.dimension = "foo";
    o.metric = "foo";
    o.order = "foo";
  }
  buildCounterMediationReportSpecSortCondition--;
  return o;
}

checkMediationReportSpecSortCondition(api.MediationReportSpecSortCondition o) {
  buildCounterMediationReportSpecSortCondition++;
  if (buildCounterMediationReportSpecSortCondition < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
    unittest.expect(o.order, unittest.equals('foo'));
  }
  buildCounterMediationReportSpecSortCondition--;
}

buildUnnamed55() {
  var o = new core.List<api.NetworkReportSpecDimensionFilter>();
  o.add(buildNetworkReportSpecDimensionFilter());
  o.add(buildNetworkReportSpecDimensionFilter());
  return o;
}

checkUnnamed55(core.List<api.NetworkReportSpecDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkReportSpecDimensionFilter(o[0]);
  checkNetworkReportSpecDimensionFilter(o[1]);
}

buildUnnamed56() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed56(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed57() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed58() {
  var o = new core.List<api.NetworkReportSpecSortCondition>();
  o.add(buildNetworkReportSpecSortCondition());
  o.add(buildNetworkReportSpecSortCondition());
  return o;
}

checkUnnamed58(core.List<api.NetworkReportSpecSortCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkReportSpecSortCondition(o[0]);
  checkNetworkReportSpecSortCondition(o[1]);
}

core.int buildCounterNetworkReportSpec = 0;
buildNetworkReportSpec() {
  var o = new api.NetworkReportSpec();
  buildCounterNetworkReportSpec++;
  if (buildCounterNetworkReportSpec < 3) {
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed55();
    o.dimensions = buildUnnamed56();
    o.localizationSettings = buildLocalizationSettings();
    o.maxReportRows = 42;
    o.metrics = buildUnnamed57();
    o.sortConditions = buildUnnamed58();
    o.timeZone = "foo";
  }
  buildCounterNetworkReportSpec--;
  return o;
}

checkNetworkReportSpec(api.NetworkReportSpec o) {
  buildCounterNetworkReportSpec++;
  if (buildCounterNetworkReportSpec < 3) {
    checkDateRange(o.dateRange);
    checkUnnamed55(o.dimensionFilters);
    checkUnnamed56(o.dimensions);
    checkLocalizationSettings(o.localizationSettings);
    unittest.expect(o.maxReportRows, unittest.equals(42));
    checkUnnamed57(o.metrics);
    checkUnnamed58(o.sortConditions);
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterNetworkReportSpec--;
}

core.int buildCounterNetworkReportSpecDimensionFilter = 0;
buildNetworkReportSpecDimensionFilter() {
  var o = new api.NetworkReportSpecDimensionFilter();
  buildCounterNetworkReportSpecDimensionFilter++;
  if (buildCounterNetworkReportSpecDimensionFilter < 3) {
    o.dimension = "foo";
    o.matchesAny = buildStringList();
  }
  buildCounterNetworkReportSpecDimensionFilter--;
  return o;
}

checkNetworkReportSpecDimensionFilter(api.NetworkReportSpecDimensionFilter o) {
  buildCounterNetworkReportSpecDimensionFilter++;
  if (buildCounterNetworkReportSpecDimensionFilter < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    checkStringList(o.matchesAny);
  }
  buildCounterNetworkReportSpecDimensionFilter--;
}

core.int buildCounterNetworkReportSpecSortCondition = 0;
buildNetworkReportSpecSortCondition() {
  var o = new api.NetworkReportSpecSortCondition();
  buildCounterNetworkReportSpecSortCondition++;
  if (buildCounterNetworkReportSpecSortCondition < 3) {
    o.dimension = "foo";
    o.metric = "foo";
    o.order = "foo";
  }
  buildCounterNetworkReportSpecSortCondition--;
  return o;
}

checkNetworkReportSpecSortCondition(api.NetworkReportSpecSortCondition o) {
  buildCounterNetworkReportSpecSortCondition++;
  if (buildCounterNetworkReportSpecSortCondition < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
    unittest.expect(o.order, unittest.equals('foo'));
  }
  buildCounterNetworkReportSpecSortCondition--;
}

core.int buildCounterPublisherAccount = 0;
buildPublisherAccount() {
  var o = new api.PublisherAccount();
  buildCounterPublisherAccount++;
  if (buildCounterPublisherAccount < 3) {
    o.currencyCode = "foo";
    o.name = "foo";
    o.publisherId = "foo";
    o.reportingTimeZone = "foo";
  }
  buildCounterPublisherAccount--;
  return o;
}

checkPublisherAccount(api.PublisherAccount o) {
  buildCounterPublisherAccount++;
  if (buildCounterPublisherAccount < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.publisherId, unittest.equals('foo'));
    unittest.expect(o.reportingTimeZone, unittest.equals('foo'));
  }
  buildCounterPublisherAccount--;
}

buildUnnamed59() {
  var o = new core.List<api.ReportWarning>();
  o.add(buildReportWarning());
  o.add(buildReportWarning());
  return o;
}

checkUnnamed59(core.List<api.ReportWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportWarning(o[0]);
  checkReportWarning(o[1]);
}

core.int buildCounterReportFooter = 0;
buildReportFooter() {
  var o = new api.ReportFooter();
  buildCounterReportFooter++;
  if (buildCounterReportFooter < 3) {
    o.matchingRowCount = "foo";
    o.warnings = buildUnnamed59();
  }
  buildCounterReportFooter--;
  return o;
}

checkReportFooter(api.ReportFooter o) {
  buildCounterReportFooter++;
  if (buildCounterReportFooter < 3) {
    unittest.expect(o.matchingRowCount, unittest.equals('foo'));
    checkUnnamed59(o.warnings);
  }
  buildCounterReportFooter--;
}

core.int buildCounterReportHeader = 0;
buildReportHeader() {
  var o = new api.ReportHeader();
  buildCounterReportHeader++;
  if (buildCounterReportHeader < 3) {
    o.dateRange = buildDateRange();
    o.localizationSettings = buildLocalizationSettings();
    o.reportingTimeZone = "foo";
  }
  buildCounterReportHeader--;
  return o;
}

checkReportHeader(api.ReportHeader o) {
  buildCounterReportHeader++;
  if (buildCounterReportHeader < 3) {
    checkDateRange(o.dateRange);
    checkLocalizationSettings(o.localizationSettings);
    unittest.expect(o.reportingTimeZone, unittest.equals('foo'));
  }
  buildCounterReportHeader--;
}

buildUnnamed60() {
  var o = new core.Map<core.String, api.ReportRowDimensionValue>();
  o["x"] = buildReportRowDimensionValue();
  o["y"] = buildReportRowDimensionValue();
  return o;
}

checkUnnamed60(core.Map<core.String, api.ReportRowDimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRowDimensionValue(o["x"]);
  checkReportRowDimensionValue(o["y"]);
}

buildUnnamed61() {
  var o = new core.Map<core.String, api.ReportRowMetricValue>();
  o["x"] = buildReportRowMetricValue();
  o["y"] = buildReportRowMetricValue();
  return o;
}

checkUnnamed61(core.Map<core.String, api.ReportRowMetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRowMetricValue(o["x"]);
  checkReportRowMetricValue(o["y"]);
}

core.int buildCounterReportRow = 0;
buildReportRow() {
  var o = new api.ReportRow();
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    o.dimensionValues = buildUnnamed60();
    o.metricValues = buildUnnamed61();
  }
  buildCounterReportRow--;
  return o;
}

checkReportRow(api.ReportRow o) {
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    checkUnnamed60(o.dimensionValues);
    checkUnnamed61(o.metricValues);
  }
  buildCounterReportRow--;
}

core.int buildCounterReportRowDimensionValue = 0;
buildReportRowDimensionValue() {
  var o = new api.ReportRowDimensionValue();
  buildCounterReportRowDimensionValue++;
  if (buildCounterReportRowDimensionValue < 3) {
    o.displayLabel = "foo";
    o.value = "foo";
  }
  buildCounterReportRowDimensionValue--;
  return o;
}

checkReportRowDimensionValue(api.ReportRowDimensionValue o) {
  buildCounterReportRowDimensionValue++;
  if (buildCounterReportRowDimensionValue < 3) {
    unittest.expect(o.displayLabel, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterReportRowDimensionValue--;
}

core.int buildCounterReportRowMetricValue = 0;
buildReportRowMetricValue() {
  var o = new api.ReportRowMetricValue();
  buildCounterReportRowMetricValue++;
  if (buildCounterReportRowMetricValue < 3) {
    o.doubleValue = 42.0;
    o.integerValue = "foo";
    o.microsValue = "foo";
  }
  buildCounterReportRowMetricValue--;
  return o;
}

checkReportRowMetricValue(api.ReportRowMetricValue o) {
  buildCounterReportRowMetricValue++;
  if (buildCounterReportRowMetricValue < 3) {
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    unittest.expect(o.integerValue, unittest.equals('foo'));
    unittest.expect(o.microsValue, unittest.equals('foo'));
  }
  buildCounterReportRowMetricValue--;
}

core.int buildCounterReportWarning = 0;
buildReportWarning() {
  var o = new api.ReportWarning();
  buildCounterReportWarning++;
  if (buildCounterReportWarning < 3) {
    o.description = "foo";
    o.type = "foo";
  }
  buildCounterReportWarning--;
  return o;
}

checkReportWarning(api.ReportWarning o) {
  buildCounterReportWarning++;
  if (buildCounterReportWarning < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterReportWarning--;
}

buildUnnamed62() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed62(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringList = 0;
buildStringList() {
  var o = new api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.values = buildUnnamed62();
  }
  buildCounterStringList--;
  return o;
}

checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed62(o.values);
  }
  buildCounterStringList--;
}

main() {
  unittest.group("obj-schema-Date", () {
    unittest.test("to-json--from-json", () {
      var o = buildDate();
      var od = new api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });

  unittest.group("obj-schema-DateRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildDateRange();
      var od = new api.DateRange.fromJson(o.toJson());
      checkDateRange(od);
    });
  });

  unittest.group("obj-schema-GenerateMediationReportRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateMediationReportRequest();
      var od = new api.GenerateMediationReportRequest.fromJson(o.toJson());
      checkGenerateMediationReportRequest(od);
    });
  });

  unittest.group("obj-schema-GenerateMediationReportResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateMediationReportResponse();
      var od = new api.GenerateMediationReportResponse.fromJson(o.toJson());
      checkGenerateMediationReportResponse(od);
    });
  });

  unittest.group("obj-schema-GenerateNetworkReportRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateNetworkReportRequest();
      var od = new api.GenerateNetworkReportRequest.fromJson(o.toJson());
      checkGenerateNetworkReportRequest(od);
    });
  });

  unittest.group("obj-schema-GenerateNetworkReportResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateNetworkReportResponse();
      var od = new api.GenerateNetworkReportResponse.fromJson(o.toJson());
      checkGenerateNetworkReportResponse(od);
    });
  });

  unittest.group("obj-schema-ListPublisherAccountsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPublisherAccountsResponse();
      var od = new api.ListPublisherAccountsResponse.fromJson(o.toJson());
      checkListPublisherAccountsResponse(od);
    });
  });

  unittest.group("obj-schema-LocalizationSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocalizationSettings();
      var od = new api.LocalizationSettings.fromJson(o.toJson());
      checkLocalizationSettings(od);
    });
  });

  unittest.group("obj-schema-MediationReportSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildMediationReportSpec();
      var od = new api.MediationReportSpec.fromJson(o.toJson());
      checkMediationReportSpec(od);
    });
  });

  unittest.group("obj-schema-MediationReportSpecDimensionFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildMediationReportSpecDimensionFilter();
      var od = new api.MediationReportSpecDimensionFilter.fromJson(o.toJson());
      checkMediationReportSpecDimensionFilter(od);
    });
  });

  unittest.group("obj-schema-MediationReportSpecSortCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildMediationReportSpecSortCondition();
      var od = new api.MediationReportSpecSortCondition.fromJson(o.toJson());
      checkMediationReportSpecSortCondition(od);
    });
  });

  unittest.group("obj-schema-NetworkReportSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkReportSpec();
      var od = new api.NetworkReportSpec.fromJson(o.toJson());
      checkNetworkReportSpec(od);
    });
  });

  unittest.group("obj-schema-NetworkReportSpecDimensionFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkReportSpecDimensionFilter();
      var od = new api.NetworkReportSpecDimensionFilter.fromJson(o.toJson());
      checkNetworkReportSpecDimensionFilter(od);
    });
  });

  unittest.group("obj-schema-NetworkReportSpecSortCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkReportSpecSortCondition();
      var od = new api.NetworkReportSpecSortCondition.fromJson(o.toJson());
      checkNetworkReportSpecSortCondition(od);
    });
  });

  unittest.group("obj-schema-PublisherAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublisherAccount();
      var od = new api.PublisherAccount.fromJson(o.toJson());
      checkPublisherAccount(od);
    });
  });

  unittest.group("obj-schema-ReportFooter", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportFooter();
      var od = new api.ReportFooter.fromJson(o.toJson());
      checkReportFooter(od);
    });
  });

  unittest.group("obj-schema-ReportHeader", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportHeader();
      var od = new api.ReportHeader.fromJson(o.toJson());
      checkReportHeader(od);
    });
  });

  unittest.group("obj-schema-ReportRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportRow();
      var od = new api.ReportRow.fromJson(o.toJson());
      checkReportRow(od);
    });
  });

  unittest.group("obj-schema-ReportRowDimensionValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportRowDimensionValue();
      var od = new api.ReportRowDimensionValue.fromJson(o.toJson());
      checkReportRowDimensionValue(od);
    });
  });

  unittest.group("obj-schema-ReportRowMetricValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportRowMetricValue();
      var od = new api.ReportRowMetricValue.fromJson(o.toJson());
      checkReportRowMetricValue(od);
    });
  });

  unittest.group("obj-schema-ReportWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportWarning();
      var od = new api.ReportWarning.fromJson(o.toJson());
      checkReportWarning(od);
    });
  });

  unittest.group("obj-schema-StringList", () {
    unittest.test("to-json--from-json", () {
      var o = buildStringList();
      var od = new api.StringList.fromJson(o.toJson());
      checkStringList(od);
    });
  });

  unittest.group("resource-AccountsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdmobApi(mock).accounts;
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
        var resp = convert.json.encode(buildPublisherAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPublisherAccount(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdmobApi(mock).accounts;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/accounts"));
        pathOffset += 11;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListPublisherAccountsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPublisherAccountsResponse(response);
      })));
    });
  });

  unittest.group("resource-AccountsMediationReportResourceApi", () {
    unittest.test("method--generate", () {
      var mock = new HttpServerMock();
      api.AccountsMediationReportResourceApi res =
          new api.AdmobApi(mock).accounts.mediationReport;
      var arg_request = buildGenerateMediationReportRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GenerateMediationReportRequest.fromJson(json);
        checkGenerateMediationReportRequest(obj);

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
        var resp = convert.json.encode(buildGenerateMediationReportResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateMediationReportResponse(response);
      })));
    });
  });

  unittest.group("resource-AccountsNetworkReportResourceApi", () {
    unittest.test("method--generate", () {
      var mock = new HttpServerMock();
      api.AccountsNetworkReportResourceApi res =
          new api.AdmobApi(mock).accounts.networkReport;
      var arg_request = buildGenerateNetworkReportRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GenerateNetworkReportRequest.fromJson(json);
        checkGenerateNetworkReportRequest(obj);

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
        var resp = convert.json.encode(buildGenerateNetworkReportResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateNetworkReportResponse(response);
      })));
    });
  });
}
