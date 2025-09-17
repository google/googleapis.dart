// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/playdeveloperreporting/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GooglePlayDeveloperReportingV1beta1DimensionValue>
buildUnnamed0() => [
  buildGooglePlayDeveloperReportingV1beta1DimensionValue(),
  buildGooglePlayDeveloperReportingV1beta1DimensionValue(),
];

void checkUnnamed0(
  core.List<api.GooglePlayDeveloperReportingV1beta1DimensionValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1DimensionValue(o[0]);
  checkGooglePlayDeveloperReportingV1beta1DimensionValue(o[1]);
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1Anomaly = 0;
api.GooglePlayDeveloperReportingV1beta1Anomaly
buildGooglePlayDeveloperReportingV1beta1Anomaly() {
  final o = api.GooglePlayDeveloperReportingV1beta1Anomaly();
  buildCounterGooglePlayDeveloperReportingV1beta1Anomaly++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1Anomaly < 3) {
    o.dimensions = buildUnnamed0();
    o.metric = buildGooglePlayDeveloperReportingV1beta1MetricValue();
    o.metricSet = 'foo';
    o.name = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1beta1TimelineSpec();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1Anomaly--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1Anomaly(
  api.GooglePlayDeveloperReportingV1beta1Anomaly o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1Anomaly++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1Anomaly < 3) {
    checkUnnamed0(o.dimensions!);
    checkGooglePlayDeveloperReportingV1beta1MetricValue(o.metric!);
    unittest.expect(o.metricSet!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1TimelineSpec(o.timelineSpec!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1Anomaly--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1AnrRateMetricSet = 0;
api.GooglePlayDeveloperReportingV1beta1AnrRateMetricSet
buildGooglePlayDeveloperReportingV1beta1AnrRateMetricSet() {
  final o = api.GooglePlayDeveloperReportingV1beta1AnrRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1beta1AnrRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1AnrRateMetricSet < 3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1beta1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1AnrRateMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1AnrRateMetricSet(
  api.GooglePlayDeveloperReportingV1beta1AnrRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1AnrRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1AnrRateMetricSet < 3) {
    checkGooglePlayDeveloperReportingV1beta1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1AnrRateMetricSet--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1App = 0;
api.GooglePlayDeveloperReportingV1beta1App
buildGooglePlayDeveloperReportingV1beta1App() {
  final o = api.GooglePlayDeveloperReportingV1beta1App();
  buildCounterGooglePlayDeveloperReportingV1beta1App++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1App < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.packageName = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1App--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1App(
  api.GooglePlayDeveloperReportingV1beta1App o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1App++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1App < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.packageName!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1App--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1AppVersion = 0;
api.GooglePlayDeveloperReportingV1beta1AppVersion
buildGooglePlayDeveloperReportingV1beta1AppVersion() {
  final o = api.GooglePlayDeveloperReportingV1beta1AppVersion();
  buildCounterGooglePlayDeveloperReportingV1beta1AppVersion++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1AppVersion < 3) {
    o.versionCode = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1AppVersion--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1AppVersion(
  api.GooglePlayDeveloperReportingV1beta1AppVersion o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1AppVersion++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1AppVersion < 3) {
    unittest.expect(o.versionCode!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1AppVersion--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1CrashRateMetricSet = 0;
api.GooglePlayDeveloperReportingV1beta1CrashRateMetricSet
buildGooglePlayDeveloperReportingV1beta1CrashRateMetricSet() {
  final o = api.GooglePlayDeveloperReportingV1beta1CrashRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1beta1CrashRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1CrashRateMetricSet < 3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1beta1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1CrashRateMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1CrashRateMetricSet(
  api.GooglePlayDeveloperReportingV1beta1CrashRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1CrashRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1CrashRateMetricSet < 3) {
    checkGooglePlayDeveloperReportingV1beta1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1CrashRateMetricSet--;
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval = 0;
api.GooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval
buildGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval() {
  final o = api.GooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval();
  buildCounterGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval <
      3) {
    o.lowerBound = buildGoogleTypeDecimal();
    o.upperBound = buildGoogleTypeDecimal();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval(
  api.GooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval <
      3) {
    checkGoogleTypeDecimal(o.lowerBound!);
    checkGoogleTypeDecimal(o.upperBound!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1DeviceId = 0;
api.GooglePlayDeveloperReportingV1beta1DeviceId
buildGooglePlayDeveloperReportingV1beta1DeviceId() {
  final o = api.GooglePlayDeveloperReportingV1beta1DeviceId();
  buildCounterGooglePlayDeveloperReportingV1beta1DeviceId++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1DeviceId < 3) {
    o.buildBrand = 'foo';
    o.buildDevice = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1DeviceId--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1DeviceId(
  api.GooglePlayDeveloperReportingV1beta1DeviceId o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1DeviceId++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1DeviceId < 3) {
    unittest.expect(o.buildBrand!, unittest.equals('foo'));
    unittest.expect(o.buildDevice!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1DeviceId--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1DeviceModelSummary = 0;
api.GooglePlayDeveloperReportingV1beta1DeviceModelSummary
buildGooglePlayDeveloperReportingV1beta1DeviceModelSummary() {
  final o = api.GooglePlayDeveloperReportingV1beta1DeviceModelSummary();
  buildCounterGooglePlayDeveloperReportingV1beta1DeviceModelSummary++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1DeviceModelSummary < 3) {
    o.deviceId = buildGooglePlayDeveloperReportingV1beta1DeviceId();
    o.deviceUri = 'foo';
    o.marketingName = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1DeviceModelSummary--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1DeviceModelSummary(
  api.GooglePlayDeveloperReportingV1beta1DeviceModelSummary o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1DeviceModelSummary++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1DeviceModelSummary < 3) {
    checkGooglePlayDeveloperReportingV1beta1DeviceId(o.deviceId!);
    unittest.expect(o.deviceUri!, unittest.equals('foo'));
    unittest.expect(o.marketingName!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1DeviceModelSummary--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1DimensionValue = 0;
api.GooglePlayDeveloperReportingV1beta1DimensionValue
buildGooglePlayDeveloperReportingV1beta1DimensionValue() {
  final o = api.GooglePlayDeveloperReportingV1beta1DimensionValue();
  buildCounterGooglePlayDeveloperReportingV1beta1DimensionValue++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1DimensionValue < 3) {
    o.dimension = 'foo';
    o.int64Value = 'foo';
    o.stringValue = 'foo';
    o.valueLabel = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1DimensionValue--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1DimensionValue(
  api.GooglePlayDeveloperReportingV1beta1DimensionValue o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1DimensionValue++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1DimensionValue < 3) {
    unittest.expect(o.dimension!, unittest.equals('foo'));
    unittest.expect(o.int64Value!, unittest.equals('foo'));
    unittest.expect(o.stringValue!, unittest.equals('foo'));
    unittest.expect(o.valueLabel!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1DimensionValue--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet = 0;
api.GooglePlayDeveloperReportingV1beta1ErrorCountMetricSet
buildGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet() {
  final o = api.GooglePlayDeveloperReportingV1beta1ErrorCountMetricSet();
  buildCounterGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet < 3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1beta1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet(
  api.GooglePlayDeveloperReportingV1beta1ErrorCountMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet < 3) {
    checkGooglePlayDeveloperReportingV1beta1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1IssueAnnotation>
buildUnnamed1() => [
  buildGooglePlayDeveloperReportingV1beta1IssueAnnotation(),
  buildGooglePlayDeveloperReportingV1beta1IssueAnnotation(),
];

void checkUnnamed1(
  core.List<api.GooglePlayDeveloperReportingV1beta1IssueAnnotation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1IssueAnnotation(o[0]);
  checkGooglePlayDeveloperReportingV1beta1IssueAnnotation(o[1]);
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1ErrorIssue = 0;
api.GooglePlayDeveloperReportingV1beta1ErrorIssue
buildGooglePlayDeveloperReportingV1beta1ErrorIssue() {
  final o = api.GooglePlayDeveloperReportingV1beta1ErrorIssue();
  buildCounterGooglePlayDeveloperReportingV1beta1ErrorIssue++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1ErrorIssue < 3) {
    o.annotations = buildUnnamed1();
    o.cause = 'foo';
    o.distinctUsers = 'foo';
    o.distinctUsersPercent = buildGoogleTypeDecimal();
    o.errorReportCount = 'foo';
    o.firstAppVersion = buildGooglePlayDeveloperReportingV1beta1AppVersion();
    o.firstOsVersion = buildGooglePlayDeveloperReportingV1beta1OsVersion();
    o.issueUri = 'foo';
    o.lastAppVersion = buildGooglePlayDeveloperReportingV1beta1AppVersion();
    o.lastErrorReportTime = 'foo';
    o.lastOsVersion = buildGooglePlayDeveloperReportingV1beta1OsVersion();
    o.location = 'foo';
    o.name = 'foo';
    o.sampleErrorReports = buildUnnamed2();
    o.type = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1ErrorIssue--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1ErrorIssue(
  api.GooglePlayDeveloperReportingV1beta1ErrorIssue o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1ErrorIssue++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1ErrorIssue < 3) {
    checkUnnamed1(o.annotations!);
    unittest.expect(o.cause!, unittest.equals('foo'));
    unittest.expect(o.distinctUsers!, unittest.equals('foo'));
    checkGoogleTypeDecimal(o.distinctUsersPercent!);
    unittest.expect(o.errorReportCount!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1AppVersion(o.firstAppVersion!);
    checkGooglePlayDeveloperReportingV1beta1OsVersion(o.firstOsVersion!);
    unittest.expect(o.issueUri!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1AppVersion(o.lastAppVersion!);
    unittest.expect(o.lastErrorReportTime!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1OsVersion(o.lastOsVersion!);
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed2(o.sampleErrorReports!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1ErrorIssue--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1ErrorReport = 0;
api.GooglePlayDeveloperReportingV1beta1ErrorReport
buildGooglePlayDeveloperReportingV1beta1ErrorReport() {
  final o = api.GooglePlayDeveloperReportingV1beta1ErrorReport();
  buildCounterGooglePlayDeveloperReportingV1beta1ErrorReport++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1ErrorReport < 3) {
    o.appVersion = buildGooglePlayDeveloperReportingV1beta1AppVersion();
    o.deviceModel =
        buildGooglePlayDeveloperReportingV1beta1DeviceModelSummary();
    o.eventTime = 'foo';
    o.issue = 'foo';
    o.name = 'foo';
    o.osVersion = buildGooglePlayDeveloperReportingV1beta1OsVersion();
    o.reportText = 'foo';
    o.type = 'foo';
    o.vcsInformation = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1ErrorReport--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1ErrorReport(
  api.GooglePlayDeveloperReportingV1beta1ErrorReport o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1ErrorReport++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1ErrorReport < 3) {
    checkGooglePlayDeveloperReportingV1beta1AppVersion(o.appVersion!);
    checkGooglePlayDeveloperReportingV1beta1DeviceModelSummary(o.deviceModel!);
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    unittest.expect(o.issue!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1OsVersion(o.osVersion!);
    unittest.expect(o.reportText!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.vcsInformation!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1ErrorReport--;
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet = 0;
api.GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet
buildGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet <
      3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1beta1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet(
  api.GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet <
      3) {
    checkGooglePlayDeveloperReportingV1beta1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness>
buildUnnamed3() => [
  buildGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness(),
  buildGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness(),
];

void checkUnnamed3(
  core.List<api.GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness(o[0]);
  checkGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness(o[1]);
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfo = 0;
api.GooglePlayDeveloperReportingV1beta1FreshnessInfo
buildGooglePlayDeveloperReportingV1beta1FreshnessInfo() {
  final o = api.GooglePlayDeveloperReportingV1beta1FreshnessInfo();
  buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfo++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfo < 3) {
    o.freshnesses = buildUnnamed3();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfo--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1FreshnessInfo(
  api.GooglePlayDeveloperReportingV1beta1FreshnessInfo o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfo++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfo < 3) {
    checkUnnamed3(o.freshnesses!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfo--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness =
    0;
api.GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness
buildGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness() {
  final o = api.GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness();
  buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness <
      3) {
    o.aggregationPeriod = 'foo';
    o.latestEndTime = buildGoogleTypeDateTime();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness(
  api.GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness <
      3) {
    unittest.expect(o.aggregationPeriod!, unittest.equals('foo'));
    checkGoogleTypeDateTime(o.latestEndTime!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1IssueAnnotation = 0;
api.GooglePlayDeveloperReportingV1beta1IssueAnnotation
buildGooglePlayDeveloperReportingV1beta1IssueAnnotation() {
  final o = api.GooglePlayDeveloperReportingV1beta1IssueAnnotation();
  buildCounterGooglePlayDeveloperReportingV1beta1IssueAnnotation++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1IssueAnnotation < 3) {
    o.body = 'foo';
    o.category = 'foo';
    o.title = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1IssueAnnotation--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1IssueAnnotation(
  api.GooglePlayDeveloperReportingV1beta1IssueAnnotation o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1IssueAnnotation++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1IssueAnnotation < 3) {
    unittest.expect(o.body!, unittest.equals('foo'));
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1IssueAnnotation--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1Anomaly> buildUnnamed4() => [
  buildGooglePlayDeveloperReportingV1beta1Anomaly(),
  buildGooglePlayDeveloperReportingV1beta1Anomaly(),
];

void checkUnnamed4(
  core.List<api.GooglePlayDeveloperReportingV1beta1Anomaly> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1Anomaly(o[0]);
  checkGooglePlayDeveloperReportingV1beta1Anomaly(o[1]);
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse =
    0;
api.GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse
buildGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse() {
  final o = api.GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse();
  buildCounterGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse <
      3) {
    o.anomalies = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse(
  api.GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse <
      3) {
    checkUnnamed4(o.anomalies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1LmkRateMetricSet = 0;
api.GooglePlayDeveloperReportingV1beta1LmkRateMetricSet
buildGooglePlayDeveloperReportingV1beta1LmkRateMetricSet() {
  final o = api.GooglePlayDeveloperReportingV1beta1LmkRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1beta1LmkRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1LmkRateMetricSet < 3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1beta1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1LmkRateMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1LmkRateMetricSet(
  api.GooglePlayDeveloperReportingV1beta1LmkRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1LmkRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1LmkRateMetricSet < 3) {
    checkGooglePlayDeveloperReportingV1beta1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1LmkRateMetricSet--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1MetricValue = 0;
api.GooglePlayDeveloperReportingV1beta1MetricValue
buildGooglePlayDeveloperReportingV1beta1MetricValue() {
  final o = api.GooglePlayDeveloperReportingV1beta1MetricValue();
  buildCounterGooglePlayDeveloperReportingV1beta1MetricValue++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1MetricValue < 3) {
    o.decimalValue = buildGoogleTypeDecimal();
    o.decimalValueConfidenceInterval =
        buildGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval();
    o.metric = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1MetricValue--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1MetricValue(
  api.GooglePlayDeveloperReportingV1beta1MetricValue o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1MetricValue++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1MetricValue < 3) {
    checkGoogleTypeDecimal(o.decimalValue!);
    checkGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval(
      o.decimalValueConfidenceInterval!,
    );
    unittest.expect(o.metric!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1MetricValue--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1DimensionValue>
buildUnnamed5() => [
  buildGooglePlayDeveloperReportingV1beta1DimensionValue(),
  buildGooglePlayDeveloperReportingV1beta1DimensionValue(),
];

void checkUnnamed5(
  core.List<api.GooglePlayDeveloperReportingV1beta1DimensionValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1DimensionValue(o[0]);
  checkGooglePlayDeveloperReportingV1beta1DimensionValue(o[1]);
}

core.List<api.GooglePlayDeveloperReportingV1beta1MetricValue> buildUnnamed6() =>
    [
      buildGooglePlayDeveloperReportingV1beta1MetricValue(),
      buildGooglePlayDeveloperReportingV1beta1MetricValue(),
    ];

void checkUnnamed6(
  core.List<api.GooglePlayDeveloperReportingV1beta1MetricValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1MetricValue(o[0]);
  checkGooglePlayDeveloperReportingV1beta1MetricValue(o[1]);
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1MetricsRow = 0;
api.GooglePlayDeveloperReportingV1beta1MetricsRow
buildGooglePlayDeveloperReportingV1beta1MetricsRow() {
  final o = api.GooglePlayDeveloperReportingV1beta1MetricsRow();
  buildCounterGooglePlayDeveloperReportingV1beta1MetricsRow++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1MetricsRow < 3) {
    o.aggregationPeriod = 'foo';
    o.dimensions = buildUnnamed5();
    o.metrics = buildUnnamed6();
    o.startTime = buildGoogleTypeDateTime();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1MetricsRow--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1MetricsRow(
  api.GooglePlayDeveloperReportingV1beta1MetricsRow o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1MetricsRow++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1MetricsRow < 3) {
    unittest.expect(o.aggregationPeriod!, unittest.equals('foo'));
    checkUnnamed5(o.dimensions!);
    checkUnnamed6(o.metrics!);
    checkGoogleTypeDateTime(o.startTime!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1MetricsRow--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1OsVersion = 0;
api.GooglePlayDeveloperReportingV1beta1OsVersion
buildGooglePlayDeveloperReportingV1beta1OsVersion() {
  final o = api.GooglePlayDeveloperReportingV1beta1OsVersion();
  buildCounterGooglePlayDeveloperReportingV1beta1OsVersion++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1OsVersion < 3) {
    o.apiLevel = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1OsVersion--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1OsVersion(
  api.GooglePlayDeveloperReportingV1beta1OsVersion o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1OsVersion++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1OsVersion < 3) {
    unittest.expect(o.apiLevel!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1OsVersion--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest = 0;
api.GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest
buildGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed7();
    o.filter = 'foo';
    o.metrics = buildUnnamed8();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1beta1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest <
      3) {
    checkUnnamed7(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed8(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> buildUnnamed9() =>
    [
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
    ];

void checkUnnamed9(
  core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse
buildGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed9();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed9(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse--;
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest
buildGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed10();
    o.filter = 'foo';
    o.metrics = buildUnnamed11();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1beta1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest <
      3) {
    checkUnnamed10(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed11(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> buildUnnamed12() =>
    [
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
    ];

void checkUnnamed12(
  core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse
buildGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed12();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse--;
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest
buildGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed13();
    o.filter = 'foo';
    o.metrics = buildUnnamed14();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1beta1TimelineSpec();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest(
  api.GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest <
      3) {
    checkUnnamed13(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed14(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1TimelineSpec(o.timelineSpec!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> buildUnnamed15() =>
    [
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
    ];

void checkUnnamed15(
  core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse
buildGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed15();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse(
  api.GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed15(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse--;
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest
buildGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed16();
    o.filter = 'foo';
    o.metrics = buildUnnamed17();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1beta1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest <
      3) {
    checkUnnamed16(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed17(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> buildUnnamed18() =>
    [
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
    ];

void checkUnnamed18(
  core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse
buildGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed18();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed18(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest = 0;
api.GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest
buildGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed19();
    o.filter = 'foo';
    o.metrics = buildUnnamed20();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1beta1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest <
      3) {
    checkUnnamed19(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed20(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> buildUnnamed21() =>
    [
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
    ];

void checkUnnamed21(
  core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse
buildGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed21();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed21(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest
buildGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed22();
    o.filter = 'foo';
    o.metrics = buildUnnamed23();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1beta1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest <
      3) {
    checkUnnamed22(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed23(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> buildUnnamed24() =>
    [
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
    ];

void checkUnnamed24(
  core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse
buildGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed24();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed24(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest
buildGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed25();
    o.filter = 'foo';
    o.metrics = buildUnnamed26();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1beta1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest <
      3) {
    checkUnnamed25(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed26(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> buildUnnamed27() =>
    [
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
    ];

void checkUnnamed27(
  core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse
buildGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed27();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed27(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest
buildGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed28();
    o.filter = 'foo';
    o.metrics = buildUnnamed29();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1beta1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest <
      3) {
    checkUnnamed28(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed29(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1beta1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> buildUnnamed30() =>
    [
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
      buildGooglePlayDeveloperReportingV1beta1MetricsRow(),
    ];

void checkUnnamed30(
  core.List<api.GooglePlayDeveloperReportingV1beta1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1beta1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse
buildGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed30();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed30(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse--;
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1Release = 0;
api.GooglePlayDeveloperReportingV1beta1Release
buildGooglePlayDeveloperReportingV1beta1Release() {
  final o = api.GooglePlayDeveloperReportingV1beta1Release();
  buildCounterGooglePlayDeveloperReportingV1beta1Release++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1Release < 3) {
    o.displayName = 'foo';
    o.versionCodes = buildUnnamed31();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1Release--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1Release(
  api.GooglePlayDeveloperReportingV1beta1Release o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1Release++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1Release < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed31(o.versionCodes!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1Release--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1Track> buildUnnamed32() => [
  buildGooglePlayDeveloperReportingV1beta1Track(),
  buildGooglePlayDeveloperReportingV1beta1Track(),
];

void checkUnnamed32(core.List<api.GooglePlayDeveloperReportingV1beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1Track(o[0]);
  checkGooglePlayDeveloperReportingV1beta1Track(o[1]);
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions =
    0;
api.GooglePlayDeveloperReportingV1beta1ReleaseFilterOptions
buildGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions() {
  final o = api.GooglePlayDeveloperReportingV1beta1ReleaseFilterOptions();
  buildCounterGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions < 3) {
    o.tracks = buildUnnamed32();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions(
  api.GooglePlayDeveloperReportingV1beta1ReleaseFilterOptions o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions < 3) {
    checkUnnamed32(o.tracks!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1App> buildUnnamed33() => [
  buildGooglePlayDeveloperReportingV1beta1App(),
  buildGooglePlayDeveloperReportingV1beta1App(),
];

void checkUnnamed33(core.List<api.GooglePlayDeveloperReportingV1beta1App> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1App(o[0]);
  checkGooglePlayDeveloperReportingV1beta1App(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse = 0;
api.GooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse
buildGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse();
  buildCounterGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse <
      3) {
    o.apps = buildUnnamed33();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse(
  api.GooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse <
      3) {
    checkUnnamed33(o.apps!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1ErrorIssue> buildUnnamed34() =>
    [
      buildGooglePlayDeveloperReportingV1beta1ErrorIssue(),
      buildGooglePlayDeveloperReportingV1beta1ErrorIssue(),
    ];

void checkUnnamed34(
  core.List<api.GooglePlayDeveloperReportingV1beta1ErrorIssue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1ErrorIssue(o[0]);
  checkGooglePlayDeveloperReportingV1beta1ErrorIssue(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse = 0;
api.GooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse
buildGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse() {
  final o = api.GooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse();
  buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse <
      3) {
    o.errorIssues = buildUnnamed34();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse(
  api.GooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse <
      3) {
    checkUnnamed34(o.errorIssues!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1ErrorReport>
buildUnnamed35() => [
  buildGooglePlayDeveloperReportingV1beta1ErrorReport(),
  buildGooglePlayDeveloperReportingV1beta1ErrorReport(),
];

void checkUnnamed35(
  core.List<api.GooglePlayDeveloperReportingV1beta1ErrorReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1ErrorReport(o[0]);
  checkGooglePlayDeveloperReportingV1beta1ErrorReport(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse = 0;
api.GooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse
buildGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse() {
  final o = api.GooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse();
  buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse <
      3) {
    o.errorReports = buildUnnamed35();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse(
  api.GooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse <
      3) {
    checkUnnamed35(o.errorReports!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse--;
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet = 0;
api.GooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet
buildGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet() {
  final o = api.GooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet <
      3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1beta1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet(
  api.GooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet <
      3) {
    checkGooglePlayDeveloperReportingV1beta1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet =
    0;
api.GooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet
buildGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet() {
  final o = api.GooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet <
      3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1beta1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet(
  api.GooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet <
      3) {
    checkGooglePlayDeveloperReportingV1beta1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet--;
}

core.int
buildCounterGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet =
    0;
api.GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet
buildGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet() {
  final o =
      api.GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet <
      3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1beta1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet(
  api.GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet <
      3) {
    checkGooglePlayDeveloperReportingV1beta1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet--;
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1TimelineSpec = 0;
api.GooglePlayDeveloperReportingV1beta1TimelineSpec
buildGooglePlayDeveloperReportingV1beta1TimelineSpec() {
  final o = api.GooglePlayDeveloperReportingV1beta1TimelineSpec();
  buildCounterGooglePlayDeveloperReportingV1beta1TimelineSpec++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1TimelineSpec < 3) {
    o.aggregationPeriod = 'foo';
    o.endTime = buildGoogleTypeDateTime();
    o.startTime = buildGoogleTypeDateTime();
  }
  buildCounterGooglePlayDeveloperReportingV1beta1TimelineSpec--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1TimelineSpec(
  api.GooglePlayDeveloperReportingV1beta1TimelineSpec o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1TimelineSpec++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1TimelineSpec < 3) {
    unittest.expect(o.aggregationPeriod!, unittest.equals('foo'));
    checkGoogleTypeDateTime(o.endTime!);
    checkGoogleTypeDateTime(o.startTime!);
  }
  buildCounterGooglePlayDeveloperReportingV1beta1TimelineSpec--;
}

core.List<api.GooglePlayDeveloperReportingV1beta1Release> buildUnnamed36() => [
  buildGooglePlayDeveloperReportingV1beta1Release(),
  buildGooglePlayDeveloperReportingV1beta1Release(),
];

void checkUnnamed36(
  core.List<api.GooglePlayDeveloperReportingV1beta1Release> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1beta1Release(o[0]);
  checkGooglePlayDeveloperReportingV1beta1Release(o[1]);
}

core.int buildCounterGooglePlayDeveloperReportingV1beta1Track = 0;
api.GooglePlayDeveloperReportingV1beta1Track
buildGooglePlayDeveloperReportingV1beta1Track() {
  final o = api.GooglePlayDeveloperReportingV1beta1Track();
  buildCounterGooglePlayDeveloperReportingV1beta1Track++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1Track < 3) {
    o.displayName = 'foo';
    o.servingReleases = buildUnnamed36();
    o.type = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1beta1Track--;
  return o;
}

void checkGooglePlayDeveloperReportingV1beta1Track(
  api.GooglePlayDeveloperReportingV1beta1Track o,
) {
  buildCounterGooglePlayDeveloperReportingV1beta1Track++;
  if (buildCounterGooglePlayDeveloperReportingV1beta1Track < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed36(o.servingReleases!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1beta1Track--;
}

core.int buildCounterGoogleTypeDateTime = 0;
api.GoogleTypeDateTime buildGoogleTypeDateTime() {
  final o = api.GoogleTypeDateTime();
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    o.day = 42;
    o.hours = 42;
    o.minutes = 42;
    o.month = 42;
    o.nanos = 42;
    o.seconds = 42;
    o.timeZone = buildGoogleTypeTimeZone();
    o.utcOffset = 'foo';
    o.year = 42;
  }
  buildCounterGoogleTypeDateTime--;
  return o;
}

void checkGoogleTypeDateTime(api.GoogleTypeDateTime o) {
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.hours!, unittest.equals(42));
    unittest.expect(o.minutes!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.seconds!, unittest.equals(42));
    checkGoogleTypeTimeZone(o.timeZone!);
    unittest.expect(o.utcOffset!, unittest.equals('foo'));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterGoogleTypeDateTime--;
}

core.int buildCounterGoogleTypeDecimal = 0;
api.GoogleTypeDecimal buildGoogleTypeDecimal() {
  final o = api.GoogleTypeDecimal();
  buildCounterGoogleTypeDecimal++;
  if (buildCounterGoogleTypeDecimal < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleTypeDecimal--;
  return o;
}

void checkGoogleTypeDecimal(api.GoogleTypeDecimal o) {
  buildCounterGoogleTypeDecimal++;
  if (buildCounterGoogleTypeDecimal < 3) {
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeDecimal--;
}

core.int buildCounterGoogleTypeTimeZone = 0;
api.GoogleTypeTimeZone buildGoogleTypeTimeZone() {
  final o = api.GoogleTypeTimeZone();
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleTypeTimeZone--;
  return o;
}

void checkGoogleTypeTimeZone(api.GoogleTypeTimeZone o) {
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeTimeZone--;
}

void main() {
  unittest.group('obj-schema-GooglePlayDeveloperReportingV1beta1Anomaly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePlayDeveloperReportingV1beta1Anomaly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePlayDeveloperReportingV1beta1Anomaly.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooglePlayDeveloperReportingV1beta1Anomaly(od);
    });
  });

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1AnrRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1AnrRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1AnrRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1AnrRateMetricSet(od);
      });
    },
  );

  unittest.group('obj-schema-GooglePlayDeveloperReportingV1beta1App', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePlayDeveloperReportingV1beta1App();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePlayDeveloperReportingV1beta1App.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooglePlayDeveloperReportingV1beta1App(od);
    });
  });

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1AppVersion',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1AppVersion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GooglePlayDeveloperReportingV1beta1AppVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1AppVersion(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1CrashRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1CrashRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1CrashRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1CrashRateMetricSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval(od);
      });
    },
  );

  unittest.group('obj-schema-GooglePlayDeveloperReportingV1beta1DeviceId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePlayDeveloperReportingV1beta1DeviceId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePlayDeveloperReportingV1beta1DeviceId.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooglePlayDeveloperReportingV1beta1DeviceId(od);
    });
  });

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1DeviceModelSummary',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1DeviceModelSummary();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1DeviceModelSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1DeviceModelSummary(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1DimensionValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1DimensionValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1DimensionValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1DimensionValue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1ErrorCountMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1ErrorCountMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1ErrorIssue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1ErrorIssue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GooglePlayDeveloperReportingV1beta1ErrorIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1ErrorIssue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1ErrorReport',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1ErrorReport();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GooglePlayDeveloperReportingV1beta1ErrorReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1ErrorReport(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1FreshnessInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1FreshnessInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1FreshnessInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1FreshnessInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1IssueAnnotation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1IssueAnnotation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1IssueAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1IssueAnnotation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1LmkRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1LmkRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1LmkRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1LmkRateMetricSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1MetricValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1MetricValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GooglePlayDeveloperReportingV1beta1MetricValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1MetricValue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1MetricsRow',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1MetricsRow();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GooglePlayDeveloperReportingV1beta1MetricsRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1MetricsRow(od);
      });
    },
  );

  unittest.group('obj-schema-GooglePlayDeveloperReportingV1beta1OsVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePlayDeveloperReportingV1beta1OsVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePlayDeveloperReportingV1beta1OsVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooglePlayDeveloperReportingV1beta1OsVersion(od);
    });
  });

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GooglePlayDeveloperReportingV1beta1Release', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePlayDeveloperReportingV1beta1Release();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePlayDeveloperReportingV1beta1Release.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooglePlayDeveloperReportingV1beta1Release(od);
    });
  });

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1ReleaseFilterOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1ReleaseFilterOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1beta1TimelineSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1beta1TimelineSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GooglePlayDeveloperReportingV1beta1TimelineSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1beta1TimelineSpec(od);
      });
    },
  );

  unittest.group('obj-schema-GooglePlayDeveloperReportingV1beta1Track', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePlayDeveloperReportingV1beta1Track();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePlayDeveloperReportingV1beta1Track.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooglePlayDeveloperReportingV1beta1Track(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDateTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeDateTime(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDecimal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDecimal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDecimal.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeDecimal(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeTimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeTimeZone.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeTimeZone(od);
    });
  });

  unittest.group('resource-AnomaliesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).anomalies;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1ListAnomaliesResponse(
        response
            as api.GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse,
      );
    });
  });

  unittest.group('resource-AppsResource', () {
    unittest.test('method--fetchReleaseFilterOptions', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).apps;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchReleaseFilterOptions(
        arg_name,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1ReleaseFilterOptions(
        response as api.GooglePlayDeveloperReportingV1beta1ReleaseFilterOptions,
      );
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).apps;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('v1beta1/apps:search'),
          );
          pathOffset += 19;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse(
        response
            as api.GooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse,
      );
    });
  });

  unittest.group('resource-VitalsAnrrateResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.anrrate;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1AnrRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1beta1AnrRateMetricSet(
        response as api.GooglePlayDeveloperReportingV1beta1AnrRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.anrrate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse,
      );
    });
  });

  unittest.group('resource-VitalsCrashrateResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.crashrate;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1CrashRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1beta1CrashRateMetricSet(
        response as api.GooglePlayDeveloperReportingV1beta1CrashRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.crashrate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse,
      );
    });
  });

  unittest.group('resource-VitalsErrorsCountsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.errors.counts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1beta1ErrorCountMetricSet(
        response as api.GooglePlayDeveloperReportingV1beta1ErrorCountMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.errors.counts;
      final arg_request =
          buildGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse,
      );
    });
  });

  unittest.group('resource-VitalsErrorsIssuesResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.errors.issues;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime_day = 42;
      final arg_interval_endTime_hours = 42;
      final arg_interval_endTime_minutes = 42;
      final arg_interval_endTime_month = 42;
      final arg_interval_endTime_nanos = 42;
      final arg_interval_endTime_seconds = 42;
      final arg_interval_endTime_timeZone_id = 'foo';
      final arg_interval_endTime_timeZone_version = 'foo';
      final arg_interval_endTime_utcOffset = 'foo';
      final arg_interval_endTime_year = 42;
      final arg_interval_startTime_day = 42;
      final arg_interval_startTime_hours = 42;
      final arg_interval_startTime_minutes = 42;
      final arg_interval_startTime_month = 42;
      final arg_interval_startTime_nanos = 42;
      final arg_interval_startTime_seconds = 42;
      final arg_interval_startTime_timeZone_id = 'foo';
      final arg_interval_startTime_timeZone_version = 'foo';
      final arg_interval_startTime_utcOffset = 'foo';
      final arg_interval_startTime_year = 42;
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_sampleErrorReportLimit = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.day']!.first),
            unittest.equals(arg_interval_endTime_day),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.hours']!.first),
            unittest.equals(arg_interval_endTime_hours),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.minutes']!.first),
            unittest.equals(arg_interval_endTime_minutes),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.month']!.first),
            unittest.equals(arg_interval_endTime_month),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.nanos']!.first),
            unittest.equals(arg_interval_endTime_nanos),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.seconds']!.first),
            unittest.equals(arg_interval_endTime_seconds),
          );
          unittest.expect(
            queryMap['interval.endTime.timeZone.id']!.first,
            unittest.equals(arg_interval_endTime_timeZone_id),
          );
          unittest.expect(
            queryMap['interval.endTime.timeZone.version']!.first,
            unittest.equals(arg_interval_endTime_timeZone_version),
          );
          unittest.expect(
            queryMap['interval.endTime.utcOffset']!.first,
            unittest.equals(arg_interval_endTime_utcOffset),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.year']!.first),
            unittest.equals(arg_interval_endTime_year),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.day']!.first),
            unittest.equals(arg_interval_startTime_day),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.hours']!.first),
            unittest.equals(arg_interval_startTime_hours),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.minutes']!.first),
            unittest.equals(arg_interval_startTime_minutes),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.month']!.first),
            unittest.equals(arg_interval_startTime_month),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.nanos']!.first),
            unittest.equals(arg_interval_startTime_nanos),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.seconds']!.first),
            unittest.equals(arg_interval_startTime_seconds),
          );
          unittest.expect(
            queryMap['interval.startTime.timeZone.id']!.first,
            unittest.equals(arg_interval_startTime_timeZone_id),
          );
          unittest.expect(
            queryMap['interval.startTime.timeZone.version']!.first,
            unittest.equals(arg_interval_startTime_timeZone_version),
          );
          unittest.expect(
            queryMap['interval.startTime.utcOffset']!.first,
            unittest.equals(arg_interval_startTime_utcOffset),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.year']!.first),
            unittest.equals(arg_interval_startTime_year),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
            core.int.parse(queryMap['sampleErrorReportLimit']!.first),
            unittest.equals(arg_sampleErrorReportLimit),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_parent,
        filter: arg_filter,
        interval_endTime_day: arg_interval_endTime_day,
        interval_endTime_hours: arg_interval_endTime_hours,
        interval_endTime_minutes: arg_interval_endTime_minutes,
        interval_endTime_month: arg_interval_endTime_month,
        interval_endTime_nanos: arg_interval_endTime_nanos,
        interval_endTime_seconds: arg_interval_endTime_seconds,
        interval_endTime_timeZone_id: arg_interval_endTime_timeZone_id,
        interval_endTime_timeZone_version:
            arg_interval_endTime_timeZone_version,
        interval_endTime_utcOffset: arg_interval_endTime_utcOffset,
        interval_endTime_year: arg_interval_endTime_year,
        interval_startTime_day: arg_interval_startTime_day,
        interval_startTime_hours: arg_interval_startTime_hours,
        interval_startTime_minutes: arg_interval_startTime_minutes,
        interval_startTime_month: arg_interval_startTime_month,
        interval_startTime_nanos: arg_interval_startTime_nanos,
        interval_startTime_seconds: arg_interval_startTime_seconds,
        interval_startTime_timeZone_id: arg_interval_startTime_timeZone_id,
        interval_startTime_timeZone_version:
            arg_interval_startTime_timeZone_version,
        interval_startTime_utcOffset: arg_interval_startTime_utcOffset,
        interval_startTime_year: arg_interval_startTime_year,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        sampleErrorReportLimit: arg_sampleErrorReportLimit,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse(
        response
            as api.GooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse,
      );
    });
  });

  unittest.group('resource-VitalsErrorsReportsResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.errors.reports;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime_day = 42;
      final arg_interval_endTime_hours = 42;
      final arg_interval_endTime_minutes = 42;
      final arg_interval_endTime_month = 42;
      final arg_interval_endTime_nanos = 42;
      final arg_interval_endTime_seconds = 42;
      final arg_interval_endTime_timeZone_id = 'foo';
      final arg_interval_endTime_timeZone_version = 'foo';
      final arg_interval_endTime_utcOffset = 'foo';
      final arg_interval_endTime_year = 42;
      final arg_interval_startTime_day = 42;
      final arg_interval_startTime_hours = 42;
      final arg_interval_startTime_minutes = 42;
      final arg_interval_startTime_month = 42;
      final arg_interval_startTime_nanos = 42;
      final arg_interval_startTime_seconds = 42;
      final arg_interval_startTime_timeZone_id = 'foo';
      final arg_interval_startTime_timeZone_version = 'foo';
      final arg_interval_startTime_utcOffset = 'foo';
      final arg_interval_startTime_year = 42;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.day']!.first),
            unittest.equals(arg_interval_endTime_day),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.hours']!.first),
            unittest.equals(arg_interval_endTime_hours),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.minutes']!.first),
            unittest.equals(arg_interval_endTime_minutes),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.month']!.first),
            unittest.equals(arg_interval_endTime_month),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.nanos']!.first),
            unittest.equals(arg_interval_endTime_nanos),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.seconds']!.first),
            unittest.equals(arg_interval_endTime_seconds),
          );
          unittest.expect(
            queryMap['interval.endTime.timeZone.id']!.first,
            unittest.equals(arg_interval_endTime_timeZone_id),
          );
          unittest.expect(
            queryMap['interval.endTime.timeZone.version']!.first,
            unittest.equals(arg_interval_endTime_timeZone_version),
          );
          unittest.expect(
            queryMap['interval.endTime.utcOffset']!.first,
            unittest.equals(arg_interval_endTime_utcOffset),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.endTime.year']!.first),
            unittest.equals(arg_interval_endTime_year),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.day']!.first),
            unittest.equals(arg_interval_startTime_day),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.hours']!.first),
            unittest.equals(arg_interval_startTime_hours),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.minutes']!.first),
            unittest.equals(arg_interval_startTime_minutes),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.month']!.first),
            unittest.equals(arg_interval_startTime_month),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.nanos']!.first),
            unittest.equals(arg_interval_startTime_nanos),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.seconds']!.first),
            unittest.equals(arg_interval_startTime_seconds),
          );
          unittest.expect(
            queryMap['interval.startTime.timeZone.id']!.first,
            unittest.equals(arg_interval_startTime_timeZone_id),
          );
          unittest.expect(
            queryMap['interval.startTime.timeZone.version']!.first,
            unittest.equals(arg_interval_startTime_timeZone_version),
          );
          unittest.expect(
            queryMap['interval.startTime.utcOffset']!.first,
            unittest.equals(arg_interval_startTime_utcOffset),
          );
          unittest.expect(
            core.int.parse(queryMap['interval.startTime.year']!.first),
            unittest.equals(arg_interval_startTime_year),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_parent,
        filter: arg_filter,
        interval_endTime_day: arg_interval_endTime_day,
        interval_endTime_hours: arg_interval_endTime_hours,
        interval_endTime_minutes: arg_interval_endTime_minutes,
        interval_endTime_month: arg_interval_endTime_month,
        interval_endTime_nanos: arg_interval_endTime_nanos,
        interval_endTime_seconds: arg_interval_endTime_seconds,
        interval_endTime_timeZone_id: arg_interval_endTime_timeZone_id,
        interval_endTime_timeZone_version:
            arg_interval_endTime_timeZone_version,
        interval_endTime_utcOffset: arg_interval_endTime_utcOffset,
        interval_endTime_year: arg_interval_endTime_year,
        interval_startTime_day: arg_interval_startTime_day,
        interval_startTime_hours: arg_interval_startTime_hours,
        interval_startTime_minutes: arg_interval_startTime_minutes,
        interval_startTime_month: arg_interval_startTime_month,
        interval_startTime_nanos: arg_interval_startTime_nanos,
        interval_startTime_seconds: arg_interval_startTime_seconds,
        interval_startTime_timeZone_id: arg_interval_startTime_timeZone_id,
        interval_startTime_timeZone_version:
            arg_interval_startTime_timeZone_version,
        interval_startTime_utcOffset: arg_interval_startTime_utcOffset,
        interval_startTime_year: arg_interval_startTime_year,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse(
        response
            as api.GooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse,
      );
    });
  });

  unittest.group('resource-VitalsExcessivewakeuprateResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.PlaydeveloperreportingApi(mock).vitals.excessivewakeuprate;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet(
        response
            as api.GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res =
          api.PlaydeveloperreportingApi(mock).vitals.excessivewakeuprate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse,
      );
    });
  });

  unittest.group('resource-VitalsLmkrateResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.lmkrate;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1LmkRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1beta1LmkRateMetricSet(
        response as api.GooglePlayDeveloperReportingV1beta1LmkRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.lmkrate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse,
      );
    });
  });

  unittest.group('resource-VitalsSlowrenderingrateResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.slowrenderingrate;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet(
        response
            as api.GooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.slowrenderingrate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse,
      );
    });
  });

  unittest.group('resource-VitalsSlowstartrateResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.slowstartrate;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet(
        response
            as api.GooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.slowstartrate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse,
      );
    });
  });

  unittest.group('resource-VitalsStuckbackgroundwakelockrateResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.PlaydeveloperreportingApi(
            mock,
          ).vitals.stuckbackgroundwakelockrate;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet(
        response
            as api.GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res =
          api.PlaydeveloperreportingApi(
            mock,
          ).vitals.stuckbackgroundwakelockrate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse,
      );
    });
  });
}
