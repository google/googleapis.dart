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

import 'package:googleapis/cloudsearch/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAuditLoggingSettings = 0;
api.AuditLoggingSettings buildAuditLoggingSettings() {
  final o = api.AuditLoggingSettings();
  buildCounterAuditLoggingSettings++;
  if (buildCounterAuditLoggingSettings < 3) {
    o.logAdminReadActions = true;
    o.logDataReadActions = true;
    o.logDataWriteActions = true;
    o.project = 'foo';
  }
  buildCounterAuditLoggingSettings--;
  return o;
}

void checkAuditLoggingSettings(api.AuditLoggingSettings o) {
  buildCounterAuditLoggingSettings++;
  if (buildCounterAuditLoggingSettings < 3) {
    unittest.expect(o.logAdminReadActions!, unittest.isTrue);
    unittest.expect(o.logDataReadActions!, unittest.isTrue);
    unittest.expect(o.logDataWriteActions!, unittest.isTrue);
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLoggingSettings--;
}

core.int buildCounterBooleanOperatorOptions = 0;
api.BooleanOperatorOptions buildBooleanOperatorOptions() {
  final o = api.BooleanOperatorOptions();
  buildCounterBooleanOperatorOptions++;
  if (buildCounterBooleanOperatorOptions < 3) {
    o.operatorName = 'foo';
  }
  buildCounterBooleanOperatorOptions--;
  return o;
}

void checkBooleanOperatorOptions(api.BooleanOperatorOptions o) {
  buildCounterBooleanOperatorOptions++;
  if (buildCounterBooleanOperatorOptions < 3) {
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
  }
  buildCounterBooleanOperatorOptions--;
}

core.int buildCounterBooleanPropertyOptions = 0;
api.BooleanPropertyOptions buildBooleanPropertyOptions() {
  final o = api.BooleanPropertyOptions();
  buildCounterBooleanPropertyOptions++;
  if (buildCounterBooleanPropertyOptions < 3) {
    o.operatorOptions = buildBooleanOperatorOptions();
  }
  buildCounterBooleanPropertyOptions--;
  return o;
}

void checkBooleanPropertyOptions(api.BooleanPropertyOptions o) {
  buildCounterBooleanPropertyOptions++;
  if (buildCounterBooleanPropertyOptions < 3) {
    checkBooleanOperatorOptions(o.operatorOptions!);
  }
  buildCounterBooleanPropertyOptions--;
}

core.int buildCounterCheckAccessResponse = 0;
api.CheckAccessResponse buildCheckAccessResponse() {
  final o = api.CheckAccessResponse();
  buildCounterCheckAccessResponse++;
  if (buildCounterCheckAccessResponse < 3) {
    o.hasAccess = true;
  }
  buildCounterCheckAccessResponse--;
  return o;
}

void checkCheckAccessResponse(api.CheckAccessResponse o) {
  buildCounterCheckAccessResponse++;
  if (buildCounterCheckAccessResponse < 3) {
    unittest.expect(o.hasAccess!, unittest.isTrue);
  }
  buildCounterCheckAccessResponse--;
}

core.List<api.Filter> buildUnnamed0() => [
      buildFilter(),
      buildFilter(),
    ];

void checkUnnamed0(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterCompositeFilter = 0;
api.CompositeFilter buildCompositeFilter() {
  final o = api.CompositeFilter();
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    o.logicOperator = 'foo';
    o.subFilters = buildUnnamed0();
  }
  buildCounterCompositeFilter--;
  return o;
}

void checkCompositeFilter(api.CompositeFilter o) {
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    unittest.expect(
      o.logicOperator!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.subFilters!);
  }
  buildCounterCompositeFilter--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterContextAttribute = 0;
api.ContextAttribute buildContextAttribute() {
  final o = api.ContextAttribute();
  buildCounterContextAttribute++;
  if (buildCounterContextAttribute < 3) {
    o.name = 'foo';
    o.values = buildUnnamed1();
  }
  buildCounterContextAttribute--;
  return o;
}

void checkContextAttribute(api.ContextAttribute o) {
  buildCounterContextAttribute++;
  if (buildCounterContextAttribute < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.values!);
  }
  buildCounterContextAttribute--;
}

core.List<api.ItemCountByStatus> buildUnnamed2() => [
      buildItemCountByStatus(),
      buildItemCountByStatus(),
    ];

void checkUnnamed2(core.List<api.ItemCountByStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItemCountByStatus(o[0]);
  checkItemCountByStatus(o[1]);
}

core.int buildCounterCustomerIndexStats = 0;
api.CustomerIndexStats buildCustomerIndexStats() {
  final o = api.CustomerIndexStats();
  buildCounterCustomerIndexStats++;
  if (buildCounterCustomerIndexStats < 3) {
    o.date = buildDate();
    o.itemCountByStatus = buildUnnamed2();
  }
  buildCounterCustomerIndexStats--;
  return o;
}

void checkCustomerIndexStats(api.CustomerIndexStats o) {
  buildCounterCustomerIndexStats++;
  if (buildCounterCustomerIndexStats < 3) {
    checkDate(o.date!);
    checkUnnamed2(o.itemCountByStatus!);
  }
  buildCounterCustomerIndexStats--;
}

core.List<api.QueryCountByStatus> buildUnnamed3() => [
      buildQueryCountByStatus(),
      buildQueryCountByStatus(),
    ];

void checkUnnamed3(core.List<api.QueryCountByStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryCountByStatus(o[0]);
  checkQueryCountByStatus(o[1]);
}

core.int buildCounterCustomerQueryStats = 0;
api.CustomerQueryStats buildCustomerQueryStats() {
  final o = api.CustomerQueryStats();
  buildCounterCustomerQueryStats++;
  if (buildCounterCustomerQueryStats < 3) {
    o.date = buildDate();
    o.queryCountByStatus = buildUnnamed3();
  }
  buildCounterCustomerQueryStats--;
  return o;
}

void checkCustomerQueryStats(api.CustomerQueryStats o) {
  buildCounterCustomerQueryStats++;
  if (buildCounterCustomerQueryStats < 3) {
    checkDate(o.date!);
    checkUnnamed3(o.queryCountByStatus!);
  }
  buildCounterCustomerQueryStats--;
}

core.int buildCounterCustomerSearchApplicationStats = 0;
api.CustomerSearchApplicationStats buildCustomerSearchApplicationStats() {
  final o = api.CustomerSearchApplicationStats();
  buildCounterCustomerSearchApplicationStats++;
  if (buildCounterCustomerSearchApplicationStats < 3) {
    o.count = 'foo';
    o.date = buildDate();
  }
  buildCounterCustomerSearchApplicationStats--;
  return o;
}

void checkCustomerSearchApplicationStats(api.CustomerSearchApplicationStats o) {
  buildCounterCustomerSearchApplicationStats++;
  if (buildCounterCustomerSearchApplicationStats < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    checkDate(o.date!);
  }
  buildCounterCustomerSearchApplicationStats--;
}

core.int buildCounterCustomerSessionStats = 0;
api.CustomerSessionStats buildCustomerSessionStats() {
  final o = api.CustomerSessionStats();
  buildCounterCustomerSessionStats++;
  if (buildCounterCustomerSessionStats < 3) {
    o.date = buildDate();
    o.searchSessionsCount = 'foo';
  }
  buildCounterCustomerSessionStats--;
  return o;
}

