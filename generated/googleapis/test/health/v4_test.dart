// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

import 'package:googleapis/health/v4.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.ActiveMinutesByActivityLevel> buildUnnamed0() => [
  buildActiveMinutesByActivityLevel(),
  buildActiveMinutesByActivityLevel(),
];

void checkUnnamed0(core.List<api.ActiveMinutesByActivityLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActiveMinutesByActivityLevel(o[0]);
  checkActiveMinutesByActivityLevel(o[1]);
}

core.int buildCounterActiveMinutes = 0;
api.ActiveMinutes buildActiveMinutes() {
  final o = api.ActiveMinutes();
  buildCounterActiveMinutes++;
  if (buildCounterActiveMinutes < 3) {
    o.activeMinutesByActivityLevel = buildUnnamed0();
    o.interval = buildObservationTimeInterval();
  }
  buildCounterActiveMinutes--;
  return o;
}

void checkActiveMinutes(api.ActiveMinutes o) {
  buildCounterActiveMinutes++;
  if (buildCounterActiveMinutes < 3) {
    checkUnnamed0(o.activeMinutesByActivityLevel!);
    checkObservationTimeInterval(o.interval!);
  }
  buildCounterActiveMinutes--;
}

core.int buildCounterActiveMinutesByActivityLevel = 0;
api.ActiveMinutesByActivityLevel buildActiveMinutesByActivityLevel() {
  final o = api.ActiveMinutesByActivityLevel();
  buildCounterActiveMinutesByActivityLevel++;
  if (buildCounterActiveMinutesByActivityLevel < 3) {
    o.activeMinutes = 'foo';
    o.activityLevel = 'foo';
  }
  buildCounterActiveMinutesByActivityLevel--;
  return o;
}

void checkActiveMinutesByActivityLevel(api.ActiveMinutesByActivityLevel o) {
  buildCounterActiveMinutesByActivityLevel++;
  if (buildCounterActiveMinutesByActivityLevel < 3) {
    unittest.expect(o.activeMinutes!, unittest.equals('foo'));
    unittest.expect(o.activityLevel!, unittest.equals('foo'));
  }
  buildCounterActiveMinutesByActivityLevel--;
}

core.int buildCounterActiveMinutesRollupByActivityLevel = 0;
api.ActiveMinutesRollupByActivityLevel
buildActiveMinutesRollupByActivityLevel() {
  final o = api.ActiveMinutesRollupByActivityLevel();
  buildCounterActiveMinutesRollupByActivityLevel++;
  if (buildCounterActiveMinutesRollupByActivityLevel < 3) {
    o.activeMinutesSum = 'foo';
    o.activityLevel = 'foo';
  }
  buildCounterActiveMinutesRollupByActivityLevel--;
  return o;
}

void checkActiveMinutesRollupByActivityLevel(
  api.ActiveMinutesRollupByActivityLevel o,
) {
  buildCounterActiveMinutesRollupByActivityLevel++;
  if (buildCounterActiveMinutesRollupByActivityLevel < 3) {
    unittest.expect(o.activeMinutesSum!, unittest.equals('foo'));
    unittest.expect(o.activityLevel!, unittest.equals('foo'));
  }
  buildCounterActiveMinutesRollupByActivityLevel--;
}

core.List<api.ActiveMinutesRollupByActivityLevel> buildUnnamed1() => [
  buildActiveMinutesRollupByActivityLevel(),
  buildActiveMinutesRollupByActivityLevel(),
];

void checkUnnamed1(core.List<api.ActiveMinutesRollupByActivityLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActiveMinutesRollupByActivityLevel(o[0]);
  checkActiveMinutesRollupByActivityLevel(o[1]);
}

core.int buildCounterActiveMinutesRollupValue = 0;
api.ActiveMinutesRollupValue buildActiveMinutesRollupValue() {
  final o = api.ActiveMinutesRollupValue();
  buildCounterActiveMinutesRollupValue++;
  if (buildCounterActiveMinutesRollupValue < 3) {
    o.activeMinutesRollupByActivityLevel = buildUnnamed1();
  }
  buildCounterActiveMinutesRollupValue--;
  return o;
}

void checkActiveMinutesRollupValue(api.ActiveMinutesRollupValue o) {
  buildCounterActiveMinutesRollupValue++;
  if (buildCounterActiveMinutesRollupValue < 3) {
    checkUnnamed1(o.activeMinutesRollupByActivityLevel!);
  }
  buildCounterActiveMinutesRollupValue--;
}

core.int buildCounterActiveZoneMinutes = 0;
api.ActiveZoneMinutes buildActiveZoneMinutes() {
  final o = api.ActiveZoneMinutes();
  buildCounterActiveZoneMinutes++;
  if (buildCounterActiveZoneMinutes < 3) {
    o.activeZoneMinutes = 'foo';
    o.heartRateZone = 'foo';
    o.interval = buildObservationTimeInterval();
  }
  buildCounterActiveZoneMinutes--;
  return o;
}

void checkActiveZoneMinutes(api.ActiveZoneMinutes o) {
  buildCounterActiveZoneMinutes++;
  if (buildCounterActiveZoneMinutes < 3) {
    unittest.expect(o.activeZoneMinutes!, unittest.equals('foo'));
    unittest.expect(o.heartRateZone!, unittest.equals('foo'));
    checkObservationTimeInterval(o.interval!);
  }
  buildCounterActiveZoneMinutes--;
}

core.int buildCounterActiveZoneMinutesRollupValue = 0;
api.ActiveZoneMinutesRollupValue buildActiveZoneMinutesRollupValue() {
  final o = api.ActiveZoneMinutesRollupValue();
  buildCounterActiveZoneMinutesRollupValue++;
  if (buildCounterActiveZoneMinutesRollupValue < 3) {
    o.sumInCardioHeartZone = 'foo';
    o.sumInFatBurnHeartZone = 'foo';
    o.sumInPeakHeartZone = 'foo';
  }
  buildCounterActiveZoneMinutesRollupValue--;
  return o;
}

void checkActiveZoneMinutesRollupValue(api.ActiveZoneMinutesRollupValue o) {
  buildCounterActiveZoneMinutesRollupValue++;
  if (buildCounterActiveZoneMinutesRollupValue < 3) {
    unittest.expect(o.sumInCardioHeartZone!, unittest.equals('foo'));
    unittest.expect(o.sumInFatBurnHeartZone!, unittest.equals('foo'));
    unittest.expect(o.sumInPeakHeartZone!, unittest.equals('foo'));
  }
  buildCounterActiveZoneMinutesRollupValue--;
}

core.int buildCounterActivityLevel = 0;
api.ActivityLevel buildActivityLevel() {
  final o = api.ActivityLevel();
  buildCounterActivityLevel++;
  if (buildCounterActivityLevel < 3) {
    o.activityLevelType = 'foo';
    o.interval = buildObservationTimeInterval();
  }
  buildCounterActivityLevel--;
  return o;
}

void checkActivityLevel(api.ActivityLevel o) {
  buildCounterActivityLevel++;
  if (buildCounterActivityLevel < 3) {
    unittest.expect(o.activityLevelType!, unittest.equals('foo'));
    checkObservationTimeInterval(o.interval!);
  }
  buildCounterActivityLevel--;
}

core.int buildCounterActivityLevelRollupByActivityLevelType = 0;
api.ActivityLevelRollupByActivityLevelType
buildActivityLevelRollupByActivityLevelType() {
  final o = api.ActivityLevelRollupByActivityLevelType();
  buildCounterActivityLevelRollupByActivityLevelType++;
  if (buildCounterActivityLevelRollupByActivityLevelType < 3) {
    o.activityLevelType = 'foo';
    o.totalDuration = 'foo';
  }
  buildCounterActivityLevelRollupByActivityLevelType--;
  return o;
}

void checkActivityLevelRollupByActivityLevelType(
  api.ActivityLevelRollupByActivityLevelType o,
) {
  buildCounterActivityLevelRollupByActivityLevelType++;
  if (buildCounterActivityLevelRollupByActivityLevelType < 3) {
    unittest.expect(o.activityLevelType!, unittest.equals('foo'));
    unittest.expect(o.totalDuration!, unittest.equals('foo'));
  }
  buildCounterActivityLevelRollupByActivityLevelType--;
}

core.List<api.ActivityLevelRollupByActivityLevelType> buildUnnamed2() => [
  buildActivityLevelRollupByActivityLevelType(),
  buildActivityLevelRollupByActivityLevelType(),
];

void checkUnnamed2(core.List<api.ActivityLevelRollupByActivityLevelType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivityLevelRollupByActivityLevelType(o[0]);
  checkActivityLevelRollupByActivityLevelType(o[1]);
}

core.int buildCounterActivityLevelRollupValue = 0;
api.ActivityLevelRollupValue buildActivityLevelRollupValue() {
  final o = api.ActivityLevelRollupValue();
  buildCounterActivityLevelRollupValue++;
  if (buildCounterActivityLevelRollupValue < 3) {
    o.activityLevelRollupsByActivityLevelType = buildUnnamed2();
  }
  buildCounterActivityLevelRollupValue--;
  return o;
}

void checkActivityLevelRollupValue(api.ActivityLevelRollupValue o) {
  buildCounterActivityLevelRollupValue++;
  if (buildCounterActivityLevelRollupValue < 3) {
    checkUnnamed2(o.activityLevelRollupsByActivityLevelType!);
  }
  buildCounterActivityLevelRollupValue--;
}

core.int buildCounterAltitude = 0;
api.Altitude buildAltitude() {
  final o = api.Altitude();
  buildCounterAltitude++;
  if (buildCounterAltitude < 3) {
    o.gainMillimeters = 'foo';
    o.interval = buildObservationTimeInterval();
  }
  buildCounterAltitude--;
  return o;
}

void checkAltitude(api.Altitude o) {
  buildCounterAltitude++;
  if (buildCounterAltitude < 3) {
    unittest.expect(o.gainMillimeters!, unittest.equals('foo'));
    checkObservationTimeInterval(o.interval!);
  }
  buildCounterAltitude--;
}

core.int buildCounterAltitudeRollupValue = 0;
api.AltitudeRollupValue buildAltitudeRollupValue() {
  final o = api.AltitudeRollupValue();
  buildCounterAltitudeRollupValue++;
  if (buildCounterAltitudeRollupValue < 3) {
    o.gainMillimetersSum = 'foo';
  }
  buildCounterAltitudeRollupValue--;
  return o;
}

void checkAltitudeRollupValue(api.AltitudeRollupValue o) {
  buildCounterAltitudeRollupValue++;
  if (buildCounterAltitudeRollupValue < 3) {
    unittest.expect(o.gainMillimetersSum!, unittest.equals('foo'));
  }
  buildCounterAltitudeRollupValue--;
}

core.int buildCounterApplication = 0;
api.Application buildApplication() {
  final o = api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.googleWebClientId = 'foo';
    o.packageName = 'foo';
    o.webClientId = 'foo';
  }
  buildCounterApplication--;
  return o;
}

void checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(o.googleWebClientId!, unittest.equals('foo'));
    unittest.expect(o.packageName!, unittest.equals('foo'));
    unittest.expect(o.webClientId!, unittest.equals('foo'));
  }
  buildCounterApplication--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeleteDataPointsRequest = 0;
api.BatchDeleteDataPointsRequest buildBatchDeleteDataPointsRequest() {
  final o = api.BatchDeleteDataPointsRequest();
  buildCounterBatchDeleteDataPointsRequest++;
  if (buildCounterBatchDeleteDataPointsRequest < 3) {
    o.names = buildUnnamed3();
  }
  buildCounterBatchDeleteDataPointsRequest--;
  return o;
}

void checkBatchDeleteDataPointsRequest(api.BatchDeleteDataPointsRequest o) {
  buildCounterBatchDeleteDataPointsRequest++;
  if (buildCounterBatchDeleteDataPointsRequest < 3) {
    checkUnnamed3(o.names!);
  }
  buildCounterBatchDeleteDataPointsRequest--;
}

core.int buildCounterBodyFat = 0;
api.BodyFat buildBodyFat() {
  final o = api.BodyFat();
  buildCounterBodyFat++;
  if (buildCounterBodyFat < 3) {
    o.percentage = 42.0;
    o.sampleTime = buildObservationSampleTime();
  }
  buildCounterBodyFat--;
  return o;
}

void checkBodyFat(api.BodyFat o) {
  buildCounterBodyFat++;
  if (buildCounterBodyFat < 3) {
    unittest.expect(o.percentage!, unittest.equals(42.0));
    checkObservationSampleTime(o.sampleTime!);
  }
  buildCounterBodyFat--;
}

core.int buildCounterBodyFatRollupValue = 0;
api.BodyFatRollupValue buildBodyFatRollupValue() {
  final o = api.BodyFatRollupValue();
  buildCounterBodyFatRollupValue++;
  if (buildCounterBodyFatRollupValue < 3) {
    o.bodyFatPercentageAvg = 42.0;
  }
  buildCounterBodyFatRollupValue--;
  return o;
}

void checkBodyFatRollupValue(api.BodyFatRollupValue o) {
  buildCounterBodyFatRollupValue++;
  if (buildCounterBodyFatRollupValue < 3) {
    unittest.expect(o.bodyFatPercentageAvg!, unittest.equals(42.0));
  }
  buildCounterBodyFatRollupValue--;
}

core.List<api.CaloriesInHeartRateZoneValue> buildUnnamed4() => [
  buildCaloriesInHeartRateZoneValue(),
  buildCaloriesInHeartRateZoneValue(),
];

void checkUnnamed4(core.List<api.CaloriesInHeartRateZoneValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCaloriesInHeartRateZoneValue(o[0]);
  checkCaloriesInHeartRateZoneValue(o[1]);
}

core.int buildCounterCaloriesInHeartRateZoneRollupValue = 0;
api.CaloriesInHeartRateZoneRollupValue
buildCaloriesInHeartRateZoneRollupValue() {
  final o = api.CaloriesInHeartRateZoneRollupValue();
  buildCounterCaloriesInHeartRateZoneRollupValue++;
  if (buildCounterCaloriesInHeartRateZoneRollupValue < 3) {
    o.caloriesInHeartRateZones = buildUnnamed4();
  }
  buildCounterCaloriesInHeartRateZoneRollupValue--;
  return o;
}

void checkCaloriesInHeartRateZoneRollupValue(
  api.CaloriesInHeartRateZoneRollupValue o,
) {
  buildCounterCaloriesInHeartRateZoneRollupValue++;
  if (buildCounterCaloriesInHeartRateZoneRollupValue < 3) {
    checkUnnamed4(o.caloriesInHeartRateZones!);
  }
  buildCounterCaloriesInHeartRateZoneRollupValue--;
}

