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

import 'package:googleapis/doubleclicksearch/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAvailability = 0;
api.Availability buildAvailability() {
  final o = api.Availability();
  buildCounterAvailability++;
  if (buildCounterAvailability < 3) {
    o.advertiserId = 'foo';
    o.agencyId = 'foo';
    o.availabilityTimestamp = 'foo';
    o.segmentationId = 'foo';
    o.segmentationName = 'foo';
    o.segmentationType = 'foo';
  }
  buildCounterAvailability--;
  return o;
}

void checkAvailability(api.Availability o) {
  buildCounterAvailability++;
  if (buildCounterAvailability < 3) {
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agencyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availabilityTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.segmentationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.segmentationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.segmentationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAvailability--;
}

core.List<api.CustomDimension> buildUnnamed1778() {
  final o = <api.CustomDimension>[];
  o.add(buildCustomDimension());
  o.add(buildCustomDimension());
  return o;
}

void checkUnnamed1778(core.List<api.CustomDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomDimension(o[0]);
  checkCustomDimension(o[1]);
}

core.List<api.CustomMetric> buildUnnamed1779() {
  final o = <api.CustomMetric>[];
  o.add(buildCustomMetric());
  o.add(buildCustomMetric());
  return o;
}

void checkUnnamed1779(core.List<api.CustomMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomMetric(o[0]);
  checkCustomMetric(o[1]);
}

core.int buildCounterConversion = 0;
api.Conversion buildConversion() {
  final o = api.Conversion();
  buildCounterConversion++;
  if (buildCounterConversion < 3) {
    o.adGroupId = 'foo';
    o.adId = 'foo';
    o.advertiserId = 'foo';
    o.agencyId = 'foo';
    o.attributionModel = 'foo';
    o.campaignId = 'foo';
    o.channel = 'foo';
    o.clickId = 'foo';
    o.conversionId = 'foo';
    o.conversionModifiedTimestamp = 'foo';
    o.conversionTimestamp = 'foo';
    o.countMillis = 'foo';
    o.criterionId = 'foo';
    o.currencyCode = 'foo';
    o.customDimension = buildUnnamed1778();
    o.customMetric = buildUnnamed1779();
    o.deviceType = 'foo';
    o.dsConversionId = 'foo';
    o.engineAccountId = 'foo';
    o.floodlightOrderId = 'foo';
    o.inventoryAccountId = 'foo';
    o.productCountry = 'foo';
    o.productGroupId = 'foo';
    o.productId = 'foo';
    o.productLanguage = 'foo';
    o.quantityMillis = 'foo';
    o.revenueMicros = 'foo';
    o.segmentationId = 'foo';
    o.segmentationName = 'foo';
    o.segmentationType = 'foo';
    o.state = 'foo';
    o.storeId = 'foo';
    o.type = 'foo';
  }
  buildCounterConversion--;
  return o;
}

void checkConversion(api.Conversion o) {
  buildCounterConversion++;
  if (buildCounterConversion < 3) {
    unittest.expect(
      o.adGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.adId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agencyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.attributionModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.campaignId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clickId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conversionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conversionModifiedTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conversionTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.criterionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    checkUnnamed1778(o.customDimension!);
    checkUnnamed1779(o.customMetric!);
    unittest.expect(
      o.deviceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dsConversionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.engineAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floodlightOrderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inventoryAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantityMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revenueMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.segmentationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.segmentationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.segmentationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterConversion--;
}

core.List<api.Conversion> buildUnnamed1780() {
  final o = <api.Conversion>[];
  o.add(buildConversion());
  o.add(buildConversion());
  return o;
}

void checkUnnamed1780(core.List<api.Conversion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversion(o[0]);
  checkConversion(o[1]);
}

core.int buildCounterConversionList = 0;
api.ConversionList buildConversionList() {
  final o = api.ConversionList();
  buildCounterConversionList++;
  if (buildCounterConversionList < 3) {
    o.conversion = buildUnnamed1780();
    o.kind = 'foo';
  }
  buildCounterConversionList--;
  return o;
}

void checkConversionList(api.ConversionList o) {
  buildCounterConversionList++;
  if (buildCounterConversionList < 3) {
    checkUnnamed1780(o.conversion!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterConversionList--;
}

core.int buildCounterCustomDimension = 0;
api.CustomDimension buildCustomDimension() {
  final o = api.CustomDimension();
  buildCounterCustomDimension++;
  if (buildCounterCustomDimension < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomDimension--;
  return o;
}

void checkCustomDimension(api.CustomDimension o) {
  buildCounterCustomDimension++;
  if (buildCounterCustomDimension < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomDimension--;
}

core.int buildCounterCustomMetric = 0;
api.CustomMetric buildCustomMetric() {
  final o = api.CustomMetric();
  buildCounterCustomMetric++;
  if (buildCounterCustomMetric < 3) {
    o.name = 'foo';
    o.value = 42.0;
  }
  buildCounterCustomMetric--;
  return o;
}

void checkCustomMetric(api.CustomMetric o) {
  buildCounterCustomMetric++;
  if (buildCounterCustomMetric < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterCustomMetric--;
}

core.int buildCounterReportFiles = 0;
api.ReportFiles buildReportFiles() {
  final o = api.ReportFiles();
  buildCounterReportFiles++;
  if (buildCounterReportFiles < 3) {
    o.byteCount = 'foo';
    o.url = 'foo';
  }
  buildCounterReportFiles--;
  return o;
}

void checkReportFiles(api.ReportFiles o) {
  buildCounterReportFiles++;
  if (buildCounterReportFiles < 3) {
    unittest.expect(
      o.byteCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportFiles--;
}

core.List<api.ReportFiles> buildUnnamed1781() {
  final o = <api.ReportFiles>[];
  o.add(buildReportFiles());
  o.add(buildReportFiles());
  return o;
}

void checkUnnamed1781(core.List<api.ReportFiles> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportFiles(o[0]);
  checkReportFiles(o[1]);
}

core.List<api.ReportRow> buildUnnamed1782() {
  final o = <api.ReportRow>[];
  o.add(buildReportRow());
  o.add(buildReportRow());
  return o;
}

void checkUnnamed1782(core.List<api.ReportRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRow(o[0]);
  checkReportRow(o[1]);
}

core.int buildCounterReport = 0;
api.Report buildReport() {
  final o = api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.files = buildUnnamed1781();
    o.id = 'foo';
    o.isReportReady = true;
    o.kind = 'foo';
    o.request = buildReportRequest();
    o.rowCount = 42;
    o.rows = buildUnnamed1782();
    o.statisticsCurrencyCode = 'foo';
    o.statisticsTimeZone = 'foo';
  }
  buildCounterReport--;
  return o;
}

void checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    checkUnnamed1781(o.files!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isReportReady!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkReportRequest(o.request!);
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    checkUnnamed1782(o.rows!);
    unittest.expect(
      o.statisticsCurrencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statisticsTimeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterReport--;
}

core.int buildCounterReportApiColumnSpec = 0;
api.ReportApiColumnSpec buildReportApiColumnSpec() {
  final o = api.ReportApiColumnSpec();
  buildCounterReportApiColumnSpec++;
  if (buildCounterReportApiColumnSpec < 3) {
    o.columnName = 'foo';
    o.customDimensionName = 'foo';
    o.customMetricName = 'foo';
    o.endDate = 'foo';
    o.groupByColumn = true;
    o.headerText = 'foo';
    o.platformSource = 'foo';
    o.productReportPerspective = 'foo';
    o.savedColumnName = 'foo';
    o.startDate = 'foo';
  }
  buildCounterReportApiColumnSpec--;
  return o;
}

void checkReportApiColumnSpec(api.ReportApiColumnSpec o) {
  buildCounterReportApiColumnSpec++;
  if (buildCounterReportApiColumnSpec < 3) {
    unittest.expect(
      o.columnName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customDimensionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customMetricName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(o.groupByColumn!, unittest.isTrue);
    unittest.expect(
      o.headerText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platformSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productReportPerspective!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.savedColumnName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportApiColumnSpec--;
}

core.List<api.ReportApiColumnSpec> buildUnnamed1783() {
  final o = <api.ReportApiColumnSpec>[];
  o.add(buildReportApiColumnSpec());
  o.add(buildReportApiColumnSpec());
  return o;
}

void checkUnnamed1783(core.List<api.ReportApiColumnSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportApiColumnSpec(o[0]);
  checkReportApiColumnSpec(o[1]);
}

core.List<core.Object> buildUnnamed1784() {
  final o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed1784(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
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
  var casted2 = (o[1]) as core.Map;
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

core.int buildCounterReportRequestFilters = 0;
api.ReportRequestFilters buildReportRequestFilters() {
  final o = api.ReportRequestFilters();
  buildCounterReportRequestFilters++;
  if (buildCounterReportRequestFilters < 3) {
    o.column = buildReportApiColumnSpec();
    o.operator = 'foo';
    o.values = buildUnnamed1784();
  }
  buildCounterReportRequestFilters--;
  return o;
}

void checkReportRequestFilters(api.ReportRequestFilters o) {
  buildCounterReportRequestFilters++;
  if (buildCounterReportRequestFilters < 3) {
    checkReportApiColumnSpec(o.column!);
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
    checkUnnamed1784(o.values!);
  }
  buildCounterReportRequestFilters--;
}

core.List<api.ReportRequestFilters> buildUnnamed1785() {
  final o = <api.ReportRequestFilters>[];
  o.add(buildReportRequestFilters());
  o.add(buildReportRequestFilters());
  return o;
}

void checkUnnamed1785(core.List<api.ReportRequestFilters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRequestFilters(o[0]);
  checkReportRequestFilters(o[1]);
}

core.int buildCounterReportRequestOrderBy = 0;
api.ReportRequestOrderBy buildReportRequestOrderBy() {
  final o = api.ReportRequestOrderBy();
  buildCounterReportRequestOrderBy++;
  if (buildCounterReportRequestOrderBy < 3) {
    o.column = buildReportApiColumnSpec();
    o.sortOrder = 'foo';
  }
  buildCounterReportRequestOrderBy--;
  return o;
}

void checkReportRequestOrderBy(api.ReportRequestOrderBy o) {
  buildCounterReportRequestOrderBy++;
  if (buildCounterReportRequestOrderBy < 3) {
    checkReportApiColumnSpec(o.column!);
    unittest.expect(
      o.sortOrder!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportRequestOrderBy--;
}

core.List<api.ReportRequestOrderBy> buildUnnamed1786() {
  final o = <api.ReportRequestOrderBy>[];
  o.add(buildReportRequestOrderBy());
  o.add(buildReportRequestOrderBy());
  return o;
}

void checkUnnamed1786(core.List<api.ReportRequestOrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRequestOrderBy(o[0]);
  checkReportRequestOrderBy(o[1]);
}

core.int buildCounterReportRequestReportScope = 0;
api.ReportRequestReportScope buildReportRequestReportScope() {
  final o = api.ReportRequestReportScope();
  buildCounterReportRequestReportScope++;
  if (buildCounterReportRequestReportScope < 3) {
    o.adGroupId = 'foo';
    o.adId = 'foo';
    o.advertiserId = 'foo';
    o.agencyId = 'foo';
    o.campaignId = 'foo';
    o.engineAccountId = 'foo';
    o.keywordId = 'foo';
  }
  buildCounterReportRequestReportScope--;
  return o;
}

void checkReportRequestReportScope(api.ReportRequestReportScope o) {
  buildCounterReportRequestReportScope++;
  if (buildCounterReportRequestReportScope < 3) {
    unittest.expect(
      o.adGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.adId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agencyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.campaignId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.engineAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keywordId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportRequestReportScope--;
}

core.int buildCounterReportRequestTimeRange = 0;
api.ReportRequestTimeRange buildReportRequestTimeRange() {
  final o = api.ReportRequestTimeRange();
  buildCounterReportRequestTimeRange++;
  if (buildCounterReportRequestTimeRange < 3) {
    o.changedAttributesSinceTimestamp = 'foo';
    o.changedMetricsSinceTimestamp = 'foo';
    o.endDate = 'foo';
    o.startDate = 'foo';
  }
  buildCounterReportRequestTimeRange--;
  return o;
}

void checkReportRequestTimeRange(api.ReportRequestTimeRange o) {
  buildCounterReportRequestTimeRange++;
  if (buildCounterReportRequestTimeRange < 3) {
    unittest.expect(
      o.changedAttributesSinceTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.changedMetricsSinceTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportRequestTimeRange--;
}

core.int buildCounterReportRequest = 0;
api.ReportRequest buildReportRequest() {
  final o = api.ReportRequest();
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    o.columns = buildUnnamed1783();
    o.downloadFormat = 'foo';
    o.filters = buildUnnamed1785();
    o.includeDeletedEntities = true;
    o.includeRemovedEntities = true;
    o.maxRowsPerFile = 42;
    o.orderBy = buildUnnamed1786();
    o.reportScope = buildReportRequestReportScope();
    o.reportType = 'foo';
    o.rowCount = 42;
    o.startRow = 42;
    o.statisticsCurrency = 'foo';
    o.timeRange = buildReportRequestTimeRange();
    o.verifySingleTimeZone = true;
  }
  buildCounterReportRequest--;
  return o;
}

void checkReportRequest(api.ReportRequest o) {
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    checkUnnamed1783(o.columns!);
    unittest.expect(
      o.downloadFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed1785(o.filters!);
    unittest.expect(o.includeDeletedEntities!, unittest.isTrue);
    unittest.expect(o.includeRemovedEntities!, unittest.isTrue);
    unittest.expect(
      o.maxRowsPerFile!,
      unittest.equals(42),
    );
    checkUnnamed1786(o.orderBy!);
    checkReportRequestReportScope(o.reportScope!);
    unittest.expect(
      o.reportType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startRow!,
      unittest.equals(42),
    );
    unittest.expect(
      o.statisticsCurrency!,
      unittest.equals('foo'),
    );
    checkReportRequestTimeRange(o.timeRange!);
    unittest.expect(o.verifySingleTimeZone!, unittest.isTrue);
  }
  buildCounterReportRequest--;
}

api.ReportRow buildReportRow() {
  final o = api.ReportRow();
  o['a'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['b'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkReportRow(api.ReportRow o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['a']!) as core.Map;
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
  var casted4 = (o['b']!) as core.Map;
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
}

core.int buildCounterSavedColumn = 0;
api.SavedColumn buildSavedColumn() {
  final o = api.SavedColumn();
  buildCounterSavedColumn++;
  if (buildCounterSavedColumn < 3) {
    o.kind = 'foo';
    o.savedColumnName = 'foo';
    o.type = 'foo';
  }
  buildCounterSavedColumn--;
  return o;
}

void checkSavedColumn(api.SavedColumn o) {
  buildCounterSavedColumn++;
  if (buildCounterSavedColumn < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.savedColumnName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSavedColumn--;
}

core.List<api.SavedColumn> buildUnnamed1787() {
  final o = <api.SavedColumn>[];
  o.add(buildSavedColumn());
  o.add(buildSavedColumn());
  return o;
}

void checkUnnamed1787(core.List<api.SavedColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSavedColumn(o[0]);
  checkSavedColumn(o[1]);
}

core.int buildCounterSavedColumnList = 0;
api.SavedColumnList buildSavedColumnList() {
  final o = api.SavedColumnList();
  buildCounterSavedColumnList++;
  if (buildCounterSavedColumnList < 3) {
    o.items = buildUnnamed1787();
    o.kind = 'foo';
  }
  buildCounterSavedColumnList--;
  return o;
}

void checkSavedColumnList(api.SavedColumnList o) {
  buildCounterSavedColumnList++;
  if (buildCounterSavedColumnList < 3) {
    checkUnnamed1787(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterSavedColumnList--;
}

core.List<api.Availability> buildUnnamed1788() {
  final o = <api.Availability>[];
  o.add(buildAvailability());
  o.add(buildAvailability());
  return o;
}

void checkUnnamed1788(core.List<api.Availability> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAvailability(o[0]);
  checkAvailability(o[1]);
}

core.int buildCounterUpdateAvailabilityRequest = 0;
api.UpdateAvailabilityRequest buildUpdateAvailabilityRequest() {
  final o = api.UpdateAvailabilityRequest();
  buildCounterUpdateAvailabilityRequest++;
  if (buildCounterUpdateAvailabilityRequest < 3) {
    o.availabilities = buildUnnamed1788();
  }
  buildCounterUpdateAvailabilityRequest--;
  return o;
}

void checkUpdateAvailabilityRequest(api.UpdateAvailabilityRequest o) {
  buildCounterUpdateAvailabilityRequest++;
  if (buildCounterUpdateAvailabilityRequest < 3) {
    checkUnnamed1788(o.availabilities!);
  }
  buildCounterUpdateAvailabilityRequest--;
}

core.List<api.Availability> buildUnnamed1789() {
  final o = <api.Availability>[];
  o.add(buildAvailability());
  o.add(buildAvailability());
  return o;
}

void checkUnnamed1789(core.List<api.Availability> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAvailability(o[0]);
  checkAvailability(o[1]);
}

core.int buildCounterUpdateAvailabilityResponse = 0;
api.UpdateAvailabilityResponse buildUpdateAvailabilityResponse() {
  final o = api.UpdateAvailabilityResponse();
  buildCounterUpdateAvailabilityResponse++;
  if (buildCounterUpdateAvailabilityResponse < 3) {
    o.availabilities = buildUnnamed1789();
  }
  buildCounterUpdateAvailabilityResponse--;
  return o;
}

void checkUpdateAvailabilityResponse(api.UpdateAvailabilityResponse o) {
  buildCounterUpdateAvailabilityResponse++;
  if (buildCounterUpdateAvailabilityResponse < 3) {
    checkUnnamed1789(o.availabilities!);
  }
  buildCounterUpdateAvailabilityResponse--;
}

void main() {
  unittest.group('obj-schema-Availability', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAvailability();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Availability.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAvailability(od);
    });
  });

  unittest.group('obj-schema-Conversion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Conversion.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConversion(od);
    });
  });

  unittest.group('obj-schema-ConversionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConversionList(od);
    });
  });

  unittest.group('obj-schema-CustomDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomDimension(od);
    });
  });

  unittest.group('obj-schema-CustomMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomMetric(od);
    });
  });

  unittest.group('obj-schema-ReportFiles', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportFiles();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportFiles.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportFiles(od);
    });
  });

  unittest.group('obj-schema-Report', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Report.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReport(od);
    });
  });

  unittest.group('obj-schema-ReportApiColumnSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportApiColumnSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportApiColumnSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportApiColumnSpec(od);
    });
  });

  unittest.group('obj-schema-ReportRequestFilters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRequestFilters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportRequestFilters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportRequestFilters(od);
    });
  });

  unittest.group('obj-schema-ReportRequestOrderBy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRequestOrderBy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportRequestOrderBy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportRequestOrderBy(od);
    });
  });

  unittest.group('obj-schema-ReportRequestReportScope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRequestReportScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportRequestReportScope.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportRequestReportScope(od);
    });
  });

  unittest.group('obj-schema-ReportRequestTimeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRequestTimeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportRequestTimeRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportRequestTimeRange(od);
    });
  });

  unittest.group('obj-schema-ReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportRequest(od);
    });
  });

  unittest.group('obj-schema-ReportRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReportRow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReportRow(od);
    });
  });

  unittest.group('obj-schema-SavedColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSavedColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SavedColumn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSavedColumn(od);
    });
  });

  unittest.group('obj-schema-SavedColumnList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSavedColumnList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SavedColumnList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSavedColumnList(od);
    });
  });

  unittest.group('obj-schema-UpdateAvailabilityRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateAvailabilityRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateAvailabilityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateAvailabilityRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateAvailabilityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateAvailabilityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateAvailabilityResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateAvailabilityResponse(od);
    });
  });

  unittest.group('resource-ConversionResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DoubleclicksearchApi(mock).conversion;
      final arg_agencyId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_engineAccountId = 'foo';
      final arg_endDate = 42;
      final arg_rowCount = 42;
      final arg_startDate = 42;
      final arg_startRow = 42;
      final arg_adGroupId = 'foo';
      final arg_adId = 'foo';
      final arg_campaignId = 'foo';
      final arg_criterionId = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('doubleclicksearch/v2/agency/'),
        );
        pathOffset += 28;
        index = path.indexOf('/advertiser/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_agencyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/advertiser/'),
        );
        pathOffset += 12;
        index = path.indexOf('/engine/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_advertiserId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/engine/'),
        );
        pathOffset += 8;
        index = path.indexOf('/conversion', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_engineAccountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/conversion'),
        );
        pathOffset += 11;

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
          core.int.parse(queryMap['endDate']!.first),
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          core.int.parse(queryMap['rowCount']!.first),
          unittest.equals(arg_rowCount),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate']!.first),
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          core.int.parse(queryMap['startRow']!.first),
          unittest.equals(arg_startRow),
        );
        unittest.expect(
          queryMap['adGroupId']!.first,
          unittest.equals(arg_adGroupId),
        );
        unittest.expect(
          queryMap['adId']!.first,
          unittest.equals(arg_adId),
        );
        unittest.expect(
          queryMap['campaignId']!.first,
          unittest.equals(arg_campaignId),
        );
        unittest.expect(
          queryMap['criterionId']!.first,
          unittest.equals(arg_criterionId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildConversionList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_agencyId,
          arg_advertiserId,
          arg_engineAccountId,
          arg_endDate,
          arg_rowCount,
          arg_startDate,
          arg_startRow,
          adGroupId: arg_adGroupId,
          adId: arg_adId,
          campaignId: arg_campaignId,
          criterionId: arg_criterionId,
          $fields: arg_$fields);
      checkConversionList(response as api.ConversionList);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DoubleclicksearchApi(mock).conversion;
      final arg_request = buildConversionList();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConversionList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConversionList(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('doubleclicksearch/v2/conversion'),
        );
        pathOffset += 31;

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
        final resp = convert.json.encode(buildConversionList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkConversionList(response as api.ConversionList);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DoubleclicksearchApi(mock).conversion;
      final arg_request = buildConversionList();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConversionList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConversionList(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('doubleclicksearch/v2/conversion'),
        );
        pathOffset += 31;

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
        final resp = convert.json.encode(buildConversionList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, $fields: arg_$fields);
      checkConversionList(response as api.ConversionList);
    });

    unittest.test('method--updateAvailability', () async {
      final mock = HttpServerMock();
      final res = api.DoubleclicksearchApi(mock).conversion;
      final arg_request = buildUpdateAvailabilityRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateAvailabilityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateAvailabilityRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 50),
          unittest.equals('doubleclicksearch/v2/conversion/updateAvailability'),
        );
        pathOffset += 50;

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
        final resp = convert.json.encode(buildUpdateAvailabilityResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updateAvailability(arg_request, $fields: arg_$fields);
      checkUpdateAvailabilityResponse(
          response as api.UpdateAvailabilityResponse);
    });
  });

  unittest.group('resource-ReportsResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.DoubleclicksearchApi(mock).reports;
      final arg_request_1 = buildReportRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 37),
          unittest.equals('doubleclicksearch/v2/reports/generate'),
        );
        pathOffset += 37;

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
        final resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generate(arg_request_1, $fields: arg_$fields);
      checkReport(response as api.Report);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DoubleclicksearchApi(mock).reports;
      final arg_reportId = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('doubleclicksearch/v2/reports/'),
        );
        pathOffset += 29;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reportId'),
        );

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
        final resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_reportId, $fields: arg_$fields);
      checkReport(response as api.Report);
    });

    unittest.test('method--getFile', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DoubleclicksearchApi(mock).reports;
      final arg_reportId = 'foo';
      final arg_reportFragment = 42;
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('doubleclicksearch/v2/reports/'),
        );
        pathOffset += 29;
        index = path.indexOf('/files/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reportId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/files/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reportFragment'),
        );

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
      await res.getFile(arg_reportId, arg_reportFragment, $fields: arg_$fields);
    });

    unittest.test('method--request', () async {
      final mock = HttpServerMock();
      final res = api.DoubleclicksearchApi(mock).reports;
      final arg_request_1 = buildReportRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('doubleclicksearch/v2/reports'),
        );
        pathOffset += 28;

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
        final resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.request(arg_request_1, $fields: arg_$fields);
      checkReport(response as api.Report);
    });
  });

  unittest.group('resource-SavedColumnsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DoubleclicksearchApi(mock).savedColumns;
      final arg_agencyId = 'foo';
      final arg_advertiserId = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('doubleclicksearch/v2/agency/'),
        );
        pathOffset += 28;
        index = path.indexOf('/advertiser/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_agencyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/advertiser/'),
        );
        pathOffset += 12;
        index = path.indexOf('/savedcolumns', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_advertiserId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/savedcolumns'),
        );
        pathOffset += 13;

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
        final resp = convert.json.encode(buildSavedColumnList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_agencyId, arg_advertiserId, $fields: arg_$fields);
      checkSavedColumnList(response as api.SavedColumnList);
    });
  });
}
