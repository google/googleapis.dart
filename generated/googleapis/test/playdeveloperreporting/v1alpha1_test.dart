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

import 'package:googleapis/playdeveloperreporting/v1alpha1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GooglePlayDeveloperReportingV1alpha1DimensionValue>
buildUnnamed0() => [
  buildGooglePlayDeveloperReportingV1alpha1DimensionValue(),
  buildGooglePlayDeveloperReportingV1alpha1DimensionValue(),
];

void checkUnnamed0(
  core.List<api.GooglePlayDeveloperReportingV1alpha1DimensionValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1DimensionValue(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1DimensionValue(o[1]);
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1Anomaly = 0;
api.GooglePlayDeveloperReportingV1alpha1Anomaly
buildGooglePlayDeveloperReportingV1alpha1Anomaly() {
  final o = api.GooglePlayDeveloperReportingV1alpha1Anomaly();
  buildCounterGooglePlayDeveloperReportingV1alpha1Anomaly++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1Anomaly < 3) {
    o.dimensions = buildUnnamed0();
    o.metric = buildGooglePlayDeveloperReportingV1alpha1MetricValue();
    o.metricSet = 'foo';
    o.name = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1alpha1TimelineSpec();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1Anomaly--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1Anomaly(
  api.GooglePlayDeveloperReportingV1alpha1Anomaly o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1Anomaly++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1Anomaly < 3) {
    checkUnnamed0(o.dimensions!);
    checkGooglePlayDeveloperReportingV1alpha1MetricValue(o.metric!);
    unittest.expect(o.metricSet!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1TimelineSpec(o.timelineSpec!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1Anomaly--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet = 0;
api.GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet
buildGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet() {
  final o = api.GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet < 3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1alpha1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet(
  api.GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet < 3) {
    checkGooglePlayDeveloperReportingV1alpha1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1App = 0;
api.GooglePlayDeveloperReportingV1alpha1App
buildGooglePlayDeveloperReportingV1alpha1App() {
  final o = api.GooglePlayDeveloperReportingV1alpha1App();
  buildCounterGooglePlayDeveloperReportingV1alpha1App++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1App < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.packageName = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1App--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1App(
  api.GooglePlayDeveloperReportingV1alpha1App o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1App++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1App < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.packageName!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1App--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1AppVersion = 0;
api.GooglePlayDeveloperReportingV1alpha1AppVersion
buildGooglePlayDeveloperReportingV1alpha1AppVersion() {
  final o = api.GooglePlayDeveloperReportingV1alpha1AppVersion();
  buildCounterGooglePlayDeveloperReportingV1alpha1AppVersion++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1AppVersion < 3) {
    o.versionCode = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1AppVersion--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1AppVersion(
  api.GooglePlayDeveloperReportingV1alpha1AppVersion o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1AppVersion++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1AppVersion < 3) {
    unittest.expect(o.versionCode!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1AppVersion--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet = 0;
api.GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet
buildGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet() {
  final o = api.GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet < 3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1alpha1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet(
  api.GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet < 3) {
    checkGooglePlayDeveloperReportingV1alpha1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet--;
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval = 0;
api.GooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval
buildGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval() {
  final o = api.GooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval();
  buildCounterGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval <
      3) {
    o.lowerBound = buildGoogleTypeDecimal();
    o.upperBound = buildGoogleTypeDecimal();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval(
  api.GooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval <
      3) {
    checkGoogleTypeDecimal(o.lowerBound!);
    checkGoogleTypeDecimal(o.upperBound!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1DeviceId = 0;
api.GooglePlayDeveloperReportingV1alpha1DeviceId
buildGooglePlayDeveloperReportingV1alpha1DeviceId() {
  final o = api.GooglePlayDeveloperReportingV1alpha1DeviceId();
  buildCounterGooglePlayDeveloperReportingV1alpha1DeviceId++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1DeviceId < 3) {
    o.buildBrand = 'foo';
    o.buildDevice = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1DeviceId--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1DeviceId(
  api.GooglePlayDeveloperReportingV1alpha1DeviceId o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1DeviceId++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1DeviceId < 3) {
    unittest.expect(o.buildBrand!, unittest.equals('foo'));
    unittest.expect(o.buildDevice!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1DeviceId--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1DeviceModelSummary = 0;
api.GooglePlayDeveloperReportingV1alpha1DeviceModelSummary
buildGooglePlayDeveloperReportingV1alpha1DeviceModelSummary() {
  final o = api.GooglePlayDeveloperReportingV1alpha1DeviceModelSummary();
  buildCounterGooglePlayDeveloperReportingV1alpha1DeviceModelSummary++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1DeviceModelSummary < 3) {
    o.deviceId = buildGooglePlayDeveloperReportingV1alpha1DeviceId();
    o.deviceUri = 'foo';
    o.marketingName = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1DeviceModelSummary--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1DeviceModelSummary(
  api.GooglePlayDeveloperReportingV1alpha1DeviceModelSummary o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1DeviceModelSummary++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1DeviceModelSummary < 3) {
    checkGooglePlayDeveloperReportingV1alpha1DeviceId(o.deviceId!);
    unittest.expect(o.deviceUri!, unittest.equals('foo'));
    unittest.expect(o.marketingName!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1DeviceModelSummary--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1DimensionValue = 0;
api.GooglePlayDeveloperReportingV1alpha1DimensionValue
buildGooglePlayDeveloperReportingV1alpha1DimensionValue() {
  final o = api.GooglePlayDeveloperReportingV1alpha1DimensionValue();
  buildCounterGooglePlayDeveloperReportingV1alpha1DimensionValue++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1DimensionValue < 3) {
    o.dimension = 'foo';
    o.int64Value = 'foo';
    o.stringValue = 'foo';
    o.valueLabel = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1DimensionValue--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1DimensionValue(
  api.GooglePlayDeveloperReportingV1alpha1DimensionValue o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1DimensionValue++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1DimensionValue < 3) {
    unittest.expect(o.dimension!, unittest.equals('foo'));
    unittest.expect(o.int64Value!, unittest.equals('foo'));
    unittest.expect(o.stringValue!, unittest.equals('foo'));
    unittest.expect(o.valueLabel!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1DimensionValue--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet =
    0;
api.GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet
buildGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet() {
  final o = api.GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet();
  buildCounterGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet < 3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1alpha1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet(
  api.GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet < 3) {
    checkGooglePlayDeveloperReportingV1alpha1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1IssueAnnotation>
buildUnnamed1() => [
  buildGooglePlayDeveloperReportingV1alpha1IssueAnnotation(),
  buildGooglePlayDeveloperReportingV1alpha1IssueAnnotation(),
];

void checkUnnamed1(
  core.List<api.GooglePlayDeveloperReportingV1alpha1IssueAnnotation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1IssueAnnotation(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1IssueAnnotation(o[1]);
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1ErrorIssue = 0;
api.GooglePlayDeveloperReportingV1alpha1ErrorIssue
buildGooglePlayDeveloperReportingV1alpha1ErrorIssue() {
  final o = api.GooglePlayDeveloperReportingV1alpha1ErrorIssue();
  buildCounterGooglePlayDeveloperReportingV1alpha1ErrorIssue++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1ErrorIssue < 3) {
    o.annotations = buildUnnamed1();
    o.cause = 'foo';
    o.distinctUsers = 'foo';
    o.distinctUsersPercent = buildGoogleTypeDecimal();
    o.errorReportCount = 'foo';
    o.firstAppVersion = buildGooglePlayDeveloperReportingV1alpha1AppVersion();
    o.firstOsVersion = buildGooglePlayDeveloperReportingV1alpha1OsVersion();
    o.issueUri = 'foo';
    o.lastAppVersion = buildGooglePlayDeveloperReportingV1alpha1AppVersion();
    o.lastErrorReportTime = 'foo';
    o.lastOsVersion = buildGooglePlayDeveloperReportingV1alpha1OsVersion();
    o.location = 'foo';
    o.name = 'foo';
    o.sampleErrorReports = buildUnnamed2();
    o.type = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1ErrorIssue--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1ErrorIssue(
  api.GooglePlayDeveloperReportingV1alpha1ErrorIssue o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1ErrorIssue++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1ErrorIssue < 3) {
    checkUnnamed1(o.annotations!);
    unittest.expect(o.cause!, unittest.equals('foo'));
    unittest.expect(o.distinctUsers!, unittest.equals('foo'));
    checkGoogleTypeDecimal(o.distinctUsersPercent!);
    unittest.expect(o.errorReportCount!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1AppVersion(o.firstAppVersion!);
    checkGooglePlayDeveloperReportingV1alpha1OsVersion(o.firstOsVersion!);
    unittest.expect(o.issueUri!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1AppVersion(o.lastAppVersion!);
    unittest.expect(o.lastErrorReportTime!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1OsVersion(o.lastOsVersion!);
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed2(o.sampleErrorReports!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1ErrorIssue--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1ErrorReport = 0;
api.GooglePlayDeveloperReportingV1alpha1ErrorReport
buildGooglePlayDeveloperReportingV1alpha1ErrorReport() {
  final o = api.GooglePlayDeveloperReportingV1alpha1ErrorReport();
  buildCounterGooglePlayDeveloperReportingV1alpha1ErrorReport++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1ErrorReport < 3) {
    o.appVersion = buildGooglePlayDeveloperReportingV1alpha1AppVersion();
    o.deviceModel =
        buildGooglePlayDeveloperReportingV1alpha1DeviceModelSummary();
    o.eventTime = 'foo';
    o.issue = 'foo';
    o.name = 'foo';
    o.osVersion = buildGooglePlayDeveloperReportingV1alpha1OsVersion();
    o.reportText = 'foo';
    o.type = 'foo';
    o.vcsInformation = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1ErrorReport--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1ErrorReport(
  api.GooglePlayDeveloperReportingV1alpha1ErrorReport o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1ErrorReport++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1ErrorReport < 3) {
    checkGooglePlayDeveloperReportingV1alpha1AppVersion(o.appVersion!);
    checkGooglePlayDeveloperReportingV1alpha1DeviceModelSummary(o.deviceModel!);
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    unittest.expect(o.issue!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1OsVersion(o.osVersion!);
    unittest.expect(o.reportText!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.vcsInformation!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1ErrorReport--;
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet =
    0;
api.GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet
buildGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet <
      3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1alpha1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet(
  api.GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet <
      3) {
    checkGooglePlayDeveloperReportingV1alpha1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness>
buildUnnamed3() => [
  buildGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness(),
  buildGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness(),
];

void checkUnnamed3(
  core.List<api.GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness(o[1]);
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfo = 0;
api.GooglePlayDeveloperReportingV1alpha1FreshnessInfo
buildGooglePlayDeveloperReportingV1alpha1FreshnessInfo() {
  final o = api.GooglePlayDeveloperReportingV1alpha1FreshnessInfo();
  buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfo++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfo < 3) {
    o.freshnesses = buildUnnamed3();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfo--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1FreshnessInfo(
  api.GooglePlayDeveloperReportingV1alpha1FreshnessInfo o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfo++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfo < 3) {
    checkUnnamed3(o.freshnesses!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfo--;
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness = 0;
api.GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness
buildGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness() {
  final o = api.GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness();
  buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness <
      3) {
    o.aggregationPeriod = 'foo';
    o.latestEndTime = buildGoogleTypeDateTime();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness(
  api.GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness <
      3) {
    unittest.expect(o.aggregationPeriod!, unittest.equals('foo'));
    checkGoogleTypeDateTime(o.latestEndTime!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1IssueAnnotation = 0;
api.GooglePlayDeveloperReportingV1alpha1IssueAnnotation
buildGooglePlayDeveloperReportingV1alpha1IssueAnnotation() {
  final o = api.GooglePlayDeveloperReportingV1alpha1IssueAnnotation();
  buildCounterGooglePlayDeveloperReportingV1alpha1IssueAnnotation++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1IssueAnnotation < 3) {
    o.body = 'foo';
    o.category = 'foo';
    o.title = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1IssueAnnotation--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1IssueAnnotation(
  api.GooglePlayDeveloperReportingV1alpha1IssueAnnotation o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1IssueAnnotation++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1IssueAnnotation < 3) {
    unittest.expect(o.body!, unittest.equals('foo'));
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1IssueAnnotation--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1Anomaly> buildUnnamed4() => [
  buildGooglePlayDeveloperReportingV1alpha1Anomaly(),
  buildGooglePlayDeveloperReportingV1alpha1Anomaly(),
];

void checkUnnamed4(
  core.List<api.GooglePlayDeveloperReportingV1alpha1Anomaly> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1Anomaly(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1Anomaly(o[1]);
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse =
    0;
api.GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse
buildGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse() {
  final o = api.GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse();
  buildCounterGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse <
      3) {
    o.anomalies = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse(
  api.GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse <
      3) {
    checkUnnamed4(o.anomalies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet = 0;
api.GooglePlayDeveloperReportingV1alpha1LmkRateMetricSet
buildGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet() {
  final o = api.GooglePlayDeveloperReportingV1alpha1LmkRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet < 3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1alpha1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet(
  api.GooglePlayDeveloperReportingV1alpha1LmkRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet < 3) {
    checkGooglePlayDeveloperReportingV1alpha1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1MetricValue = 0;
api.GooglePlayDeveloperReportingV1alpha1MetricValue
buildGooglePlayDeveloperReportingV1alpha1MetricValue() {
  final o = api.GooglePlayDeveloperReportingV1alpha1MetricValue();
  buildCounterGooglePlayDeveloperReportingV1alpha1MetricValue++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1MetricValue < 3) {
    o.decimalValue = buildGoogleTypeDecimal();
    o.decimalValueConfidenceInterval =
        buildGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval();
    o.metric = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1MetricValue--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1MetricValue(
  api.GooglePlayDeveloperReportingV1alpha1MetricValue o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1MetricValue++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1MetricValue < 3) {
    checkGoogleTypeDecimal(o.decimalValue!);
    checkGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval(
      o.decimalValueConfidenceInterval!,
    );
    unittest.expect(o.metric!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1MetricValue--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1DimensionValue>
buildUnnamed5() => [
  buildGooglePlayDeveloperReportingV1alpha1DimensionValue(),
  buildGooglePlayDeveloperReportingV1alpha1DimensionValue(),
];

void checkUnnamed5(
  core.List<api.GooglePlayDeveloperReportingV1alpha1DimensionValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1DimensionValue(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1DimensionValue(o[1]);
}

core.List<api.GooglePlayDeveloperReportingV1alpha1MetricValue>
buildUnnamed6() => [
  buildGooglePlayDeveloperReportingV1alpha1MetricValue(),
  buildGooglePlayDeveloperReportingV1alpha1MetricValue(),
];

void checkUnnamed6(
  core.List<api.GooglePlayDeveloperReportingV1alpha1MetricValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1MetricValue(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1MetricValue(o[1]);
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1MetricsRow = 0;
api.GooglePlayDeveloperReportingV1alpha1MetricsRow
buildGooglePlayDeveloperReportingV1alpha1MetricsRow() {
  final o = api.GooglePlayDeveloperReportingV1alpha1MetricsRow();
  buildCounterGooglePlayDeveloperReportingV1alpha1MetricsRow++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1MetricsRow < 3) {
    o.aggregationPeriod = 'foo';
    o.dimensions = buildUnnamed5();
    o.metrics = buildUnnamed6();
    o.startTime = buildGoogleTypeDateTime();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1MetricsRow--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1MetricsRow(
  api.GooglePlayDeveloperReportingV1alpha1MetricsRow o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1MetricsRow++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1MetricsRow < 3) {
    unittest.expect(o.aggregationPeriod!, unittest.equals('foo'));
    checkUnnamed5(o.dimensions!);
    checkUnnamed6(o.metrics!);
    checkGoogleTypeDateTime(o.startTime!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1MetricsRow--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1OsVersion = 0;
api.GooglePlayDeveloperReportingV1alpha1OsVersion
buildGooglePlayDeveloperReportingV1alpha1OsVersion() {
  final o = api.GooglePlayDeveloperReportingV1alpha1OsVersion();
  buildCounterGooglePlayDeveloperReportingV1alpha1OsVersion++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1OsVersion < 3) {
    o.apiLevel = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1OsVersion--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1OsVersion(
  api.GooglePlayDeveloperReportingV1alpha1OsVersion o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1OsVersion++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1OsVersion < 3) {
    unittest.expect(o.apiLevel!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1OsVersion--;
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
buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest
buildGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed7();
    o.filter = 'foo';
    o.metrics = buildUnnamed8();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1alpha1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest <
      3) {
    checkUnnamed7(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed8(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow> buildUnnamed9() =>
    [
      buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
      buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
    ];

void checkUnnamed9(
  core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse
buildGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed9();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed9(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse--;
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
buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest
buildGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed10();
    o.filter = 'foo';
    o.metrics = buildUnnamed11();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1alpha1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest <
      3) {
    checkUnnamed10(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed11(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow>
buildUnnamed12() => [
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
];

void checkUnnamed12(
  core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse
buildGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed12();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse--;
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
buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest
buildGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed13();
    o.filter = 'foo';
    o.metrics = buildUnnamed14();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1alpha1TimelineSpec();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest(
  api.GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest <
      3) {
    checkUnnamed13(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed14(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1TimelineSpec(o.timelineSpec!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow>
buildUnnamed15() => [
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
];

void checkUnnamed15(
  core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse
buildGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed15();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse(
  api.GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed15(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse--;
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
buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest
buildGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed16();
    o.filter = 'foo';
    o.metrics = buildUnnamed17();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1alpha1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest <
      3) {
    checkUnnamed16(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed17(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow>
buildUnnamed18() => [
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
];

void checkUnnamed18(
  core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse
buildGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed18();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed18(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse--;
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
buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest
buildGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed19();
    o.filter = 'foo';
    o.metrics = buildUnnamed20();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1alpha1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest <
      3) {
    checkUnnamed19(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed20(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow>
buildUnnamed21() => [
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
];

void checkUnnamed21(
  core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse
buildGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed21();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed21(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse--;
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
buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest
buildGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed22();
    o.filter = 'foo';
    o.metrics = buildUnnamed23();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1alpha1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest <
      3) {
    checkUnnamed22(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed23(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow>
buildUnnamed24() => [
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
];

void checkUnnamed24(
  core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse
buildGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed24();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed24(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse--;
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
buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest
buildGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed25();
    o.filter = 'foo';
    o.metrics = buildUnnamed26();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1alpha1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest <
      3) {
    checkUnnamed25(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed26(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow>
buildUnnamed27() => [
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
];

void checkUnnamed27(
  core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse
buildGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed27();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed27(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse--;
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
buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest =
    0;
api.GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest
buildGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest();
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest <
      3) {
    o.dimensions = buildUnnamed28();
    o.filter = 'foo';
    o.metrics = buildUnnamed29();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.timelineSpec = buildGooglePlayDeveloperReportingV1alpha1TimelineSpec();
    o.userCohort = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest(
  api.GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest <
      3) {
    checkUnnamed28(o.dimensions!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed29(o.metrics!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGooglePlayDeveloperReportingV1alpha1TimelineSpec(o.timelineSpec!);
    unittest.expect(o.userCohort!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow>
buildUnnamed30() => [
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
  buildGooglePlayDeveloperReportingV1alpha1MetricsRow(),
];

void checkUnnamed30(
  core.List<api.GooglePlayDeveloperReportingV1alpha1MetricsRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1MetricsRow(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse =
    0;
api.GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse
buildGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse();
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse <
      3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed30();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse(
  api.GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed30(o.rows!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse--;
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1Release = 0;
api.GooglePlayDeveloperReportingV1alpha1Release
buildGooglePlayDeveloperReportingV1alpha1Release() {
  final o = api.GooglePlayDeveloperReportingV1alpha1Release();
  buildCounterGooglePlayDeveloperReportingV1alpha1Release++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1Release < 3) {
    o.displayName = 'foo';
    o.versionCodes = buildUnnamed31();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1Release--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1Release(
  api.GooglePlayDeveloperReportingV1alpha1Release o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1Release++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1Release < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed31(o.versionCodes!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1Release--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1Track> buildUnnamed32() => [
  buildGooglePlayDeveloperReportingV1alpha1Track(),
  buildGooglePlayDeveloperReportingV1alpha1Track(),
];

void checkUnnamed32(
  core.List<api.GooglePlayDeveloperReportingV1alpha1Track> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1Track(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1Track(o[1]);
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions =
    0;
api.GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions
buildGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions() {
  final o = api.GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions();
  buildCounterGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions <
      3) {
    o.tracks = buildUnnamed32();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions(
  api.GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions <
      3) {
    checkUnnamed32(o.tracks!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1App> buildUnnamed33() => [
  buildGooglePlayDeveloperReportingV1alpha1App(),
  buildGooglePlayDeveloperReportingV1alpha1App(),
];

void checkUnnamed33(core.List<api.GooglePlayDeveloperReportingV1alpha1App> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1App(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1App(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse =
    0;
api.GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse
buildGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse();
  buildCounterGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse <
      3) {
    o.apps = buildUnnamed33();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse(
  api.GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse <
      3) {
    checkUnnamed33(o.apps!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1ErrorIssue>
buildUnnamed34() => [
  buildGooglePlayDeveloperReportingV1alpha1ErrorIssue(),
  buildGooglePlayDeveloperReportingV1alpha1ErrorIssue(),
];

void checkUnnamed34(
  core.List<api.GooglePlayDeveloperReportingV1alpha1ErrorIssue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1ErrorIssue(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1ErrorIssue(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse = 0;
api.GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse
buildGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse() {
  final o = api.GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse();
  buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse <
      3) {
    o.errorIssues = buildUnnamed34();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse(
  api.GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse <
      3) {
    checkUnnamed34(o.errorIssues!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1ErrorReport>
buildUnnamed35() => [
  buildGooglePlayDeveloperReportingV1alpha1ErrorReport(),
  buildGooglePlayDeveloperReportingV1alpha1ErrorReport(),
];

void checkUnnamed35(
  core.List<api.GooglePlayDeveloperReportingV1alpha1ErrorReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1ErrorReport(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1ErrorReport(o[1]);
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse = 0;
api.GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse
buildGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse();
  buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse <
      3) {
    o.errorReports = buildUnnamed35();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse(
  api.GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse <
      3) {
    checkUnnamed35(o.errorReports!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse--;
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet = 0;
api.GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet
buildGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet <
      3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1alpha1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet(
  api.GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet <
      3) {
    checkGooglePlayDeveloperReportingV1alpha1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet--;
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet = 0;
api.GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet
buildGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet() {
  final o = api.GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet <
      3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1alpha1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet(
  api.GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet <
      3) {
    checkGooglePlayDeveloperReportingV1alpha1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet--;
}

core.int
buildCounterGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet =
    0;
api.GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet
buildGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet() {
  final o =
      api.GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet();
  buildCounterGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet <
      3) {
    o.freshnessInfo = buildGooglePlayDeveloperReportingV1alpha1FreshnessInfo();
    o.name = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet--;
  return o;
}

void
checkGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet(
  api.GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet
  o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet <
      3) {
    checkGooglePlayDeveloperReportingV1alpha1FreshnessInfo(o.freshnessInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet--;
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1TimelineSpec = 0;
api.GooglePlayDeveloperReportingV1alpha1TimelineSpec
buildGooglePlayDeveloperReportingV1alpha1TimelineSpec() {
  final o = api.GooglePlayDeveloperReportingV1alpha1TimelineSpec();
  buildCounterGooglePlayDeveloperReportingV1alpha1TimelineSpec++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1TimelineSpec < 3) {
    o.aggregationPeriod = 'foo';
    o.endTime = buildGoogleTypeDateTime();
    o.startTime = buildGoogleTypeDateTime();
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1TimelineSpec--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1TimelineSpec(
  api.GooglePlayDeveloperReportingV1alpha1TimelineSpec o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1TimelineSpec++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1TimelineSpec < 3) {
    unittest.expect(o.aggregationPeriod!, unittest.equals('foo'));
    checkGoogleTypeDateTime(o.endTime!);
    checkGoogleTypeDateTime(o.startTime!);
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1TimelineSpec--;
}

core.List<api.GooglePlayDeveloperReportingV1alpha1Release> buildUnnamed36() => [
  buildGooglePlayDeveloperReportingV1alpha1Release(),
  buildGooglePlayDeveloperReportingV1alpha1Release(),
];

void checkUnnamed36(
  core.List<api.GooglePlayDeveloperReportingV1alpha1Release> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePlayDeveloperReportingV1alpha1Release(o[0]);
  checkGooglePlayDeveloperReportingV1alpha1Release(o[1]);
}

core.int buildCounterGooglePlayDeveloperReportingV1alpha1Track = 0;
api.GooglePlayDeveloperReportingV1alpha1Track
buildGooglePlayDeveloperReportingV1alpha1Track() {
  final o = api.GooglePlayDeveloperReportingV1alpha1Track();
  buildCounterGooglePlayDeveloperReportingV1alpha1Track++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1Track < 3) {
    o.displayName = 'foo';
    o.servingReleases = buildUnnamed36();
    o.type = 'foo';
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1Track--;
  return o;
}

void checkGooglePlayDeveloperReportingV1alpha1Track(
  api.GooglePlayDeveloperReportingV1alpha1Track o,
) {
  buildCounterGooglePlayDeveloperReportingV1alpha1Track++;
  if (buildCounterGooglePlayDeveloperReportingV1alpha1Track < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed36(o.servingReleases!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGooglePlayDeveloperReportingV1alpha1Track--;
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
  unittest.group('obj-schema-GooglePlayDeveloperReportingV1alpha1Anomaly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePlayDeveloperReportingV1alpha1Anomaly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePlayDeveloperReportingV1alpha1Anomaly.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooglePlayDeveloperReportingV1alpha1Anomaly(od);
    });
  });

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet(od);
      });
    },
  );

  unittest.group('obj-schema-GooglePlayDeveloperReportingV1alpha1App', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePlayDeveloperReportingV1alpha1App();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePlayDeveloperReportingV1alpha1App.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooglePlayDeveloperReportingV1alpha1App(od);
    });
  });

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1AppVersion',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1AppVersion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GooglePlayDeveloperReportingV1alpha1AppVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1AppVersion(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval(od);
      });
    },
  );

  unittest.group('obj-schema-GooglePlayDeveloperReportingV1alpha1DeviceId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePlayDeveloperReportingV1alpha1DeviceId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePlayDeveloperReportingV1alpha1DeviceId.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooglePlayDeveloperReportingV1alpha1DeviceId(od);
    });
  });

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1DeviceModelSummary',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1DeviceModelSummary();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1DeviceModelSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1DeviceModelSummary(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1DimensionValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1DimensionValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1DimensionValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1DimensionValue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1ErrorIssue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1ErrorIssue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GooglePlayDeveloperReportingV1alpha1ErrorIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1ErrorIssue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1ErrorReport',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1ErrorReport();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GooglePlayDeveloperReportingV1alpha1ErrorReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1ErrorReport(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1FreshnessInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1FreshnessInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1FreshnessInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1FreshnessInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1IssueAnnotation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1IssueAnnotation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1IssueAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1IssueAnnotation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1LmkRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1LmkRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1MetricValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1MetricValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GooglePlayDeveloperReportingV1alpha1MetricValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1MetricValue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1MetricsRow',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1MetricsRow();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GooglePlayDeveloperReportingV1alpha1MetricsRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1MetricsRow(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1OsVersion',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1OsVersion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GooglePlayDeveloperReportingV1alpha1OsVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1OsVersion(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GooglePlayDeveloperReportingV1alpha1Release', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePlayDeveloperReportingV1alpha1Release();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePlayDeveloperReportingV1alpha1Release.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooglePlayDeveloperReportingV1alpha1Release(od);
    });
  });

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GooglePlayDeveloperReportingV1alpha1TimelineSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGooglePlayDeveloperReportingV1alpha1TimelineSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GooglePlayDeveloperReportingV1alpha1TimelineSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGooglePlayDeveloperReportingV1alpha1TimelineSpec(od);
      });
    },
  );

  unittest.group('obj-schema-GooglePlayDeveloperReportingV1alpha1Track', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePlayDeveloperReportingV1alpha1Track();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePlayDeveloperReportingV1alpha1Track.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGooglePlayDeveloperReportingV1alpha1Track(od);
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse(),
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
      checkGooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse(
        response
            as api.GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchReleaseFilterOptions(
        arg_name,
        $fields: arg_$fields,
      );
      checkGooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions(
        response
            as api.GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions,
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
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('v1alpha1/apps:search'),
          );
          pathOffset += 20;

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
            buildGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse(),
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
      checkGooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse(
        response
            as api.GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1alpha1AnrRateMetricSet(
        response as api.GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.anrrate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse(),
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
      checkGooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1alpha1CrashRateMetricSet(
        response as api.GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.crashrate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse(),
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
      checkGooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet(
        response as api.GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.errors.counts;
      final arg_request =
          buildGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse(),
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
      checkGooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse(),
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
      checkGooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse(
        response
            as api.GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse(),
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
      checkGooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse(
        response
            as api.GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet(
        response
            as api.GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res =
          api.PlaydeveloperreportingApi(mock).vitals.excessivewakeuprate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse(),
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
      checkGooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1alpha1LmkRateMetricSet(
        response as api.GooglePlayDeveloperReportingV1alpha1LmkRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.lmkrate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse(),
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
      checkGooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet(
        response
            as api.GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.slowrenderingrate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse(),
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
      checkGooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet(
        response
            as api.GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PlaydeveloperreportingApi(mock).vitals.slowstartrate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse(),
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
      checkGooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse,
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet(
        response
            as api.GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res =
          api.PlaydeveloperreportingApi(
            mock,
          ).vitals.stuckbackgroundwakelockrate;
      final arg_request =
          buildGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest(
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            buildGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse(),
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
      checkGooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse(
        response
            as api.GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse,
      );
    });
  });
}