core.int buildCounterCaloriesInHeartRateZoneValue = 0;
api.CaloriesInHeartRateZoneValue buildCaloriesInHeartRateZoneValue() {
  final o = api.CaloriesInHeartRateZoneValue();
  buildCounterCaloriesInHeartRateZoneValue++;
  if (buildCounterCaloriesInHeartRateZoneValue < 3) {
    o.heartRateZone = 'foo';
    o.kcal = 42.0;
  }
  buildCounterCaloriesInHeartRateZoneValue--;
  return o;
}

void checkCaloriesInHeartRateZoneValue(api.CaloriesInHeartRateZoneValue o) {
  buildCounterCaloriesInHeartRateZoneValue++;
  if (buildCounterCaloriesInHeartRateZoneValue < 3) {
    unittest.expect(o.heartRateZone!, unittest.equals('foo'));
    unittest.expect(o.kcal!, unittest.equals(42.0));
  }
  buildCounterCaloriesInHeartRateZoneValue--;
}

core.int buildCounterCivilDateTime = 0;
api.CivilDateTime buildCivilDateTime() {
  final o = api.CivilDateTime();
  buildCounterCivilDateTime++;
  if (buildCounterCivilDateTime < 3) {
    o.date = buildDate();
    o.time = buildTimeOfDay();
  }
  buildCounterCivilDateTime--;
  return o;
}

void checkCivilDateTime(api.CivilDateTime o) {
  buildCounterCivilDateTime++;
  if (buildCounterCivilDateTime < 3) {
    checkDate(o.date!);
    checkTimeOfDay(o.time!);
  }
  buildCounterCivilDateTime--;
}

core.int buildCounterCivilTimeInterval = 0;
api.CivilTimeInterval buildCivilTimeInterval() {
  final o = api.CivilTimeInterval();
  buildCounterCivilTimeInterval++;
  if (buildCounterCivilTimeInterval < 3) {
    o.end = buildCivilDateTime();
    o.start = buildCivilDateTime();
  }
  buildCounterCivilTimeInterval--;
  return o;
}

void checkCivilTimeInterval(api.CivilTimeInterval o) {
  buildCounterCivilTimeInterval++;
  if (buildCounterCivilTimeInterval < 3) {
    checkCivilDateTime(o.end!);
    checkCivilDateTime(o.start!);
  }
  buildCounterCivilTimeInterval--;
}

core.List<api.SubscriberConfig> buildUnnamed5() => [
  buildSubscriberConfig(),
  buildSubscriberConfig(),
];

void checkUnnamed5(core.List<api.SubscriberConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriberConfig(o[0]);
  checkSubscriberConfig(o[1]);
}

core.int buildCounterCreateSubscriberPayload = 0;
api.CreateSubscriberPayload buildCreateSubscriberPayload() {
  final o = api.CreateSubscriberPayload();
  buildCounterCreateSubscriberPayload++;
  if (buildCounterCreateSubscriberPayload < 3) {
    o.endpointAuthorization = buildEndpointAuthorization();
    o.endpointUri = 'foo';
    o.subscriberConfigs = buildUnnamed5();
  }
  buildCounterCreateSubscriberPayload--;
  return o;
}

void checkCreateSubscriberPayload(api.CreateSubscriberPayload o) {
  buildCounterCreateSubscriberPayload++;
  if (buildCounterCreateSubscriberPayload < 3) {
    checkEndpointAuthorization(o.endpointAuthorization!);
    unittest.expect(o.endpointUri!, unittest.equals('foo'));
    checkUnnamed5(o.subscriberConfigs!);
  }
  buildCounterCreateSubscriberPayload--;
}

core.int buildCounterDailyHeartRateVariability = 0;
api.DailyHeartRateVariability buildDailyHeartRateVariability() {
  final o = api.DailyHeartRateVariability();
  buildCounterDailyHeartRateVariability++;
  if (buildCounterDailyHeartRateVariability < 3) {
    o.averageHeartRateVariabilityMilliseconds = 42.0;
    o.date = buildDate();
    o.deepSleepRootMeanSquareOfSuccessiveDifferencesMilliseconds = 42.0;
    o.entropy = 42.0;
    o.nonRemHeartRateBeatsPerMinute = 'foo';
  }
  buildCounterDailyHeartRateVariability--;
  return o;
}

void checkDailyHeartRateVariability(api.DailyHeartRateVariability o) {
  buildCounterDailyHeartRateVariability++;
  if (buildCounterDailyHeartRateVariability < 3) {
    unittest.expect(
      o.averageHeartRateVariabilityMilliseconds!,
      unittest.equals(42.0),
    );
    checkDate(o.date!);
    unittest.expect(
      o.deepSleepRootMeanSquareOfSuccessiveDifferencesMilliseconds!,
      unittest.equals(42.0),
    );
    unittest.expect(o.entropy!, unittest.equals(42.0));
    unittest.expect(o.nonRemHeartRateBeatsPerMinute!, unittest.equals('foo'));
  }
  buildCounterDailyHeartRateVariability--;
}

core.List<api.HeartRateZone> buildUnnamed6() => [
  buildHeartRateZone(),
  buildHeartRateZone(),
];

void checkUnnamed6(core.List<api.HeartRateZone> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeartRateZone(o[0]);
  checkHeartRateZone(o[1]);
}

core.int buildCounterDailyHeartRateZones = 0;
api.DailyHeartRateZones buildDailyHeartRateZones() {
  final o = api.DailyHeartRateZones();
  buildCounterDailyHeartRateZones++;
  if (buildCounterDailyHeartRateZones < 3) {
    o.date = buildDate();
    o.heartRateZones = buildUnnamed6();
  }
  buildCounterDailyHeartRateZones--;
  return o;
}

void checkDailyHeartRateZones(api.DailyHeartRateZones o) {
  buildCounterDailyHeartRateZones++;
  if (buildCounterDailyHeartRateZones < 3) {
    checkDate(o.date!);
    checkUnnamed6(o.heartRateZones!);
  }
  buildCounterDailyHeartRateZones--;
}

core.int buildCounterDailyOxygenSaturation = 0;
api.DailyOxygenSaturation buildDailyOxygenSaturation() {
  final o = api.DailyOxygenSaturation();
  buildCounterDailyOxygenSaturation++;
  if (buildCounterDailyOxygenSaturation < 3) {
    o.averagePercentage = 42.0;
    o.date = buildDate();
    o.lowerBoundPercentage = 42.0;
    o.standardDeviationPercentage = 42.0;
    o.upperBoundPercentage = 42.0;
  }
  buildCounterDailyOxygenSaturation--;
  return o;
}

void checkDailyOxygenSaturation(api.DailyOxygenSaturation o) {
  buildCounterDailyOxygenSaturation++;
  if (buildCounterDailyOxygenSaturation < 3) {
    unittest.expect(o.averagePercentage!, unittest.equals(42.0));
    checkDate(o.date!);
    unittest.expect(o.lowerBoundPercentage!, unittest.equals(42.0));
    unittest.expect(o.standardDeviationPercentage!, unittest.equals(42.0));
    unittest.expect(o.upperBoundPercentage!, unittest.equals(42.0));
  }
  buildCounterDailyOxygenSaturation--;
}

core.int buildCounterDailyRespiratoryRate = 0;
api.DailyRespiratoryRate buildDailyRespiratoryRate() {
  final o = api.DailyRespiratoryRate();
  buildCounterDailyRespiratoryRate++;
  if (buildCounterDailyRespiratoryRate < 3) {
    o.breathsPerMinute = 42.0;
    o.date = buildDate();
  }
  buildCounterDailyRespiratoryRate--;
  return o;
}

void checkDailyRespiratoryRate(api.DailyRespiratoryRate o) {
  buildCounterDailyRespiratoryRate++;
  if (buildCounterDailyRespiratoryRate < 3) {
    unittest.expect(o.breathsPerMinute!, unittest.equals(42.0));
    checkDate(o.date!);
  }
  buildCounterDailyRespiratoryRate--;
}

core.int buildCounterDailyRestingHeartRate = 0;
api.DailyRestingHeartRate buildDailyRestingHeartRate() {
  final o = api.DailyRestingHeartRate();
  buildCounterDailyRestingHeartRate++;
  if (buildCounterDailyRestingHeartRate < 3) {
    o.beatsPerMinute = 'foo';
    o.dailyRestingHeartRateMetadata = buildDailyRestingHeartRateMetadata();
    o.date = buildDate();
  }
  buildCounterDailyRestingHeartRate--;
  return o;
}

void checkDailyRestingHeartRate(api.DailyRestingHeartRate o) {
  buildCounterDailyRestingHeartRate++;
  if (buildCounterDailyRestingHeartRate < 3) {
    unittest.expect(o.beatsPerMinute!, unittest.equals('foo'));
    checkDailyRestingHeartRateMetadata(o.dailyRestingHeartRateMetadata!);
    checkDate(o.date!);
  }
  buildCounterDailyRestingHeartRate--;
}

core.int buildCounterDailyRestingHeartRateMetadata = 0;
api.DailyRestingHeartRateMetadata buildDailyRestingHeartRateMetadata() {
  final o = api.DailyRestingHeartRateMetadata();
  buildCounterDailyRestingHeartRateMetadata++;
  if (buildCounterDailyRestingHeartRateMetadata < 3) {
    o.calculationMethod = 'foo';
  }
  buildCounterDailyRestingHeartRateMetadata--;
  return o;
}

void checkDailyRestingHeartRateMetadata(api.DailyRestingHeartRateMetadata o) {
  buildCounterDailyRestingHeartRateMetadata++;
  if (buildCounterDailyRestingHeartRateMetadata < 3) {
    unittest.expect(o.calculationMethod!, unittest.equals('foo'));
  }
  buildCounterDailyRestingHeartRateMetadata--;
}

core.int buildCounterDailyRollUpDataPointsRequest = 0;
api.DailyRollUpDataPointsRequest buildDailyRollUpDataPointsRequest() {
  final o = api.DailyRollUpDataPointsRequest();
  buildCounterDailyRollUpDataPointsRequest++;
  if (buildCounterDailyRollUpDataPointsRequest < 3) {
    o.dataSourceFamily = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.range = buildCivilTimeInterval();
    o.windowSizeDays = 42;
  }
  buildCounterDailyRollUpDataPointsRequest--;
  return o;
}

void checkDailyRollUpDataPointsRequest(api.DailyRollUpDataPointsRequest o) {
  buildCounterDailyRollUpDataPointsRequest++;
  if (buildCounterDailyRollUpDataPointsRequest < 3) {
    unittest.expect(o.dataSourceFamily!, unittest.equals('foo'));
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkCivilTimeInterval(o.range!);
    unittest.expect(o.windowSizeDays!, unittest.equals(42));
  }
  buildCounterDailyRollUpDataPointsRequest--;
}

core.List<api.DailyRollupDataPoint> buildUnnamed7() => [
  buildDailyRollupDataPoint(),
  buildDailyRollupDataPoint(),
];

void checkUnnamed7(core.List<api.DailyRollupDataPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDailyRollupDataPoint(o[0]);
  checkDailyRollupDataPoint(o[1]);
}

core.int buildCounterDailyRollUpDataPointsResponse = 0;
api.DailyRollUpDataPointsResponse buildDailyRollUpDataPointsResponse() {
  final o = api.DailyRollUpDataPointsResponse();
  buildCounterDailyRollUpDataPointsResponse++;
  if (buildCounterDailyRollUpDataPointsResponse < 3) {
    o.rollupDataPoints = buildUnnamed7();
  }
  buildCounterDailyRollUpDataPointsResponse--;
  return o;
}

void checkDailyRollUpDataPointsResponse(api.DailyRollUpDataPointsResponse o) {
  buildCounterDailyRollUpDataPointsResponse++;
  if (buildCounterDailyRollUpDataPointsResponse < 3) {
    checkUnnamed7(o.rollupDataPoints!);
  }
  buildCounterDailyRollUpDataPointsResponse--;
}

core.int buildCounterDailyRollupDataPoint = 0;
api.DailyRollupDataPoint buildDailyRollupDataPoint() {
  final o = api.DailyRollupDataPoint();
  buildCounterDailyRollupDataPoint++;
  if (buildCounterDailyRollupDataPoint < 3) {
    o.activeMinutes = buildActiveMinutesRollupValue();
    o.activeZoneMinutes = buildActiveZoneMinutesRollupValue();
    o.activityLevel = buildActivityLevelRollupValue();
    o.altitude = buildAltitudeRollupValue();
    o.bodyFat = buildBodyFatRollupValue();
    o.caloriesInHeartRateZone = buildCaloriesInHeartRateZoneRollupValue();
    o.civilEndTime = buildCivilDateTime();
    o.civilStartTime = buildCivilDateTime();
    o.distance = buildDistanceRollupValue();
    o.floors = buildFloorsRollupValue();
    o.heartRate = buildHeartRateRollupValue();
    o.heartRateVariabilityPersonalRange =
        buildHeartRateVariabilityPersonalRangeRollupValue();
    o.hydrationLog = buildHydrationLogRollupValue();
    o.restingHeartRatePersonalRange =
        buildRestingHeartRatePersonalRangeRollupValue();
    o.runVo2Max = buildRunVO2MaxRollupValue();
    o.sedentaryPeriod = buildSedentaryPeriodRollupValue();
    o.steps = buildStepsRollupValue();
    o.swimLengthsData = buildSwimLengthsDataRollupValue();
    o.timeInHeartRateZone = buildTimeInHeartRateZoneRollupValue();
    o.totalCalories = buildTotalCaloriesRollupValue();
    o.weight = buildWeightRollupValue();
  }
  buildCounterDailyRollupDataPoint--;
  return o;
}

void checkDailyRollupDataPoint(api.DailyRollupDataPoint o) {
  buildCounterDailyRollupDataPoint++;
  if (buildCounterDailyRollupDataPoint < 3) {
    checkActiveMinutesRollupValue(o.activeMinutes!);
    checkActiveZoneMinutesRollupValue(o.activeZoneMinutes!);
    checkActivityLevelRollupValue(o.activityLevel!);
    checkAltitudeRollupValue(o.altitude!);
    checkBodyFatRollupValue(o.bodyFat!);
    checkCaloriesInHeartRateZoneRollupValue(o.caloriesInHeartRateZone!);
    checkCivilDateTime(o.civilEndTime!);
    checkCivilDateTime(o.civilStartTime!);
    checkDistanceRollupValue(o.distance!);
    checkFloorsRollupValue(o.floors!);
    checkHeartRateRollupValue(o.heartRate!);
    checkHeartRateVariabilityPersonalRangeRollupValue(
      o.heartRateVariabilityPersonalRange!,
    );
    checkHydrationLogRollupValue(o.hydrationLog!);
    checkRestingHeartRatePersonalRangeRollupValue(
      o.restingHeartRatePersonalRange!,
    );
    checkRunVO2MaxRollupValue(o.runVo2Max!);
    checkSedentaryPeriodRollupValue(o.sedentaryPeriod!);
    checkStepsRollupValue(o.steps!);
    checkSwimLengthsDataRollupValue(o.swimLengthsData!);
    checkTimeInHeartRateZoneRollupValue(o.timeInHeartRateZone!);
    checkTotalCaloriesRollupValue(o.totalCalories!);
    checkWeightRollupValue(o.weight!);
  }
  buildCounterDailyRollupDataPoint--;
}