void checkCustomerSessionStats(api.CustomerSessionStats o) {
  buildCounterCustomerSessionStats++;
  if (buildCounterCustomerSessionStats < 3) {
    checkDate(o.date!);
    unittest.expect(
      o.searchSessionsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomerSessionStats--;
}

core.int buildCounterCustomerSettings = 0;
api.CustomerSettings buildCustomerSettings() {
  final o = api.CustomerSettings();
  buildCounterCustomerSettings++;
  if (buildCounterCustomerSettings < 3) {
    o.auditLoggingSettings = buildAuditLoggingSettings();
    o.vpcSettings = buildVPCSettings();
  }
  buildCounterCustomerSettings--;
  return o;
}

void checkCustomerSettings(api.CustomerSettings o) {
  buildCounterCustomerSettings++;
  if (buildCounterCustomerSettings < 3) {
    checkAuditLoggingSettings(o.auditLoggingSettings!);
    checkVPCSettings(o.vpcSettings!);
  }
  buildCounterCustomerSettings--;
}

core.int buildCounterCustomerUserStats = 0;
api.CustomerUserStats buildCustomerUserStats() {
  final o = api.CustomerUserStats();
  buildCounterCustomerUserStats++;
  if (buildCounterCustomerUserStats < 3) {
    o.date = buildDate();
    o.oneDayActiveUsersCount = 'foo';
    o.sevenDaysActiveUsersCount = 'foo';
    o.thirtyDaysActiveUsersCount = 'foo';
  }
  buildCounterCustomerUserStats--;
  return o;
}

void checkCustomerUserStats(api.CustomerUserStats o) {
  buildCounterCustomerUserStats++;
  if (buildCounterCustomerUserStats < 3) {
    checkDate(o.date!);
    unittest.expect(
      o.oneDayActiveUsersCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sevenDaysActiveUsersCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thirtyDaysActiveUsersCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomerUserStats--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.List<api.GSuitePrincipal> buildUnnamed5() => [
      buildGSuitePrincipal(),
      buildGSuitePrincipal(),
    ];

void checkUnnamed5(core.List<api.GSuitePrincipal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGSuitePrincipal(o[0]);
  checkGSuitePrincipal(o[1]);
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

core.int buildCounterDataSource = 0;
api.DataSource buildDataSource() {
  final o = api.DataSource();
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    o.disableModifications = true;
    o.disableServing = true;
    o.displayName = 'foo';
    o.indexingServiceAccounts = buildUnnamed4();
    o.itemsVisibility = buildUnnamed5();
    o.name = 'foo';
    o.operationIds = buildUnnamed6();
    o.returnThumbnailUrls = true;
    o.shortName = 'foo';
  }
  buildCounterDataSource--;
  return o;
}

void checkDataSource(api.DataSource o) {
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    unittest.expect(o.disableModifications!, unittest.isTrue);
    unittest.expect(o.disableServing!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.indexingServiceAccounts!);
    checkUnnamed5(o.itemsVisibility!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.operationIds!);
    unittest.expect(o.returnThumbnailUrls!, unittest.isTrue);
    unittest.expect(
      o.shortName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataSource--;
}

core.List<api.ItemCountByStatus> buildUnnamed7() => [
      buildItemCountByStatus(),
      buildItemCountByStatus(),
    ];

void checkUnnamed7(core.List<api.ItemCountByStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItemCountByStatus(o[0]);
  checkItemCountByStatus(o[1]);
}

core.int buildCounterDataSourceIndexStats = 0;
api.DataSourceIndexStats buildDataSourceIndexStats() {
  final o = api.DataSourceIndexStats();
  buildCounterDataSourceIndexStats++;
  if (buildCounterDataSourceIndexStats < 3) {
    o.date = buildDate();
    o.itemCountByStatus = buildUnnamed7();
  }
  buildCounterDataSourceIndexStats--;
  return o;
}

void checkDataSourceIndexStats(api.DataSourceIndexStats o) {
  buildCounterDataSourceIndexStats++;
  if (buildCounterDataSourceIndexStats < 3) {
    checkDate(o.date!);
    checkUnnamed7(o.itemCountByStatus!);
  }
  buildCounterDataSourceIndexStats--;
}

core.List<api.FilterOptions> buildUnnamed8() => [
      buildFilterOptions(),
      buildFilterOptions(),
    ];

void checkUnnamed8(core.List<api.FilterOptions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterOptions(o[0]);
  checkFilterOptions(o[1]);
}

core.int buildCounterDataSourceRestriction = 0;
api.DataSourceRestriction buildDataSourceRestriction() {
  final o = api.DataSourceRestriction();
  buildCounterDataSourceRestriction++;
  if (buildCounterDataSourceRestriction < 3) {
    o.filterOptions = buildUnnamed8();
    o.source = buildSource();
  }
  buildCounterDataSourceRestriction--;
  return o;
}

void checkDataSourceRestriction(api.DataSourceRestriction o) {
  buildCounterDataSourceRestriction++;
  if (buildCounterDataSourceRestriction < 3) {
    checkUnnamed8(o.filterOptions!);
    checkSource(o.source!);
  }
  buildCounterDataSourceRestriction--;
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

core.int buildCounterDateOperatorOptions = 0;
api.DateOperatorOptions buildDateOperatorOptions() {
  final o = api.DateOperatorOptions();
  buildCounterDateOperatorOptions++;
  if (buildCounterDateOperatorOptions < 3) {
    o.greaterThanOperatorName = 'foo';
    o.lessThanOperatorName = 'foo';
    o.operatorName = 'foo';
  }
  buildCounterDateOperatorOptions--;
  return o;
}

void checkDateOperatorOptions(api.DateOperatorOptions o) {
  buildCounterDateOperatorOptions++;
  if (buildCounterDateOperatorOptions < 3) {
    unittest.expect(
      o.greaterThanOperatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lessThanOperatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDateOperatorOptions--;
}

core.int buildCounterDatePropertyOptions = 0;
api.DatePropertyOptions buildDatePropertyOptions() {
  final o = api.DatePropertyOptions();
  buildCounterDatePropertyOptions++;
  if (buildCounterDatePropertyOptions < 3) {
    o.operatorOptions = buildDateOperatorOptions();
  }
  buildCounterDatePropertyOptions--;
  return o;
}

void checkDatePropertyOptions(api.DatePropertyOptions o) {
  buildCounterDatePropertyOptions++;
  if (buildCounterDatePropertyOptions < 3) {
    checkDateOperatorOptions(o.operatorOptions!);
  }
  buildCounterDatePropertyOptions--;
}

core.List<api.Date> buildUnnamed9() => [
      buildDate(),
      buildDate(),
    ];

void checkUnnamed9(core.List<api.Date> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDate(o[0]);
  checkDate(o[1]);
}

core.int buildCounterDateValues = 0;
api.DateValues buildDateValues() {
  final o = api.DateValues();
  buildCounterDateValues++;
  if (buildCounterDateValues < 3) {
    o.values = buildUnnamed9();
  }
  buildCounterDateValues--;
  return o;
}

void checkDateValues(api.DateValues o) {
  buildCounterDateValues++;
  if (buildCounterDateValues < 3) {
    checkUnnamed9(o.values!);
  }
  buildCounterDateValues--;
}

core.int buildCounterDebugOptions = 0;
api.DebugOptions buildDebugOptions() {
  final o = api.DebugOptions();
  buildCounterDebugOptions++;
  if (buildCounterDebugOptions < 3) {
    o.enableDebugging = true;
  }
  buildCounterDebugOptions--;
  return o;
}

void checkDebugOptions(api.DebugOptions o) {
  buildCounterDebugOptions++;
  if (buildCounterDebugOptions < 3) {
    unittest.expect(o.enableDebugging!, unittest.isTrue);
  }
  buildCounterDebugOptions--;
}

core.int buildCounterDeleteQueueItemsRequest = 0;
api.DeleteQueueItemsRequest buildDeleteQueueItemsRequest() {
  final o = api.DeleteQueueItemsRequest();
  buildCounterDeleteQueueItemsRequest++;
  if (buildCounterDeleteQueueItemsRequest < 3) {
    o.connectorName = 'foo';
    o.debugOptions = buildDebugOptions();
    o.queue = 'foo';
  }
  buildCounterDeleteQueueItemsRequest--;
  return o;
}

void checkDeleteQueueItemsRequest(api.DeleteQueueItemsRequest o) {
  buildCounterDeleteQueueItemsRequest++;
  if (buildCounterDeleteQueueItemsRequest < 3) {
    unittest.expect(
      o.connectorName!,
      unittest.equals('foo'),
    );
    checkDebugOptions(o.debugOptions!);
    unittest.expect(
      o.queue!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteQueueItemsRequest--;
}

core.int buildCounterDisplayedProperty = 0;
api.DisplayedProperty buildDisplayedProperty() {
  final o = api.DisplayedProperty();
  buildCounterDisplayedProperty++;
  if (buildCounterDisplayedProperty < 3) {
    o.propertyName = 'foo';
  }
  buildCounterDisplayedProperty--;
  return o;
}

void checkDisplayedProperty(api.DisplayedProperty o) {
  buildCounterDisplayedProperty++;
  if (buildCounterDisplayedProperty < 3) {
    unittest.expect(
      o.propertyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisplayedProperty--;
}

core.int buildCounterDoubleOperatorOptions = 0;
api.DoubleOperatorOptions buildDoubleOperatorOptions() {
  final o = api.DoubleOperatorOptions();
  buildCounterDoubleOperatorOptions++;
  if (buildCounterDoubleOperatorOptions < 3) {
    o.operatorName = 'foo';
  }
  buildCounterDoubleOperatorOptions--;
  return o;
}

void checkDoubleOperatorOptions(api.DoubleOperatorOptions o) {
  buildCounterDoubleOperatorOptions++;
  if (buildCounterDoubleOperatorOptions < 3) {
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDoubleOperatorOptions--;
}

core.int buildCounterDoublePropertyOptions = 0;
api.DoublePropertyOptions buildDoublePropertyOptions() {
  final o = api.DoublePropertyOptions();
  buildCounterDoublePropertyOptions++;
  if (buildCounterDoublePropertyOptions < 3) {
    o.operatorOptions = buildDoubleOperatorOptions();
  }
  buildCounterDoublePropertyOptions--;
  return o;
}

void checkDoublePropertyOptions(api.DoublePropertyOptions o) {
  buildCounterDoublePropertyOptions++;
  if (buildCounterDoublePropertyOptions < 3) {
    checkDoubleOperatorOptions(o.operatorOptions!);
  }
  buildCounterDoublePropertyOptions--;
}

core.List<core.double> buildUnnamed10() => [
      42.0,
      42.0,
    ];

void checkUnnamed10(core.List<core.double> o) {
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

core.int buildCounterDoubleValues = 0;
api.DoubleValues buildDoubleValues() {
  final o = api.DoubleValues();
  buildCounterDoubleValues++;
  if (buildCounterDoubleValues < 3) {
    o.values = buildUnnamed10();
  }
  buildCounterDoubleValues--;
  return o;
}

void checkDoubleValues(api.DoubleValues o) {
  buildCounterDoubleValues++;
  if (buildCounterDoubleValues < 3) {
    checkUnnamed10(o.values!);
  }
  buildCounterDoubleValues--;
}

core.int buildCounterEmailAddress = 0;
api.EmailAddress buildEmailAddress() {
  final o = api.EmailAddress();
  buildCounterEmailAddress++;
  if (buildCounterEmailAddress < 3) {
    o.emailAddress = 'foo';
  }
  buildCounterEmailAddress--;
  return o;
}

void checkEmailAddress(api.EmailAddress o) {
  buildCounterEmailAddress++;
  if (buildCounterEmailAddress < 3) {
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterEmailAddress--;
}

core.int buildCounterEnumOperatorOptions = 0;
api.EnumOperatorOptions buildEnumOperatorOptions() {
  final o = api.EnumOperatorOptions();
  buildCounterEnumOperatorOptions++;
  if (buildCounterEnumOperatorOptions < 3) {
    o.operatorName = 'foo';
  }
  buildCounterEnumOperatorOptions--;
  return o;
}

void checkEnumOperatorOptions(api.EnumOperatorOptions o) {
  buildCounterEnumOperatorOptions++;
  if (buildCounterEnumOperatorOptions < 3) {
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnumOperatorOptions--;
}

core.List<api.EnumValuePair> buildUnnamed11() => [
      buildEnumValuePair(),
      buildEnumValuePair(),
    ];

void checkUnnamed11(core.List<api.EnumValuePair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnumValuePair(o[0]);
  checkEnumValuePair(o[1]);
}

core.int buildCounterEnumPropertyOptions = 0;
api.EnumPropertyOptions buildEnumPropertyOptions() {
  final o = api.EnumPropertyOptions();
  buildCounterEnumPropertyOptions++;
  if (buildCounterEnumPropertyOptions < 3) {
    o.operatorOptions = buildEnumOperatorOptions();
    o.orderedRanking = 'foo';
    o.possibleValues = buildUnnamed11();
  }
  buildCounterEnumPropertyOptions--;
  return o;
}

void checkEnumPropertyOptions(api.EnumPropertyOptions o) {
  buildCounterEnumPropertyOptions++;
  if (buildCounterEnumPropertyOptions < 3) {
    checkEnumOperatorOptions(o.operatorOptions!);
    unittest.expect(
      o.orderedRanking!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.possibleValues!);
  }
  buildCounterEnumPropertyOptions--;
}

core.int buildCounterEnumValuePair = 0;
api.EnumValuePair buildEnumValuePair() {
  final o = api.EnumValuePair();
  buildCounterEnumValuePair++;
  if (buildCounterEnumValuePair < 3) {
    o.integerValue = 42;
    o.stringValue = 'foo';
  }
  buildCounterEnumValuePair--;
  return o;
}

void checkEnumValuePair(api.EnumValuePair o) {
  buildCounterEnumValuePair++;
  if (buildCounterEnumValuePair < 3) {
    unittest.expect(
      o.integerValue!,
      unittest.equals(42),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnumValuePair--;
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.int buildCounterEnumValues = 0;
api.EnumValues buildEnumValues() {
  final o = api.EnumValues();
  buildCounterEnumValues++;
  if (buildCounterEnumValues < 3) {
    o.values = buildUnnamed12();
  }
  buildCounterEnumValues--;
  return o;
}

void checkEnumValues(api.EnumValues o) {
  buildCounterEnumValues++;
  if (buildCounterEnumValues < 3) {
    checkUnnamed12(o.values!);
  }
  buildCounterEnumValues--;
}

core.List<api.ErrorMessage> buildUnnamed13() => [
      buildErrorMessage(),
      buildErrorMessage(),
    ];

void checkUnnamed13(core.List<api.ErrorMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorMessage(o[0]);
  checkErrorMessage(o[1]);
}

core.int buildCounterErrorInfo = 0;
api.ErrorInfo buildErrorInfo() {
  final o = api.ErrorInfo();
  buildCounterErrorInfo++;
  if (buildCounterErrorInfo < 3) {
    o.errorMessages = buildUnnamed13();
  }
  buildCounterErrorInfo--;
  return o;
}

void checkErrorInfo(api.ErrorInfo o) {
  buildCounterErrorInfo++;
  if (buildCounterErrorInfo < 3) {
    checkUnnamed13(o.errorMessages!);
  }
  buildCounterErrorInfo--;
}

core.int buildCounterErrorMessage = 0;
api.ErrorMessage buildErrorMessage() {
  final o = api.ErrorMessage();
  buildCounterErrorMessage++;
  if (buildCounterErrorMessage < 3) {
    o.errorMessage = 'foo';
    o.source = buildSource();
  }
  buildCounterErrorMessage--;
  return o;
}

void checkErrorMessage(api.ErrorMessage o) {
  buildCounterErrorMessage++;
  if (buildCounterErrorMessage < 3) {
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    checkSource(o.source!);
  }
  buildCounterErrorMessage--;
}

core.int buildCounterFacetBucket = 0;
api.FacetBucket buildFacetBucket() {
  final o = api.FacetBucket();
  buildCounterFacetBucket++;
  if (buildCounterFacetBucket < 3) {
    o.count = 42;
    o.percentage = 42;
    o.value = buildValue();
  }
  buildCounterFacetBucket--;
  return o;
}

void checkFacetBucket(api.FacetBucket o) {
  buildCounterFacetBucket++;
  if (buildCounterFacetBucket < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.percentage!,
      unittest.equals(42),
    );
    checkValue(o.value!);
  }
  buildCounterFacetBucket--;
}

core.int buildCounterFacetOptions = 0;
api.FacetOptions buildFacetOptions() {
  final o = api.FacetOptions();
  buildCounterFacetOptions++;
  if (buildCounterFacetOptions < 3) {
    o.numFacetBuckets = 42;
    o.objectType = 'foo';
    o.operatorName = 'foo';
    o.sourceName = 'foo';
  }
  buildCounterFacetOptions--;
  return o;
}

void checkFacetOptions(api.FacetOptions o) {
  buildCounterFacetOptions++;
  if (buildCounterFacetOptions < 3) {
    unittest.expect(
      o.numFacetBuckets!,
      unittest.equals(42),
    );
    unittest.expect(
      o.objectType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterFacetOptions--;
}

core.List<api.FacetBucket> buildUnnamed14() => [
      buildFacetBucket(),
      buildFacetBucket(),
    ];

void checkUnnamed14(core.List<api.FacetBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFacetBucket(o[0]);
  checkFacetBucket(o[1]);
}

core.int buildCounterFacetResult = 0;
api.FacetResult buildFacetResult() {
  final o = api.FacetResult();
  buildCounterFacetResult++;
  if (buildCounterFacetResult < 3) {
    o.buckets = buildUnnamed14();
    o.objectType = 'foo';
    o.operatorName = 'foo';
    o.sourceName = 'foo';
  }
  buildCounterFacetResult--;
  return o;
}

void checkFacetResult(api.FacetResult o) {
  buildCounterFacetResult++;
  if (buildCounterFacetResult < 3) {
    checkUnnamed14(o.buckets!);
    unittest.expect(
      o.objectType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterFacetResult--;
}

core.int buildCounterFieldViolation = 0;
api.FieldViolation buildFieldViolation() {
  final o = api.FieldViolation();
  buildCounterFieldViolation++;
  if (buildCounterFieldViolation < 3) {
    o.description = 'foo';
    o.field = 'foo';
  }
  buildCounterFieldViolation--;
  return o;
}

void checkFieldViolation(api.FieldViolation o) {
  buildCounterFieldViolation++;
  if (buildCounterFieldViolation < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
  }
  buildCounterFieldViolation--;
}

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  final o = api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.compositeFilter = buildCompositeFilter();
    o.valueFilter = buildValueFilter();
  }
  buildCounterFilter--;
  return o;
}

void checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    checkCompositeFilter(o.compositeFilter!);
    checkValueFilter(o.valueFilter!);
  }
  buildCounterFilter--;
}

core.int buildCounterFilterOptions = 0;
api.FilterOptions buildFilterOptions() {
  final o = api.FilterOptions();
  buildCounterFilterOptions++;
  if (buildCounterFilterOptions < 3) {
    o.filter = buildFilter();
    o.objectType = 'foo';
  }
  buildCounterFilterOptions--;
  return o;
}

void checkFilterOptions(api.FilterOptions o) {
  buildCounterFilterOptions++;
  if (buildCounterFilterOptions < 3) {
    checkFilter(o.filter!);
    unittest.expect(
      o.objectType!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilterOptions--;
}

core.int buildCounterFreshnessOptions = 0;
api.FreshnessOptions buildFreshnessOptions() {
  final o = api.FreshnessOptions();
  buildCounterFreshnessOptions++;
  if (buildCounterFreshnessOptions < 3) {
    o.freshnessDuration = 'foo';
    o.freshnessProperty = 'foo';
  }
  buildCounterFreshnessOptions--;
  return o;
}

void checkFreshnessOptions(api.FreshnessOptions o) {
  buildCounterFreshnessOptions++;
  if (buildCounterFreshnessOptions < 3) {
    unittest.expect(
      o.freshnessDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.freshnessProperty!,
      unittest.equals('foo'),
    );
  }
  buildCounterFreshnessOptions--;
}

core.int buildCounterGSuitePrincipal = 0;
api.GSuitePrincipal buildGSuitePrincipal() {
  final o = api.GSuitePrincipal();
  buildCounterGSuitePrincipal++;
  if (buildCounterGSuitePrincipal < 3) {
    o.gsuiteDomain = true;
    o.gsuiteGroupEmail = 'foo';
    o.gsuiteUserEmail = 'foo';
  }
  buildCounterGSuitePrincipal--;
  return o;
}

void checkGSuitePrincipal(api.GSuitePrincipal o) {
  buildCounterGSuitePrincipal++;
  if (buildCounterGSuitePrincipal < 3) {
    unittest.expect(o.gsuiteDomain!, unittest.isTrue);
    unittest.expect(
      o.gsuiteGroupEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gsuiteUserEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGSuitePrincipal--;
}

core.List<api.CustomerIndexStats> buildUnnamed15() => [
      buildCustomerIndexStats(),
      buildCustomerIndexStats(),
    ];

void checkUnnamed15(core.List<api.CustomerIndexStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerIndexStats(o[0]);
  checkCustomerIndexStats(o[1]);
}

core.int buildCounterGetCustomerIndexStatsResponse = 0;
api.GetCustomerIndexStatsResponse buildGetCustomerIndexStatsResponse() {
  final o = api.GetCustomerIndexStatsResponse();
  buildCounterGetCustomerIndexStatsResponse++;
  if (buildCounterGetCustomerIndexStatsResponse < 3) {
    o.averageIndexedItemCount = 'foo';
    o.stats = buildUnnamed15();
  }
  buildCounterGetCustomerIndexStatsResponse--;
  return o;
}

void checkGetCustomerIndexStatsResponse(api.GetCustomerIndexStatsResponse o) {
  buildCounterGetCustomerIndexStatsResponse++;
  if (buildCounterGetCustomerIndexStatsResponse < 3) {
    unittest.expect(
      o.averageIndexedItemCount!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.stats!);
  }
  buildCounterGetCustomerIndexStatsResponse--;
}

core.List<api.CustomerQueryStats> buildUnnamed16() => [
      buildCustomerQueryStats(),
      buildCustomerQueryStats(),
    ];

void checkUnnamed16(core.List<api.CustomerQueryStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerQueryStats(o[0]);
  checkCustomerQueryStats(o[1]);
}

core.int buildCounterGetCustomerQueryStatsResponse = 0;
api.GetCustomerQueryStatsResponse buildGetCustomerQueryStatsResponse() {
  final o = api.GetCustomerQueryStatsResponse();
  buildCounterGetCustomerQueryStatsResponse++;
  if (buildCounterGetCustomerQueryStatsResponse < 3) {
    o.stats = buildUnnamed16();
    o.totalQueryCount = 'foo';
  }
  buildCounterGetCustomerQueryStatsResponse--;
  return o;
}

void checkGetCustomerQueryStatsResponse(api.GetCustomerQueryStatsResponse o) {
  buildCounterGetCustomerQueryStatsResponse++;
  if (buildCounterGetCustomerQueryStatsResponse < 3) {
    checkUnnamed16(o.stats!);
    unittest.expect(
      o.totalQueryCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetCustomerQueryStatsResponse--;
}

core.List<api.CustomerSearchApplicationStats> buildUnnamed17() => [
      buildCustomerSearchApplicationStats(),
      buildCustomerSearchApplicationStats(),
    ];

void checkUnnamed17(core.List<api.CustomerSearchApplicationStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerSearchApplicationStats(o[0]);
  checkCustomerSearchApplicationStats(o[1]);
}

core.int buildCounterGetCustomerSearchApplicationStatsResponse = 0;
api.GetCustomerSearchApplicationStatsResponse
    buildGetCustomerSearchApplicationStatsResponse() {
  final o = api.GetCustomerSearchApplicationStatsResponse();
  buildCounterGetCustomerSearchApplicationStatsResponse++;
  if (buildCounterGetCustomerSearchApplicationStatsResponse < 3) {
    o.averageSearchApplicationCount = 'foo';
    o.stats = buildUnnamed17();
  }
  buildCounterGetCustomerSearchApplicationStatsResponse--;
  return o;
}

void checkGetCustomerSearchApplicationStatsResponse(
    api.GetCustomerSearchApplicationStatsResponse o) {
  buildCounterGetCustomerSearchApplicationStatsResponse++;
  if (buildCounterGetCustomerSearchApplicationStatsResponse < 3) {
    unittest.expect(
      o.averageSearchApplicationCount!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.stats!);
  }
  buildCounterGetCustomerSearchApplicationStatsResponse--;
}

core.List<api.CustomerSessionStats> buildUnnamed18() => [
      buildCustomerSessionStats(),
      buildCustomerSessionStats(),
    ];

void checkUnnamed18(core.List<api.CustomerSessionStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerSessionStats(o[0]);
  checkCustomerSessionStats(o[1]);
}

core.int buildCounterGetCustomerSessionStatsResponse = 0;
api.GetCustomerSessionStatsResponse buildGetCustomerSessionStatsResponse() {
  final o = api.GetCustomerSessionStatsResponse();
  buildCounterGetCustomerSessionStatsResponse++;
  if (buildCounterGetCustomerSessionStatsResponse < 3) {
    o.stats = buildUnnamed18();
  }
  buildCounterGetCustomerSessionStatsResponse--;
  return o;
}

void checkGetCustomerSessionStatsResponse(
    api.GetCustomerSessionStatsResponse o) {
  buildCounterGetCustomerSessionStatsResponse++;
  if (buildCounterGetCustomerSessionStatsResponse < 3) {
    checkUnnamed18(o.stats!);
  }
  buildCounterGetCustomerSessionStatsResponse--;
}

core.List<api.CustomerUserStats> buildUnnamed19() => [
      buildCustomerUserStats(),
      buildCustomerUserStats(),
    ];

void checkUnnamed19(core.List<api.CustomerUserStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerUserStats(o[0]);
  checkCustomerUserStats(o[1]);
}

core.int buildCounterGetCustomerUserStatsResponse = 0;
api.GetCustomerUserStatsResponse buildGetCustomerUserStatsResponse() {
  final o = api.GetCustomerUserStatsResponse();
  buildCounterGetCustomerUserStatsResponse++;
  if (buildCounterGetCustomerUserStatsResponse < 3) {
    o.stats = buildUnnamed19();
  }
  buildCounterGetCustomerUserStatsResponse--;
  return o;
}

void checkGetCustomerUserStatsResponse(api.GetCustomerUserStatsResponse o) {
  buildCounterGetCustomerUserStatsResponse++;
  if (buildCounterGetCustomerUserStatsResponse < 3) {
    checkUnnamed19(o.stats!);
  }
  buildCounterGetCustomerUserStatsResponse--;
}

core.List<api.DataSourceIndexStats> buildUnnamed20() => [
      buildDataSourceIndexStats(),
      buildDataSourceIndexStats(),
    ];

void checkUnnamed20(core.List<api.DataSourceIndexStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceIndexStats(o[0]);
  checkDataSourceIndexStats(o[1]);
}

core.int buildCounterGetDataSourceIndexStatsResponse = 0;
api.GetDataSourceIndexStatsResponse buildGetDataSourceIndexStatsResponse() {
  final o = api.GetDataSourceIndexStatsResponse();
  buildCounterGetDataSourceIndexStatsResponse++;
  if (buildCounterGetDataSourceIndexStatsResponse < 3) {
    o.averageIndexedItemCount = 'foo';
    o.stats = buildUnnamed20();
  }
  buildCounterGetDataSourceIndexStatsResponse--;
  return o;
}

void checkGetDataSourceIndexStatsResponse(
    api.GetDataSourceIndexStatsResponse o) {
  buildCounterGetDataSourceIndexStatsResponse++;
  if (buildCounterGetDataSourceIndexStatsResponse < 3) {
    unittest.expect(
      o.averageIndexedItemCount!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.stats!);
  }
  buildCounterGetDataSourceIndexStatsResponse--;
}

core.List<api.SearchApplicationQueryStats> buildUnnamed21() => [
      buildSearchApplicationQueryStats(),
      buildSearchApplicationQueryStats(),
    ];

void checkUnnamed21(core.List<api.SearchApplicationQueryStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchApplicationQueryStats(o[0]);
  checkSearchApplicationQueryStats(o[1]);
}

core.int buildCounterGetSearchApplicationQueryStatsResponse = 0;
api.GetSearchApplicationQueryStatsResponse
    buildGetSearchApplicationQueryStatsResponse() {
  final o = api.GetSearchApplicationQueryStatsResponse();
  buildCounterGetSearchApplicationQueryStatsResponse++;
  if (buildCounterGetSearchApplicationQueryStatsResponse < 3) {
    o.stats = buildUnnamed21();
    o.totalQueryCount = 'foo';
  }
  buildCounterGetSearchApplicationQueryStatsResponse--;
  return o;
}

void checkGetSearchApplicationQueryStatsResponse(
    api.GetSearchApplicationQueryStatsResponse o) {
  buildCounterGetSearchApplicationQueryStatsResponse++;
  if (buildCounterGetSearchApplicationQueryStatsResponse < 3) {
    checkUnnamed21(o.stats!);
    unittest.expect(
      o.totalQueryCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetSearchApplicationQueryStatsResponse--;
}

core.List<api.SearchApplicationSessionStats> buildUnnamed22() => [
      buildSearchApplicationSessionStats(),
      buildSearchApplicationSessionStats(),
    ];

void checkUnnamed22(core.List<api.SearchApplicationSessionStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchApplicationSessionStats(o[0]);
  checkSearchApplicationSessionStats(o[1]);
}

core.int buildCounterGetSearchApplicationSessionStatsResponse = 0;
api.GetSearchApplicationSessionStatsResponse
    buildGetSearchApplicationSessionStatsResponse() {
  final o = api.GetSearchApplicationSessionStatsResponse();
  buildCounterGetSearchApplicationSessionStatsResponse++;
  if (buildCounterGetSearchApplicationSessionStatsResponse < 3) {
    o.stats = buildUnnamed22();
  }
  buildCounterGetSearchApplicationSessionStatsResponse--;
  return o;
}

void checkGetSearchApplicationSessionStatsResponse(
    api.GetSearchApplicationSessionStatsResponse o) {
  buildCounterGetSearchApplicationSessionStatsResponse++;
  if (buildCounterGetSearchApplicationSessionStatsResponse < 3) {
    checkUnnamed22(o.stats!);
  }
  buildCounterGetSearchApplicationSessionStatsResponse--;
}

core.List<api.SearchApplicationUserStats> buildUnnamed23() => [
      buildSearchApplicationUserStats(),
      buildSearchApplicationUserStats(),
    ];

void checkUnnamed23(core.List<api.SearchApplicationUserStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchApplicationUserStats(o[0]);
  checkSearchApplicationUserStats(o[1]);
}

core.int buildCounterGetSearchApplicationUserStatsResponse = 0;
api.GetSearchApplicationUserStatsResponse
    buildGetSearchApplicationUserStatsResponse() {
  final o = api.GetSearchApplicationUserStatsResponse();
  buildCounterGetSearchApplicationUserStatsResponse++;
  if (buildCounterGetSearchApplicationUserStatsResponse < 3) {
    o.stats = buildUnnamed23();
  }
  buildCounterGetSearchApplicationUserStatsResponse--;
  return o;
}

void checkGetSearchApplicationUserStatsResponse(
    api.GetSearchApplicationUserStatsResponse o) {
  buildCounterGetSearchApplicationUserStatsResponse++;
  if (buildCounterGetSearchApplicationUserStatsResponse < 3) {
    checkUnnamed23(o.stats!);
  }
  buildCounterGetSearchApplicationUserStatsResponse--;
}

core.int buildCounterHtmlOperatorOptions = 0;
api.HtmlOperatorOptions buildHtmlOperatorOptions() {
  final o = api.HtmlOperatorOptions();
  buildCounterHtmlOperatorOptions++;
  if (buildCounterHtmlOperatorOptions < 3) {
    o.operatorName = 'foo';
  }
  buildCounterHtmlOperatorOptions--;
  return o;
}

void checkHtmlOperatorOptions(api.HtmlOperatorOptions o) {
  buildCounterHtmlOperatorOptions++;
  if (buildCounterHtmlOperatorOptions < 3) {
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
  }
  buildCounterHtmlOperatorOptions--;
}

core.int buildCounterHtmlPropertyOptions = 0;
api.HtmlPropertyOptions buildHtmlPropertyOptions() {
  final o = api.HtmlPropertyOptions();
  buildCounterHtmlPropertyOptions++;
  if (buildCounterHtmlPropertyOptions < 3) {
    o.operatorOptions = buildHtmlOperatorOptions();
    o.retrievalImportance = buildRetrievalImportance();
  }
  buildCounterHtmlPropertyOptions--;
  return o;
}

void checkHtmlPropertyOptions(api.HtmlPropertyOptions o) {
  buildCounterHtmlPropertyOptions++;
  if (buildCounterHtmlPropertyOptions < 3) {
    checkHtmlOperatorOptions(o.operatorOptions!);
    checkRetrievalImportance(o.retrievalImportance!);
  }
  buildCounterHtmlPropertyOptions--;
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterHtmlValues = 0;
api.HtmlValues buildHtmlValues() {
  final o = api.HtmlValues();
  buildCounterHtmlValues++;
  if (buildCounterHtmlValues < 3) {
    o.values = buildUnnamed24();
  }
  buildCounterHtmlValues--;
  return o;
}

void checkHtmlValues(api.HtmlValues o) {
  buildCounterHtmlValues++;
  if (buildCounterHtmlValues < 3) {
    checkUnnamed24(o.values!);
  }
  buildCounterHtmlValues--;
}

core.int buildCounterIndexItemOptions = 0;
api.IndexItemOptions buildIndexItemOptions() {
  final o = api.IndexItemOptions();
  buildCounterIndexItemOptions++;
  if (buildCounterIndexItemOptions < 3) {
    o.allowUnknownGsuitePrincipals = true;
  }
  buildCounterIndexItemOptions--;
  return o;
}

void checkIndexItemOptions(api.IndexItemOptions o) {
  buildCounterIndexItemOptions++;
  if (buildCounterIndexItemOptions < 3) {
    unittest.expect(o.allowUnknownGsuitePrincipals!, unittest.isTrue);
  }
  buildCounterIndexItemOptions--;
}

core.int buildCounterIndexItemRequest = 0;
api.IndexItemRequest buildIndexItemRequest() {
  final o = api.IndexItemRequest();
  buildCounterIndexItemRequest++;
  if (buildCounterIndexItemRequest < 3) {
    o.connectorName = 'foo';
    o.debugOptions = buildDebugOptions();
    o.indexItemOptions = buildIndexItemOptions();
    o.item = buildItem();
    o.mode = 'foo';
  }
  buildCounterIndexItemRequest--;
  return o;
}

void checkIndexItemRequest(api.IndexItemRequest o) {
  buildCounterIndexItemRequest++;
  if (buildCounterIndexItemRequest < 3) {
    unittest.expect(
      o.connectorName!,
      unittest.equals('foo'),
    );
    checkDebugOptions(o.debugOptions!);
    checkIndexItemOptions(o.indexItemOptions!);
    checkItem(o.item!);
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
  }
  buildCounterIndexItemRequest--;
}

core.int buildCounterInitializeCustomerRequest = 0;
api.InitializeCustomerRequest buildInitializeCustomerRequest() {
  final o = api.InitializeCustomerRequest();
  buildCounterInitializeCustomerRequest++;
  if (buildCounterInitializeCustomerRequest < 3) {}
  buildCounterInitializeCustomerRequest--;
  return o;
}

void checkInitializeCustomerRequest(api.InitializeCustomerRequest o) {
  buildCounterInitializeCustomerRequest++;
  if (buildCounterInitializeCustomerRequest < 3) {}
  buildCounterInitializeCustomerRequest--;
}

core.int buildCounterIntegerOperatorOptions = 0;
api.IntegerOperatorOptions buildIntegerOperatorOptions() {
  final o = api.IntegerOperatorOptions();
  buildCounterIntegerOperatorOptions++;
  if (buildCounterIntegerOperatorOptions < 3) {
    o.greaterThanOperatorName = 'foo';
    o.lessThanOperatorName = 'foo';
    o.operatorName = 'foo';
  }
  buildCounterIntegerOperatorOptions--;
  return o;
}

void checkIntegerOperatorOptions(api.IntegerOperatorOptions o) {
  buildCounterIntegerOperatorOptions++;
  if (buildCounterIntegerOperatorOptions < 3) {
    unittest.expect(
      o.greaterThanOperatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lessThanOperatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
  }
  buildCounterIntegerOperatorOptions--;
}

core.int buildCounterIntegerPropertyOptions = 0;
api.IntegerPropertyOptions buildIntegerPropertyOptions() {
  final o = api.IntegerPropertyOptions();
  buildCounterIntegerPropertyOptions++;
  if (buildCounterIntegerPropertyOptions < 3) {
    o.maximumValue = 'foo';
    o.minimumValue = 'foo';
    o.operatorOptions = buildIntegerOperatorOptions();
    o.orderedRanking = 'foo';
  }
  buildCounterIntegerPropertyOptions--;
  return o;
}

void checkIntegerPropertyOptions(api.IntegerPropertyOptions o) {
  buildCounterIntegerPropertyOptions++;
  if (buildCounterIntegerPropertyOptions < 3) {
    unittest.expect(
      o.maximumValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimumValue!,
      unittest.equals('foo'),
    );
    checkIntegerOperatorOptions(o.operatorOptions!);
    unittest.expect(
      o.orderedRanking!,
      unittest.equals('foo'),
    );
  }
  buildCounterIntegerPropertyOptions--;
}

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.int buildCounterIntegerValues = 0;
api.IntegerValues buildIntegerValues() {
  final o = api.IntegerValues();
  buildCounterIntegerValues++;
  if (buildCounterIntegerValues < 3) {
    o.values = buildUnnamed25();
  }
  buildCounterIntegerValues--;
  return o;
}

void checkIntegerValues(api.IntegerValues o) {
  buildCounterIntegerValues++;
  if (buildCounterIntegerValues < 3) {
    checkUnnamed25(o.values!);
  }
  buildCounterIntegerValues--;
}

core.int buildCounterInteraction = 0;
api.Interaction buildInteraction() {
  final o = api.Interaction();
  buildCounterInteraction++;
  if (buildCounterInteraction < 3) {
    o.interactionTime = 'foo';
    o.principal = buildPrincipal();
    o.type = 'foo';
  }
  buildCounterInteraction--;
  return o;
}

void checkInteraction(api.Interaction o) {
  buildCounterInteraction++;
  if (buildCounterInteraction < 3) {
    unittest.expect(
      o.interactionTime!,
      unittest.equals('foo'),
    );
    checkPrincipal(o.principal!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterInteraction--;
}

core.int buildCounterItem = 0;
api.Item buildItem() {
  final o = api.Item();
  buildCounterItem++;
  if (buildCounterItem < 3) {
    o.acl = buildItemAcl();
    o.content = buildItemContent();
    o.itemType = 'foo';
    o.metadata = buildItemMetadata();
    o.name = 'foo';
    o.payload = 'foo';
    o.queue = 'foo';
    o.status = buildItemStatus();
    o.structuredData = buildItemStructuredData();
    o.version = 'foo';
  }
  buildCounterItem--;
  return o;
}

void checkItem(api.Item o) {
  buildCounterItem++;
  if (buildCounterItem < 3) {
    checkItemAcl(o.acl!);
    checkItemContent(o.content!);
    unittest.expect(
      o.itemType!,
      unittest.equals('foo'),
    );
    checkItemMetadata(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.payload!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.queue!,
      unittest.equals('foo'),
    );
    checkItemStatus(o.status!);
    checkItemStructuredData(o.structuredData!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterItem--;
}

core.List<api.Principal> buildUnnamed26() => [
      buildPrincipal(),
      buildPrincipal(),
    ];

void checkUnnamed26(core.List<api.Principal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrincipal(o[0]);
  checkPrincipal(o[1]);
}

core.List<api.Principal> buildUnnamed27() => [
      buildPrincipal(),
      buildPrincipal(),
    ];

void checkUnnamed27(core.List<api.Principal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrincipal(o[0]);
  checkPrincipal(o[1]);
}

core.List<api.Principal> buildUnnamed28() => [
      buildPrincipal(),
      buildPrincipal(),
    ];

void checkUnnamed28(core.List<api.Principal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrincipal(o[0]);
  checkPrincipal(o[1]);
}

core.int buildCounterItemAcl = 0;
api.ItemAcl buildItemAcl() {
  final o = api.ItemAcl();
  buildCounterItemAcl++;
  if (buildCounterItemAcl < 3) {
    o.aclInheritanceType = 'foo';
    o.deniedReaders = buildUnnamed26();
    o.inheritAclFrom = 'foo';
    o.owners = buildUnnamed27();
    o.readers = buildUnnamed28();
  }
  buildCounterItemAcl--;
  return o;
}

void checkItemAcl(api.ItemAcl o) {
  buildCounterItemAcl++;
  if (buildCounterItemAcl < 3) {
    unittest.expect(
      o.aclInheritanceType!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.deniedReaders!);
    unittest.expect(
      o.inheritAclFrom!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.owners!);
    checkUnnamed28(o.readers!);
  }
  buildCounterItemAcl--;
}

core.int buildCounterItemContent = 0;
api.ItemContent buildItemContent() {
  final o = api.ItemContent();
  buildCounterItemContent++;
  if (buildCounterItemContent < 3) {
    o.contentDataRef = buildUploadItemRef();
    o.contentFormat = 'foo';
    o.hash = 'foo';
    o.inlineContent = 'foo';
  }
  buildCounterItemContent--;
  return o;
}

void checkItemContent(api.ItemContent o) {
  buildCounterItemContent++;
  if (buildCounterItemContent < 3) {
    checkUploadItemRef(o.contentDataRef!);
    unittest.expect(
      o.contentFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inlineContent!,
      unittest.equals('foo'),
    );
  }
  buildCounterItemContent--;
}

core.int buildCounterItemCountByStatus = 0;
api.ItemCountByStatus buildItemCountByStatus() {
  final o = api.ItemCountByStatus();
  buildCounterItemCountByStatus++;
  if (buildCounterItemCountByStatus < 3) {
    o.count = 'foo';
    o.indexedItemsCount = 'foo';
    o.statusCode = 'foo';
  }
  buildCounterItemCountByStatus--;
  return o;
}

void checkItemCountByStatus(api.ItemCountByStatus o) {
  buildCounterItemCountByStatus++;
  if (buildCounterItemCountByStatus < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.indexedItemsCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterItemCountByStatus--;
}

core.List<api.ContextAttribute> buildUnnamed29() => [
      buildContextAttribute(),
      buildContextAttribute(),
    ];

void checkUnnamed29(core.List<api.ContextAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContextAttribute(o[0]);
  checkContextAttribute(o[1]);
}

core.List<api.Interaction> buildUnnamed30() => [
      buildInteraction(),
      buildInteraction(),
    ];

void checkUnnamed30(core.List<api.Interaction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInteraction(o[0]);
  checkInteraction(o[1]);
}

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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

core.int buildCounterItemMetadata = 0;
api.ItemMetadata buildItemMetadata() {
  final o = api.ItemMetadata();
  buildCounterItemMetadata++;
  if (buildCounterItemMetadata < 3) {
    o.containerName = 'foo';
    o.contentLanguage = 'foo';
    o.contextAttributes = buildUnnamed29();
    o.createTime = 'foo';
    o.hash = 'foo';
    o.interactions = buildUnnamed30();
    o.keywords = buildUnnamed31();
    o.mimeType = 'foo';
    o.objectType = 'foo';
    o.searchQualityMetadata = buildSearchQualityMetadata();
    o.sourceRepositoryUrl = 'foo';
    o.title = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterItemMetadata--;
  return o;
}

void checkItemMetadata(api.ItemMetadata o) {
  buildCounterItemMetadata++;
  if (buildCounterItemMetadata < 3) {
    unittest.expect(
      o.containerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentLanguage!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.contextAttributes!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hash!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.interactions!);
    checkUnnamed31(o.keywords!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectType!,
      unittest.equals('foo'),
    );
    checkSearchQualityMetadata(o.searchQualityMetadata!);
    unittest.expect(
      o.sourceRepositoryUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterItemMetadata--;
}

core.List<api.ProcessingError> buildUnnamed32() => [
      buildProcessingError(),
      buildProcessingError(),
    ];

void checkUnnamed32(core.List<api.ProcessingError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProcessingError(o[0]);
  checkProcessingError(o[1]);
}

core.List<api.RepositoryError> buildUnnamed33() => [
      buildRepositoryError(),
      buildRepositoryError(),
    ];

void checkUnnamed33(core.List<api.RepositoryError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepositoryError(o[0]);
  checkRepositoryError(o[1]);
}

core.int buildCounterItemStatus = 0;
api.ItemStatus buildItemStatus() {
  final o = api.ItemStatus();
  buildCounterItemStatus++;
  if (buildCounterItemStatus < 3) {
    o.code = 'foo';
    o.processingErrors = buildUnnamed32();
    o.repositoryErrors = buildUnnamed33();
  }
  buildCounterItemStatus--;
  return o;
}

void checkItemStatus(api.ItemStatus o) {
  buildCounterItemStatus++;
  if (buildCounterItemStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.processingErrors!);
    checkUnnamed33(o.repositoryErrors!);
  }
  buildCounterItemStatus--;
}

core.int buildCounterItemStructuredData = 0;
api.ItemStructuredData buildItemStructuredData() {
  final o = api.ItemStructuredData();
  buildCounterItemStructuredData++;
  if (buildCounterItemStructuredData < 3) {
    o.hash = 'foo';
    o.object = buildStructuredDataObject();
  }
  buildCounterItemStructuredData--;
  return o;
}

void checkItemStructuredData(api.ItemStructuredData o) {
  buildCounterItemStructuredData++;
  if (buildCounterItemStructuredData < 3) {
    unittest.expect(
      o.hash!,
      unittest.equals('foo'),
    );
    checkStructuredDataObject(o.object!);
  }
  buildCounterItemStructuredData--;
}

core.List<api.DataSource> buildUnnamed34() => [
      buildDataSource(),
      buildDataSource(),
    ];

void checkUnnamed34(core.List<api.DataSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSource(o[0]);
  checkDataSource(o[1]);
}

core.int buildCounterListDataSourceResponse = 0;
api.ListDataSourceResponse buildListDataSourceResponse() {
  final o = api.ListDataSourceResponse();
  buildCounterListDataSourceResponse++;
  if (buildCounterListDataSourceResponse < 3) {
    o.nextPageToken = 'foo';
    o.sources = buildUnnamed34();
  }
  buildCounterListDataSourceResponse--;
  return o;
}

void checkListDataSourceResponse(api.ListDataSourceResponse o) {
  buildCounterListDataSourceResponse++;
  if (buildCounterListDataSourceResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.sources!);
  }
  buildCounterListDataSourceResponse--;
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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

core.int buildCounterListItemNamesForUnmappedIdentityResponse = 0;
api.ListItemNamesForUnmappedIdentityResponse
    buildListItemNamesForUnmappedIdentityResponse() {
  final o = api.ListItemNamesForUnmappedIdentityResponse();
  buildCounterListItemNamesForUnmappedIdentityResponse++;
  if (buildCounterListItemNamesForUnmappedIdentityResponse < 3) {
    o.itemNames = buildUnnamed35();
    o.nextPageToken = 'foo';
  }
  buildCounterListItemNamesForUnmappedIdentityResponse--;
  return o;
}

void checkListItemNamesForUnmappedIdentityResponse(
    api.ListItemNamesForUnmappedIdentityResponse o) {
  buildCounterListItemNamesForUnmappedIdentityResponse++;
  if (buildCounterListItemNamesForUnmappedIdentityResponse < 3) {
    checkUnnamed35(o.itemNames!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListItemNamesForUnmappedIdentityResponse--;
}

core.List<api.Item> buildUnnamed36() => [
      buildItem(),
      buildItem(),
    ];

void checkUnnamed36(core.List<api.Item> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItem(o[0]);
  checkItem(o[1]);
}

core.int buildCounterListItemsResponse = 0;
api.ListItemsResponse buildListItemsResponse() {
  final o = api.ListItemsResponse();
  buildCounterListItemsResponse++;
  if (buildCounterListItemsResponse < 3) {
    o.items = buildUnnamed36();
    o.nextPageToken = 'foo';
  }
  buildCounterListItemsResponse--;
  return o;
}

void checkListItemsResponse(api.ListItemsResponse o) {
  buildCounterListItemsResponse++;
  if (buildCounterListItemsResponse < 3) {
    checkUnnamed36(o.items!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListItemsResponse--;
}

core.List<api.Operation> buildUnnamed37() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed37(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed37();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.QuerySource> buildUnnamed38() => [
      buildQuerySource(),
      buildQuerySource(),
    ];

void checkUnnamed38(core.List<api.QuerySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuerySource(o[0]);
  checkQuerySource(o[1]);
}

core.int buildCounterListQuerySourcesResponse = 0;
api.ListQuerySourcesResponse buildListQuerySourcesResponse() {
  final o = api.ListQuerySourcesResponse();
  buildCounterListQuerySourcesResponse++;
  if (buildCounterListQuerySourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sources = buildUnnamed38();
  }
  buildCounterListQuerySourcesResponse--;
  return o;
}

void checkListQuerySourcesResponse(api.ListQuerySourcesResponse o) {
  buildCounterListQuerySourcesResponse++;
  if (buildCounterListQuerySourcesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.sources!);
  }
  buildCounterListQuerySourcesResponse--;
}

core.List<api.SearchApplication> buildUnnamed39() => [
      buildSearchApplication(),
      buildSearchApplication(),
    ];

void checkUnnamed39(core.List<api.SearchApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchApplication(o[0]);
  checkSearchApplication(o[1]);
}

core.int buildCounterListSearchApplicationsResponse = 0;
api.ListSearchApplicationsResponse buildListSearchApplicationsResponse() {
  final o = api.ListSearchApplicationsResponse();
  buildCounterListSearchApplicationsResponse++;
  if (buildCounterListSearchApplicationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.searchApplications = buildUnnamed39();
  }
  buildCounterListSearchApplicationsResponse--;
  return o;
}

void checkListSearchApplicationsResponse(api.ListSearchApplicationsResponse o) {
  buildCounterListSearchApplicationsResponse++;
  if (buildCounterListSearchApplicationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.searchApplications!);
  }
  buildCounterListSearchApplicationsResponse--;
}

core.List<api.UnmappedIdentity> buildUnnamed40() => [
      buildUnmappedIdentity(),
      buildUnmappedIdentity(),
    ];

void checkUnnamed40(core.List<api.UnmappedIdentity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnmappedIdentity(o[0]);
  checkUnmappedIdentity(o[1]);
}

core.int buildCounterListUnmappedIdentitiesResponse = 0;
api.ListUnmappedIdentitiesResponse buildListUnmappedIdentitiesResponse() {
  final o = api.ListUnmappedIdentitiesResponse();
  buildCounterListUnmappedIdentitiesResponse++;
  if (buildCounterListUnmappedIdentitiesResponse < 3) {
    o.nextPageToken = 'foo';
    o.unmappedIdentities = buildUnnamed40();
  }
  buildCounterListUnmappedIdentitiesResponse--;
  return o;
}

void checkListUnmappedIdentitiesResponse(api.ListUnmappedIdentitiesResponse o) {
  buildCounterListUnmappedIdentitiesResponse++;
  if (buildCounterListUnmappedIdentitiesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.unmappedIdentities!);
  }
  buildCounterListUnmappedIdentitiesResponse--;
}

core.int buildCounterMatchRange = 0;
api.MatchRange buildMatchRange() {
  final o = api.MatchRange();
  buildCounterMatchRange++;
  if (buildCounterMatchRange < 3) {
    o.end = 42;
    o.start = 42;
  }
  buildCounterMatchRange--;
  return o;
}

void checkMatchRange(api.MatchRange o) {
  buildCounterMatchRange++;
  if (buildCounterMatchRange < 3) {
    unittest.expect(
      o.end!,
      unittest.equals(42),
    );
    unittest.expect(
      o.start!,
      unittest.equals(42),
    );
  }
  buildCounterMatchRange--;
}

core.int buildCounterMedia = 0;
api.Media buildMedia() {
  final o = api.Media();
  buildCounterMedia++;
  if (buildCounterMedia < 3) {
    o.resourceName = 'foo';
  }
  buildCounterMedia--;
  return o;
}

void checkMedia(api.Media o) {
  buildCounterMedia++;
  if (buildCounterMedia < 3) {
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterMedia--;
}

core.List<api.NamedProperty> buildUnnamed41() => [
      buildNamedProperty(),
      buildNamedProperty(),
    ];

void checkUnnamed41(core.List<api.NamedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedProperty(o[0]);
  checkNamedProperty(o[1]);
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.createTime = 'foo';
    o.displayOptions = buildResultDisplayMetadata();
    o.fields = buildUnnamed41();
    o.mimeType = 'foo';
    o.objectType = 'foo';
    o.owner = buildPerson();
    o.source = buildSource();
    o.thumbnailUrl = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkResultDisplayMetadata(o.displayOptions!);
    checkUnnamed41(o.fields!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectType!,
      unittest.equals('foo'),
    );
    checkPerson(o.owner!);
    checkSource(o.source!);
    unittest.expect(
      o.thumbnailUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetadata--;
}

core.List<api.DisplayedProperty> buildUnnamed42() => [
      buildDisplayedProperty(),
      buildDisplayedProperty(),
    ];

void checkUnnamed42(core.List<api.DisplayedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplayedProperty(o[0]);
  checkDisplayedProperty(o[1]);
}

core.int buildCounterMetaline = 0;
api.Metaline buildMetaline() {
  final o = api.Metaline();
  buildCounterMetaline++;
  if (buildCounterMetaline < 3) {
    o.properties = buildUnnamed42();
  }
  buildCounterMetaline--;
  return o;
}

void checkMetaline(api.Metaline o) {
  buildCounterMetaline++;
  if (buildCounterMetaline < 3) {
    checkUnnamed42(o.properties!);
  }
  buildCounterMetaline--;
}

core.int buildCounterName = 0;
api.Name buildName() {
  final o = api.Name();
  buildCounterName++;
  if (buildCounterName < 3) {
    o.displayName = 'foo';
  }
  buildCounterName--;
  return o;
}

void checkName(api.Name o) {
  buildCounterName++;
  if (buildCounterName < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterName--;
}

core.int buildCounterNamedProperty = 0;
api.NamedProperty buildNamedProperty() {
  final o = api.NamedProperty();
  buildCounterNamedProperty++;
  if (buildCounterNamedProperty < 3) {
    o.booleanValue = true;
    o.dateValues = buildDateValues();
    o.doubleValues = buildDoubleValues();
    o.enumValues = buildEnumValues();
    o.htmlValues = buildHtmlValues();
    o.integerValues = buildIntegerValues();
    o.name = 'foo';
    o.objectValues = buildObjectValues();
    o.textValues = buildTextValues();
    o.timestampValues = buildTimestampValues();
  }
  buildCounterNamedProperty--;
  return o;
}

void checkNamedProperty(api.NamedProperty o) {
  buildCounterNamedProperty++;
  if (buildCounterNamedProperty < 3) {
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkDateValues(o.dateValues!);
    checkDoubleValues(o.doubleValues!);
    checkEnumValues(o.enumValues!);
    checkHtmlValues(o.htmlValues!);
    checkIntegerValues(o.integerValues!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkObjectValues(o.objectValues!);
    checkTextValues(o.textValues!);
    checkTimestampValues(o.timestampValues!);
  }
  buildCounterNamedProperty--;
}

core.List<api.PropertyDefinition> buildUnnamed43() => [
      buildPropertyDefinition(),
      buildPropertyDefinition(),
    ];

void checkUnnamed43(core.List<api.PropertyDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyDefinition(o[0]);
  checkPropertyDefinition(o[1]);
}

core.int buildCounterObjectDefinition = 0;
api.ObjectDefinition buildObjectDefinition() {
  final o = api.ObjectDefinition();
  buildCounterObjectDefinition++;
  if (buildCounterObjectDefinition < 3) {
    o.name = 'foo';
    o.options = buildObjectOptions();
    o.propertyDefinitions = buildUnnamed43();
  }
  buildCounterObjectDefinition--;
  return o;
}

void checkObjectDefinition(api.ObjectDefinition o) {
  buildCounterObjectDefinition++;
  if (buildCounterObjectDefinition < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkObjectOptions(o.options!);
    checkUnnamed43(o.propertyDefinitions!);
  }
  buildCounterObjectDefinition--;
}

core.List<api.Metaline> buildUnnamed44() => [
      buildMetaline(),
      buildMetaline(),
    ];

void checkUnnamed44(core.List<api.Metaline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetaline(o[0]);
  checkMetaline(o[1]);
}

core.int buildCounterObjectDisplayOptions = 0;
api.ObjectDisplayOptions buildObjectDisplayOptions() {
  final o = api.ObjectDisplayOptions();
  buildCounterObjectDisplayOptions++;
  if (buildCounterObjectDisplayOptions < 3) {
    o.metalines = buildUnnamed44();
    o.objectDisplayLabel = 'foo';
  }
  buildCounterObjectDisplayOptions--;
  return o;
}

void checkObjectDisplayOptions(api.ObjectDisplayOptions o) {
  buildCounterObjectDisplayOptions++;
  if (buildCounterObjectDisplayOptions < 3) {
    checkUnnamed44(o.metalines!);
    unittest.expect(
      o.objectDisplayLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterObjectDisplayOptions--;
}

core.List<core.String> buildUnnamed45() => [
      'foo',
      'foo',
    ];

void checkUnnamed45(core.List<core.String> o) {
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

core.int buildCounterObjectOptions = 0;
api.ObjectOptions buildObjectOptions() {
  final o = api.ObjectOptions();
  buildCounterObjectOptions++;
  if (buildCounterObjectOptions < 3) {
    o.displayOptions = buildObjectDisplayOptions();
    o.freshnessOptions = buildFreshnessOptions();
    o.suggestionFilteringOperators = buildUnnamed45();
  }
  buildCounterObjectOptions--;
  return o;
}

void checkObjectOptions(api.ObjectOptions o) {
  buildCounterObjectOptions++;
  if (buildCounterObjectOptions < 3) {
    checkObjectDisplayOptions(o.displayOptions!);
    checkFreshnessOptions(o.freshnessOptions!);
    checkUnnamed45(o.suggestionFilteringOperators!);
  }
  buildCounterObjectOptions--;
}

core.List<api.PropertyDefinition> buildUnnamed46() => [
      buildPropertyDefinition(),
      buildPropertyDefinition(),
    ];

void checkUnnamed46(core.List<api.PropertyDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyDefinition(o[0]);
  checkPropertyDefinition(o[1]);
}

core.int buildCounterObjectPropertyOptions = 0;
api.ObjectPropertyOptions buildObjectPropertyOptions() {
  final o = api.ObjectPropertyOptions();
  buildCounterObjectPropertyOptions++;
  if (buildCounterObjectPropertyOptions < 3) {
    o.subobjectProperties = buildUnnamed46();
  }
  buildCounterObjectPropertyOptions--;
  return o;
}

void checkObjectPropertyOptions(api.ObjectPropertyOptions o) {
  buildCounterObjectPropertyOptions++;
  if (buildCounterObjectPropertyOptions < 3) {
    checkUnnamed46(o.subobjectProperties!);
  }
  buildCounterObjectPropertyOptions--;
}

core.List<api.StructuredDataObject> buildUnnamed47() => [
      buildStructuredDataObject(),
      buildStructuredDataObject(),
    ];

void checkUnnamed47(core.List<api.StructuredDataObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuredDataObject(o[0]);
  checkStructuredDataObject(o[1]);
}

core.int buildCounterObjectValues = 0;
api.ObjectValues buildObjectValues() {
  final o = api.ObjectValues();
  buildCounterObjectValues++;
  if (buildCounterObjectValues < 3) {
    o.values = buildUnnamed47();
  }
  buildCounterObjectValues--;
  return o;
}

void checkObjectValues(api.ObjectValues o) {
  buildCounterObjectValues++;
  if (buildCounterObjectValues < 3) {
    checkUnnamed47(o.values!);
  }
  buildCounterObjectValues--;
}

core.Map<core.String, core.Object?> buildUnnamed48() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed48(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
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
  var casted2 = (o['y']!) as core.Map;
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

core.Map<core.String, core.Object?> buildUnnamed49() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed49(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
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
  var casted4 = (o['y']!) as core.Map;
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed48();
    o.name = 'foo';
    o.response = buildUnnamed49();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed48(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPeopleSuggestion = 0;
api.PeopleSuggestion buildPeopleSuggestion() {
  final o = api.PeopleSuggestion();
  buildCounterPeopleSuggestion++;
  if (buildCounterPeopleSuggestion < 3) {
    o.person = buildPerson();
  }
  buildCounterPeopleSuggestion--;
  return o;
}

void checkPeopleSuggestion(api.PeopleSuggestion o) {
  buildCounterPeopleSuggestion++;
  if (buildCounterPeopleSuggestion < 3) {
    checkPerson(o.person!);
  }
  buildCounterPeopleSuggestion--;
}

core.List<api.EmailAddress> buildUnnamed50() => [
      buildEmailAddress(),
      buildEmailAddress(),
    ];

void checkUnnamed50(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0]);
  checkEmailAddress(o[1]);
}

core.List<api.Name> buildUnnamed51() => [
      buildName(),
      buildName(),
    ];

void checkUnnamed51(core.List<api.Name> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkName(o[0]);
  checkName(o[1]);
}

core.List<api.PhoneNumber> buildUnnamed52() => [
      buildPhoneNumber(),
      buildPhoneNumber(),
    ];

void checkUnnamed52(core.List<api.PhoneNumber> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoneNumber(o[0]);
  checkPhoneNumber(o[1]);
}

core.List<api.Photo> buildUnnamed53() => [
      buildPhoto(),
      buildPhoto(),
    ];

void checkUnnamed53(core.List<api.Photo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoto(o[0]);
  checkPhoto(o[1]);
}

core.int buildCounterPerson = 0;
api.Person buildPerson() {
  final o = api.Person();
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    o.emailAddresses = buildUnnamed50();
    o.name = 'foo';
    o.obfuscatedId = 'foo';
    o.personNames = buildUnnamed51();
    o.phoneNumbers = buildUnnamed52();
    o.photos = buildUnnamed53();
  }
  buildCounterPerson--;
  return o;
}

void checkPerson(api.Person o) {
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    checkUnnamed50(o.emailAddresses!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedId!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.personNames!);
    checkUnnamed52(o.phoneNumbers!);
    checkUnnamed53(o.photos!);
  }
  buildCounterPerson--;
}

core.int buildCounterPhoneNumber = 0;
api.PhoneNumber buildPhoneNumber() {
  final o = api.PhoneNumber();
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    o.phoneNumber = 'foo';
    o.type = 'foo';
  }
  buildCounterPhoneNumber--;
  return o;
}

void checkPhoneNumber(api.PhoneNumber o) {
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhoneNumber--;
}

core.int buildCounterPhoto = 0;
api.Photo buildPhoto() {
  final o = api.Photo();
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    o.url = 'foo';
  }
  buildCounterPhoto--;
  return o;
}

void checkPhoto(api.Photo o) {
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhoto--;
}

core.List<core.String> buildUnnamed54() => [
      'foo',
      'foo',
    ];

void checkUnnamed54(core.List<core.String> o) {
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

core.int buildCounterPollItemsRequest = 0;
api.PollItemsRequest buildPollItemsRequest() {
  final o = api.PollItemsRequest();
  buildCounterPollItemsRequest++;
  if (buildCounterPollItemsRequest < 3) {
    o.connectorName = 'foo';
    o.debugOptions = buildDebugOptions();
    o.limit = 42;
    o.queue = 'foo';
    o.statusCodes = buildUnnamed54();
  }
  buildCounterPollItemsRequest--;
  return o;
}

void checkPollItemsRequest(api.PollItemsRequest o) {
  buildCounterPollItemsRequest++;
  if (buildCounterPollItemsRequest < 3) {
    unittest.expect(
      o.connectorName!,
      unittest.equals('foo'),
    );
    checkDebugOptions(o.debugOptions!);
    unittest.expect(
      o.limit!,
      unittest.equals(42),
    );
    unittest.expect(
      o.queue!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.statusCodes!);
  }
  buildCounterPollItemsRequest--;
}

core.List<api.Item> buildUnnamed55() => [
      buildItem(),
      buildItem(),
    ];

void checkUnnamed55(core.List<api.Item> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItem(o[0]);
  checkItem(o[1]);
}

core.int buildCounterPollItemsResponse = 0;
api.PollItemsResponse buildPollItemsResponse() {
  final o = api.PollItemsResponse();
  buildCounterPollItemsResponse++;
  if (buildCounterPollItemsResponse < 3) {
    o.items = buildUnnamed55();
  }
  buildCounterPollItemsResponse--;
  return o;
}

void checkPollItemsResponse(api.PollItemsResponse o) {
  buildCounterPollItemsResponse++;
  if (buildCounterPollItemsResponse < 3) {
    checkUnnamed55(o.items!);
  }
  buildCounterPollItemsResponse--;
}

core.int buildCounterPrincipal = 0;
api.Principal buildPrincipal() {
  final o = api.Principal();
  buildCounterPrincipal++;
  if (buildCounterPrincipal < 3) {
    o.groupResourceName = 'foo';
    o.gsuitePrincipal = buildGSuitePrincipal();
    o.userResourceName = 'foo';
  }
  buildCounterPrincipal--;
  return o;
}

void checkPrincipal(api.Principal o) {
  buildCounterPrincipal++;
  if (buildCounterPrincipal < 3) {
    unittest.expect(
      o.groupResourceName!,
      unittest.equals('foo'),
    );
    checkGSuitePrincipal(o.gsuitePrincipal!);
    unittest.expect(
      o.userResourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrincipal--;
}

core.List<api.FieldViolation> buildUnnamed56() => [
      buildFieldViolation(),
      buildFieldViolation(),
    ];

void checkUnnamed56(core.List<api.FieldViolation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldViolation(o[0]);
  checkFieldViolation(o[1]);
}

core.int buildCounterProcessingError = 0;
api.ProcessingError buildProcessingError() {
  final o = api.ProcessingError();
  buildCounterProcessingError++;
  if (buildCounterProcessingError < 3) {
    o.code = 'foo';
    o.errorMessage = 'foo';
    o.fieldViolations = buildUnnamed56();
  }
  buildCounterProcessingError--;
  return o;
}

void checkProcessingError(api.ProcessingError o) {
  buildCounterProcessingError++;
  if (buildCounterProcessingError < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.fieldViolations!);
  }
  buildCounterProcessingError--;
}

core.int buildCounterPropertyDefinition = 0;
api.PropertyDefinition buildPropertyDefinition() {
  final o = api.PropertyDefinition();
  buildCounterPropertyDefinition++;
  if (buildCounterPropertyDefinition < 3) {
    o.booleanPropertyOptions = buildBooleanPropertyOptions();
    o.datePropertyOptions = buildDatePropertyOptions();
    o.displayOptions = buildPropertyDisplayOptions();
    o.doublePropertyOptions = buildDoublePropertyOptions();
    o.enumPropertyOptions = buildEnumPropertyOptions();
    o.htmlPropertyOptions = buildHtmlPropertyOptions();
    o.integerPropertyOptions = buildIntegerPropertyOptions();
    o.isFacetable = true;
    o.isRepeatable = true;
    o.isReturnable = true;
    o.isSortable = true;
    o.isSuggestable = true;
    o.isWildcardSearchable = true;
    o.name = 'foo';
    o.objectPropertyOptions = buildObjectPropertyOptions();
    o.textPropertyOptions = buildTextPropertyOptions();
    o.timestampPropertyOptions = buildTimestampPropertyOptions();
  }
  buildCounterPropertyDefinition--;
  return o;
}

void checkPropertyDefinition(api.PropertyDefinition o) {
  buildCounterPropertyDefinition++;
  if (buildCounterPropertyDefinition < 3) {
    checkBooleanPropertyOptions(o.booleanPropertyOptions!);
    checkDatePropertyOptions(o.datePropertyOptions!);
    checkPropertyDisplayOptions(o.displayOptions!);
    checkDoublePropertyOptions(o.doublePropertyOptions!);
    checkEnumPropertyOptions(o.enumPropertyOptions!);
    checkHtmlPropertyOptions(o.htmlPropertyOptions!);
    checkIntegerPropertyOptions(o.integerPropertyOptions!);
    unittest.expect(o.isFacetable!, unittest.isTrue);
    unittest.expect(o.isRepeatable!, unittest.isTrue);
    unittest.expect(o.isReturnable!, unittest.isTrue);
    unittest.expect(o.isSortable!, unittest.isTrue);
    unittest.expect(o.isSuggestable!, unittest.isTrue);
    unittest.expect(o.isWildcardSearchable!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkObjectPropertyOptions(o.objectPropertyOptions!);
    checkTextPropertyOptions(o.textPropertyOptions!);
    checkTimestampPropertyOptions(o.timestampPropertyOptions!);
  }
  buildCounterPropertyDefinition--;
}

core.int buildCounterPropertyDisplayOptions = 0;
api.PropertyDisplayOptions buildPropertyDisplayOptions() {
  final o = api.PropertyDisplayOptions();
  buildCounterPropertyDisplayOptions++;
  if (buildCounterPropertyDisplayOptions < 3) {
    o.displayLabel = 'foo';
  }
  buildCounterPropertyDisplayOptions--;
  return o;
}

void checkPropertyDisplayOptions(api.PropertyDisplayOptions o) {
  buildCounterPropertyDisplayOptions++;
  if (buildCounterPropertyDisplayOptions < 3) {
    unittest.expect(
      o.displayLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterPropertyDisplayOptions--;
}

core.int buildCounterPushItem = 0;
api.PushItem buildPushItem() {
  final o = api.PushItem();
  buildCounterPushItem++;
  if (buildCounterPushItem < 3) {
    o.contentHash = 'foo';
    o.metadataHash = 'foo';
    o.payload = 'foo';
    o.queue = 'foo';
    o.repositoryError = buildRepositoryError();
    o.structuredDataHash = 'foo';
    o.type = 'foo';
  }
  buildCounterPushItem--;
  return o;
}

void checkPushItem(api.PushItem o) {
  buildCounterPushItem++;
  if (buildCounterPushItem < 3) {
    unittest.expect(
      o.contentHash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metadataHash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.payload!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.queue!,
      unittest.equals('foo'),
    );
    checkRepositoryError(o.repositoryError!);
    unittest.expect(
      o.structuredDataHash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterPushItem--;
}

core.int buildCounterPushItemRequest = 0;
api.PushItemRequest buildPushItemRequest() {
  final o = api.PushItemRequest();
  buildCounterPushItemRequest++;
  if (buildCounterPushItemRequest < 3) {
    o.connectorName = 'foo';
    o.debugOptions = buildDebugOptions();
    o.item = buildPushItem();
  }
  buildCounterPushItemRequest--;
  return o;
}

void checkPushItemRequest(api.PushItemRequest o) {
  buildCounterPushItemRequest++;
  if (buildCounterPushItemRequest < 3) {
    unittest.expect(
      o.connectorName!,
      unittest.equals('foo'),
    );
    checkDebugOptions(o.debugOptions!);
    checkPushItem(o.item!);
  }
  buildCounterPushItemRequest--;
}

core.int buildCounterQueryCountByStatus = 0;
api.QueryCountByStatus buildQueryCountByStatus() {
  final o = api.QueryCountByStatus();
  buildCounterQueryCountByStatus++;
  if (buildCounterQueryCountByStatus < 3) {
    o.count = 'foo';
    o.statusCode = 42;
  }
  buildCounterQueryCountByStatus--;
  return o;
}

void checkQueryCountByStatus(api.QueryCountByStatus o) {
  buildCounterQueryCountByStatus++;
  if (buildCounterQueryCountByStatus < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusCode!,
      unittest.equals(42),
    );
  }
  buildCounterQueryCountByStatus--;
}

core.int buildCounterQueryInterpretation = 0;
api.QueryInterpretation buildQueryInterpretation() {
  final o = api.QueryInterpretation();
  buildCounterQueryInterpretation++;
  if (buildCounterQueryInterpretation < 3) {
    o.interpretationType = 'foo';
    o.interpretedQuery = 'foo';
    o.reason = 'foo';
  }
  buildCounterQueryInterpretation--;
  return o;
}

void checkQueryInterpretation(api.QueryInterpretation o) {
  buildCounterQueryInterpretation++;
  if (buildCounterQueryInterpretation < 3) {
    unittest.expect(
      o.interpretationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.interpretedQuery!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryInterpretation--;
}

core.int buildCounterQueryInterpretationConfig = 0;
api.QueryInterpretationConfig buildQueryInterpretationConfig() {
  final o = api.QueryInterpretationConfig();
  buildCounterQueryInterpretationConfig++;
  if (buildCounterQueryInterpretationConfig < 3) {
    o.forceDisableSupplementalResults = true;
    o.forceVerbatimMode = true;
  }
  buildCounterQueryInterpretationConfig--;
  return o;
}

void checkQueryInterpretationConfig(api.QueryInterpretationConfig o) {
  buildCounterQueryInterpretationConfig++;
  if (buildCounterQueryInterpretationConfig < 3) {
    unittest.expect(o.forceDisableSupplementalResults!, unittest.isTrue);
    unittest.expect(o.forceVerbatimMode!, unittest.isTrue);
  }
  buildCounterQueryInterpretationConfig--;
}

core.int buildCounterQueryInterpretationOptions = 0;
api.QueryInterpretationOptions buildQueryInterpretationOptions() {
  final o = api.QueryInterpretationOptions();
  buildCounterQueryInterpretationOptions++;
  if (buildCounterQueryInterpretationOptions < 3) {
    o.disableNlInterpretation = true;
    o.disableSupplementalResults = true;
    o.enableVerbatimMode = true;
  }
  buildCounterQueryInterpretationOptions--;
  return o;
}

void checkQueryInterpretationOptions(api.QueryInterpretationOptions o) {
  buildCounterQueryInterpretationOptions++;
  if (buildCounterQueryInterpretationOptions < 3) {
    unittest.expect(o.disableNlInterpretation!, unittest.isTrue);
    unittest.expect(o.disableSupplementalResults!, unittest.isTrue);
    unittest.expect(o.enableVerbatimMode!, unittest.isTrue);
  }
  buildCounterQueryInterpretationOptions--;
}

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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

core.int buildCounterQueryOperator = 0;
api.QueryOperator buildQueryOperator() {
  final o = api.QueryOperator();
  buildCounterQueryOperator++;
  if (buildCounterQueryOperator < 3) {
    o.displayName = 'foo';
    o.enumValues = buildUnnamed57();
    o.greaterThanOperatorName = 'foo';
    o.isFacetable = true;
    o.isRepeatable = true;
    o.isReturnable = true;
    o.isSortable = true;
    o.isSuggestable = true;
    o.lessThanOperatorName = 'foo';
    o.objectType = 'foo';
    o.operatorName = 'foo';
    o.type = 'foo';
  }
  buildCounterQueryOperator--;
  return o;
}

void checkQueryOperator(api.QueryOperator o) {
  buildCounterQueryOperator++;
  if (buildCounterQueryOperator < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed57(o.enumValues!);
    unittest.expect(
      o.greaterThanOperatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isFacetable!, unittest.isTrue);
    unittest.expect(o.isRepeatable!, unittest.isTrue);
    unittest.expect(o.isReturnable!, unittest.isTrue);
    unittest.expect(o.isSortable!, unittest.isTrue);
    unittest.expect(o.isSuggestable!, unittest.isTrue);
    unittest.expect(
      o.lessThanOperatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryOperator--;
}

core.List<api.QueryOperator> buildUnnamed58() => [
      buildQueryOperator(),
      buildQueryOperator(),
    ];

void checkUnnamed58(core.List<api.QueryOperator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryOperator(o[0]);
  checkQueryOperator(o[1]);
}

core.int buildCounterQuerySource = 0;
api.QuerySource buildQuerySource() {
  final o = api.QuerySource();
  buildCounterQuerySource++;
  if (buildCounterQuerySource < 3) {
    o.displayName = 'foo';
    o.operators = buildUnnamed58();
    o.shortName = 'foo';
    o.source = buildSource();
  }
  buildCounterQuerySource--;
  return o;
}

void checkQuerySource(api.QuerySource o) {
  buildCounterQuerySource++;
  if (buildCounterQuerySource < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed58(o.operators!);
    unittest.expect(
      o.shortName!,
      unittest.equals('foo'),
    );
    checkSource(o.source!);
  }
  buildCounterQuerySource--;
}

core.int buildCounterQuerySuggestion = 0;
api.QuerySuggestion buildQuerySuggestion() {
  final o = api.QuerySuggestion();
  buildCounterQuerySuggestion++;
  if (buildCounterQuerySuggestion < 3) {}
  buildCounterQuerySuggestion--;
  return o;
}

void checkQuerySuggestion(api.QuerySuggestion o) {
  buildCounterQuerySuggestion++;
  if (buildCounterQuerySuggestion < 3) {}
  buildCounterQuerySuggestion--;
}

core.int buildCounterRepositoryError = 0;
api.RepositoryError buildRepositoryError() {
  final o = api.RepositoryError();
  buildCounterRepositoryError++;
  if (buildCounterRepositoryError < 3) {
    o.errorMessage = 'foo';
    o.httpStatusCode = 42;
    o.type = 'foo';
  }
  buildCounterRepositoryError--;
  return o;
}

void checkRepositoryError(api.RepositoryError o) {
  buildCounterRepositoryError++;
  if (buildCounterRepositoryError < 3) {
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.httpStatusCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepositoryError--;
}

core.int buildCounterRequestOptions = 0;
api.RequestOptions buildRequestOptions() {
  final o = api.RequestOptions();
  buildCounterRequestOptions++;
  if (buildCounterRequestOptions < 3) {
    o.debugOptions = buildDebugOptions();
    o.languageCode = 'foo';
    o.searchApplicationId = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterRequestOptions--;
  return o;
}

void checkRequestOptions(api.RequestOptions o) {
  buildCounterRequestOptions++;
  if (buildCounterRequestOptions < 3) {
    checkDebugOptions(o.debugOptions!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchApplicationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterRequestOptions--;
}

core.int buildCounterResetSearchApplicationRequest = 0;
api.ResetSearchApplicationRequest buildResetSearchApplicationRequest() {
  final o = api.ResetSearchApplicationRequest();
  buildCounterResetSearchApplicationRequest++;
  if (buildCounterResetSearchApplicationRequest < 3) {
    o.debugOptions = buildDebugOptions();
  }
  buildCounterResetSearchApplicationRequest--;
  return o;
}

void checkResetSearchApplicationRequest(api.ResetSearchApplicationRequest o) {
  buildCounterResetSearchApplicationRequest++;
  if (buildCounterResetSearchApplicationRequest < 3) {
    checkDebugOptions(o.debugOptions!);
  }
  buildCounterResetSearchApplicationRequest--;
}

core.int buildCounterResponseDebugInfo = 0;
api.ResponseDebugInfo buildResponseDebugInfo() {
  final o = api.ResponseDebugInfo();
  buildCounterResponseDebugInfo++;
  if (buildCounterResponseDebugInfo < 3) {
    o.formattedDebugInfo = 'foo';
  }
  buildCounterResponseDebugInfo--;
  return o;
}

void checkResponseDebugInfo(api.ResponseDebugInfo o) {
  buildCounterResponseDebugInfo++;
  if (buildCounterResponseDebugInfo < 3) {
    unittest.expect(
      o.formattedDebugInfo!,
      unittest.equals('foo'),
    );
  }
  buildCounterResponseDebugInfo--;
}

core.List<api.SourceResultCount> buildUnnamed59() => [
      buildSourceResultCount(),
      buildSourceResultCount(),
    ];

void checkUnnamed59(core.List<api.SourceResultCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceResultCount(o[0]);
  checkSourceResultCount(o[1]);
}

core.int buildCounterResultCounts = 0;
api.ResultCounts buildResultCounts() {
  final o = api.ResultCounts();
  buildCounterResultCounts++;
  if (buildCounterResultCounts < 3) {
    o.sourceResultCounts = buildUnnamed59();
  }
  buildCounterResultCounts--;
  return o;
}

void checkResultCounts(api.ResultCounts o) {
  buildCounterResultCounts++;
  if (buildCounterResultCounts < 3) {
    checkUnnamed59(o.sourceResultCounts!);
  }
  buildCounterResultCounts--;
}

core.int buildCounterResultDebugInfo = 0;
api.ResultDebugInfo buildResultDebugInfo() {
  final o = api.ResultDebugInfo();
  buildCounterResultDebugInfo++;
  if (buildCounterResultDebugInfo < 3) {
    o.formattedDebugInfo = 'foo';
  }
  buildCounterResultDebugInfo--;
  return o;
}

void checkResultDebugInfo(api.ResultDebugInfo o) {
  buildCounterResultDebugInfo++;
  if (buildCounterResultDebugInfo < 3) {
    unittest.expect(
      o.formattedDebugInfo!,
      unittest.equals('foo'),
    );
  }
  buildCounterResultDebugInfo--;
}

core.int buildCounterResultDisplayField = 0;
api.ResultDisplayField buildResultDisplayField() {
  final o = api.ResultDisplayField();
  buildCounterResultDisplayField++;
  if (buildCounterResultDisplayField < 3) {
    o.label = 'foo';
    o.operatorName = 'foo';
    o.property = buildNamedProperty();
  }
  buildCounterResultDisplayField--;
  return o;
}

void checkResultDisplayField(api.ResultDisplayField o) {
  buildCounterResultDisplayField++;
  if (buildCounterResultDisplayField < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
    checkNamedProperty(o.property!);
  }
  buildCounterResultDisplayField--;
}

core.List<api.ResultDisplayField> buildUnnamed60() => [
      buildResultDisplayField(),
      buildResultDisplayField(),
    ];

void checkUnnamed60(core.List<api.ResultDisplayField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultDisplayField(o[0]);
  checkResultDisplayField(o[1]);
}

core.int buildCounterResultDisplayLine = 0;
api.ResultDisplayLine buildResultDisplayLine() {
  final o = api.ResultDisplayLine();
  buildCounterResultDisplayLine++;
  if (buildCounterResultDisplayLine < 3) {
    o.fields = buildUnnamed60();
  }
  buildCounterResultDisplayLine--;
  return o;
}

void checkResultDisplayLine(api.ResultDisplayLine o) {
  buildCounterResultDisplayLine++;
  if (buildCounterResultDisplayLine < 3) {
    checkUnnamed60(o.fields!);
  }
  buildCounterResultDisplayLine--;
}

core.List<api.ResultDisplayLine> buildUnnamed61() => [
      buildResultDisplayLine(),
      buildResultDisplayLine(),
    ];

void checkUnnamed61(core.List<api.ResultDisplayLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultDisplayLine(o[0]);
  checkResultDisplayLine(o[1]);
}

core.int buildCounterResultDisplayMetadata = 0;
api.ResultDisplayMetadata buildResultDisplayMetadata() {
  final o = api.ResultDisplayMetadata();
  buildCounterResultDisplayMetadata++;
  if (buildCounterResultDisplayMetadata < 3) {
    o.metalines = buildUnnamed61();
    o.objectTypeLabel = 'foo';
  }
  buildCounterResultDisplayMetadata--;
  return o;
}

void checkResultDisplayMetadata(api.ResultDisplayMetadata o) {
  buildCounterResultDisplayMetadata++;
  if (buildCounterResultDisplayMetadata < 3) {
    checkUnnamed61(o.metalines!);
    unittest.expect(
      o.objectTypeLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterResultDisplayMetadata--;
}

core.int buildCounterRetrievalImportance = 0;
api.RetrievalImportance buildRetrievalImportance() {
  final o = api.RetrievalImportance();
  buildCounterRetrievalImportance++;
  if (buildCounterRetrievalImportance < 3) {
    o.importance = 'foo';
  }
  buildCounterRetrievalImportance--;
  return o;
}

void checkRetrievalImportance(api.RetrievalImportance o) {
  buildCounterRetrievalImportance++;
  if (buildCounterRetrievalImportance < 3) {
    unittest.expect(
      o.importance!,
      unittest.equals('foo'),
    );
  }
  buildCounterRetrievalImportance--;
}

core.List<api.ObjectDefinition> buildUnnamed62() => [
      buildObjectDefinition(),
      buildObjectDefinition(),
    ];

void checkUnnamed62(core.List<api.ObjectDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectDefinition(o[0]);
  checkObjectDefinition(o[1]);
}

core.List<core.String> buildUnnamed63() => [
      'foo',
      'foo',
    ];

void checkUnnamed63(core.List<core.String> o) {
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

core.int buildCounterSchema = 0;
api.Schema buildSchema() {
  final o = api.Schema();
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    o.objectDefinitions = buildUnnamed62();
    o.operationIds = buildUnnamed63();
  }
  buildCounterSchema--;
  return o;
}

void checkSchema(api.Schema o) {
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    checkUnnamed62(o.objectDefinitions!);
    checkUnnamed63(o.operationIds!);
  }
  buildCounterSchema--;
}

core.int buildCounterScoringConfig = 0;
api.ScoringConfig buildScoringConfig() {
  final o = api.ScoringConfig();
  buildCounterScoringConfig++;
  if (buildCounterScoringConfig < 3) {
    o.disableFreshness = true;
    o.disablePersonalization = true;
  }
  buildCounterScoringConfig--;
  return o;
}

void checkScoringConfig(api.ScoringConfig o) {
  buildCounterScoringConfig++;
  if (buildCounterScoringConfig < 3) {
    unittest.expect(o.disableFreshness!, unittest.isTrue);
    unittest.expect(o.disablePersonalization!, unittest.isTrue);
  }
  buildCounterScoringConfig--;
}

core.List<api.DataSourceRestriction> buildUnnamed64() => [
      buildDataSourceRestriction(),
      buildDataSourceRestriction(),
    ];

void checkUnnamed64(core.List<api.DataSourceRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceRestriction(o[0]);
  checkDataSourceRestriction(o[1]);
}

core.List<api.FacetOptions> buildUnnamed65() => [
      buildFacetOptions(),
      buildFacetOptions(),
    ];

void checkUnnamed65(core.List<api.FacetOptions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFacetOptions(o[0]);
  checkFacetOptions(o[1]);
}

core.List<core.String> buildUnnamed66() => [
      'foo',
      'foo',
    ];

void checkUnnamed66(core.List<core.String> o) {
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

core.List<api.SourceConfig> buildUnnamed67() => [
      buildSourceConfig(),
      buildSourceConfig(),
    ];

void checkUnnamed67(core.List<api.SourceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceConfig(o[0]);
  checkSourceConfig(o[1]);
}

core.int buildCounterSearchApplication = 0;
api.SearchApplication buildSearchApplication() {
  final o = api.SearchApplication();
  buildCounterSearchApplication++;
  if (buildCounterSearchApplication < 3) {
    o.dataSourceRestrictions = buildUnnamed64();
    o.defaultFacetOptions = buildUnnamed65();
    o.defaultSortOptions = buildSortOptions();
    o.displayName = 'foo';
    o.enableAuditLog = true;
    o.name = 'foo';
    o.operationIds = buildUnnamed66();
    o.queryInterpretationConfig = buildQueryInterpretationConfig();
    o.returnResultThumbnailUrls = true;
    o.scoringConfig = buildScoringConfig();
    o.sourceConfig = buildUnnamed67();
  }
  buildCounterSearchApplication--;
  return o;
}

void checkSearchApplication(api.SearchApplication o) {
  buildCounterSearchApplication++;
  if (buildCounterSearchApplication < 3) {
    checkUnnamed64(o.dataSourceRestrictions!);
    checkUnnamed65(o.defaultFacetOptions!);
    checkSortOptions(o.defaultSortOptions!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableAuditLog!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed66(o.operationIds!);
    checkQueryInterpretationConfig(o.queryInterpretationConfig!);
    unittest.expect(o.returnResultThumbnailUrls!, unittest.isTrue);
    checkScoringConfig(o.scoringConfig!);
    checkUnnamed67(o.sourceConfig!);
  }
  buildCounterSearchApplication--;
}

core.List<api.QueryCountByStatus> buildUnnamed68() => [
      buildQueryCountByStatus(),
      buildQueryCountByStatus(),
    ];

void checkUnnamed68(core.List<api.QueryCountByStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryCountByStatus(o[0]);
  checkQueryCountByStatus(o[1]);
}

core.int buildCounterSearchApplicationQueryStats = 0;
api.SearchApplicationQueryStats buildSearchApplicationQueryStats() {
  final o = api.SearchApplicationQueryStats();
  buildCounterSearchApplicationQueryStats++;
  if (buildCounterSearchApplicationQueryStats < 3) {
    o.date = buildDate();
    o.queryCountByStatus = buildUnnamed68();
  }
  buildCounterSearchApplicationQueryStats--;
  return o;
}

void checkSearchApplicationQueryStats(api.SearchApplicationQueryStats o) {
  buildCounterSearchApplicationQueryStats++;
  if (buildCounterSearchApplicationQueryStats < 3) {
    checkDate(o.date!);
    checkUnnamed68(o.queryCountByStatus!);
  }
  buildCounterSearchApplicationQueryStats--;
}

core.int buildCounterSearchApplicationSessionStats = 0;
api.SearchApplicationSessionStats buildSearchApplicationSessionStats() {
  final o = api.SearchApplicationSessionStats();
  buildCounterSearchApplicationSessionStats++;
  if (buildCounterSearchApplicationSessionStats < 3) {
    o.date = buildDate();
    o.searchSessionsCount = 'foo';
  }
  buildCounterSearchApplicationSessionStats--;
  return o;
}

void checkSearchApplicationSessionStats(api.SearchApplicationSessionStats o) {
  buildCounterSearchApplicationSessionStats++;
  if (buildCounterSearchApplicationSessionStats < 3) {
    checkDate(o.date!);
    unittest.expect(
      o.searchSessionsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchApplicationSessionStats--;
}

core.int buildCounterSearchApplicationUserStats = 0;
api.SearchApplicationUserStats buildSearchApplicationUserStats() {
  final o = api.SearchApplicationUserStats();
  buildCounterSearchApplicationUserStats++;
  if (buildCounterSearchApplicationUserStats < 3) {
    o.date = buildDate();
    o.oneDayActiveUsersCount = 'foo';
    o.sevenDaysActiveUsersCount = 'foo';
    o.thirtyDaysActiveUsersCount = 'foo';
  }
  buildCounterSearchApplicationUserStats--;
  return o;
}

void checkSearchApplicationUserStats(api.SearchApplicationUserStats o) {
  buildCounterSearchApplicationUserStats++;
  if (buildCounterSearchApplicationUserStats < 3) {
    checkDate(o.date!);
    unittest.expect(
      o.oneDayActiveUsersCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sevenDaysActiveUsersCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thirtyDaysActiveUsersCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchApplicationUserStats--;
}

core.int buildCounterSearchItemsByViewUrlRequest = 0;
api.SearchItemsByViewUrlRequest buildSearchItemsByViewUrlRequest() {
  final o = api.SearchItemsByViewUrlRequest();
  buildCounterSearchItemsByViewUrlRequest++;
  if (buildCounterSearchItemsByViewUrlRequest < 3) {
    o.debugOptions = buildDebugOptions();
    o.pageToken = 'foo';
    o.viewUrl = 'foo';
  }
  buildCounterSearchItemsByViewUrlRequest--;
  return o;
}

void checkSearchItemsByViewUrlRequest(api.SearchItemsByViewUrlRequest o) {
  buildCounterSearchItemsByViewUrlRequest++;
  if (buildCounterSearchItemsByViewUrlRequest < 3) {
    checkDebugOptions(o.debugOptions!);
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.viewUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchItemsByViewUrlRequest--;
}

core.List<api.Item> buildUnnamed69() => [
      buildItem(),
      buildItem(),
    ];

void checkUnnamed69(core.List<api.Item> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItem(o[0]);
  checkItem(o[1]);
}

core.int buildCounterSearchItemsByViewUrlResponse = 0;
api.SearchItemsByViewUrlResponse buildSearchItemsByViewUrlResponse() {
  final o = api.SearchItemsByViewUrlResponse();
  buildCounterSearchItemsByViewUrlResponse++;
  if (buildCounterSearchItemsByViewUrlResponse < 3) {
    o.items = buildUnnamed69();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchItemsByViewUrlResponse--;
  return o;
}

void checkSearchItemsByViewUrlResponse(api.SearchItemsByViewUrlResponse o) {
  buildCounterSearchItemsByViewUrlResponse++;
  if (buildCounterSearchItemsByViewUrlResponse < 3) {
    checkUnnamed69(o.items!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchItemsByViewUrlResponse--;
}

core.int buildCounterSearchQualityMetadata = 0;
api.SearchQualityMetadata buildSearchQualityMetadata() {
  final o = api.SearchQualityMetadata();
  buildCounterSearchQualityMetadata++;
  if (buildCounterSearchQualityMetadata < 3) {
    o.quality = 42.0;
  }
  buildCounterSearchQualityMetadata--;
  return o;
}

void checkSearchQualityMetadata(api.SearchQualityMetadata o) {
  buildCounterSearchQualityMetadata++;
  if (buildCounterSearchQualityMetadata < 3) {
    unittest.expect(
      o.quality!,
      unittest.equals(42.0),
    );
  }
  buildCounterSearchQualityMetadata--;
}

core.List<api.ContextAttribute> buildUnnamed70() => [
      buildContextAttribute(),
      buildContextAttribute(),
    ];

void checkUnnamed70(core.List<api.ContextAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContextAttribute(o[0]);
  checkContextAttribute(o[1]);
}

core.List<api.DataSourceRestriction> buildUnnamed71() => [
      buildDataSourceRestriction(),
      buildDataSourceRestriction(),
    ];

void checkUnnamed71(core.List<api.DataSourceRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceRestriction(o[0]);
  checkDataSourceRestriction(o[1]);
}

core.List<api.FacetOptions> buildUnnamed72() => [
      buildFacetOptions(),
      buildFacetOptions(),
    ];

void checkUnnamed72(core.List<api.FacetOptions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFacetOptions(o[0]);
  checkFacetOptions(o[1]);
}

core.int buildCounterSearchRequest = 0;
api.SearchRequest buildSearchRequest() {
  final o = api.SearchRequest();
  buildCounterSearchRequest++;
  if (buildCounterSearchRequest < 3) {
    o.contextAttributes = buildUnnamed70();
    o.dataSourceRestrictions = buildUnnamed71();
    o.facetOptions = buildUnnamed72();
    o.pageSize = 42;
    o.query = 'foo';
    o.queryInterpretationOptions = buildQueryInterpretationOptions();
    o.requestOptions = buildRequestOptions();
    o.sortOptions = buildSortOptions();
    o.start = 42;
  }
  buildCounterSearchRequest--;
  return o;
}

void checkSearchRequest(api.SearchRequest o) {
  buildCounterSearchRequest++;
  if (buildCounterSearchRequest < 3) {
    checkUnnamed70(o.contextAttributes!);
    checkUnnamed71(o.dataSourceRestrictions!);
    checkUnnamed72(o.facetOptions!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    checkQueryInterpretationOptions(o.queryInterpretationOptions!);
    checkRequestOptions(o.requestOptions!);
    checkSortOptions(o.sortOptions!);
    unittest.expect(
      o.start!,
      unittest.equals(42),
    );
  }
  buildCounterSearchRequest--;
}

core.List<api.FacetResult> buildUnnamed73() => [
      buildFacetResult(),
      buildFacetResult(),
    ];

void checkUnnamed73(core.List<api.FacetResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFacetResult(o[0]);
  checkFacetResult(o[1]);
}

core.List<api.SearchResult> buildUnnamed74() => [
      buildSearchResult(),
      buildSearchResult(),
    ];

void checkUnnamed74(core.List<api.SearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchResult(o[0]);
  checkSearchResult(o[1]);
}

core.List<api.SpellResult> buildUnnamed75() => [
      buildSpellResult(),
      buildSpellResult(),
    ];

void checkUnnamed75(core.List<api.SpellResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpellResult(o[0]);
  checkSpellResult(o[1]);
}

core.List<api.StructuredResult> buildUnnamed76() => [
      buildStructuredResult(),
      buildStructuredResult(),
    ];

void checkUnnamed76(core.List<api.StructuredResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuredResult(o[0]);
  checkStructuredResult(o[1]);
}

core.int buildCounterSearchResponse = 0;
api.SearchResponse buildSearchResponse() {
  final o = api.SearchResponse();
  buildCounterSearchResponse++;
  if (buildCounterSearchResponse < 3) {
    o.debugInfo = buildResponseDebugInfo();
    o.errorInfo = buildErrorInfo();
    o.facetResults = buildUnnamed73();
    o.hasMoreResults = true;
    o.queryInterpretation = buildQueryInterpretation();
    o.resultCountEstimate = 'foo';
    o.resultCountExact = 'foo';
    o.resultCounts = buildResultCounts();
    o.results = buildUnnamed74();
    o.spellResults = buildUnnamed75();
    o.structuredResults = buildUnnamed76();
  }
  buildCounterSearchResponse--;
  return o;
}

void checkSearchResponse(api.SearchResponse o) {
  buildCounterSearchResponse++;
  if (buildCounterSearchResponse < 3) {
    checkResponseDebugInfo(o.debugInfo!);
    checkErrorInfo(o.errorInfo!);
    checkUnnamed73(o.facetResults!);
    unittest.expect(o.hasMoreResults!, unittest.isTrue);
    checkQueryInterpretation(o.queryInterpretation!);
    unittest.expect(
      o.resultCountEstimate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resultCountExact!,
      unittest.equals('foo'),
    );
    checkResultCounts(o.resultCounts!);
    checkUnnamed74(o.results!);
    checkUnnamed75(o.spellResults!);
    checkUnnamed76(o.structuredResults!);
  }
  buildCounterSearchResponse--;
}

core.List<api.SearchResult> buildUnnamed77() => [
      buildSearchResult(),
      buildSearchResult(),
    ];

void checkUnnamed77(core.List<api.SearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchResult(o[0]);
  checkSearchResult(o[1]);
}

core.int buildCounterSearchResult = 0;
api.SearchResult buildSearchResult() {
  final o = api.SearchResult();
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    o.clusteredResults = buildUnnamed77();
    o.debugInfo = buildResultDebugInfo();
    o.metadata = buildMetadata();
    o.snippet = buildSnippet();
    o.title = 'foo';
    o.url = 'foo';
  }
  buildCounterSearchResult--;
  return o;
}

void checkSearchResult(api.SearchResult o) {
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    checkUnnamed77(o.clusteredResults!);
    checkResultDebugInfo(o.debugInfo!);
    checkMetadata(o.metadata!);
    checkSnippet(o.snippet!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchResult--;
}

core.List<api.MatchRange> buildUnnamed78() => [
      buildMatchRange(),
      buildMatchRange(),
    ];

void checkUnnamed78(core.List<api.MatchRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchRange(o[0]);
  checkMatchRange(o[1]);
}

core.int buildCounterSnippet = 0;
api.Snippet buildSnippet() {
  final o = api.Snippet();
  buildCounterSnippet++;
  if (buildCounterSnippet < 3) {
    o.matchRanges = buildUnnamed78();
    o.snippet = 'foo';
  }
  buildCounterSnippet--;
  return o;
}

void checkSnippet(api.Snippet o) {
  buildCounterSnippet++;
  if (buildCounterSnippet < 3) {
    checkUnnamed78(o.matchRanges!);
    unittest.expect(
      o.snippet!,
      unittest.equals('foo'),
    );
  }
  buildCounterSnippet--;
}

core.int buildCounterSortOptions = 0;
api.SortOptions buildSortOptions() {
  final o = api.SortOptions();
  buildCounterSortOptions++;
  if (buildCounterSortOptions < 3) {
    o.operatorName = 'foo';
    o.sortOrder = 'foo';
  }
  buildCounterSortOptions--;
  return o;
}

void checkSortOptions(api.SortOptions o) {
  buildCounterSortOptions++;
  if (buildCounterSortOptions < 3) {
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sortOrder!,
      unittest.equals('foo'),
    );
  }
  buildCounterSortOptions--;
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.name = 'foo';
    o.predefinedSource = 'foo';
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.predefinedSource!,
      unittest.equals('foo'),
    );
  }
  buildCounterSource--;
}

core.int buildCounterSourceConfig = 0;
api.SourceConfig buildSourceConfig() {
  final o = api.SourceConfig();
  buildCounterSourceConfig++;
  if (buildCounterSourceConfig < 3) {
    o.crowdingConfig = buildSourceCrowdingConfig();
    o.scoringConfig = buildSourceScoringConfig();
    o.source = buildSource();
  }
  buildCounterSourceConfig--;
  return o;
}

void checkSourceConfig(api.SourceConfig o) {
  buildCounterSourceConfig++;
  if (buildCounterSourceConfig < 3) {
    checkSourceCrowdingConfig(o.crowdingConfig!);
    checkSourceScoringConfig(o.scoringConfig!);
    checkSource(o.source!);
  }
  buildCounterSourceConfig--;
}

core.int buildCounterSourceCrowdingConfig = 0;
api.SourceCrowdingConfig buildSourceCrowdingConfig() {
  final o = api.SourceCrowdingConfig();
  buildCounterSourceCrowdingConfig++;
  if (buildCounterSourceCrowdingConfig < 3) {
    o.numResults = 42;
    o.numSuggestions = 42;
  }
  buildCounterSourceCrowdingConfig--;
  return o;
}

void checkSourceCrowdingConfig(api.SourceCrowdingConfig o) {
  buildCounterSourceCrowdingConfig++;
  if (buildCounterSourceCrowdingConfig < 3) {
    unittest.expect(
      o.numResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.numSuggestions!,
      unittest.equals(42),
    );
  }
  buildCounterSourceCrowdingConfig--;
}

core.int buildCounterSourceResultCount = 0;
api.SourceResultCount buildSourceResultCount() {
  final o = api.SourceResultCount();
  buildCounterSourceResultCount++;
  if (buildCounterSourceResultCount < 3) {
    o.hasMoreResults = true;
    o.resultCountEstimate = 'foo';
    o.resultCountExact = 'foo';
    o.source = buildSource();
  }
  buildCounterSourceResultCount--;
  return o;
}

void checkSourceResultCount(api.SourceResultCount o) {
  buildCounterSourceResultCount++;
  if (buildCounterSourceResultCount < 3) {
    unittest.expect(o.hasMoreResults!, unittest.isTrue);
    unittest.expect(
      o.resultCountEstimate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resultCountExact!,
      unittest.equals('foo'),
    );
    checkSource(o.source!);
  }
  buildCounterSourceResultCount--;
}

core.int buildCounterSourceScoringConfig = 0;
api.SourceScoringConfig buildSourceScoringConfig() {
  final o = api.SourceScoringConfig();
  buildCounterSourceScoringConfig++;
  if (buildCounterSourceScoringConfig < 3) {
    o.sourceImportance = 'foo';
  }
  buildCounterSourceScoringConfig--;
  return o;
}

void checkSourceScoringConfig(api.SourceScoringConfig o) {
  buildCounterSourceScoringConfig++;
  if (buildCounterSourceScoringConfig < 3) {
    unittest.expect(
      o.sourceImportance!,
      unittest.equals('foo'),
    );
  }
  buildCounterSourceScoringConfig--;
}

core.int buildCounterSpellResult = 0;
api.SpellResult buildSpellResult() {
  final o = api.SpellResult();
  buildCounterSpellResult++;
  if (buildCounterSpellResult < 3) {
    o.suggestedQuery = 'foo';
  }
  buildCounterSpellResult--;
  return o;
}

void checkSpellResult(api.SpellResult o) {
  buildCounterSpellResult++;
  if (buildCounterSpellResult < 3) {
    unittest.expect(
      o.suggestedQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpellResult--;
}

core.int buildCounterStartUploadItemRequest = 0;
api.StartUploadItemRequest buildStartUploadItemRequest() {
  final o = api.StartUploadItemRequest();
  buildCounterStartUploadItemRequest++;
  if (buildCounterStartUploadItemRequest < 3) {
    o.connectorName = 'foo';
    o.debugOptions = buildDebugOptions();
  }
  buildCounterStartUploadItemRequest--;
  return o;
}

void checkStartUploadItemRequest(api.StartUploadItemRequest o) {
  buildCounterStartUploadItemRequest++;
  if (buildCounterStartUploadItemRequest < 3) {
    unittest.expect(
      o.connectorName!,
      unittest.equals('foo'),
    );
    checkDebugOptions(o.debugOptions!);
  }
  buildCounterStartUploadItemRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed79() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed79(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
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
  var casted6 = (o['y']!) as core.Map;
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
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed80() => [
      buildUnnamed79(),
      buildUnnamed79(),
    ];

void checkUnnamed80(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed79(o[0]);
  checkUnnamed79(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed80();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed80(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.NamedProperty> buildUnnamed81() => [
      buildNamedProperty(),
      buildNamedProperty(),
    ];

void checkUnnamed81(core.List<api.NamedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedProperty(o[0]);
  checkNamedProperty(o[1]);
}

core.int buildCounterStructuredDataObject = 0;
api.StructuredDataObject buildStructuredDataObject() {
  final o = api.StructuredDataObject();
  buildCounterStructuredDataObject++;
  if (buildCounterStructuredDataObject < 3) {
    o.properties = buildUnnamed81();
  }
  buildCounterStructuredDataObject--;
  return o;
}

void checkStructuredDataObject(api.StructuredDataObject o) {
  buildCounterStructuredDataObject++;
  if (buildCounterStructuredDataObject < 3) {
    checkUnnamed81(o.properties!);
  }
  buildCounterStructuredDataObject--;
}

core.int buildCounterStructuredResult = 0;
api.StructuredResult buildStructuredResult() {
  final o = api.StructuredResult();
  buildCounterStructuredResult++;
  if (buildCounterStructuredResult < 3) {
    o.person = buildPerson();
  }
  buildCounterStructuredResult--;
  return o;
}

void checkStructuredResult(api.StructuredResult o) {
  buildCounterStructuredResult++;
  if (buildCounterStructuredResult < 3) {
    checkPerson(o.person!);
  }
  buildCounterStructuredResult--;
}

core.List<api.DataSourceRestriction> buildUnnamed82() => [
      buildDataSourceRestriction(),
      buildDataSourceRestriction(),
    ];

void checkUnnamed82(core.List<api.DataSourceRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceRestriction(o[0]);
  checkDataSourceRestriction(o[1]);
}

core.int buildCounterSuggestRequest = 0;
api.SuggestRequest buildSuggestRequest() {
  final o = api.SuggestRequest();
  buildCounterSuggestRequest++;
  if (buildCounterSuggestRequest < 3) {
    o.dataSourceRestrictions = buildUnnamed82();
    o.query = 'foo';
    o.requestOptions = buildRequestOptions();
  }
  buildCounterSuggestRequest--;
  return o;
}

void checkSuggestRequest(api.SuggestRequest o) {
  buildCounterSuggestRequest++;
  if (buildCounterSuggestRequest < 3) {
    checkUnnamed82(o.dataSourceRestrictions!);
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    checkRequestOptions(o.requestOptions!);
  }
  buildCounterSuggestRequest--;
}

core.List<api.SuggestResult> buildUnnamed83() => [
      buildSuggestResult(),
      buildSuggestResult(),
    ];

void checkUnnamed83(core.List<api.SuggestResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestResult(o[0]);
  checkSuggestResult(o[1]);
}

core.int buildCounterSuggestResponse = 0;
api.SuggestResponse buildSuggestResponse() {
  final o = api.SuggestResponse();
  buildCounterSuggestResponse++;
  if (buildCounterSuggestResponse < 3) {
    o.suggestResults = buildUnnamed83();
  }
  buildCounterSuggestResponse--;
  return o;
}

void checkSuggestResponse(api.SuggestResponse o) {
  buildCounterSuggestResponse++;
  if (buildCounterSuggestResponse < 3) {
    checkUnnamed83(o.suggestResults!);
  }
  buildCounterSuggestResponse--;
}

core.int buildCounterSuggestResult = 0;
api.SuggestResult buildSuggestResult() {
  final o = api.SuggestResult();
  buildCounterSuggestResult++;
  if (buildCounterSuggestResult < 3) {
    o.peopleSuggestion = buildPeopleSuggestion();
    o.querySuggestion = buildQuerySuggestion();
    o.source = buildSource();
    o.suggestedQuery = 'foo';
  }
  buildCounterSuggestResult--;
  return o;
}

void checkSuggestResult(api.SuggestResult o) {
  buildCounterSuggestResult++;
  if (buildCounterSuggestResult < 3) {
    checkPeopleSuggestion(o.peopleSuggestion!);
    checkQuerySuggestion(o.querySuggestion!);
    checkSource(o.source!);
    unittest.expect(
      o.suggestedQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterSuggestResult--;
}

core.int buildCounterTextOperatorOptions = 0;
api.TextOperatorOptions buildTextOperatorOptions() {
  final o = api.TextOperatorOptions();
  buildCounterTextOperatorOptions++;
  if (buildCounterTextOperatorOptions < 3) {
    o.exactMatchWithOperator = true;
    o.operatorName = 'foo';
  }
  buildCounterTextOperatorOptions--;
  return o;
}

void checkTextOperatorOptions(api.TextOperatorOptions o) {
  buildCounterTextOperatorOptions++;
  if (buildCounterTextOperatorOptions < 3) {
    unittest.expect(o.exactMatchWithOperator!, unittest.isTrue);
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextOperatorOptions--;
}

core.int buildCounterTextPropertyOptions = 0;
api.TextPropertyOptions buildTextPropertyOptions() {
  final o = api.TextPropertyOptions();
  buildCounterTextPropertyOptions++;
  if (buildCounterTextPropertyOptions < 3) {
    o.operatorOptions = buildTextOperatorOptions();
    o.retrievalImportance = buildRetrievalImportance();
  }
  buildCounterTextPropertyOptions--;
  return o;
}

void checkTextPropertyOptions(api.TextPropertyOptions o) {
  buildCounterTextPropertyOptions++;
  if (buildCounterTextPropertyOptions < 3) {
    checkTextOperatorOptions(o.operatorOptions!);
    checkRetrievalImportance(o.retrievalImportance!);
  }
  buildCounterTextPropertyOptions--;
}

core.List<core.String> buildUnnamed84() => [
      'foo',
      'foo',
    ];

void checkUnnamed84(core.List<core.String> o) {
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

core.int buildCounterTextValues = 0;
api.TextValues buildTextValues() {
  final o = api.TextValues();
  buildCounterTextValues++;
  if (buildCounterTextValues < 3) {
    o.values = buildUnnamed84();
  }
  buildCounterTextValues--;
  return o;
}

void checkTextValues(api.TextValues o) {
  buildCounterTextValues++;
  if (buildCounterTextValues < 3) {
    checkUnnamed84(o.values!);
  }
  buildCounterTextValues--;
}

core.int buildCounterTimestampOperatorOptions = 0;
api.TimestampOperatorOptions buildTimestampOperatorOptions() {
  final o = api.TimestampOperatorOptions();
  buildCounterTimestampOperatorOptions++;
  if (buildCounterTimestampOperatorOptions < 3) {
    o.greaterThanOperatorName = 'foo';
    o.lessThanOperatorName = 'foo';
    o.operatorName = 'foo';
  }
  buildCounterTimestampOperatorOptions--;
  return o;
}

void checkTimestampOperatorOptions(api.TimestampOperatorOptions o) {
  buildCounterTimestampOperatorOptions++;
  if (buildCounterTimestampOperatorOptions < 3) {
    unittest.expect(
      o.greaterThanOperatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lessThanOperatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimestampOperatorOptions--;
}

core.int buildCounterTimestampPropertyOptions = 0;
api.TimestampPropertyOptions buildTimestampPropertyOptions() {
  final o = api.TimestampPropertyOptions();
  buildCounterTimestampPropertyOptions++;
  if (buildCounterTimestampPropertyOptions < 3) {
    o.operatorOptions = buildTimestampOperatorOptions();
  }
  buildCounterTimestampPropertyOptions--;
  return o;
}

void checkTimestampPropertyOptions(api.TimestampPropertyOptions o) {
  buildCounterTimestampPropertyOptions++;
  if (buildCounterTimestampPropertyOptions < 3) {
    checkTimestampOperatorOptions(o.operatorOptions!);
  }
  buildCounterTimestampPropertyOptions--;
}

core.List<core.String> buildUnnamed85() => [
      'foo',
      'foo',
    ];

void checkUnnamed85(core.List<core.String> o) {
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

core.int buildCounterTimestampValues = 0;
api.TimestampValues buildTimestampValues() {
  final o = api.TimestampValues();
  buildCounterTimestampValues++;
  if (buildCounterTimestampValues < 3) {
    o.values = buildUnnamed85();
  }
  buildCounterTimestampValues--;
  return o;
}

void checkTimestampValues(api.TimestampValues o) {
  buildCounterTimestampValues++;
  if (buildCounterTimestampValues < 3) {
    checkUnnamed85(o.values!);
  }
  buildCounterTimestampValues--;
}

core.int buildCounterUnmappedIdentity = 0;
api.UnmappedIdentity buildUnmappedIdentity() {
  final o = api.UnmappedIdentity();
  buildCounterUnmappedIdentity++;
  if (buildCounterUnmappedIdentity < 3) {
    o.externalIdentity = buildPrincipal();
    o.resolutionStatusCode = 'foo';
  }
  buildCounterUnmappedIdentity--;
  return o;
}

void checkUnmappedIdentity(api.UnmappedIdentity o) {
  buildCounterUnmappedIdentity++;
  if (buildCounterUnmappedIdentity < 3) {
    checkPrincipal(o.externalIdentity!);
    unittest.expect(
      o.resolutionStatusCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterUnmappedIdentity--;
}

core.int buildCounterUnreserveItemsRequest = 0;
api.UnreserveItemsRequest buildUnreserveItemsRequest() {
  final o = api.UnreserveItemsRequest();
  buildCounterUnreserveItemsRequest++;
  if (buildCounterUnreserveItemsRequest < 3) {
    o.connectorName = 'foo';
    o.debugOptions = buildDebugOptions();
    o.queue = 'foo';
  }
  buildCounterUnreserveItemsRequest--;
  return o;
}

void checkUnreserveItemsRequest(api.UnreserveItemsRequest o) {
  buildCounterUnreserveItemsRequest++;
  if (buildCounterUnreserveItemsRequest < 3) {
    unittest.expect(
      o.connectorName!,
      unittest.equals('foo'),
    );
    checkDebugOptions(o.debugOptions!);
    unittest.expect(
      o.queue!,
      unittest.equals('foo'),
    );
  }
  buildCounterUnreserveItemsRequest--;
}

core.int buildCounterUpdateDataSourceRequest = 0;
api.UpdateDataSourceRequest buildUpdateDataSourceRequest() {
  final o = api.UpdateDataSourceRequest();
  buildCounterUpdateDataSourceRequest++;
  if (buildCounterUpdateDataSourceRequest < 3) {
    o.debugOptions = buildDebugOptions();
    o.source = buildDataSource();
  }
  buildCounterUpdateDataSourceRequest--;
  return o;
}

void checkUpdateDataSourceRequest(api.UpdateDataSourceRequest o) {
  buildCounterUpdateDataSourceRequest++;
  if (buildCounterUpdateDataSourceRequest < 3) {
    checkDebugOptions(o.debugOptions!);
    checkDataSource(o.source!);
  }
  buildCounterUpdateDataSourceRequest--;
}

core.int buildCounterUpdateSchemaRequest = 0;
api.UpdateSchemaRequest buildUpdateSchemaRequest() {
  final o = api.UpdateSchemaRequest();
  buildCounterUpdateSchemaRequest++;
  if (buildCounterUpdateSchemaRequest < 3) {
    o.debugOptions = buildDebugOptions();
    o.schema = buildSchema();
    o.validateOnly = true;
  }
  buildCounterUpdateSchemaRequest--;
  return o;
}

void checkUpdateSchemaRequest(api.UpdateSchemaRequest o) {
  buildCounterUpdateSchemaRequest++;
  if (buildCounterUpdateSchemaRequest < 3) {
    checkDebugOptions(o.debugOptions!);
    checkSchema(o.schema!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterUpdateSchemaRequest--;
}

core.int buildCounterUploadItemRef = 0;
api.UploadItemRef buildUploadItemRef() {
  final o = api.UploadItemRef();
  buildCounterUploadItemRef++;
  if (buildCounterUploadItemRef < 3) {
    o.name = 'foo';
  }
  buildCounterUploadItemRef--;
  return o;
}

void checkUploadItemRef(api.UploadItemRef o) {
  buildCounterUploadItemRef++;
  if (buildCounterUploadItemRef < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterUploadItemRef--;
}

core.int buildCounterVPCSettings = 0;
api.VPCSettings buildVPCSettings() {
  final o = api.VPCSettings();
  buildCounterVPCSettings++;
  if (buildCounterVPCSettings < 3) {
    o.project = 'foo';
  }
  buildCounterVPCSettings--;
  return o;
}

void checkVPCSettings(api.VPCSettings o) {
  buildCounterVPCSettings++;
  if (buildCounterVPCSettings < 3) {
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterVPCSettings--;
}

core.int buildCounterValue = 0;
api.Value buildValue() {
  final o = api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.booleanValue = true;
    o.dateValue = buildDate();
    o.doubleValue = 42.0;
    o.integerValue = 'foo';
    o.stringValue = 'foo';
    o.timestampValue = 'foo';
  }
  buildCounterValue--;
  return o;
}

void checkValue(api.Value o) {
  buildCounterValue++;
  if (buildCounterValue < 3) {
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkDate(o.dateValue!);
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.integerValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestampValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterValue--;
}

core.int buildCounterValueFilter = 0;
api.ValueFilter buildValueFilter() {
  final o = api.ValueFilter();
  buildCounterValueFilter++;
  if (buildCounterValueFilter < 3) {
    o.operatorName = 'foo';
    o.value = buildValue();
  }
  buildCounterValueFilter--;
  return o;
}

void checkValueFilter(api.ValueFilter o) {
  buildCounterValueFilter++;
  if (buildCounterValueFilter < 3) {
    unittest.expect(
      o.operatorName!,
      unittest.equals('foo'),
    );
    checkValue(o.value!);
  }
  buildCounterValueFilter--;
}

void main() {
  unittest.group('obj-schema-AuditLoggingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLoggingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLoggingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLoggingSettings(od);
    });
  });

  unittest.group('obj-schema-BooleanOperatorOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBooleanOperatorOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BooleanOperatorOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBooleanOperatorOptions(od);
    });
  });

  unittest.group('obj-schema-BooleanPropertyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBooleanPropertyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BooleanPropertyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBooleanPropertyOptions(od);
    });
  });

  unittest.group('obj-schema-CheckAccessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckAccessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckAccessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckAccessResponse(od);
    });
  });

  unittest.group('obj-schema-CompositeFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompositeFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompositeFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompositeFilter(od);
    });
  });

  unittest.group('obj-schema-ContextAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContextAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContextAttribute.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContextAttribute(od);
    });
  });

  unittest.group('obj-schema-CustomerIndexStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerIndexStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerIndexStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerIndexStats(od);
    });
  });

  unittest.group('obj-schema-CustomerQueryStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerQueryStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerQueryStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerQueryStats(od);
    });
  });

  unittest.group('obj-schema-CustomerSearchApplicationStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerSearchApplicationStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerSearchApplicationStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerSearchApplicationStats(od);
    });
  });

  unittest.group('obj-schema-CustomerSessionStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerSessionStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerSessionStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerSessionStats(od);
    });
  });

  unittest.group('obj-schema-CustomerSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerSettings(od);
    });
  });

  unittest.group('obj-schema-CustomerUserStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerUserStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerUserStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerUserStats(od);
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

  unittest.group('obj-schema-DataSourceIndexStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceIndexStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceIndexStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceIndexStats(od);
    });
  });

  unittest.group('obj-schema-DataSourceRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceRestriction(od);
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

  unittest.group('obj-schema-DateOperatorOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateOperatorOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateOperatorOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDateOperatorOptions(od);
    });
  });

  unittest.group('obj-schema-DatePropertyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatePropertyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatePropertyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatePropertyOptions(od);
    });
  });

  unittest.group('obj-schema-DateValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DateValues.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDateValues(od);
    });
  });

  unittest.group('obj-schema-DebugOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDebugOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DebugOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDebugOptions(od);
    });
  });

  unittest.group('obj-schema-DeleteQueueItemsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteQueueItemsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteQueueItemsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteQueueItemsRequest(od);
    });
  });

  unittest.group('obj-schema-DisplayedProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisplayedProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisplayedProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisplayedProperty(od);
    });
  });

  unittest.group('obj-schema-DoubleOperatorOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleOperatorOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleOperatorOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDoubleOperatorOptions(od);
    });
  });

  unittest.group('obj-schema-DoublePropertyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoublePropertyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoublePropertyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDoublePropertyOptions(od);
    });
  });

  unittest.group('obj-schema-DoubleValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDoubleValues(od);
    });
  });

  unittest.group('obj-schema-EmailAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmailAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmailAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmailAddress(od);
    });
  });

  unittest.group('obj-schema-EnumOperatorOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnumOperatorOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnumOperatorOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnumOperatorOptions(od);
    });
  });

  unittest.group('obj-schema-EnumPropertyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnumPropertyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnumPropertyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnumPropertyOptions(od);
    });
  });

  unittest.group('obj-schema-EnumValuePair', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnumValuePair();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnumValuePair.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnumValuePair(od);
    });
  });

  unittest.group('obj-schema-EnumValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnumValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnumValues.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnumValues(od);
    });
  });

  unittest.group('obj-schema-ErrorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ErrorInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkErrorInfo(od);
    });
  });

  unittest.group('obj-schema-ErrorMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkErrorMessage(od);
    });
  });

  unittest.group('obj-schema-FacetBucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFacetBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FacetBucket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFacetBucket(od);
    });
  });

  unittest.group('obj-schema-FacetOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFacetOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FacetOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFacetOptions(od);
    });
  });

  unittest.group('obj-schema-FacetResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFacetResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FacetResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFacetResult(od);
    });
  });

  unittest.group('obj-schema-FieldViolation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldViolation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldViolation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFieldViolation(od);
    });
  });

  unittest.group('obj-schema-Filter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Filter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilter(od);
    });
  });

  unittest.group('obj-schema-FilterOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterOptions(od);
    });
  });

  unittest.group('obj-schema-FreshnessOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFreshnessOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FreshnessOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFreshnessOptions(od);
    });
  });

  unittest.group('obj-schema-GSuitePrincipal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGSuitePrincipal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GSuitePrincipal.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGSuitePrincipal(od);
    });
  });

  unittest.group('obj-schema-GetCustomerIndexStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetCustomerIndexStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetCustomerIndexStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetCustomerIndexStatsResponse(od);
    });
  });

  unittest.group('obj-schema-GetCustomerQueryStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetCustomerQueryStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetCustomerQueryStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetCustomerQueryStatsResponse(od);
    });
  });

  unittest.group('obj-schema-GetCustomerSearchApplicationStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetCustomerSearchApplicationStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetCustomerSearchApplicationStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetCustomerSearchApplicationStatsResponse(od);
    });
  });

  unittest.group('obj-schema-GetCustomerSessionStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetCustomerSessionStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetCustomerSessionStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetCustomerSessionStatsResponse(od);
    });
  });

  unittest.group('obj-schema-GetCustomerUserStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetCustomerUserStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetCustomerUserStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetCustomerUserStatsResponse(od);
    });
  });

  unittest.group('obj-schema-GetDataSourceIndexStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetDataSourceIndexStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetDataSourceIndexStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetDataSourceIndexStatsResponse(od);
    });
  });

  unittest.group('obj-schema-GetSearchApplicationQueryStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetSearchApplicationQueryStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetSearchApplicationQueryStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetSearchApplicationQueryStatsResponse(od);
    });
  });

  unittest.group('obj-schema-GetSearchApplicationSessionStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetSearchApplicationSessionStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetSearchApplicationSessionStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetSearchApplicationSessionStatsResponse(od);
    });
  });

  unittest.group('obj-schema-GetSearchApplicationUserStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetSearchApplicationUserStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetSearchApplicationUserStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetSearchApplicationUserStatsResponse(od);
    });
  });

  unittest.group('obj-schema-HtmlOperatorOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHtmlOperatorOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HtmlOperatorOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHtmlOperatorOptions(od);
    });
  });

  unittest.group('obj-schema-HtmlPropertyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHtmlPropertyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HtmlPropertyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHtmlPropertyOptions(od);
    });
  });

  unittest.group('obj-schema-HtmlValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHtmlValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HtmlValues.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHtmlValues(od);
    });
  });

  unittest.group('obj-schema-IndexItemOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIndexItemOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IndexItemOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIndexItemOptions(od);
    });
  });

  unittest.group('obj-schema-IndexItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIndexItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IndexItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIndexItemRequest(od);
    });
  });

  unittest.group('obj-schema-InitializeCustomerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInitializeCustomerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InitializeCustomerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInitializeCustomerRequest(od);
    });
  });

  unittest.group('obj-schema-IntegerOperatorOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntegerOperatorOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntegerOperatorOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntegerOperatorOptions(od);
    });
  });

  unittest.group('obj-schema-IntegerPropertyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntegerPropertyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntegerPropertyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntegerPropertyOptions(od);
    });
  });

  unittest.group('obj-schema-IntegerValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntegerValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntegerValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntegerValues(od);
    });
  });

  unittest.group('obj-schema-Interaction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInteraction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Interaction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInteraction(od);
    });
  });

  unittest.group('obj-schema-Item', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Item.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkItem(od);
    });
  });

  unittest.group('obj-schema-ItemAcl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemAcl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ItemAcl.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkItemAcl(od);
    });
  });

  unittest.group('obj-schema-ItemContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkItemContent(od);
    });
  });

  unittest.group('obj-schema-ItemCountByStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemCountByStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemCountByStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkItemCountByStatus(od);
    });
  });

  unittest.group('obj-schema-ItemMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkItemMetadata(od);
    });
  });

  unittest.group('obj-schema-ItemStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ItemStatus.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkItemStatus(od);
    });
  });

  unittest.group('obj-schema-ItemStructuredData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemStructuredData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemStructuredData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkItemStructuredData(od);
    });
  });

  unittest.group('obj-schema-ListDataSourceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDataSourceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDataSourceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDataSourceResponse(od);
    });
  });

  unittest.group('obj-schema-ListItemNamesForUnmappedIdentityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListItemNamesForUnmappedIdentityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListItemNamesForUnmappedIdentityResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListItemNamesForUnmappedIdentityResponse(od);
    });
  });

  unittest.group('obj-schema-ListItemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListItemsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListItemsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListQuerySourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListQuerySourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListQuerySourcesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListQuerySourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListSearchApplicationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSearchApplicationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSearchApplicationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSearchApplicationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUnmappedIdentitiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUnmappedIdentitiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUnmappedIdentitiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUnmappedIdentitiesResponse(od);
    });
  });

  unittest.group('obj-schema-MatchRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMatchRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MatchRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMatchRange(od);
    });
  });

  unittest.group('obj-schema-Media', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMedia();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Media.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMedia(od);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metadata.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-Metaline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetaline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metaline.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetaline(od);
    });
  });

  unittest.group('obj-schema-Name', () {
    unittest.test('to-json--from-json', () async {
      final o = buildName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Name.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkName(od);
    });
  });

  unittest.group('obj-schema-NamedProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamedProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNamedProperty(od);
    });
  });

  unittest.group('obj-schema-ObjectDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectDefinition(od);
    });
  });

  unittest.group('obj-schema-ObjectDisplayOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectDisplayOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectDisplayOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectDisplayOptions(od);
    });
  });

  unittest.group('obj-schema-ObjectOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectOptions(od);
    });
  });

  unittest.group('obj-schema-ObjectPropertyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectPropertyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectPropertyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectPropertyOptions(od);
    });
  });

  unittest.group('obj-schema-ObjectValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectValues(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-PeopleSuggestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPeopleSuggestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PeopleSuggestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPeopleSuggestion(od);
    });
  });

  unittest.group('obj-schema-Person', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerson();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Person.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPerson(od);
    });
  });

  unittest.group('obj-schema-PhoneNumber', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhoneNumber();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhoneNumber.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPhoneNumber(od);
    });
  });

  unittest.group('obj-schema-Photo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhoto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Photo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPhoto(od);
    });
  });

  unittest.group('obj-schema-PollItemsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPollItemsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PollItemsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPollItemsRequest(od);
    });
  });

  unittest.group('obj-schema-PollItemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPollItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PollItemsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPollItemsResponse(od);
    });
  });

  unittest.group('obj-schema-Principal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrincipal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Principal.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPrincipal(od);
    });
  });

  unittest.group('obj-schema-ProcessingError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessingError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessingError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProcessingError(od);
    });
  });

  unittest.group('obj-schema-PropertyDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPropertyDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PropertyDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPropertyDefinition(od);
    });
  });

  unittest.group('obj-schema-PropertyDisplayOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPropertyDisplayOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PropertyDisplayOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPropertyDisplayOptions(od);
    });
  });

  unittest.group('obj-schema-PushItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPushItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PushItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPushItem(od);
    });
  });

  unittest.group('obj-schema-PushItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPushItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PushItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPushItemRequest(od);
    });
  });

  unittest.group('obj-schema-QueryCountByStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryCountByStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryCountByStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryCountByStatus(od);
    });
  });

  unittest.group('obj-schema-QueryInterpretation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryInterpretation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryInterpretation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryInterpretation(od);
    });
  });

  unittest.group('obj-schema-QueryInterpretationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryInterpretationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryInterpretationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryInterpretationConfig(od);
    });
  });

  unittest.group('obj-schema-QueryInterpretationOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryInterpretationOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryInterpretationOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryInterpretationOptions(od);
    });
  });

  unittest.group('obj-schema-QueryOperator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryOperator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryOperator.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryOperator(od);
    });
  });

  unittest.group('obj-schema-QuerySource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuerySource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuerySource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQuerySource(od);
    });
  });

  unittest.group('obj-schema-QuerySuggestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuerySuggestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuerySuggestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQuerySuggestion(od);
    });
  });

  unittest.group('obj-schema-RepositoryError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepositoryError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepositoryError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepositoryError(od);
    });
  });

  unittest.group('obj-schema-RequestOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestOptions(od);
    });
  });

  unittest.group('obj-schema-ResetSearchApplicationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetSearchApplicationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetSearchApplicationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetSearchApplicationRequest(od);
    });
  });

  unittest.group('obj-schema-ResponseDebugInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponseDebugInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponseDebugInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponseDebugInfo(od);
    });
  });

  unittest.group('obj-schema-ResultCounts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultCounts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultCounts.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultCounts(od);
    });
  });

  unittest.group('obj-schema-ResultDebugInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultDebugInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultDebugInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultDebugInfo(od);
    });
  });

  unittest.group('obj-schema-ResultDisplayField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultDisplayField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultDisplayField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultDisplayField(od);
    });
  });

  unittest.group('obj-schema-ResultDisplayLine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultDisplayLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultDisplayLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultDisplayLine(od);
    });
  });

  unittest.group('obj-schema-ResultDisplayMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultDisplayMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultDisplayMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultDisplayMetadata(od);
    });
  });

  unittest.group('obj-schema-RetrievalImportance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrievalImportance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrievalImportance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetrievalImportance(od);
    });
  });

  unittest.group('obj-schema-Schema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Schema.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSchema(od);
    });
  });

  unittest.group('obj-schema-ScoringConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScoringConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScoringConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScoringConfig(od);
    });
  });

  unittest.group('obj-schema-SearchApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchApplication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchApplication(od);
    });
  });

  unittest.group('obj-schema-SearchApplicationQueryStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchApplicationQueryStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchApplicationQueryStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchApplicationQueryStats(od);
    });
  });

  unittest.group('obj-schema-SearchApplicationSessionStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchApplicationSessionStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchApplicationSessionStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchApplicationSessionStats(od);
    });
  });

  unittest.group('obj-schema-SearchApplicationUserStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchApplicationUserStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchApplicationUserStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchApplicationUserStats(od);
    });
  });

  unittest.group('obj-schema-SearchItemsByViewUrlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchItemsByViewUrlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchItemsByViewUrlRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchItemsByViewUrlRequest(od);
    });
  });

  unittest.group('obj-schema-SearchItemsByViewUrlResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchItemsByViewUrlResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchItemsByViewUrlResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchItemsByViewUrlResponse(od);
    });
  });

  unittest.group('obj-schema-SearchQualityMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchQualityMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchQualityMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchQualityMetadata(od);
    });
  });

  unittest.group('obj-schema-SearchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchRequest(od);
    });
  });

  unittest.group('obj-schema-SearchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchResponse(od);
    });
  });

  unittest.group('obj-schema-SearchResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchResult(od);
    });
  });

  unittest.group('obj-schema-Snippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Snippet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSnippet(od);
    });
  });

  unittest.group('obj-schema-SortOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSortOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SortOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSortOptions(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Source.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSource(od);
    });
  });

  unittest.group('obj-schema-SourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceConfig(od);
    });
  });

  unittest.group('obj-schema-SourceCrowdingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceCrowdingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceCrowdingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceCrowdingConfig(od);
    });
  });

  unittest.group('obj-schema-SourceResultCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceResultCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceResultCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceResultCount(od);
    });
  });

  unittest.group('obj-schema-SourceScoringConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceScoringConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceScoringConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceScoringConfig(od);
    });
  });

  unittest.group('obj-schema-SpellResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpellResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpellResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpellResult(od);
    });
  });

  unittest.group('obj-schema-StartUploadItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartUploadItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartUploadItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartUploadItemRequest(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-StructuredDataObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuredDataObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuredDataObject.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStructuredDataObject(od);
    });
  });

  unittest.group('obj-schema-StructuredResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuredResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuredResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStructuredResult(od);
    });
  });

  unittest.group('obj-schema-SuggestRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestRequest(od);
    });
  });

  unittest.group('obj-schema-SuggestResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestResponse(od);
    });
  });

  unittest.group('obj-schema-SuggestResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestResult(od);
    });
  });

  unittest.group('obj-schema-TextOperatorOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextOperatorOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextOperatorOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextOperatorOptions(od);
    });
  });

  unittest.group('obj-schema-TextPropertyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextPropertyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextPropertyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextPropertyOptions(od);
    });
  });

  unittest.group('obj-schema-TextValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextValues.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextValues(od);
    });
  });

  unittest.group('obj-schema-TimestampOperatorOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimestampOperatorOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimestampOperatorOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimestampOperatorOptions(od);
    });
  });

  unittest.group('obj-schema-TimestampPropertyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimestampPropertyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimestampPropertyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimestampPropertyOptions(od);
    });
  });

  unittest.group('obj-schema-TimestampValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimestampValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimestampValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimestampValues(od);
    });
  });

  unittest.group('obj-schema-UnmappedIdentity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnmappedIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnmappedIdentity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnmappedIdentity(od);
    });
  });

  unittest.group('obj-schema-UnreserveItemsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnreserveItemsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnreserveItemsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnreserveItemsRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDataSourceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDataSourceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDataSourceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDataSourceRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSchemaRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSchemaRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSchemaRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateSchemaRequest(od);
    });
  });

  unittest.group('obj-schema-UploadItemRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadItemRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadItemRef.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadItemRef(od);
    });
  });

  unittest.group('obj-schema-VPCSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVPCSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VPCSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVPCSettings(od);
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

  unittest.group('obj-schema-ValueFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValueFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValueFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValueFilter(od);
    });
  });

  unittest.group('resource-DebugDatasourcesItemsResource', () {
    unittest.test('method--checkAccess', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).debug.datasources.items;
      final arg_request = buildPrincipal();
      final arg_name = 'foo';
      final arg_debugOptions_enableDebugging = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Principal.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPrincipal(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/debug/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCheckAccessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.checkAccess(arg_request, arg_name,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          $fields: arg_$fields);
      checkCheckAccessResponse(response as api.CheckAccessResponse);
    });

    unittest.test('method--searchByViewUrl', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).debug.datasources.items;
      final arg_request = buildSearchItemsByViewUrlRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchItemsByViewUrlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchItemsByViewUrlRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/debug/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildSearchItemsByViewUrlResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchByViewUrl(arg_request, arg_name,
          $fields: arg_$fields);
      checkSearchItemsByViewUrlResponse(
          response as api.SearchItemsByViewUrlResponse);
    });
  });

  unittest.group('resource-DebugDatasourcesItemsUnmappedidsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).debug.datasources.items.unmappedids;
      final arg_parent = 'foo';
      final arg_debugOptions_enableDebugging = true;
      final arg_pageSize = 42;
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/debug/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListUnmappedIdentitiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListUnmappedIdentitiesResponse(
          response as api.ListUnmappedIdentitiesResponse);
    });
  });

  unittest.group('resource-DebugIdentitysourcesItemsResource', () {
    unittest.test('method--listForunmappedidentity', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).debug.identitysources.items;
      final arg_parent = 'foo';
      final arg_debugOptions_enableDebugging = true;
      final arg_groupResourceName = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_userResourceName = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/debug/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          queryMap['groupResourceName']!.first,
          unittest.equals(arg_groupResourceName),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['userResourceName']!.first,
          unittest.equals(arg_userResourceName),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildListItemNamesForUnmappedIdentityResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listForunmappedidentity(arg_parent,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          groupResourceName: arg_groupResourceName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          userResourceName: arg_userResourceName,
          $fields: arg_$fields);
      checkListItemNamesForUnmappedIdentityResponse(
          response as api.ListItemNamesForUnmappedIdentityResponse);
    });
  });

  unittest.group('resource-DebugIdentitysourcesUnmappedidsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).debug.identitysources.unmappedids;
      final arg_parent = 'foo';
      final arg_debugOptions_enableDebugging = true;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_resolutionStatusCode = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/debug/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['resolutionStatusCode']!.first,
          unittest.equals(arg_resolutionStatusCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListUnmappedIdentitiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          resolutionStatusCode: arg_resolutionStatusCode,
          $fields: arg_$fields);
      checkListUnmappedIdentitiesResponse(
          response as api.ListUnmappedIdentitiesResponse);
    });
  });

  unittest.group('resource-IndexingDatasourcesResource', () {
    unittest.test('method--deleteSchema', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).indexing.datasources;
      final arg_name = 'foo';
      final arg_debugOptions_enableDebugging = true;
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/indexing/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deleteSchema(arg_name,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--getSchema', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).indexing.datasources;
      final arg_name = 'foo';
      final arg_debugOptions_enableDebugging = true;
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/indexing/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSchema(arg_name,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          $fields: arg_$fields);
      checkSchema(response as api.Schema);
    });

    unittest.test('method--updateSchema', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).indexing.datasources;
      final arg_request = buildUpdateSchemaRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateSchemaRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateSchemaRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/indexing/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updateSchema(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-IndexingDatasourcesItemsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).indexing.datasources.items;
      final arg_name = 'foo';
      final arg_connectorName = 'foo';
      final arg_debugOptions_enableDebugging = true;
      final arg_mode = 'foo';
      final arg_version = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/indexing/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['connectorName']!.first,
          unittest.equals(arg_connectorName),
        );
        unittest.expect(
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          queryMap['mode']!.first,
          unittest.equals(arg_mode),
        );
        unittest.expect(
          queryMap['version']!.first,
          unittest.equals(arg_version),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          connectorName: arg_connectorName,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          mode: arg_mode,
          version: arg_version,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--deleteQueueItems', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).indexing.datasources.items;
      final arg_request = buildDeleteQueueItemsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeleteQueueItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeleteQueueItemsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/indexing/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deleteQueueItems(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).indexing.datasources.items;
      final arg_name = 'foo';
      final arg_connectorName = 'foo';
      final arg_debugOptions_enableDebugging = true;
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/indexing/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['connectorName']!.first,
          unittest.equals(arg_connectorName),
        );
        unittest.expect(
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          connectorName: arg_connectorName,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          $fields: arg_$fields);
      checkItem(response as api.Item);
    });

    unittest.test('method--index', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).indexing.datasources.items;
      final arg_request = buildIndexItemRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.IndexItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIndexItemRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/indexing/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.index(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).indexing.datasources.items;
      final arg_name = 'foo';
      final arg_brief = true;
      final arg_connectorName = 'foo';
      final arg_debugOptions_enableDebugging = true;
      final arg_pageSize = 42;
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/indexing/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['brief']!.first,
          unittest.equals('$arg_brief'),
        );
        unittest.expect(
          queryMap['connectorName']!.first,
          unittest.equals(arg_connectorName),
        );
        unittest.expect(
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          brief: arg_brief,
          connectorName: arg_connectorName,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListItemsResponse(response as api.ListItemsResponse);
    });

    unittest.test('method--poll', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).indexing.datasources.items;
      final arg_request = buildPollItemsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PollItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPollItemsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/indexing/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildPollItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.poll(arg_request, arg_name, $fields: arg_$fields);
      checkPollItemsResponse(response as api.PollItemsResponse);
    });

    unittest.test('method--push', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).indexing.datasources.items;
      final arg_request = buildPushItemRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PushItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPushItemRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/indexing/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.push(arg_request, arg_name, $fields: arg_$fields);
      checkItem(response as api.Item);
    });

    unittest.test('method--unreserve', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).indexing.datasources.items;
      final arg_request = buildUnreserveItemsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UnreserveItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUnreserveItemsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/indexing/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.unreserve(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--upload', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).indexing.datasources.items;
      final arg_request = buildStartUploadItemRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartUploadItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartUploadItemRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/indexing/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildUploadItemRef());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_name, $fields: arg_$fields);
      checkUploadItemRef(response as api.UploadItemRef);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).media;
      final arg_request = buildMedia();
      final arg_resourceName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Media.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMedia(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/media/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildMedia());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_resourceName, $fields: arg_$fields);
      checkMedia(response as api.Media);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).operations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OperationsLroResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).operations.lro;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-QueryResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).query;
      final arg_request = buildSearchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1/query/search'),
        );
        pathOffset += 15;

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
        final resp = convert.json.encode(buildSearchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_request, $fields: arg_$fields);
      checkSearchResponse(response as api.SearchResponse);
    });

    unittest.test('method--suggest', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).query;
      final arg_request = buildSuggestRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SuggestRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSuggestRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/query/suggest'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildSuggestResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.suggest(arg_request, $fields: arg_$fields);
      checkSuggestResponse(response as api.SuggestResponse);
    });
  });

  unittest.group('resource-QuerySourcesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).query.sources;
      final arg_pageToken = 'foo';
      final arg_requestOptions_debugOptions_enableDebugging = true;
      final arg_requestOptions_languageCode = 'foo';
      final arg_requestOptions_searchApplicationId = 'foo';
      final arg_requestOptions_timeZone = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/query/sources'),
        );
        pathOffset += 16;

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
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['requestOptions.debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_requestOptions_debugOptions_enableDebugging'),
        );
        unittest.expect(
          queryMap['requestOptions.languageCode']!.first,
          unittest.equals(arg_requestOptions_languageCode),
        );
        unittest.expect(
          queryMap['requestOptions.searchApplicationId']!.first,
          unittest.equals(arg_requestOptions_searchApplicationId),
        );
        unittest.expect(
          queryMap['requestOptions.timeZone']!.first,
          unittest.equals(arg_requestOptions_timeZone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListQuerySourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageToken: arg_pageToken,
          requestOptions_debugOptions_enableDebugging:
              arg_requestOptions_debugOptions_enableDebugging,
          requestOptions_languageCode: arg_requestOptions_languageCode,
          requestOptions_searchApplicationId:
              arg_requestOptions_searchApplicationId,
          requestOptions_timeZone: arg_requestOptions_timeZone,
          $fields: arg_$fields);
      checkListQuerySourcesResponse(response as api.ListQuerySourcesResponse);
    });
  });

  unittest.group('resource-SettingsResource', () {
    unittest.test('method--getCustomer', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings;
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('v1/settings/customer'),
        );
        pathOffset += 20;

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
        final resp = convert.json.encode(buildCustomerSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getCustomer($fields: arg_$fields);
      checkCustomerSettings(response as api.CustomerSettings);
    });

    unittest.test('method--updateCustomer', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings;
      final arg_request = buildCustomerSettings();
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomerSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomerSettings(obj);

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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('v1/settings/customer'),
        );
        pathOffset += 20;

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateCustomer(arg_request,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-SettingsDatasourcesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.datasources;
      final arg_request = buildDataSource();
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('v1/settings/datasources'),
        );
        pathOffset += 23;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.datasources;
      final arg_name = 'foo';
      final arg_debugOptions_enableDebugging = true;
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/settings/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.datasources;
      final arg_name = 'foo';
      final arg_debugOptions_enableDebugging = true;
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/settings/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
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
      final response = await res.get(arg_name,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          $fields: arg_$fields);
      checkDataSource(response as api.DataSource);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.datasources;
      final arg_debugOptions_enableDebugging = true;
      final arg_pageSize = 42;
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('v1/settings/datasources'),
        );
        pathOffset += 23;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListDataSourceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDataSourceResponse(response as api.ListDataSourceResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.datasources;
      final arg_request = buildDataSource();
      final arg_name = 'foo';
      final arg_debugOptions_enableDebugging = true;
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/settings/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.datasources;
      final arg_request = buildUpdateDataSourceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateDataSourceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateDataSourceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/settings/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-SettingsSearchapplicationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.searchapplications;
      final arg_request = buildSearchApplication();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchApplication.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchApplication(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('v1/settings/searchapplications'),
        );
        pathOffset += 30;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.searchapplications;
      final arg_name = 'foo';
      final arg_debugOptions_enableDebugging = true;
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/settings/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.searchapplications;
      final arg_name = 'foo';
      final arg_debugOptions_enableDebugging = true;
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/settings/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchApplication());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          $fields: arg_$fields);
      checkSearchApplication(response as api.SearchApplication);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.searchapplications;
      final arg_debugOptions_enableDebugging = true;
      final arg_pageSize = 42;
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('v1/settings/searchapplications'),
        );
        pathOffset += 30;

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
          queryMap['debugOptions.enableDebugging']!.first,
          unittest.equals('$arg_debugOptions_enableDebugging'),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListSearchApplicationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          debugOptions_enableDebugging: arg_debugOptions_enableDebugging,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSearchApplicationsResponse(
          response as api.ListSearchApplicationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.searchapplications;
      final arg_request = buildSearchApplication();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchApplication.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchApplication(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/settings/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.searchapplications;
      final arg_request = buildResetSearchApplicationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResetSearchApplicationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResetSearchApplicationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/settings/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reset(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).settings.searchapplications;
      final arg_request = buildSearchApplication();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchApplication.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchApplication(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/settings/'),
        );
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-StatsResource', () {
    unittest.test('method--getIndex', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).stats;
      final arg_fromDate_day = 42;
      final arg_fromDate_month = 42;
      final arg_fromDate_year = 42;
      final arg_toDate_day = 42;
      final arg_toDate_month = 42;
      final arg_toDate_year = 42;
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/stats/index'),
        );
        pathOffset += 14;

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
          core.int.parse(queryMap['fromDate.day']!.first),
          unittest.equals(arg_fromDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.month']!.first),
          unittest.equals(arg_fromDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.year']!.first),
          unittest.equals(arg_fromDate_year),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.day']!.first),
          unittest.equals(arg_toDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.month']!.first),
          unittest.equals(arg_toDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.year']!.first),
          unittest.equals(arg_toDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGetCustomerIndexStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIndex(
          fromDate_day: arg_fromDate_day,
          fromDate_month: arg_fromDate_month,
          fromDate_year: arg_fromDate_year,
          toDate_day: arg_toDate_day,
          toDate_month: arg_toDate_month,
          toDate_year: arg_toDate_year,
          $fields: arg_$fields);
      checkGetCustomerIndexStatsResponse(
          response as api.GetCustomerIndexStatsResponse);
    });

    unittest.test('method--getQuery', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).stats;
      final arg_fromDate_day = 42;
      final arg_fromDate_month = 42;
      final arg_fromDate_year = 42;
      final arg_toDate_day = 42;
      final arg_toDate_month = 42;
      final arg_toDate_year = 42;
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/stats/query'),
        );
        pathOffset += 14;

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
          core.int.parse(queryMap['fromDate.day']!.first),
          unittest.equals(arg_fromDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.month']!.first),
          unittest.equals(arg_fromDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.year']!.first),
          unittest.equals(arg_fromDate_year),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.day']!.first),
          unittest.equals(arg_toDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.month']!.first),
          unittest.equals(arg_toDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.year']!.first),
          unittest.equals(arg_toDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGetCustomerQueryStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getQuery(
          fromDate_day: arg_fromDate_day,
          fromDate_month: arg_fromDate_month,
          fromDate_year: arg_fromDate_year,
          toDate_day: arg_toDate_day,
          toDate_month: arg_toDate_month,
          toDate_year: arg_toDate_year,
          $fields: arg_$fields);
      checkGetCustomerQueryStatsResponse(
          response as api.GetCustomerQueryStatsResponse);
    });

    unittest.test('method--getSearchapplication', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).stats;
      final arg_endDate_day = 42;
      final arg_endDate_month = 42;
      final arg_endDate_year = 42;
      final arg_startDate_day = 42;
      final arg_startDate_month = 42;
      final arg_startDate_year = 42;
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('v1/stats/searchapplication'),
        );
        pathOffset += 26;

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
          core.int.parse(queryMap['endDate.day']!.first),
          unittest.equals(arg_endDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.month']!.first),
          unittest.equals(arg_endDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.year']!.first),
          unittest.equals(arg_endDate_year),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.day']!.first),
          unittest.equals(arg_startDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.month']!.first),
          unittest.equals(arg_startDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.year']!.first),
          unittest.equals(arg_startDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGetCustomerSearchApplicationStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSearchapplication(
          endDate_day: arg_endDate_day,
          endDate_month: arg_endDate_month,
          endDate_year: arg_endDate_year,
          startDate_day: arg_startDate_day,
          startDate_month: arg_startDate_month,
          startDate_year: arg_startDate_year,
          $fields: arg_$fields);
      checkGetCustomerSearchApplicationStatsResponse(
          response as api.GetCustomerSearchApplicationStatsResponse);
    });

    unittest.test('method--getSession', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).stats;
      final arg_fromDate_day = 42;
      final arg_fromDate_month = 42;
      final arg_fromDate_year = 42;
      final arg_toDate_day = 42;
      final arg_toDate_month = 42;
      final arg_toDate_year = 42;
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/stats/session'),
        );
        pathOffset += 16;

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
          core.int.parse(queryMap['fromDate.day']!.first),
          unittest.equals(arg_fromDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.month']!.first),
          unittest.equals(arg_fromDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.year']!.first),
          unittest.equals(arg_fromDate_year),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.day']!.first),
          unittest.equals(arg_toDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.month']!.first),
          unittest.equals(arg_toDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.year']!.first),
          unittest.equals(arg_toDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGetCustomerSessionStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSession(
          fromDate_day: arg_fromDate_day,
          fromDate_month: arg_fromDate_month,
          fromDate_year: arg_fromDate_year,
          toDate_day: arg_toDate_day,
          toDate_month: arg_toDate_month,
          toDate_year: arg_toDate_year,
          $fields: arg_$fields);
      checkGetCustomerSessionStatsResponse(
          response as api.GetCustomerSessionStatsResponse);
    });

    unittest.test('method--getUser', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).stats;
      final arg_fromDate_day = 42;
      final arg_fromDate_month = 42;
      final arg_fromDate_year = 42;
      final arg_toDate_day = 42;
      final arg_toDate_month = 42;
      final arg_toDate_year = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1/stats/user'),
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
          core.int.parse(queryMap['fromDate.day']!.first),
          unittest.equals(arg_fromDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.month']!.first),
          unittest.equals(arg_fromDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.year']!.first),
          unittest.equals(arg_fromDate_year),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.day']!.first),
          unittest.equals(arg_toDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.month']!.first),
          unittest.equals(arg_toDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.year']!.first),
          unittest.equals(arg_toDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGetCustomerUserStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getUser(
          fromDate_day: arg_fromDate_day,
          fromDate_month: arg_fromDate_month,
          fromDate_year: arg_fromDate_year,
          toDate_day: arg_toDate_day,
          toDate_month: arg_toDate_month,
          toDate_year: arg_toDate_year,
          $fields: arg_$fields);
      checkGetCustomerUserStatsResponse(
          response as api.GetCustomerUserStatsResponse);
    });
  });

  unittest.group('resource-StatsIndexDatasourcesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).stats.index.datasources;
      final arg_name = 'foo';
      final arg_fromDate_day = 42;
      final arg_fromDate_month = 42;
      final arg_fromDate_year = 42;
      final arg_toDate_day = 42;
      final arg_toDate_month = 42;
      final arg_toDate_year = 42;
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1/stats/index/'),
        );
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          core.int.parse(queryMap['fromDate.day']!.first),
          unittest.equals(arg_fromDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.month']!.first),
          unittest.equals(arg_fromDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.year']!.first),
          unittest.equals(arg_fromDate_year),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.day']!.first),
          unittest.equals(arg_toDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.month']!.first),
          unittest.equals(arg_toDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.year']!.first),
          unittest.equals(arg_toDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGetDataSourceIndexStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          fromDate_day: arg_fromDate_day,
          fromDate_month: arg_fromDate_month,
          fromDate_year: arg_fromDate_year,
          toDate_day: arg_toDate_day,
          toDate_month: arg_toDate_month,
          toDate_year: arg_toDate_year,
          $fields: arg_$fields);
      checkGetDataSourceIndexStatsResponse(
          response as api.GetDataSourceIndexStatsResponse);
    });
  });

  unittest.group('resource-StatsQuerySearchapplicationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).stats.query.searchapplications;
      final arg_name = 'foo';
      final arg_fromDate_day = 42;
      final arg_fromDate_month = 42;
      final arg_fromDate_year = 42;
      final arg_toDate_day = 42;
      final arg_toDate_month = 42;
      final arg_toDate_year = 42;
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1/stats/query/'),
        );
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          core.int.parse(queryMap['fromDate.day']!.first),
          unittest.equals(arg_fromDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.month']!.first),
          unittest.equals(arg_fromDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.year']!.first),
          unittest.equals(arg_fromDate_year),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.day']!.first),
          unittest.equals(arg_toDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.month']!.first),
          unittest.equals(arg_toDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.year']!.first),
          unittest.equals(arg_toDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGetSearchApplicationQueryStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          fromDate_day: arg_fromDate_day,
          fromDate_month: arg_fromDate_month,
          fromDate_year: arg_fromDate_year,
          toDate_day: arg_toDate_day,
          toDate_month: arg_toDate_month,
          toDate_year: arg_toDate_year,
          $fields: arg_$fields);
      checkGetSearchApplicationQueryStatsResponse(
          response as api.GetSearchApplicationQueryStatsResponse);
    });
  });

  unittest.group('resource-StatsSessionSearchapplicationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).stats.session.searchapplications;
      final arg_name = 'foo';
      final arg_fromDate_day = 42;
      final arg_fromDate_month = 42;
      final arg_fromDate_year = 42;
      final arg_toDate_day = 42;
      final arg_toDate_month = 42;
      final arg_toDate_year = 42;
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/stats/session/'),
        );
        pathOffset += 17;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          core.int.parse(queryMap['fromDate.day']!.first),
          unittest.equals(arg_fromDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.month']!.first),
          unittest.equals(arg_fromDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.year']!.first),
          unittest.equals(arg_fromDate_year),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.day']!.first),
          unittest.equals(arg_toDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.month']!.first),
          unittest.equals(arg_toDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.year']!.first),
          unittest.equals(arg_toDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGetSearchApplicationSessionStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          fromDate_day: arg_fromDate_day,
          fromDate_month: arg_fromDate_month,
          fromDate_year: arg_fromDate_year,
          toDate_day: arg_toDate_day,
          toDate_month: arg_toDate_month,
          toDate_year: arg_toDate_year,
          $fields: arg_$fields);
      checkGetSearchApplicationSessionStatsResponse(
          response as api.GetSearchApplicationSessionStatsResponse);
    });
  });

  unittest.group('resource-StatsUserSearchapplicationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).stats.user.searchapplications;
      final arg_name = 'foo';
      final arg_fromDate_day = 42;
      final arg_fromDate_month = 42;
      final arg_fromDate_year = 42;
      final arg_toDate_day = 42;
      final arg_toDate_month = 42;
      final arg_toDate_year = 42;
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/stats/user/'),
        );
        pathOffset += 14;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          core.int.parse(queryMap['fromDate.day']!.first),
          unittest.equals(arg_fromDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.month']!.first),
          unittest.equals(arg_fromDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['fromDate.year']!.first),
          unittest.equals(arg_fromDate_year),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.day']!.first),
          unittest.equals(arg_toDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.month']!.first),
          unittest.equals(arg_toDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['toDate.year']!.first),
          unittest.equals(arg_toDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGetSearchApplicationUserStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          fromDate_day: arg_fromDate_day,
          fromDate_month: arg_fromDate_month,
          fromDate_year: arg_fromDate_year,
          toDate_day: arg_toDate_day,
          toDate_month: arg_toDate_month,
          toDate_year: arg_toDate_year,
          $fields: arg_$fields);
      checkGetSearchApplicationUserStatsResponse(
          response as api.GetSearchApplicationUserStatsResponse);
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--initializeCustomer', () async {
      final mock = HttpServerMock();
      final res = api.CloudSearchApi(mock).v1;
      final arg_request = buildInitializeCustomerRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InitializeCustomerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInitializeCustomerRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('v1:initializeCustomer'),
        );
        pathOffset += 21;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.initializeCustomer(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