core.int buildCounterDailySleepTemperatureDerivations = 0;
api.DailySleepTemperatureDerivations buildDailySleepTemperatureDerivations() {
  final o = api.DailySleepTemperatureDerivations();
  buildCounterDailySleepTemperatureDerivations++;
  if (buildCounterDailySleepTemperatureDerivations < 3) {
    o.baselineTemperatureCelsius = 42.0;
    o.date = buildDate();
    o.nightlyTemperatureCelsius = 42.0;
    o.relativeNightlyStddev30dCelsius = 42.0;
  }
  buildCounterDailySleepTemperatureDerivations--;
  return o;
}

void checkDailySleepTemperatureDerivations(
  api.DailySleepTemperatureDerivations o,
) {
  buildCounterDailySleepTemperatureDerivations++;
  if (buildCounterDailySleepTemperatureDerivations < 3) {
    unittest.expect(o.baselineTemperatureCelsius!, unittest.equals(42.0));
    checkDate(o.date!);
    unittest.expect(o.nightlyTemperatureCelsius!, unittest.equals(42.0));
    unittest.expect(o.relativeNightlyStddev30dCelsius!, unittest.equals(42.0));
  }
  buildCounterDailySleepTemperatureDerivations--;
}

core.int buildCounterDailyVO2Max = 0;
api.DailyVO2Max buildDailyVO2Max() {
  final o = api.DailyVO2Max();
  buildCounterDailyVO2Max++;
  if (buildCounterDailyVO2Max < 3) {
    o.cardioFitnessLevel = 'foo';
    o.date = buildDate();
    o.estimated = true;
    o.vo2Max = 42.0;
    o.vo2MaxCovariance = 42.0;
  }
  buildCounterDailyVO2Max--;
  return o;
}

void checkDailyVO2Max(api.DailyVO2Max o) {
  buildCounterDailyVO2Max++;
  if (buildCounterDailyVO2Max < 3) {
    unittest.expect(o.cardioFitnessLevel!, unittest.equals('foo'));
    checkDate(o.date!);
    unittest.expect(o.estimated!, unittest.isTrue);
    unittest.expect(o.vo2Max!, unittest.equals(42.0));
    unittest.expect(o.vo2MaxCovariance!, unittest.equals(42.0));
  }
  buildCounterDailyVO2Max--;
}

core.int buildCounterDataPoint = 0;
api.DataPoint buildDataPoint() {
  final o = api.DataPoint();
  buildCounterDataPoint++;
  if (buildCounterDataPoint < 3) {
    o.activeMinutes = buildActiveMinutes();
    o.activeZoneMinutes = buildActiveZoneMinutes();
    o.activityLevel = buildActivityLevel();
    o.altitude = buildAltitude();
    o.bodyFat = buildBodyFat();
    o.dailyHeartRateVariability = buildDailyHeartRateVariability();
    o.dailyHeartRateZones = buildDailyHeartRateZones();
    o.dailyOxygenSaturation = buildDailyOxygenSaturation();
    o.dailyRespiratoryRate = buildDailyRespiratoryRate();
    o.dailyRestingHeartRate = buildDailyRestingHeartRate();
    o.dailySleepTemperatureDerivations =
        buildDailySleepTemperatureDerivations();
    o.dailyVo2Max = buildDailyVO2Max();
    o.dataSource = buildDataSource();
    o.distance = buildDistance();
    o.exercise = buildExercise();
    o.floors = buildFloors();
    o.heartRate = buildHeartRate();
    o.heartRateVariability = buildHeartRateVariability();
    o.height = buildHeight();
    o.hydrationLog = buildHydrationLog();
    o.name = 'foo';
    o.oxygenSaturation = buildOxygenSaturation();
    o.respiratoryRateSleepSummary = buildRespiratoryRateSleepSummary();
    o.runVo2Max = buildRunVO2Max();
    o.sedentaryPeriod = buildSedentaryPeriod();
    o.sleep = buildSleep();
    o.steps = buildSteps();
    o.swimLengthsData = buildSwimLengthsData();
    o.timeInHeartRateZone = buildTimeInHeartRateZone();
    o.vo2Max = buildVO2Max();
    o.weight = buildWeight();
  }
  buildCounterDataPoint--;
  return o;
}

void checkDataPoint(api.DataPoint o) {
  buildCounterDataPoint++;
  if (buildCounterDataPoint < 3) {
    checkActiveMinutes(o.activeMinutes!);
    checkActiveZoneMinutes(o.activeZoneMinutes!);
    checkActivityLevel(o.activityLevel!);
    checkAltitude(o.altitude!);
    checkBodyFat(o.bodyFat!);
    checkDailyHeartRateVariability(o.dailyHeartRateVariability!);
    checkDailyHeartRateZones(o.dailyHeartRateZones!);
    checkDailyOxygenSaturation(o.dailyOxygenSaturation!);
    checkDailyRespiratoryRate(o.dailyRespiratoryRate!);
    checkDailyRestingHeartRate(o.dailyRestingHeartRate!);
    checkDailySleepTemperatureDerivations(o.dailySleepTemperatureDerivations!);
    checkDailyVO2Max(o.dailyVo2Max!);
    checkDataSource(o.dataSource!);
    checkDistance(o.distance!);
    checkExercise(o.exercise!);
    checkFloors(o.floors!);
    checkHeartRate(o.heartRate!);
    checkHeartRateVariability(o.heartRateVariability!);
    checkHeight(o.height!);
    checkHydrationLog(o.hydrationLog!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkOxygenSaturation(o.oxygenSaturation!);
    checkRespiratoryRateSleepSummary(o.respiratoryRateSleepSummary!);
    checkRunVO2Max(o.runVo2Max!);
    checkSedentaryPeriod(o.sedentaryPeriod!);
    checkSleep(o.sleep!);
    checkSteps(o.steps!);
    checkSwimLengthsData(o.swimLengthsData!);
    checkTimeInHeartRateZone(o.timeInHeartRateZone!);
    checkVO2Max(o.vo2Max!);
    checkWeight(o.weight!);
  }
  buildCounterDataPoint--;
}

core.int buildCounterDataSource = 0;
api.DataSource buildDataSource() {
  final o = api.DataSource();
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    o.application = buildApplication();
    o.device = buildDevice();
    o.platform = 'foo';
    o.recordingMethod = 'foo';
  }
  buildCounterDataSource--;
  return o;
}

void checkDataSource(api.DataSource o) {
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    checkApplication(o.application!);
    checkDevice(o.device!);
    unittest.expect(o.platform!, unittest.equals('foo'));
    unittest.expect(o.recordingMethod!, unittest.equals('foo'));
  }
  buildCounterDataSource--;
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
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  final o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.displayName = 'foo';
    o.formFactor = 'foo';
    o.manufacturer = 'foo';
  }
  buildCounterDevice--;
  return o;
}

void checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.formFactor!, unittest.equals('foo'));
    unittest.expect(o.manufacturer!, unittest.equals('foo'));
  }
  buildCounterDevice--;
}

core.int buildCounterDistance = 0;
api.Distance buildDistance() {
  final o = api.Distance();
  buildCounterDistance++;
  if (buildCounterDistance < 3) {
    o.interval = buildObservationTimeInterval();
    o.millimeters = 'foo';
  }
  buildCounterDistance--;
  return o;
}

void checkDistance(api.Distance o) {
  buildCounterDistance++;
  if (buildCounterDistance < 3) {
    checkObservationTimeInterval(o.interval!);
    unittest.expect(o.millimeters!, unittest.equals('foo'));
  }
  buildCounterDistance--;
}

core.int buildCounterDistanceRollupValue = 0;
api.DistanceRollupValue buildDistanceRollupValue() {
  final o = api.DistanceRollupValue();
  buildCounterDistanceRollupValue++;
  if (buildCounterDistanceRollupValue < 3) {
    o.millimetersSum = 'foo';
  }
  buildCounterDistanceRollupValue--;
  return o;
}

void checkDistanceRollupValue(api.DistanceRollupValue o) {
  buildCounterDistanceRollupValue++;
  if (buildCounterDistanceRollupValue < 3) {
    unittest.expect(o.millimetersSum!, unittest.equals('foo'));
  }
  buildCounterDistanceRollupValue--;
}

core.int buildCounterEndpointAuthorization = 0;
api.EndpointAuthorization buildEndpointAuthorization() {
  final o = api.EndpointAuthorization();
  buildCounterEndpointAuthorization++;
  if (buildCounterEndpointAuthorization < 3) {
    o.secret = 'foo';
    o.secretSet = true;
  }
  buildCounterEndpointAuthorization--;
  return o;
}

void checkEndpointAuthorization(api.EndpointAuthorization o) {
  buildCounterEndpointAuthorization++;
  if (buildCounterEndpointAuthorization < 3) {
    unittest.expect(o.secret!, unittest.equals('foo'));
    unittest.expect(o.secretSet!, unittest.isTrue);
  }
  buildCounterEndpointAuthorization--;
}

core.List<api.ExerciseEvent> buildUnnamed8() => [
  buildExerciseEvent(),
  buildExerciseEvent(),
];

void checkUnnamed8(core.List<api.ExerciseEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExerciseEvent(o[0]);
  checkExerciseEvent(o[1]);
}

core.List<api.SplitSummary> buildUnnamed9() => [
  buildSplitSummary(),
  buildSplitSummary(),
];

void checkUnnamed9(core.List<api.SplitSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSplitSummary(o[0]);
  checkSplitSummary(o[1]);
}

core.List<api.SplitSummary> buildUnnamed10() => [
  buildSplitSummary(),
  buildSplitSummary(),
];

void checkUnnamed10(core.List<api.SplitSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSplitSummary(o[0]);
  checkSplitSummary(o[1]);
}

core.int buildCounterExercise = 0;
api.Exercise buildExercise() {
  final o = api.Exercise();
  buildCounterExercise++;
  if (buildCounterExercise < 3) {
    o.activeDuration = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.exerciseEvents = buildUnnamed8();
    o.exerciseMetadata = buildExerciseMetadata();
    o.exerciseType = 'foo';
    o.interval = buildSessionTimeInterval();
    o.metricsSummary = buildMetricsSummary();
    o.notes = 'foo';
    o.splitSummaries = buildUnnamed9();
    o.splits = buildUnnamed10();
    o.updateTime = 'foo';
  }
  buildCounterExercise--;
  return o;
}

void checkExercise(api.Exercise o) {
  buildCounterExercise++;
  if (buildCounterExercise < 3) {
    unittest.expect(o.activeDuration!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed8(o.exerciseEvents!);
    checkExerciseMetadata(o.exerciseMetadata!);
    unittest.expect(o.exerciseType!, unittest.equals('foo'));
    checkSessionTimeInterval(o.interval!);
    checkMetricsSummary(o.metricsSummary!);
    unittest.expect(o.notes!, unittest.equals('foo'));
    checkUnnamed9(o.splitSummaries!);
    checkUnnamed10(o.splits!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterExercise--;
}

core.int buildCounterExerciseEvent = 0;
api.ExerciseEvent buildExerciseEvent() {
  final o = api.ExerciseEvent();
  buildCounterExerciseEvent++;
  if (buildCounterExerciseEvent < 3) {
    o.eventTime = 'foo';
    o.eventUtcOffset = 'foo';
    o.exerciseEventType = 'foo';
  }
  buildCounterExerciseEvent--;
  return o;
}

void checkExerciseEvent(api.ExerciseEvent o) {
  buildCounterExerciseEvent++;
  if (buildCounterExerciseEvent < 3) {
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    unittest.expect(o.eventUtcOffset!, unittest.equals('foo'));
    unittest.expect(o.exerciseEventType!, unittest.equals('foo'));
  }
  buildCounterExerciseEvent--;
}

core.int buildCounterExerciseMetadata = 0;
api.ExerciseMetadata buildExerciseMetadata() {
  final o = api.ExerciseMetadata();
  buildCounterExerciseMetadata++;
  if (buildCounterExerciseMetadata < 3) {
    o.hasGps = true;
    o.poolLengthMillimeters = 'foo';
  }
  buildCounterExerciseMetadata--;
  return o;
}

void checkExerciseMetadata(api.ExerciseMetadata o) {
  buildCounterExerciseMetadata++;
  if (buildCounterExerciseMetadata < 3) {
    unittest.expect(o.hasGps!, unittest.isTrue);
    unittest.expect(o.poolLengthMillimeters!, unittest.equals('foo'));
  }
  buildCounterExerciseMetadata--;
}

core.int buildCounterExportExerciseTcxResponse = 0;
api.ExportExerciseTcxResponse buildExportExerciseTcxResponse() {
  final o = api.ExportExerciseTcxResponse();
  buildCounterExportExerciseTcxResponse++;
  if (buildCounterExportExerciseTcxResponse < 3) {
    o.tcxData = 'foo';
  }
  buildCounterExportExerciseTcxResponse--;
  return o;
}

void checkExportExerciseTcxResponse(api.ExportExerciseTcxResponse o) {
  buildCounterExportExerciseTcxResponse++;
  if (buildCounterExportExerciseTcxResponse < 3) {
    unittest.expect(o.tcxData!, unittest.equals('foo'));
  }
  buildCounterExportExerciseTcxResponse--;
}

core.int buildCounterFloors = 0;
api.Floors buildFloors() {
  final o = api.Floors();
  buildCounterFloors++;
  if (buildCounterFloors < 3) {
    o.count = 'foo';
    o.interval = buildObservationTimeInterval();
  }
  buildCounterFloors--;
  return o;
}

void checkFloors(api.Floors o) {
  buildCounterFloors++;
  if (buildCounterFloors < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    checkObservationTimeInterval(o.interval!);
  }
  buildCounterFloors--;
}

core.int buildCounterFloorsRollupValue = 0;
api.FloorsRollupValue buildFloorsRollupValue() {
  final o = api.FloorsRollupValue();
  buildCounterFloorsRollupValue++;
  if (buildCounterFloorsRollupValue < 3) {
    o.countSum = 'foo';
  }
  buildCounterFloorsRollupValue--;
  return o;
}

void checkFloorsRollupValue(api.FloorsRollupValue o) {
  buildCounterFloorsRollupValue++;
  if (buildCounterFloorsRollupValue < 3) {
    unittest.expect(o.countSum!, unittest.equals('foo'));
  }
  buildCounterFloorsRollupValue--;
}

core.int buildCounterHeartRate = 0;
api.HeartRate buildHeartRate() {
  final o = api.HeartRate();
  buildCounterHeartRate++;
  if (buildCounterHeartRate < 3) {
    o.beatsPerMinute = 'foo';
    o.metadata = buildHeartRateMetadata();
    o.sampleTime = buildObservationSampleTime();
  }
  buildCounterHeartRate--;
  return o;
}

void checkHeartRate(api.HeartRate o) {
  buildCounterHeartRate++;
  if (buildCounterHeartRate < 3) {
    unittest.expect(o.beatsPerMinute!, unittest.equals('foo'));
    checkHeartRateMetadata(o.metadata!);
    checkObservationSampleTime(o.sampleTime!);
  }
  buildCounterHeartRate--;
}

core.int buildCounterHeartRateMetadata = 0;
api.HeartRateMetadata buildHeartRateMetadata() {
  final o = api.HeartRateMetadata();
  buildCounterHeartRateMetadata++;
  if (buildCounterHeartRateMetadata < 3) {
    o.motionContext = 'foo';
    o.sensorLocation = 'foo';
  }
  buildCounterHeartRateMetadata--;
  return o;
}

void checkHeartRateMetadata(api.HeartRateMetadata o) {
  buildCounterHeartRateMetadata++;
  if (buildCounterHeartRateMetadata < 3) {
    unittest.expect(o.motionContext!, unittest.equals('foo'));
    unittest.expect(o.sensorLocation!, unittest.equals('foo'));
  }
  buildCounterHeartRateMetadata--;
}

core.int buildCounterHeartRateRollupValue = 0;
api.HeartRateRollupValue buildHeartRateRollupValue() {
  final o = api.HeartRateRollupValue();
  buildCounterHeartRateRollupValue++;
  if (buildCounterHeartRateRollupValue < 3) {
    o.beatsPerMinuteAvg = 42.0;
    o.beatsPerMinuteMax = 42.0;
    o.beatsPerMinuteMin = 42.0;
  }
  buildCounterHeartRateRollupValue--;
  return o;
}

void checkHeartRateRollupValue(api.HeartRateRollupValue o) {
  buildCounterHeartRateRollupValue++;
  if (buildCounterHeartRateRollupValue < 3) {
    unittest.expect(o.beatsPerMinuteAvg!, unittest.equals(42.0));
    unittest.expect(o.beatsPerMinuteMax!, unittest.equals(42.0));
    unittest.expect(o.beatsPerMinuteMin!, unittest.equals(42.0));
  }
  buildCounterHeartRateRollupValue--;
}

core.int buildCounterHeartRateVariability = 0;
api.HeartRateVariability buildHeartRateVariability() {
  final o = api.HeartRateVariability();
  buildCounterHeartRateVariability++;
  if (buildCounterHeartRateVariability < 3) {
    o.rootMeanSquareOfSuccessiveDifferencesMilliseconds = 42.0;
    o.sampleTime = buildObservationSampleTime();
    o.standardDeviationMilliseconds = 42.0;
  }
  buildCounterHeartRateVariability--;
  return o;
}

void checkHeartRateVariability(api.HeartRateVariability o) {
  buildCounterHeartRateVariability++;
  if (buildCounterHeartRateVariability < 3) {
    unittest.expect(
      o.rootMeanSquareOfSuccessiveDifferencesMilliseconds!,
      unittest.equals(42.0),
    );
    checkObservationSampleTime(o.sampleTime!);
    unittest.expect(o.standardDeviationMilliseconds!, unittest.equals(42.0));
  }
  buildCounterHeartRateVariability--;
}

core.int buildCounterHeartRateVariabilityPersonalRangeRollupValue = 0;
api.HeartRateVariabilityPersonalRangeRollupValue
buildHeartRateVariabilityPersonalRangeRollupValue() {
  final o = api.HeartRateVariabilityPersonalRangeRollupValue();
  buildCounterHeartRateVariabilityPersonalRangeRollupValue++;
  if (buildCounterHeartRateVariabilityPersonalRangeRollupValue < 3) {
    o.averageHeartRateVariabilityMillisecondsMax = 42.0;
    o.averageHeartRateVariabilityMillisecondsMin = 42.0;
  }
  buildCounterHeartRateVariabilityPersonalRangeRollupValue--;
  return o;
}

void checkHeartRateVariabilityPersonalRangeRollupValue(
  api.HeartRateVariabilityPersonalRangeRollupValue o,
) {
  buildCounterHeartRateVariabilityPersonalRangeRollupValue++;
  if (buildCounterHeartRateVariabilityPersonalRangeRollupValue < 3) {
    unittest.expect(
      o.averageHeartRateVariabilityMillisecondsMax!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.averageHeartRateVariabilityMillisecondsMin!,
      unittest.equals(42.0),
    );
  }
  buildCounterHeartRateVariabilityPersonalRangeRollupValue--;
}

core.int buildCounterHeartRateZone = 0;
api.HeartRateZone buildHeartRateZone() {
  final o = api.HeartRateZone();
  buildCounterHeartRateZone++;
  if (buildCounterHeartRateZone < 3) {
    o.heartRateZoneType = 'foo';
    o.maxBeatsPerMinute = 'foo';
    o.minBeatsPerMinute = 'foo';
  }
  buildCounterHeartRateZone--;
  return o;
}

void checkHeartRateZone(api.HeartRateZone o) {
  buildCounterHeartRateZone++;
  if (buildCounterHeartRateZone < 3) {
    unittest.expect(o.heartRateZoneType!, unittest.equals('foo'));
    unittest.expect(o.maxBeatsPerMinute!, unittest.equals('foo'));
    unittest.expect(o.minBeatsPerMinute!, unittest.equals('foo'));
  }
  buildCounterHeartRateZone--;
}

core.int buildCounterHeight = 0;
api.Height buildHeight() {
  final o = api.Height();
  buildCounterHeight++;
  if (buildCounterHeight < 3) {
    o.heightMillimeters = 'foo';
    o.sampleTime = buildObservationSampleTime();
  }
  buildCounterHeight--;
  return o;
}

void checkHeight(api.Height o) {
  buildCounterHeight++;
  if (buildCounterHeight < 3) {
    unittest.expect(o.heightMillimeters!, unittest.equals('foo'));
    checkObservationSampleTime(o.sampleTime!);
  }
  buildCounterHeight--;
}

core.int buildCounterHydrationLog = 0;
api.HydrationLog buildHydrationLog() {
  final o = api.HydrationLog();
  buildCounterHydrationLog++;
  if (buildCounterHydrationLog < 3) {
    o.amountConsumed = buildVolumeQuantity();
    o.interval = buildSessionTimeInterval();
  }
  buildCounterHydrationLog--;
  return o;
}

void checkHydrationLog(api.HydrationLog o) {
  buildCounterHydrationLog++;
  if (buildCounterHydrationLog < 3) {
    checkVolumeQuantity(o.amountConsumed!);
    checkSessionTimeInterval(o.interval!);
  }
  buildCounterHydrationLog--;
}

core.int buildCounterHydrationLogRollupValue = 0;
api.HydrationLogRollupValue buildHydrationLogRollupValue() {
  final o = api.HydrationLogRollupValue();
  buildCounterHydrationLogRollupValue++;
  if (buildCounterHydrationLogRollupValue < 3) {
    o.amountConsumed = buildVolumeQuantityRollup();
  }
  buildCounterHydrationLogRollupValue--;
  return o;
}

void checkHydrationLogRollupValue(api.HydrationLogRollupValue o) {
  buildCounterHydrationLogRollupValue++;
  if (buildCounterHydrationLogRollupValue < 3) {
    checkVolumeQuantityRollup(o.amountConsumed!);
  }
  buildCounterHydrationLogRollupValue--;
}

core.int buildCounterIdentity = 0;
api.Identity buildIdentity() {
  final o = api.Identity();
  buildCounterIdentity++;
  if (buildCounterIdentity < 3) {
    o.healthUserId = 'foo';
    o.legacyUserId = 'foo';
    o.name = 'foo';
  }
  buildCounterIdentity--;
  return o;
}

void checkIdentity(api.Identity o) {
  buildCounterIdentity++;
  if (buildCounterIdentity < 3) {
    unittest.expect(o.healthUserId!, unittest.equals('foo'));
    unittest.expect(o.legacyUserId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterIdentity--;
}

core.int buildCounterInterval = 0;
api.Interval buildInterval() {
  final o = api.Interval();
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterInterval--;
  return o;
}

void checkInterval(api.Interval o) {
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterInterval--;
}

core.List<api.DataPoint> buildUnnamed11() => [
  buildDataPoint(),
  buildDataPoint(),
];

void checkUnnamed11(core.List<api.DataPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataPoint(o[0]);
  checkDataPoint(o[1]);
}

core.int buildCounterListDataPointsResponse = 0;
api.ListDataPointsResponse buildListDataPointsResponse() {
  final o = api.ListDataPointsResponse();
  buildCounterListDataPointsResponse++;
  if (buildCounterListDataPointsResponse < 3) {
    o.dataPoints = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterListDataPointsResponse--;
  return o;
}

void checkListDataPointsResponse(api.ListDataPointsResponse o) {
  buildCounterListDataPointsResponse++;
  if (buildCounterListDataPointsResponse < 3) {
    checkUnnamed11(o.dataPoints!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDataPointsResponse--;
}

core.List<api.Subscriber> buildUnnamed12() => [
  buildSubscriber(),
  buildSubscriber(),
];

void checkUnnamed12(core.List<api.Subscriber> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriber(o[0]);
  checkSubscriber(o[1]);
}

core.int buildCounterListSubscribersResponse = 0;
api.ListSubscribersResponse buildListSubscribersResponse() {
  final o = api.ListSubscribersResponse();
  buildCounterListSubscribersResponse++;
  if (buildCounterListSubscribersResponse < 3) {
    o.nextPageToken = 'foo';
    o.subscribers = buildUnnamed12();
    o.totalSize = 42;
  }
  buildCounterListSubscribersResponse--;
  return o;
}

void checkListSubscribersResponse(api.ListSubscribersResponse o) {
  buildCounterListSubscribersResponse++;
  if (buildCounterListSubscribersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.subscribers!);
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterListSubscribersResponse--;
}

core.int buildCounterMetricsSummary = 0;
api.MetricsSummary buildMetricsSummary() {
  final o = api.MetricsSummary();
  buildCounterMetricsSummary++;
  if (buildCounterMetricsSummary < 3) {
    o.activeZoneMinutes = 'foo';
    o.averageHeartRateBeatsPerMinute = 'foo';
    o.averagePaceSecondsPerMeter = 42.0;
    o.averageSpeedMillimetersPerSecond = 42.0;
    o.caloriesKcal = 42.0;
    o.distanceMillimeters = 42.0;
    o.elevationGainMillimeters = 42.0;
    o.heartRateZoneDurations = buildTimeInHeartRateZones();
    o.mobilityMetrics = buildMobilityMetrics();
    o.runVo2Max = 42.0;
    o.steps = 'foo';
    o.totalSwimLengths = 42.0;
  }
  buildCounterMetricsSummary--;
  return o;
}

void checkMetricsSummary(api.MetricsSummary o) {
  buildCounterMetricsSummary++;
  if (buildCounterMetricsSummary < 3) {
    unittest.expect(o.activeZoneMinutes!, unittest.equals('foo'));
    unittest.expect(o.averageHeartRateBeatsPerMinute!, unittest.equals('foo'));
    unittest.expect(o.averagePaceSecondsPerMeter!, unittest.equals(42.0));
    unittest.expect(o.averageSpeedMillimetersPerSecond!, unittest.equals(42.0));
    unittest.expect(o.caloriesKcal!, unittest.equals(42.0));
    unittest.expect(o.distanceMillimeters!, unittest.equals(42.0));
    unittest.expect(o.elevationGainMillimeters!, unittest.equals(42.0));
    checkTimeInHeartRateZones(o.heartRateZoneDurations!);
    checkMobilityMetrics(o.mobilityMetrics!);
    unittest.expect(o.runVo2Max!, unittest.equals(42.0));
    unittest.expect(o.steps!, unittest.equals('foo'));
    unittest.expect(o.totalSwimLengths!, unittest.equals(42.0));
  }
  buildCounterMetricsSummary--;
}

core.int buildCounterMobilityMetrics = 0;
api.MobilityMetrics buildMobilityMetrics() {
  final o = api.MobilityMetrics();
  buildCounterMobilityMetrics++;
  if (buildCounterMobilityMetrics < 3) {
    o.avgCadenceStepsPerMinute = 42.0;
    o.avgGroundContactTimeDuration = 'foo';
    o.avgStrideLengthMillimeters = 'foo';
    o.avgVerticalOscillationMillimeters = 'foo';
    o.avgVerticalRatio = 42.0;
  }
  buildCounterMobilityMetrics--;
  return o;
}

void checkMobilityMetrics(api.MobilityMetrics o) {
  buildCounterMobilityMetrics++;
  if (buildCounterMobilityMetrics < 3) {
    unittest.expect(o.avgCadenceStepsPerMinute!, unittest.equals(42.0));
    unittest.expect(o.avgGroundContactTimeDuration!, unittest.equals('foo'));
    unittest.expect(o.avgStrideLengthMillimeters!, unittest.equals('foo'));
    unittest.expect(
      o.avgVerticalOscillationMillimeters!,
      unittest.equals('foo'),
    );
    unittest.expect(o.avgVerticalRatio!, unittest.equals(42.0));
  }
  buildCounterMobilityMetrics--;
}

core.int buildCounterObservationSampleTime = 0;
api.ObservationSampleTime buildObservationSampleTime() {
  final o = api.ObservationSampleTime();
  buildCounterObservationSampleTime++;
  if (buildCounterObservationSampleTime < 3) {
    o.civilTime = buildCivilDateTime();
    o.physicalTime = 'foo';
    o.utcOffset = 'foo';
  }
  buildCounterObservationSampleTime--;
  return o;
}

void checkObservationSampleTime(api.ObservationSampleTime o) {
  buildCounterObservationSampleTime++;
  if (buildCounterObservationSampleTime < 3) {
    checkCivilDateTime(o.civilTime!);
    unittest.expect(o.physicalTime!, unittest.equals('foo'));
    unittest.expect(o.utcOffset!, unittest.equals('foo'));
  }
  buildCounterObservationSampleTime--;
}

core.int buildCounterObservationTimeInterval = 0;
api.ObservationTimeInterval buildObservationTimeInterval() {
  final o = api.ObservationTimeInterval();
  buildCounterObservationTimeInterval++;
  if (buildCounterObservationTimeInterval < 3) {
    o.civilEndTime = buildCivilDateTime();
    o.civilStartTime = buildCivilDateTime();
    o.endTime = 'foo';
    o.endUtcOffset = 'foo';
    o.startTime = 'foo';
    o.startUtcOffset = 'foo';
  }
  buildCounterObservationTimeInterval--;
  return o;
}

void checkObservationTimeInterval(api.ObservationTimeInterval o) {
  buildCounterObservationTimeInterval++;
  if (buildCounterObservationTimeInterval < 3) {
    checkCivilDateTime(o.civilEndTime!);
    checkCivilDateTime(o.civilStartTime!);
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.endUtcOffset!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.startUtcOffset!, unittest.equals('foo'));
  }
  buildCounterObservationTimeInterval--;
}

core.Map<core.String, core.Object?> buildUnnamed13() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed13(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed14() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed13();
    o.name = 'foo';
    o.response = buildUnnamed14();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed13(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed14(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOutOfBedSegment = 0;
api.OutOfBedSegment buildOutOfBedSegment() {
  final o = api.OutOfBedSegment();
  buildCounterOutOfBedSegment++;
  if (buildCounterOutOfBedSegment < 3) {
    o.endTime = 'foo';
    o.endUtcOffset = 'foo';
    o.startTime = 'foo';
    o.startUtcOffset = 'foo';
  }
  buildCounterOutOfBedSegment--;
  return o;
}

void checkOutOfBedSegment(api.OutOfBedSegment o) {
  buildCounterOutOfBedSegment++;
  if (buildCounterOutOfBedSegment < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.endUtcOffset!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.startUtcOffset!, unittest.equals('foo'));
  }
  buildCounterOutOfBedSegment--;
}

core.int buildCounterOxygenSaturation = 0;
api.OxygenSaturation buildOxygenSaturation() {
  final o = api.OxygenSaturation();
  buildCounterOxygenSaturation++;
  if (buildCounterOxygenSaturation < 3) {
    o.percentage = 42.0;
    o.sampleTime = buildObservationSampleTime();
  }
  buildCounterOxygenSaturation--;
  return o;
}

void checkOxygenSaturation(api.OxygenSaturation o) {
  buildCounterOxygenSaturation++;
  if (buildCounterOxygenSaturation < 3) {
    unittest.expect(o.percentage!, unittest.equals(42.0));
    checkObservationSampleTime(o.sampleTime!);
  }
  buildCounterOxygenSaturation--;
}

core.int buildCounterProfile = 0;
api.Profile buildProfile() {
  final o = api.Profile();
  buildCounterProfile++;
  if (buildCounterProfile < 3) {
    o.age = 42;
    o.autoRunningStrideLengthMm = 42;
    o.autoWalkingStrideLengthMm = 42;
    o.membershipStartDate = buildDate();
    o.name = 'foo';
    o.userConfiguredRunningStrideLengthMm = 42;
    o.userConfiguredWalkingStrideLengthMm = 42;
  }
  buildCounterProfile--;
  return o;
}

void checkProfile(api.Profile o) {
  buildCounterProfile++;
  if (buildCounterProfile < 3) {
    unittest.expect(o.age!, unittest.equals(42));
    unittest.expect(o.autoRunningStrideLengthMm!, unittest.equals(42));
    unittest.expect(o.autoWalkingStrideLengthMm!, unittest.equals(42));
    checkDate(o.membershipStartDate!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(
      o.userConfiguredRunningStrideLengthMm!,
      unittest.equals(42),
    );
    unittest.expect(
      o.userConfiguredWalkingStrideLengthMm!,
      unittest.equals(42),
    );
  }
  buildCounterProfile--;
}

core.List<api.ReconciledDataPoint> buildUnnamed15() => [
  buildReconciledDataPoint(),
  buildReconciledDataPoint(),
];

void checkUnnamed15(core.List<api.ReconciledDataPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReconciledDataPoint(o[0]);
  checkReconciledDataPoint(o[1]);
}

core.int buildCounterReconcileDataPointsResponse = 0;
api.ReconcileDataPointsResponse buildReconcileDataPointsResponse() {
  final o = api.ReconcileDataPointsResponse();
  buildCounterReconcileDataPointsResponse++;
  if (buildCounterReconcileDataPointsResponse < 3) {
    o.dataPoints = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterReconcileDataPointsResponse--;
  return o;
}

void checkReconcileDataPointsResponse(api.ReconcileDataPointsResponse o) {
  buildCounterReconcileDataPointsResponse++;
  if (buildCounterReconcileDataPointsResponse < 3) {
    checkUnnamed15(o.dataPoints!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterReconcileDataPointsResponse--;
}

core.int buildCounterReconciledDataPoint = 0;
api.ReconciledDataPoint buildReconciledDataPoint() {
  final o = api.ReconciledDataPoint();
  buildCounterReconciledDataPoint++;
  if (buildCounterReconciledDataPoint < 3) {
    o.activeMinutes = buildActiveMinutes();
    o.activeZoneMinutes = buildActiveZoneMinutes();
    o.activityLevel = buildActivityLevel();
    o.altitude = buildAltitude();
    o.bodyFat = buildBodyFat();
    o.dailyHeartRateVariability = buildDailyHeartRateVariability();
    o.dailyHeartRateZones = buildDailyHeartRateZones();
    o.dailyOxygenSaturation = buildDailyOxygenSaturation();
    o.dailyRespiratoryRate = buildDailyRespiratoryRate();
    o.dailyRestingHeartRate = buildDailyRestingHeartRate();
    o.dailySleepTemperatureDerivations =
        buildDailySleepTemperatureDerivations();
    o.dailyVo2Max = buildDailyVO2Max();
    o.dataPointName = 'foo';
    o.distance = buildDistance();
    o.exercise = buildExercise();
    o.floors = buildFloors();
    o.heartRate = buildHeartRate();
    o.heartRateVariability = buildHeartRateVariability();
    o.height = buildHeight();
    o.hydrationLog = buildHydrationLog();
    o.oxygenSaturation = buildOxygenSaturation();
    o.respiratoryRateSleepSummary = buildRespiratoryRateSleepSummary();
    o.runVo2Max = buildRunVO2Max();
    o.sedentaryPeriod = buildSedentaryPeriod();
    o.sleep = buildSleep();
    o.steps = buildSteps();
    o.swimLengthsData = buildSwimLengthsData();
    o.timeInHeartRateZone = buildTimeInHeartRateZone();
    o.vo2Max = buildVO2Max();
    o.weight = buildWeight();
  }
  buildCounterReconciledDataPoint--;
  return o;
}

void checkReconciledDataPoint(api.ReconciledDataPoint o) {
  buildCounterReconciledDataPoint++;
  if (buildCounterReconciledDataPoint < 3) {
    checkActiveMinutes(o.activeMinutes!);
    checkActiveZoneMinutes(o.activeZoneMinutes!);
    checkActivityLevel(o.activityLevel!);
    checkAltitude(o.altitude!);
    checkBodyFat(o.bodyFat!);
    checkDailyHeartRateVariability(o.dailyHeartRateVariability!);
    checkDailyHeartRateZones(o.dailyHeartRateZones!);
    checkDailyOxygenSaturation(o.dailyOxygenSaturation!);
    checkDailyRespiratoryRate(o.dailyRespiratoryRate!);
    checkDailyRestingHeartRate(o.dailyRestingHeartRate!);
    checkDailySleepTemperatureDerivations(o.dailySleepTemperatureDerivations!);
    checkDailyVO2Max(o.dailyVo2Max!);
    unittest.expect(o.dataPointName!, unittest.equals('foo'));
    checkDistance(o.distance!);
    checkExercise(o.exercise!);
    checkFloors(o.floors!);
    checkHeartRate(o.heartRate!);
    checkHeartRateVariability(o.heartRateVariability!);
    checkHeight(o.height!);
    checkHydrationLog(o.hydrationLog!);
    checkOxygenSaturation(o.oxygenSaturation!);
    checkRespiratoryRateSleepSummary(o.respiratoryRateSleepSummary!);
    checkRunVO2Max(o.runVo2Max!);
    checkSedentaryPeriod(o.sedentaryPeriod!);
    checkSleep(o.sleep!);
    checkSteps(o.steps!);
    checkSwimLengthsData(o.swimLengthsData!);
    checkTimeInHeartRateZone(o.timeInHeartRateZone!);
    checkVO2Max(o.vo2Max!);
    checkWeight(o.weight!);
  }
  buildCounterReconciledDataPoint--;
}

core.int buildCounterRespiratoryRateSleepSummary = 0;
api.RespiratoryRateSleepSummary buildRespiratoryRateSleepSummary() {
  final o = api.RespiratoryRateSleepSummary();
  buildCounterRespiratoryRateSleepSummary++;
  if (buildCounterRespiratoryRateSleepSummary < 3) {
    o.deepSleepStats = buildRespiratoryRateSleepSummaryStatistics();
    o.fullSleepStats = buildRespiratoryRateSleepSummaryStatistics();
    o.lightSleepStats = buildRespiratoryRateSleepSummaryStatistics();
    o.remSleepStats = buildRespiratoryRateSleepSummaryStatistics();
    o.sampleTime = buildObservationSampleTime();
  }
  buildCounterRespiratoryRateSleepSummary--;
  return o;
}

void checkRespiratoryRateSleepSummary(api.RespiratoryRateSleepSummary o) {
  buildCounterRespiratoryRateSleepSummary++;
  if (buildCounterRespiratoryRateSleepSummary < 3) {
    checkRespiratoryRateSleepSummaryStatistics(o.deepSleepStats!);
    checkRespiratoryRateSleepSummaryStatistics(o.fullSleepStats!);
    checkRespiratoryRateSleepSummaryStatistics(o.lightSleepStats!);
    checkRespiratoryRateSleepSummaryStatistics(o.remSleepStats!);
    checkObservationSampleTime(o.sampleTime!);
  }
  buildCounterRespiratoryRateSleepSummary--;
}

core.int buildCounterRespiratoryRateSleepSummaryStatistics = 0;
api.RespiratoryRateSleepSummaryStatistics
buildRespiratoryRateSleepSummaryStatistics() {
  final o = api.RespiratoryRateSleepSummaryStatistics();
  buildCounterRespiratoryRateSleepSummaryStatistics++;
  if (buildCounterRespiratoryRateSleepSummaryStatistics < 3) {
    o.breathsPerMinute = 42.0;
    o.signalToNoise = 42.0;
    o.standardDeviation = 42.0;
  }
  buildCounterRespiratoryRateSleepSummaryStatistics--;
  return o;
}

void checkRespiratoryRateSleepSummaryStatistics(
  api.RespiratoryRateSleepSummaryStatistics o,
) {
  buildCounterRespiratoryRateSleepSummaryStatistics++;
  if (buildCounterRespiratoryRateSleepSummaryStatistics < 3) {
    unittest.expect(o.breathsPerMinute!, unittest.equals(42.0));
    unittest.expect(o.signalToNoise!, unittest.equals(42.0));
    unittest.expect(o.standardDeviation!, unittest.equals(42.0));
  }
  buildCounterRespiratoryRateSleepSummaryStatistics--;
}

core.int buildCounterRestingHeartRatePersonalRangeRollupValue = 0;
api.RestingHeartRatePersonalRangeRollupValue
buildRestingHeartRatePersonalRangeRollupValue() {
  final o = api.RestingHeartRatePersonalRangeRollupValue();
  buildCounterRestingHeartRatePersonalRangeRollupValue++;
  if (buildCounterRestingHeartRatePersonalRangeRollupValue < 3) {
    o.beatsPerMinuteMax = 42.0;
    o.beatsPerMinuteMin = 42.0;
  }
  buildCounterRestingHeartRatePersonalRangeRollupValue--;
  return o;
}

void checkRestingHeartRatePersonalRangeRollupValue(
  api.RestingHeartRatePersonalRangeRollupValue o,
) {
  buildCounterRestingHeartRatePersonalRangeRollupValue++;
  if (buildCounterRestingHeartRatePersonalRangeRollupValue < 3) {
    unittest.expect(o.beatsPerMinuteMax!, unittest.equals(42.0));
    unittest.expect(o.beatsPerMinuteMin!, unittest.equals(42.0));
  }
  buildCounterRestingHeartRatePersonalRangeRollupValue--;
}

core.int buildCounterRollUpDataPointsRequest = 0;
api.RollUpDataPointsRequest buildRollUpDataPointsRequest() {
  final o = api.RollUpDataPointsRequest();
  buildCounterRollUpDataPointsRequest++;
  if (buildCounterRollUpDataPointsRequest < 3) {
    o.dataSourceFamily = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.range = buildInterval();
    o.windowSize = 'foo';
  }
  buildCounterRollUpDataPointsRequest--;
  return o;
}

void checkRollUpDataPointsRequest(api.RollUpDataPointsRequest o) {
  buildCounterRollUpDataPointsRequest++;
  if (buildCounterRollUpDataPointsRequest < 3) {
    unittest.expect(o.dataSourceFamily!, unittest.equals('foo'));
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkInterval(o.range!);
    unittest.expect(o.windowSize!, unittest.equals('foo'));
  }
  buildCounterRollUpDataPointsRequest--;
}

core.List<api.RollupDataPoint> buildUnnamed16() => [
  buildRollupDataPoint(),
  buildRollupDataPoint(),
];

void checkUnnamed16(core.List<api.RollupDataPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRollupDataPoint(o[0]);
  checkRollupDataPoint(o[1]);
}

core.int buildCounterRollUpDataPointsResponse = 0;
api.RollUpDataPointsResponse buildRollUpDataPointsResponse() {
  final o = api.RollUpDataPointsResponse();
  buildCounterRollUpDataPointsResponse++;
  if (buildCounterRollUpDataPointsResponse < 3) {
    o.nextPageToken = 'foo';
    o.rollupDataPoints = buildUnnamed16();
  }
  buildCounterRollUpDataPointsResponse--;
  return o;
}

void checkRollUpDataPointsResponse(api.RollUpDataPointsResponse o) {
  buildCounterRollUpDataPointsResponse++;
  if (buildCounterRollUpDataPointsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed16(o.rollupDataPoints!);
  }
  buildCounterRollUpDataPointsResponse--;
}

core.int buildCounterRollupDataPoint = 0;
api.RollupDataPoint buildRollupDataPoint() {
  final o = api.RollupDataPoint();
  buildCounterRollupDataPoint++;
  if (buildCounterRollupDataPoint < 3) {
    o.activeMinutes = buildActiveMinutesRollupValue();
    o.activeZoneMinutes = buildActiveZoneMinutesRollupValue();
    o.activityLevel = buildActivityLevelRollupValue();
    o.altitude = buildAltitudeRollupValue();
    o.bodyFat = buildBodyFatRollupValue();
    o.caloriesInHeartRateZone = buildCaloriesInHeartRateZoneRollupValue();
    o.distance = buildDistanceRollupValue();
    o.endTime = 'foo';
    o.floors = buildFloorsRollupValue();
    o.heartRate = buildHeartRateRollupValue();
    o.hydrationLog = buildHydrationLogRollupValue();
    o.runVo2Max = buildRunVO2MaxRollupValue();
    o.sedentaryPeriod = buildSedentaryPeriodRollupValue();
    o.startTime = 'foo';
    o.steps = buildStepsRollupValue();
    o.swimLengthsData = buildSwimLengthsDataRollupValue();
    o.timeInHeartRateZone = buildTimeInHeartRateZoneRollupValue();
    o.totalCalories = buildTotalCaloriesRollupValue();
    o.weight = buildWeightRollupValue();
  }
  buildCounterRollupDataPoint--;
  return o;
}

void checkRollupDataPoint(api.RollupDataPoint o) {
  buildCounterRollupDataPoint++;
  if (buildCounterRollupDataPoint < 3) {
    checkActiveMinutesRollupValue(o.activeMinutes!);
    checkActiveZoneMinutesRollupValue(o.activeZoneMinutes!);
    checkActivityLevelRollupValue(o.activityLevel!);
    checkAltitudeRollupValue(o.altitude!);
    checkBodyFatRollupValue(o.bodyFat!);
    checkCaloriesInHeartRateZoneRollupValue(o.caloriesInHeartRateZone!);
    checkDistanceRollupValue(o.distance!);
    unittest.expect(o.endTime!, unittest.equals('foo'));
    checkFloorsRollupValue(o.floors!);
    checkHeartRateRollupValue(o.heartRate!);
    checkHydrationLogRollupValue(o.hydrationLog!);
    checkRunVO2MaxRollupValue(o.runVo2Max!);
    checkSedentaryPeriodRollupValue(o.sedentaryPeriod!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
    checkStepsRollupValue(o.steps!);
    checkSwimLengthsDataRollupValue(o.swimLengthsData!);
    checkTimeInHeartRateZoneRollupValue(o.timeInHeartRateZone!);
    checkTotalCaloriesRollupValue(o.totalCalories!);
    checkWeightRollupValue(o.weight!);
  }
  buildCounterRollupDataPoint--;
}

core.int buildCounterRunVO2Max = 0;
api.RunVO2Max buildRunVO2Max() {
  final o = api.RunVO2Max();
  buildCounterRunVO2Max++;
  if (buildCounterRunVO2Max < 3) {
    o.runVo2Max = 42.0;
    o.sampleTime = buildObservationSampleTime();
  }
  buildCounterRunVO2Max--;
  return o;
}

void checkRunVO2Max(api.RunVO2Max o) {
  buildCounterRunVO2Max++;
  if (buildCounterRunVO2Max < 3) {
    unittest.expect(o.runVo2Max!, unittest.equals(42.0));
    checkObservationSampleTime(o.sampleTime!);
  }
  buildCounterRunVO2Max--;
}

core.int buildCounterRunVO2MaxRollupValue = 0;
api.RunVO2MaxRollupValue buildRunVO2MaxRollupValue() {
  final o = api.RunVO2MaxRollupValue();
  buildCounterRunVO2MaxRollupValue++;
  if (buildCounterRunVO2MaxRollupValue < 3) {
    o.rateAvg = 42.0;
    o.rateMax = 42.0;
    o.rateMin = 42.0;
  }
  buildCounterRunVO2MaxRollupValue--;
  return o;
}

void checkRunVO2MaxRollupValue(api.RunVO2MaxRollupValue o) {
  buildCounterRunVO2MaxRollupValue++;
  if (buildCounterRunVO2MaxRollupValue < 3) {
    unittest.expect(o.rateAvg!, unittest.equals(42.0));
    unittest.expect(o.rateMax!, unittest.equals(42.0));
    unittest.expect(o.rateMin!, unittest.equals(42.0));
  }
  buildCounterRunVO2MaxRollupValue--;
}

core.int buildCounterSedentaryPeriod = 0;
api.SedentaryPeriod buildSedentaryPeriod() {
  final o = api.SedentaryPeriod();
  buildCounterSedentaryPeriod++;
  if (buildCounterSedentaryPeriod < 3) {
    o.interval = buildObservationTimeInterval();
  }
  buildCounterSedentaryPeriod--;
  return o;
}

void checkSedentaryPeriod(api.SedentaryPeriod o) {
  buildCounterSedentaryPeriod++;
  if (buildCounterSedentaryPeriod < 3) {
    checkObservationTimeInterval(o.interval!);
  }
  buildCounterSedentaryPeriod--;
}

core.int buildCounterSedentaryPeriodRollupValue = 0;
api.SedentaryPeriodRollupValue buildSedentaryPeriodRollupValue() {
  final o = api.SedentaryPeriodRollupValue();
  buildCounterSedentaryPeriodRollupValue++;
  if (buildCounterSedentaryPeriodRollupValue < 3) {
    o.durationSum = 'foo';
  }
  buildCounterSedentaryPeriodRollupValue--;
  return o;
}

void checkSedentaryPeriodRollupValue(api.SedentaryPeriodRollupValue o) {
  buildCounterSedentaryPeriodRollupValue++;
  if (buildCounterSedentaryPeriodRollupValue < 3) {
    unittest.expect(o.durationSum!, unittest.equals('foo'));
  }
  buildCounterSedentaryPeriodRollupValue--;
}

core.int buildCounterSessionTimeInterval = 0;
api.SessionTimeInterval buildSessionTimeInterval() {
  final o = api.SessionTimeInterval();
  buildCounterSessionTimeInterval++;
  if (buildCounterSessionTimeInterval < 3) {
    o.civilEndTime = buildCivilDateTime();
    o.civilStartTime = buildCivilDateTime();
    o.endTime = 'foo';
    o.endUtcOffset = 'foo';
    o.startTime = 'foo';
    o.startUtcOffset = 'foo';
  }
  buildCounterSessionTimeInterval--;
  return o;
}

void checkSessionTimeInterval(api.SessionTimeInterval o) {
  buildCounterSessionTimeInterval++;
  if (buildCounterSessionTimeInterval < 3) {
    checkCivilDateTime(o.civilEndTime!);
    checkCivilDateTime(o.civilStartTime!);
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.endUtcOffset!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.startUtcOffset!, unittest.equals('foo'));
  }
  buildCounterSessionTimeInterval--;
}

core.int buildCounterSettings = 0;
api.Settings buildSettings() {
  final o = api.Settings();
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    o.autoStrideEnabled = true;
    o.distanceUnit = 'foo';
    o.glucoseUnit = 'foo';
    o.heightUnit = 'foo';
    o.languageLocale = 'foo';
    o.name = 'foo';
    o.strideLengthRunningType = 'foo';
    o.strideLengthWalkingType = 'foo';
    o.swimUnit = 'foo';
    o.temperatureUnit = 'foo';
    o.timeZone = 'foo';
    o.utcOffset = 'foo';
    o.waterUnit = 'foo';
    o.weightUnit = 'foo';
  }
  buildCounterSettings--;
  return o;
}

void checkSettings(api.Settings o) {
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    unittest.expect(o.autoStrideEnabled!, unittest.isTrue);
    unittest.expect(o.distanceUnit!, unittest.equals('foo'));
    unittest.expect(o.glucoseUnit!, unittest.equals('foo'));
    unittest.expect(o.heightUnit!, unittest.equals('foo'));
    unittest.expect(o.languageLocale!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.strideLengthRunningType!, unittest.equals('foo'));
    unittest.expect(o.strideLengthWalkingType!, unittest.equals('foo'));
    unittest.expect(o.swimUnit!, unittest.equals('foo'));
    unittest.expect(o.temperatureUnit!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
    unittest.expect(o.utcOffset!, unittest.equals('foo'));
    unittest.expect(o.waterUnit!, unittest.equals('foo'));
    unittest.expect(o.weightUnit!, unittest.equals('foo'));
  }
  buildCounterSettings--;
}

core.List<api.OutOfBedSegment> buildUnnamed17() => [
  buildOutOfBedSegment(),
  buildOutOfBedSegment(),
];

void checkUnnamed17(core.List<api.OutOfBedSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOutOfBedSegment(o[0]);
  checkOutOfBedSegment(o[1]);
}

core.List<api.SleepStage> buildUnnamed18() => [
  buildSleepStage(),
  buildSleepStage(),
];

void checkUnnamed18(core.List<api.SleepStage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSleepStage(o[0]);
  checkSleepStage(o[1]);
}

core.int buildCounterSleep = 0;
api.Sleep buildSleep() {
  final o = api.Sleep();
  buildCounterSleep++;
  if (buildCounterSleep < 3) {
    o.createTime = 'foo';
    o.interval = buildSessionTimeInterval();
    o.metadata = buildSleepMetadata();
    o.outOfBedSegments = buildUnnamed17();
    o.stages = buildUnnamed18();
    o.summary = buildSleepSummary();
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSleep--;
  return o;
}

void checkSleep(api.Sleep o) {
  buildCounterSleep++;
  if (buildCounterSleep < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkSessionTimeInterval(o.interval!);
    checkSleepMetadata(o.metadata!);
    checkUnnamed17(o.outOfBedSegments!);
    checkUnnamed18(o.stages!);
    checkSleepSummary(o.summary!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSleep--;
}

core.int buildCounterSleepMetadata = 0;
api.SleepMetadata buildSleepMetadata() {
  final o = api.SleepMetadata();
  buildCounterSleepMetadata++;
  if (buildCounterSleepMetadata < 3) {
    o.externalId = 'foo';
    o.manuallyEdited = true;
    o.nap = true;
    o.processed = true;
    o.stagesStatus = 'foo';
  }
  buildCounterSleepMetadata--;
  return o;
}

void checkSleepMetadata(api.SleepMetadata o) {
  buildCounterSleepMetadata++;
  if (buildCounterSleepMetadata < 3) {
    unittest.expect(o.externalId!, unittest.equals('foo'));
    unittest.expect(o.manuallyEdited!, unittest.isTrue);
    unittest.expect(o.nap!, unittest.isTrue);
    unittest.expect(o.processed!, unittest.isTrue);
    unittest.expect(o.stagesStatus!, unittest.equals('foo'));
  }
  buildCounterSleepMetadata--;
}

core.int buildCounterSleepStage = 0;
api.SleepStage buildSleepStage() {
  final o = api.SleepStage();
  buildCounterSleepStage++;
  if (buildCounterSleepStage < 3) {
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.endUtcOffset = 'foo';
    o.startTime = 'foo';
    o.startUtcOffset = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSleepStage--;
  return o;
}

void checkSleepStage(api.SleepStage o) {
  buildCounterSleepStage++;
  if (buildCounterSleepStage < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.endUtcOffset!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.startUtcOffset!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSleepStage--;
}

core.List<api.StageSummary> buildUnnamed19() => [
  buildStageSummary(),
  buildStageSummary(),
];

void checkUnnamed19(core.List<api.StageSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSummary(o[0]);
  checkStageSummary(o[1]);
}

core.int buildCounterSleepSummary = 0;
api.SleepSummary buildSleepSummary() {
  final o = api.SleepSummary();
  buildCounterSleepSummary++;
  if (buildCounterSleepSummary < 3) {
    o.minutesAfterWakeUp = 'foo';
    o.minutesAsleep = 'foo';
    o.minutesAwake = 'foo';
    o.minutesInSleepPeriod = 'foo';
    o.minutesToFallAsleep = 'foo';
    o.stagesSummary = buildUnnamed19();
  }
  buildCounterSleepSummary--;
  return o;
}

void checkSleepSummary(api.SleepSummary o) {
  buildCounterSleepSummary++;
  if (buildCounterSleepSummary < 3) {
    unittest.expect(o.minutesAfterWakeUp!, unittest.equals('foo'));
    unittest.expect(o.minutesAsleep!, unittest.equals('foo'));
    unittest.expect(o.minutesAwake!, unittest.equals('foo'));
    unittest.expect(o.minutesInSleepPeriod!, unittest.equals('foo'));
    unittest.expect(o.minutesToFallAsleep!, unittest.equals('foo'));
    checkUnnamed19(o.stagesSummary!);
  }
  buildCounterSleepSummary--;
}

core.int buildCounterSplitSummary = 0;
api.SplitSummary buildSplitSummary() {
  final o = api.SplitSummary();
  buildCounterSplitSummary++;
  if (buildCounterSplitSummary < 3) {
    o.activeDuration = 'foo';
    o.endTime = 'foo';
    o.endUtcOffset = 'foo';
    o.metricsSummary = buildMetricsSummary();
    o.splitType = 'foo';
    o.startTime = 'foo';
    o.startUtcOffset = 'foo';
  }
  buildCounterSplitSummary--;
  return o;
}

void checkSplitSummary(api.SplitSummary o) {
  buildCounterSplitSummary++;
  if (buildCounterSplitSummary < 3) {
    unittest.expect(o.activeDuration!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.endUtcOffset!, unittest.equals('foo'));
    checkMetricsSummary(o.metricsSummary!);
    unittest.expect(o.splitType!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.startUtcOffset!, unittest.equals('foo'));
  }
  buildCounterSplitSummary--;
}

core.int buildCounterStageSummary = 0;
api.StageSummary buildStageSummary() {
  final o = api.StageSummary();
  buildCounterStageSummary++;
  if (buildCounterStageSummary < 3) {
    o.count = 'foo';
    o.minutes = 'foo';
    o.type = 'foo';
  }
  buildCounterStageSummary--;
  return o;
}

void checkStageSummary(api.StageSummary o) {
  buildCounterStageSummary++;
  if (buildCounterStageSummary < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.minutes!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterStageSummary--;
}

core.Map<core.String, core.Object?> buildUnnamed20() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed21() => [
  buildUnnamed20(),
  buildUnnamed20(),
];

void checkUnnamed21(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed20(o[0]);
  checkUnnamed20(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed21();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed21(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSteps = 0;
api.Steps buildSteps() {
  final o = api.Steps();
  buildCounterSteps++;
  if (buildCounterSteps < 3) {
    o.count = 'foo';
    o.interval = buildObservationTimeInterval();
  }
  buildCounterSteps--;
  return o;
}

void checkSteps(api.Steps o) {
  buildCounterSteps++;
  if (buildCounterSteps < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    checkObservationTimeInterval(o.interval!);
  }
  buildCounterSteps--;
}

core.int buildCounterStepsRollupValue = 0;
api.StepsRollupValue buildStepsRollupValue() {
  final o = api.StepsRollupValue();
  buildCounterStepsRollupValue++;
  if (buildCounterStepsRollupValue < 3) {
    o.countSum = 'foo';
  }
  buildCounterStepsRollupValue--;
  return o;
}

void checkStepsRollupValue(api.StepsRollupValue o) {
  buildCounterStepsRollupValue++;
  if (buildCounterStepsRollupValue < 3) {
    unittest.expect(o.countSum!, unittest.equals('foo'));
  }
  buildCounterStepsRollupValue--;
}

core.List<api.SubscriberConfig> buildUnnamed22() => [
  buildSubscriberConfig(),
  buildSubscriberConfig(),
];

void checkUnnamed22(core.List<api.SubscriberConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriberConfig(o[0]);
  checkSubscriberConfig(o[1]);
}

core.int buildCounterSubscriber = 0;
api.Subscriber buildSubscriber() {
  final o = api.Subscriber();
  buildCounterSubscriber++;
  if (buildCounterSubscriber < 3) {
    o.createTime = 'foo';
    o.endpointAuthorization = buildEndpointAuthorization();
    o.endpointUri = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.subscriberConfigs = buildUnnamed22();
    o.updateTime = 'foo';
  }
  buildCounterSubscriber--;
  return o;
}

void checkSubscriber(api.Subscriber o) {
  buildCounterSubscriber++;
  if (buildCounterSubscriber < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkEndpointAuthorization(o.endpointAuthorization!);
    unittest.expect(o.endpointUri!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed22(o.subscriberConfigs!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSubscriber--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSubscriberConfig = 0;
api.SubscriberConfig buildSubscriberConfig() {
  final o = api.SubscriberConfig();
  buildCounterSubscriberConfig++;
  if (buildCounterSubscriberConfig < 3) {
    o.dataTypes = buildUnnamed23();
    o.subscriptionCreatePolicy = 'foo';
  }
  buildCounterSubscriberConfig--;
  return o;
}

void checkSubscriberConfig(api.SubscriberConfig o) {
  buildCounterSubscriberConfig++;
  if (buildCounterSubscriberConfig < 3) {
    checkUnnamed23(o.dataTypes!);
    unittest.expect(o.subscriptionCreatePolicy!, unittest.equals('foo'));
  }
  buildCounterSubscriberConfig--;
}

core.int buildCounterSwimLengthsData = 0;
api.SwimLengthsData buildSwimLengthsData() {
  final o = api.SwimLengthsData();
  buildCounterSwimLengthsData++;
  if (buildCounterSwimLengthsData < 3) {
    o.interval = buildObservationTimeInterval();
    o.strokeCount = 'foo';
    o.swimStrokeType = 'foo';
  }
  buildCounterSwimLengthsData--;
  return o;
}

void checkSwimLengthsData(api.SwimLengthsData o) {
  buildCounterSwimLengthsData++;
  if (buildCounterSwimLengthsData < 3) {
    checkObservationTimeInterval(o.interval!);
    unittest.expect(o.strokeCount!, unittest.equals('foo'));
    unittest.expect(o.swimStrokeType!, unittest.equals('foo'));
  }
  buildCounterSwimLengthsData--;
}

core.int buildCounterSwimLengthsDataRollupValue = 0;
api.SwimLengthsDataRollupValue buildSwimLengthsDataRollupValue() {
  final o = api.SwimLengthsDataRollupValue();
  buildCounterSwimLengthsDataRollupValue++;
  if (buildCounterSwimLengthsDataRollupValue < 3) {
    o.strokeCountSum = 'foo';
  }
  buildCounterSwimLengthsDataRollupValue--;
  return o;
}

void checkSwimLengthsDataRollupValue(api.SwimLengthsDataRollupValue o) {
  buildCounterSwimLengthsDataRollupValue++;
  if (buildCounterSwimLengthsDataRollupValue < 3) {
    unittest.expect(o.strokeCountSum!, unittest.equals('foo'));
  }
  buildCounterSwimLengthsDataRollupValue--;
}

core.int buildCounterTimeInHeartRateZone = 0;
api.TimeInHeartRateZone buildTimeInHeartRateZone() {
  final o = api.TimeInHeartRateZone();
  buildCounterTimeInHeartRateZone++;
  if (buildCounterTimeInHeartRateZone < 3) {
    o.heartRateZoneType = 'foo';
    o.interval = buildObservationTimeInterval();
  }
  buildCounterTimeInHeartRateZone--;
  return o;
}

void checkTimeInHeartRateZone(api.TimeInHeartRateZone o) {
  buildCounterTimeInHeartRateZone++;
  if (buildCounterTimeInHeartRateZone < 3) {
    unittest.expect(o.heartRateZoneType!, unittest.equals('foo'));
    checkObservationTimeInterval(o.interval!);
  }
  buildCounterTimeInHeartRateZone--;
}

core.List<api.TimeInHeartRateZoneValue> buildUnnamed24() => [
  buildTimeInHeartRateZoneValue(),
  buildTimeInHeartRateZoneValue(),
];

void checkUnnamed24(core.List<api.TimeInHeartRateZoneValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeInHeartRateZoneValue(o[0]);
  checkTimeInHeartRateZoneValue(o[1]);
}

core.int buildCounterTimeInHeartRateZoneRollupValue = 0;
api.TimeInHeartRateZoneRollupValue buildTimeInHeartRateZoneRollupValue() {
  final o = api.TimeInHeartRateZoneRollupValue();
  buildCounterTimeInHeartRateZoneRollupValue++;
  if (buildCounterTimeInHeartRateZoneRollupValue < 3) {
    o.timeInHeartRateZones = buildUnnamed24();
  }
  buildCounterTimeInHeartRateZoneRollupValue--;
  return o;
}

void checkTimeInHeartRateZoneRollupValue(api.TimeInHeartRateZoneRollupValue o) {
  buildCounterTimeInHeartRateZoneRollupValue++;
  if (buildCounterTimeInHeartRateZoneRollupValue < 3) {
    checkUnnamed24(o.timeInHeartRateZones!);
  }
  buildCounterTimeInHeartRateZoneRollupValue--;
}

core.int buildCounterTimeInHeartRateZoneValue = 0;
api.TimeInHeartRateZoneValue buildTimeInHeartRateZoneValue() {
  final o = api.TimeInHeartRateZoneValue();
  buildCounterTimeInHeartRateZoneValue++;
  if (buildCounterTimeInHeartRateZoneValue < 3) {
    o.duration = 'foo';
    o.heartRateZone = 'foo';
  }
  buildCounterTimeInHeartRateZoneValue--;
  return o;
}

void checkTimeInHeartRateZoneValue(api.TimeInHeartRateZoneValue o) {
  buildCounterTimeInHeartRateZoneValue++;
  if (buildCounterTimeInHeartRateZoneValue < 3) {
    unittest.expect(o.duration!, unittest.equals('foo'));
    unittest.expect(o.heartRateZone!, unittest.equals('foo'));
  }
  buildCounterTimeInHeartRateZoneValue--;
}

core.int buildCounterTimeInHeartRateZones = 0;
api.TimeInHeartRateZones buildTimeInHeartRateZones() {
  final o = api.TimeInHeartRateZones();
  buildCounterTimeInHeartRateZones++;
  if (buildCounterTimeInHeartRateZones < 3) {
    o.lightTime = 'foo';
    o.moderateTime = 'foo';
    o.peakTime = 'foo';
    o.vigorousTime = 'foo';
  }
  buildCounterTimeInHeartRateZones--;
  return o;
}

void checkTimeInHeartRateZones(api.TimeInHeartRateZones o) {
  buildCounterTimeInHeartRateZones++;
  if (buildCounterTimeInHeartRateZones < 3) {
    unittest.expect(o.lightTime!, unittest.equals('foo'));
    unittest.expect(o.moderateTime!, unittest.equals('foo'));
    unittest.expect(o.peakTime!, unittest.equals('foo'));
    unittest.expect(o.vigorousTime!, unittest.equals('foo'));
  }
  buildCounterTimeInHeartRateZones--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(o.hours!, unittest.equals(42));
    unittest.expect(o.minutes!, unittest.equals(42));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.seconds!, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTotalCaloriesRollupValue = 0;
api.TotalCaloriesRollupValue buildTotalCaloriesRollupValue() {
  final o = api.TotalCaloriesRollupValue();
  buildCounterTotalCaloriesRollupValue++;
  if (buildCounterTotalCaloriesRollupValue < 3) {
    o.kcalSum = 42.0;
  }
  buildCounterTotalCaloriesRollupValue--;
  return o;
}

void checkTotalCaloriesRollupValue(api.TotalCaloriesRollupValue o) {
  buildCounterTotalCaloriesRollupValue++;
  if (buildCounterTotalCaloriesRollupValue < 3) {
    unittest.expect(o.kcalSum!, unittest.equals(42.0));
  }
  buildCounterTotalCaloriesRollupValue--;
}

core.int buildCounterVO2Max = 0;
api.VO2Max buildVO2Max() {
  final o = api.VO2Max();
  buildCounterVO2Max++;
  if (buildCounterVO2Max < 3) {
    o.measurementMethod = 'foo';
    o.sampleTime = buildObservationSampleTime();
    o.vo2Max = 42.0;
  }
  buildCounterVO2Max--;
  return o;
}

void checkVO2Max(api.VO2Max o) {
  buildCounterVO2Max++;
  if (buildCounterVO2Max < 3) {
    unittest.expect(o.measurementMethod!, unittest.equals('foo'));
    checkObservationSampleTime(o.sampleTime!);
    unittest.expect(o.vo2Max!, unittest.equals(42.0));
  }
  buildCounterVO2Max--;
}

core.int buildCounterVolumeQuantity = 0;
api.VolumeQuantity buildVolumeQuantity() {
  final o = api.VolumeQuantity();
  buildCounterVolumeQuantity++;
  if (buildCounterVolumeQuantity < 3) {
    o.milliliters = 42.0;
    o.userProvidedUnit = 'foo';
  }
  buildCounterVolumeQuantity--;
  return o;
}

void checkVolumeQuantity(api.VolumeQuantity o) {
  buildCounterVolumeQuantity++;
  if (buildCounterVolumeQuantity < 3) {
    unittest.expect(o.milliliters!, unittest.equals(42.0));
    unittest.expect(o.userProvidedUnit!, unittest.equals('foo'));
  }
  buildCounterVolumeQuantity--;
}

core.int buildCounterVolumeQuantityRollup = 0;
api.VolumeQuantityRollup buildVolumeQuantityRollup() {
  final o = api.VolumeQuantityRollup();
  buildCounterVolumeQuantityRollup++;
  if (buildCounterVolumeQuantityRollup < 3) {
    o.millilitersSum = 42.0;
    o.userProvidedUnitLast = 'foo';
  }
  buildCounterVolumeQuantityRollup--;
  return o;
}

void checkVolumeQuantityRollup(api.VolumeQuantityRollup o) {
  buildCounterVolumeQuantityRollup++;
  if (buildCounterVolumeQuantityRollup < 3) {
    unittest.expect(o.millilitersSum!, unittest.equals(42.0));
    unittest.expect(o.userProvidedUnitLast!, unittest.equals('foo'));
  }
  buildCounterVolumeQuantityRollup--;
}

core.int buildCounterWeight = 0;
api.Weight buildWeight() {
  final o = api.Weight();
  buildCounterWeight++;
  if (buildCounterWeight < 3) {
    o.notes = 'foo';
    o.sampleTime = buildObservationSampleTime();
    o.weightGrams = 42.0;
  }
  buildCounterWeight--;
  return o;
}

void checkWeight(api.Weight o) {
  buildCounterWeight++;
  if (buildCounterWeight < 3) {
    unittest.expect(o.notes!, unittest.equals('foo'));
    checkObservationSampleTime(o.sampleTime!);
    unittest.expect(o.weightGrams!, unittest.equals(42.0));
  }
  buildCounterWeight--;
}

core.int buildCounterWeightRollupValue = 0;
api.WeightRollupValue buildWeightRollupValue() {
  final o = api.WeightRollupValue();
  buildCounterWeightRollupValue++;
  if (buildCounterWeightRollupValue < 3) {
    o.weightGramsAvg = 42.0;
  }
  buildCounterWeightRollupValue--;
  return o;
}

void checkWeightRollupValue(api.WeightRollupValue o) {
  buildCounterWeightRollupValue++;
  if (buildCounterWeightRollupValue < 3) {
    unittest.expect(o.weightGramsAvg!, unittest.equals(42.0));
  }
  buildCounterWeightRollupValue--;
}

void main() {
  unittest.group('obj-schema-ActiveMinutes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActiveMinutes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActiveMinutes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActiveMinutes(od);
    });
  });

  unittest.group('obj-schema-ActiveMinutesByActivityLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActiveMinutesByActivityLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActiveMinutesByActivityLevel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActiveMinutesByActivityLevel(od);
    });
  });

  unittest.group('obj-schema-ActiveMinutesRollupByActivityLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActiveMinutesRollupByActivityLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActiveMinutesRollupByActivityLevel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActiveMinutesRollupByActivityLevel(od);
    });
  });

  unittest.group('obj-schema-ActiveMinutesRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActiveMinutesRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActiveMinutesRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActiveMinutesRollupValue(od);
    });
  });

  unittest.group('obj-schema-ActiveZoneMinutes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActiveZoneMinutes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActiveZoneMinutes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActiveZoneMinutes(od);
    });
  });

  unittest.group('obj-schema-ActiveZoneMinutesRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActiveZoneMinutesRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActiveZoneMinutesRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActiveZoneMinutesRollupValue(od);
    });
  });

  unittest.group('obj-schema-ActivityLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityLevel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityLevel(od);
    });
  });

  unittest.group('obj-schema-ActivityLevelRollupByActivityLevelType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityLevelRollupByActivityLevelType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityLevelRollupByActivityLevelType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityLevelRollupByActivityLevelType(od);
    });
  });

  unittest.group('obj-schema-ActivityLevelRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityLevelRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityLevelRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityLevelRollupValue(od);
    });
  });

  unittest.group('obj-schema-Altitude', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAltitude();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Altitude.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAltitude(od);
    });
  });

  unittest.group('obj-schema-AltitudeRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAltitudeRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AltitudeRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAltitudeRollupValue(od);
    });
  });

  unittest.group('obj-schema-Application', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Application.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplication(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteDataPointsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeleteDataPointsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeleteDataPointsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchDeleteDataPointsRequest(od);
    });
  });

  unittest.group('obj-schema-BodyFat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBodyFat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BodyFat.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBodyFat(od);
    });
  });

  unittest.group('obj-schema-BodyFatRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBodyFatRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BodyFatRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBodyFatRollupValue(od);
    });
  });

  unittest.group('obj-schema-CaloriesInHeartRateZoneRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCaloriesInHeartRateZoneRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CaloriesInHeartRateZoneRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCaloriesInHeartRateZoneRollupValue(od);
    });
  });

  unittest.group('obj-schema-CaloriesInHeartRateZoneValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCaloriesInHeartRateZoneValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CaloriesInHeartRateZoneValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCaloriesInHeartRateZoneValue(od);
    });
  });

  unittest.group('obj-schema-CivilDateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivilDateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivilDateTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCivilDateTime(od);
    });
  });

  unittest.group('obj-schema-CivilTimeInterval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivilTimeInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivilTimeInterval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCivilTimeInterval(od);
    });
  });

  unittest.group('obj-schema-CreateSubscriberPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateSubscriberPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateSubscriberPayload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateSubscriberPayload(od);
    });
  });

  unittest.group('obj-schema-DailyHeartRateVariability', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyHeartRateVariability();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyHeartRateVariability.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyHeartRateVariability(od);
    });
  });

  unittest.group('obj-schema-DailyHeartRateZones', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyHeartRateZones();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyHeartRateZones.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyHeartRateZones(od);
    });
  });

  unittest.group('obj-schema-DailyOxygenSaturation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyOxygenSaturation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyOxygenSaturation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyOxygenSaturation(od);
    });
  });

  unittest.group('obj-schema-DailyRespiratoryRate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyRespiratoryRate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyRespiratoryRate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyRespiratoryRate(od);
    });
  });

  unittest.group('obj-schema-DailyRestingHeartRate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyRestingHeartRate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyRestingHeartRate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyRestingHeartRate(od);
    });
  });

  unittest.group('obj-schema-DailyRestingHeartRateMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyRestingHeartRateMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyRestingHeartRateMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyRestingHeartRateMetadata(od);
    });
  });

  unittest.group('obj-schema-DailyRollUpDataPointsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyRollUpDataPointsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyRollUpDataPointsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyRollUpDataPointsRequest(od);
    });
  });

  unittest.group('obj-schema-DailyRollUpDataPointsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyRollUpDataPointsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyRollUpDataPointsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyRollUpDataPointsResponse(od);
    });
  });

  unittest.group('obj-schema-DailyRollupDataPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyRollupDataPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyRollupDataPoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyRollupDataPoint(od);
    });
  });

  unittest.group('obj-schema-DailySleepTemperatureDerivations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailySleepTemperatureDerivations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailySleepTemperatureDerivations.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailySleepTemperatureDerivations(od);
    });
  });

  unittest.group('obj-schema-DailyVO2Max', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyVO2Max();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyVO2Max.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyVO2Max(od);
    });
  });

  unittest.group('obj-schema-DataPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataPoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataPoint(od);
    });
  });

  unittest.group('obj-schema-DataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataSource(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Date.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDate(od);
    });
  });

  unittest.group('obj-schema-Device', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Device.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDevice(od);
    });
  });

  unittest.group('obj-schema-Distance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDistance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Distance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDistance(od);
    });
  });

  unittest.group('obj-schema-DistanceRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDistanceRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DistanceRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDistanceRollupValue(od);
    });
  });

  unittest.group('obj-schema-EndpointAuthorization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointAuthorization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointAuthorization.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndpointAuthorization(od);
    });
  });

  unittest.group('obj-schema-Exercise', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExercise();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Exercise.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExercise(od);
    });
  });

  unittest.group('obj-schema-ExerciseEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExerciseEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExerciseEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExerciseEvent(od);
    });
  });

  unittest.group('obj-schema-ExerciseMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExerciseMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExerciseMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExerciseMetadata(od);
    });
  });

  unittest.group('obj-schema-ExportExerciseTcxResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportExerciseTcxResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportExerciseTcxResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportExerciseTcxResponse(od);
    });
  });

  unittest.group('obj-schema-Floors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Floors.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFloors(od);
    });
  });

  unittest.group('obj-schema-FloorsRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloorsRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloorsRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFloorsRollupValue(od);
    });
  });

  unittest.group('obj-schema-HeartRate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeartRate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeartRate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeartRate(od);
    });
  });

  unittest.group('obj-schema-HeartRateMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeartRateMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeartRateMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeartRateMetadata(od);
    });
  });

  unittest.group('obj-schema-HeartRateRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeartRateRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeartRateRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeartRateRollupValue(od);
    });
  });

  unittest.group('obj-schema-HeartRateVariability', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeartRateVariability();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeartRateVariability.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeartRateVariability(od);
    });
  });

  unittest.group('obj-schema-HeartRateVariabilityPersonalRangeRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeartRateVariabilityPersonalRangeRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeartRateVariabilityPersonalRangeRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeartRateVariabilityPersonalRangeRollupValue(od);
    });
  });

  unittest.group('obj-schema-HeartRateZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeartRateZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeartRateZone.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeartRateZone(od);
    });
  });

  unittest.group('obj-schema-Height', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Height.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeight(od);
    });
  });

  unittest.group('obj-schema-HydrationLog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHydrationLog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HydrationLog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHydrationLog(od);
    });
  });

  unittest.group('obj-schema-HydrationLogRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHydrationLogRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HydrationLogRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHydrationLogRollupValue(od);
    });
  });

  unittest.group('obj-schema-Identity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Identity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIdentity(od);
    });
  });

  unittest.group('obj-schema-Interval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Interval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterval(od);
    });
  });

  unittest.group('obj-schema-ListDataPointsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDataPointsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDataPointsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDataPointsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSubscribersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSubscribersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSubscribersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSubscribersResponse(od);
    });
  });

  unittest.group('obj-schema-MetricsSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricsSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricsSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetricsSummary(od);
    });
  });

  unittest.group('obj-schema-MobilityMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobilityMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobilityMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMobilityMetrics(od);
    });
  });

  unittest.group('obj-schema-ObservationSampleTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObservationSampleTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObservationSampleTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObservationSampleTime(od);
    });
  });

  unittest.group('obj-schema-ObservationTimeInterval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObservationTimeInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObservationTimeInterval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObservationTimeInterval(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-OutOfBedSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutOfBedSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutOfBedSegment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOutOfBedSegment(od);
    });
  });

  unittest.group('obj-schema-OxygenSaturation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOxygenSaturation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OxygenSaturation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOxygenSaturation(od);
    });
  });

  unittest.group('obj-schema-Profile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Profile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProfile(od);
    });
  });

  unittest.group('obj-schema-ReconcileDataPointsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReconcileDataPointsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReconcileDataPointsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReconcileDataPointsResponse(od);
    });
  });

  unittest.group('obj-schema-ReconciledDataPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReconciledDataPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReconciledDataPoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReconciledDataPoint(od);
    });
  });

  unittest.group('obj-schema-RespiratoryRateSleepSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRespiratoryRateSleepSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RespiratoryRateSleepSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRespiratoryRateSleepSummary(od);
    });
  });

  unittest.group('obj-schema-RespiratoryRateSleepSummaryStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRespiratoryRateSleepSummaryStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RespiratoryRateSleepSummaryStatistics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRespiratoryRateSleepSummaryStatistics(od);
    });
  });

  unittest.group('obj-schema-RestingHeartRatePersonalRangeRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestingHeartRatePersonalRangeRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestingHeartRatePersonalRangeRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestingHeartRatePersonalRangeRollupValue(od);
    });
  });

  unittest.group('obj-schema-RollUpDataPointsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollUpDataPointsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollUpDataPointsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollUpDataPointsRequest(od);
    });
  });

  unittest.group('obj-schema-RollUpDataPointsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollUpDataPointsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollUpDataPointsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollUpDataPointsResponse(od);
    });
  });

  unittest.group('obj-schema-RollupDataPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollupDataPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollupDataPoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollupDataPoint(od);
    });
  });

  unittest.group('obj-schema-RunVO2Max', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunVO2Max();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunVO2Max.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunVO2Max(od);
    });
  });

  unittest.group('obj-schema-RunVO2MaxRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunVO2MaxRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunVO2MaxRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunVO2MaxRollupValue(od);
    });
  });

  unittest.group('obj-schema-SedentaryPeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSedentaryPeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SedentaryPeriod.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSedentaryPeriod(od);
    });
  });

  unittest.group('obj-schema-SedentaryPeriodRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSedentaryPeriodRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SedentaryPeriodRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSedentaryPeriodRollupValue(od);
    });
  });

  unittest.group('obj-schema-SessionTimeInterval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSessionTimeInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SessionTimeInterval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSessionTimeInterval(od);
    });
  });

  unittest.group('obj-schema-Settings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Settings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSettings(od);
    });
  });

  unittest.group('obj-schema-Sleep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSleep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Sleep.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSleep(od);
    });
  });

  unittest.group('obj-schema-SleepMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSleepMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SleepMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSleepMetadata(od);
    });
  });

  unittest.group('obj-schema-SleepStage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSleepStage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SleepStage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSleepStage(od);
    });
  });

  unittest.group('obj-schema-SleepSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSleepSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SleepSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSleepSummary(od);
    });
  });

  unittest.group('obj-schema-SplitSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSplitSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SplitSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSplitSummary(od);
    });
  });

  unittest.group('obj-schema-StageSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStageSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StageSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStageSummary(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-Steps', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSteps();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Steps.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSteps(od);
    });
  });

  unittest.group('obj-schema-StepsRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStepsRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StepsRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStepsRollupValue(od);
    });
  });

  unittest.group('obj-schema-Subscriber', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriber();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Subscriber.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscriber(od);
    });
  });

  unittest.group('obj-schema-SubscriberConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriberConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriberConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscriberConfig(od);
    });
  });

  unittest.group('obj-schema-SwimLengthsData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSwimLengthsData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SwimLengthsData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSwimLengthsData(od);
    });
  });

  unittest.group('obj-schema-SwimLengthsDataRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSwimLengthsDataRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SwimLengthsDataRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSwimLengthsDataRollupValue(od);
    });
  });

  unittest.group('obj-schema-TimeInHeartRateZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeInHeartRateZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeInHeartRateZone.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeInHeartRateZone(od);
    });
  });

  unittest.group('obj-schema-TimeInHeartRateZoneRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeInHeartRateZoneRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeInHeartRateZoneRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeInHeartRateZoneRollupValue(od);
    });
  });

  unittest.group('obj-schema-TimeInHeartRateZoneValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeInHeartRateZoneValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeInHeartRateZoneValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeInHeartRateZoneValue(od);
    });
  });

  unittest.group('obj-schema-TimeInHeartRateZones', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeInHeartRateZones();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeInHeartRateZones.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeInHeartRateZones(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeOfDay.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TotalCaloriesRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTotalCaloriesRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TotalCaloriesRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTotalCaloriesRollupValue(od);
    });
  });

  unittest.group('obj-schema-VO2Max', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVO2Max();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VO2Max.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVO2Max(od);
    });
  });

  unittest.group('obj-schema-VolumeQuantity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeQuantity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeQuantity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVolumeQuantity(od);
    });
  });

  unittest.group('obj-schema-VolumeQuantityRollup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeQuantityRollup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeQuantityRollup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVolumeQuantityRollup(od);
    });
  });

  unittest.group('obj-schema-Weight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Weight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWeight(od);
    });
  });

  unittest.group('obj-schema-WeightRollupValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeightRollupValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeightRollupValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWeightRollupValue(od);
    });
  });

  unittest.group('resource-ProjectsSubscribersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).projects.subscribers;
      final arg_request = buildCreateSubscriberPayload();
      final arg_parent = 'foo';
      final arg_subscriberId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateSubscriberPayload.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateSubscriberPayload(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
            queryMap['subscriberId']!.first,
            unittest.equals(arg_subscriberId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        subscriberId: arg_subscriberId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).projects.subscribers;
      final arg_name = 'foo';
      final arg_force = true;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).projects.subscribers;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildListSubscribersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSubscribersResponse(response as api.ListSubscribersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).projects.subscribers;
      final arg_request = buildSubscriber();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Subscriber.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSubscriber(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--getIdentity', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildIdentity());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIdentity(arg_name, $fields: arg_$fields);
      checkIdentity(response as api.Identity);
    });

    unittest.test('method--getProfile', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildProfile());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getProfile(arg_name, $fields: arg_$fields);
      checkProfile(response as api.Profile);
    });

    unittest.test('method--getSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSettings(arg_name, $fields: arg_$fields);
      checkSettings(response as api.Settings);
    });

    unittest.test('method--updateProfile', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users;
      final arg_request = buildProfile();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Profile.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkProfile(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildProfile());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateProfile(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkProfile(response as api.Profile);
    });

    unittest.test('method--updateSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users;
      final arg_request = buildSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Settings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSettings(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkSettings(response as api.Settings);
    });
  });

  unittest.group('resource-UsersDataTypesDataPointsResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users.dataTypes.dataPoints;
      final arg_request = buildBatchDeleteDataPointsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchDeleteDataPointsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchDeleteDataPointsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchDelete(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users.dataTypes.dataPoints;
      final arg_request = buildDataPoint();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DataPoint.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDataPoint(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--dailyRollUp', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users.dataTypes.dataPoints;
      final arg_request = buildDailyRollUpDataPointsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DailyRollUpDataPointsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDailyRollUpDataPointsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
            buildDailyRollUpDataPointsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.dailyRollUp(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkDailyRollUpDataPointsResponse(
        response as api.DailyRollUpDataPointsResponse,
      );
    });

    unittest.test('method--exportExerciseTcx', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users.dataTypes.dataPoints;
      final arg_name = 'foo';
      final arg_partialData = true;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
            queryMap['partialData']!.first,
            unittest.equals('$arg_partialData'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildExportExerciseTcxResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.exportExerciseTcx(
        arg_name,
        partialData: arg_partialData,
        $fields: arg_$fields,
      );
      checkExportExerciseTcxResponse(response as api.ExportExerciseTcxResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users.dataTypes.dataPoints;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildDataPoint());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDataPoint(response as api.DataPoint);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users.dataTypes.dataPoints;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildListDataPointsResponse());
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
      checkListDataPointsResponse(response as api.ListDataPointsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users.dataTypes.dataPoints;
      final arg_request = buildDataPoint();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DataPoint.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDataPoint(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--reconcile', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users.dataTypes.dataPoints;
      final arg_parent = 'foo';
      final arg_dataSourceFamily = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
            queryMap['dataSourceFamily']!.first,
            unittest.equals(arg_dataSourceFamily),
          );
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
          final resp = convert.json.encode(buildReconcileDataPointsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.reconcile(
        arg_parent,
        dataSourceFamily: arg_dataSourceFamily,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkReconcileDataPointsResponse(
        response as api.ReconcileDataPointsResponse,
      );
    });

    unittest.test('method--rollUp', () async {
      final mock = HttpServerMock();
      final res = api.GoogleHealthApi(mock).users.dataTypes.dataPoints;
      final arg_request = buildRollUpDataPointsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RollUpDataPointsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRollUpDataPointsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v4/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildRollUpDataPointsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.rollUp(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkRollUpDataPointsResponse(response as api.RollUpDataPointsResponse);
    });
  });
}
