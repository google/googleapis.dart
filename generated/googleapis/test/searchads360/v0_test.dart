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

import 'package:googleapis/searchads360/v0.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleAdsSearchads360V0CommonAdScheduleInfo = 0;
api.GoogleAdsSearchads360V0CommonAdScheduleInfo
buildGoogleAdsSearchads360V0CommonAdScheduleInfo() {
  final o = api.GoogleAdsSearchads360V0CommonAdScheduleInfo();
  buildCounterGoogleAdsSearchads360V0CommonAdScheduleInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonAdScheduleInfo < 3) {
    o.dayOfWeek = 'foo';
    o.endHour = 42;
    o.endMinute = 'foo';
    o.startHour = 42;
    o.startMinute = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonAdScheduleInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonAdScheduleInfo(
  api.GoogleAdsSearchads360V0CommonAdScheduleInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonAdScheduleInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonAdScheduleInfo < 3) {
    unittest.expect(o.dayOfWeek!, unittest.equals('foo'));
    unittest.expect(o.endHour!, unittest.equals(42));
    unittest.expect(o.endMinute!, unittest.equals('foo'));
    unittest.expect(o.startHour!, unittest.equals(42));
    unittest.expect(o.startMinute!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonAdScheduleInfo--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonAdTextAsset = 0;
api.GoogleAdsSearchads360V0CommonAdTextAsset
buildGoogleAdsSearchads360V0CommonAdTextAsset() {
  final o = api.GoogleAdsSearchads360V0CommonAdTextAsset();
  buildCounterGoogleAdsSearchads360V0CommonAdTextAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonAdTextAsset < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonAdTextAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonAdTextAsset(
  api.GoogleAdsSearchads360V0CommonAdTextAsset o,
) {
  buildCounterGoogleAdsSearchads360V0CommonAdTextAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonAdTextAsset < 3) {
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonAdTextAsset--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonAgeRangeInfo = 0;
api.GoogleAdsSearchads360V0CommonAgeRangeInfo
buildGoogleAdsSearchads360V0CommonAgeRangeInfo() {
  final o = api.GoogleAdsSearchads360V0CommonAgeRangeInfo();
  buildCounterGoogleAdsSearchads360V0CommonAgeRangeInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonAgeRangeInfo < 3) {
    o.type = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonAgeRangeInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonAgeRangeInfo(
  api.GoogleAdsSearchads360V0CommonAgeRangeInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonAgeRangeInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonAgeRangeInfo < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonAgeRangeInfo--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonAssetInteractionTarget = 0;
api.GoogleAdsSearchads360V0CommonAssetInteractionTarget
buildGoogleAdsSearchads360V0CommonAssetInteractionTarget() {
  final o = api.GoogleAdsSearchads360V0CommonAssetInteractionTarget();
  buildCounterGoogleAdsSearchads360V0CommonAssetInteractionTarget++;
  if (buildCounterGoogleAdsSearchads360V0CommonAssetInteractionTarget < 3) {
    o.asset = 'foo';
    o.interactionOnThisAsset = true;
  }
  buildCounterGoogleAdsSearchads360V0CommonAssetInteractionTarget--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonAssetInteractionTarget(
  api.GoogleAdsSearchads360V0CommonAssetInteractionTarget o,
) {
  buildCounterGoogleAdsSearchads360V0CommonAssetInteractionTarget++;
  if (buildCounterGoogleAdsSearchads360V0CommonAssetInteractionTarget < 3) {
    unittest.expect(o.asset!, unittest.equals('foo'));
    unittest.expect(o.interactionOnThisAsset!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0CommonAssetInteractionTarget--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonAssetUsage = 0;
api.GoogleAdsSearchads360V0CommonAssetUsage
buildGoogleAdsSearchads360V0CommonAssetUsage() {
  final o = api.GoogleAdsSearchads360V0CommonAssetUsage();
  buildCounterGoogleAdsSearchads360V0CommonAssetUsage++;
  if (buildCounterGoogleAdsSearchads360V0CommonAssetUsage < 3) {
    o.asset = 'foo';
    o.servedAssetFieldType = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonAssetUsage--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonAssetUsage(
  api.GoogleAdsSearchads360V0CommonAssetUsage o,
) {
  buildCounterGoogleAdsSearchads360V0CommonAssetUsage++;
  if (buildCounterGoogleAdsSearchads360V0CommonAssetUsage < 3) {
    unittest.expect(o.asset!, unittest.equals('foo'));
    unittest.expect(o.servedAssetFieldType!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonAssetUsage--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonAudienceInfo = 0;
api.GoogleAdsSearchads360V0CommonAudienceInfo
buildGoogleAdsSearchads360V0CommonAudienceInfo() {
  final o = api.GoogleAdsSearchads360V0CommonAudienceInfo();
  buildCounterGoogleAdsSearchads360V0CommonAudienceInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonAudienceInfo < 3) {
    o.audience = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonAudienceInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonAudienceInfo(
  api.GoogleAdsSearchads360V0CommonAudienceInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonAudienceInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonAudienceInfo < 3) {
    unittest.expect(o.audience!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonAudienceInfo--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAdsSearchads360V0CommonBusinessProfileLocation = 0;
api.GoogleAdsSearchads360V0CommonBusinessProfileLocation
buildGoogleAdsSearchads360V0CommonBusinessProfileLocation() {
  final o = api.GoogleAdsSearchads360V0CommonBusinessProfileLocation();
  buildCounterGoogleAdsSearchads360V0CommonBusinessProfileLocation++;
  if (buildCounterGoogleAdsSearchads360V0CommonBusinessProfileLocation < 3) {
    o.labels = buildUnnamed0();
    o.listingId = 'foo';
    o.storeCode = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonBusinessProfileLocation--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonBusinessProfileLocation(
  api.GoogleAdsSearchads360V0CommonBusinessProfileLocation o,
) {
  buildCounterGoogleAdsSearchads360V0CommonBusinessProfileLocation++;
  if (buildCounterGoogleAdsSearchads360V0CommonBusinessProfileLocation < 3) {
    checkUnnamed0(o.labels!);
    unittest.expect(o.listingId!, unittest.equals('foo'));
    unittest.expect(o.storeCode!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonBusinessProfileLocation--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonCallToActionAsset = 0;
api.GoogleAdsSearchads360V0CommonCallToActionAsset
buildGoogleAdsSearchads360V0CommonCallToActionAsset() {
  final o = api.GoogleAdsSearchads360V0CommonCallToActionAsset();
  buildCounterGoogleAdsSearchads360V0CommonCallToActionAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonCallToActionAsset < 3) {
    o.callToAction = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonCallToActionAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonCallToActionAsset(
  api.GoogleAdsSearchads360V0CommonCallToActionAsset o,
) {
  buildCounterGoogleAdsSearchads360V0CommonCallToActionAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonCallToActionAsset < 3) {
    unittest.expect(o.callToAction!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonCallToActionAsset--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonCustomParameter = 0;
api.GoogleAdsSearchads360V0CommonCustomParameter
buildGoogleAdsSearchads360V0CommonCustomParameter() {
  final o = api.GoogleAdsSearchads360V0CommonCustomParameter();
  buildCounterGoogleAdsSearchads360V0CommonCustomParameter++;
  if (buildCounterGoogleAdsSearchads360V0CommonCustomParameter < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonCustomParameter--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonCustomParameter(
  api.GoogleAdsSearchads360V0CommonCustomParameter o,
) {
  buildCounterGoogleAdsSearchads360V0CommonCustomParameter++;
  if (buildCounterGoogleAdsSearchads360V0CommonCustomParameter < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonCustomParameter--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonDeviceInfo = 0;
api.GoogleAdsSearchads360V0CommonDeviceInfo
buildGoogleAdsSearchads360V0CommonDeviceInfo() {
  final o = api.GoogleAdsSearchads360V0CommonDeviceInfo();
  buildCounterGoogleAdsSearchads360V0CommonDeviceInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonDeviceInfo < 3) {
    o.type = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonDeviceInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonDeviceInfo(
  api.GoogleAdsSearchads360V0CommonDeviceInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonDeviceInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonDeviceInfo < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonDeviceInfo--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonEnhancedCpc = 0;
api.GoogleAdsSearchads360V0CommonEnhancedCpc
buildGoogleAdsSearchads360V0CommonEnhancedCpc() {
  final o = api.GoogleAdsSearchads360V0CommonEnhancedCpc();
  buildCounterGoogleAdsSearchads360V0CommonEnhancedCpc++;
  if (buildCounterGoogleAdsSearchads360V0CommonEnhancedCpc < 3) {}
  buildCounterGoogleAdsSearchads360V0CommonEnhancedCpc--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonEnhancedCpc(
  api.GoogleAdsSearchads360V0CommonEnhancedCpc o,
) {
  buildCounterGoogleAdsSearchads360V0CommonEnhancedCpc++;
  if (buildCounterGoogleAdsSearchads360V0CommonEnhancedCpc < 3) {}
  buildCounterGoogleAdsSearchads360V0CommonEnhancedCpc--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonFrequencyCapEntry = 0;
api.GoogleAdsSearchads360V0CommonFrequencyCapEntry
buildGoogleAdsSearchads360V0CommonFrequencyCapEntry() {
  final o = api.GoogleAdsSearchads360V0CommonFrequencyCapEntry();
  buildCounterGoogleAdsSearchads360V0CommonFrequencyCapEntry++;
  if (buildCounterGoogleAdsSearchads360V0CommonFrequencyCapEntry < 3) {}
  buildCounterGoogleAdsSearchads360V0CommonFrequencyCapEntry--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonFrequencyCapEntry(
  api.GoogleAdsSearchads360V0CommonFrequencyCapEntry o,
) {
  buildCounterGoogleAdsSearchads360V0CommonFrequencyCapEntry++;
  if (buildCounterGoogleAdsSearchads360V0CommonFrequencyCapEntry < 3) {}
  buildCounterGoogleAdsSearchads360V0CommonFrequencyCapEntry--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonGenderInfo = 0;
api.GoogleAdsSearchads360V0CommonGenderInfo
buildGoogleAdsSearchads360V0CommonGenderInfo() {
  final o = api.GoogleAdsSearchads360V0CommonGenderInfo();
  buildCounterGoogleAdsSearchads360V0CommonGenderInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonGenderInfo < 3) {
    o.type = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonGenderInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonGenderInfo(
  api.GoogleAdsSearchads360V0CommonGenderInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonGenderInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonGenderInfo < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonGenderInfo--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonImageAsset = 0;
api.GoogleAdsSearchads360V0CommonImageAsset
buildGoogleAdsSearchads360V0CommonImageAsset() {
  final o = api.GoogleAdsSearchads360V0CommonImageAsset();
  buildCounterGoogleAdsSearchads360V0CommonImageAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonImageAsset < 3) {
    o.fileSize = 'foo';
    o.fullSize = buildGoogleAdsSearchads360V0CommonImageDimension();
    o.mimeType = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonImageAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonImageAsset(
  api.GoogleAdsSearchads360V0CommonImageAsset o,
) {
  buildCounterGoogleAdsSearchads360V0CommonImageAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonImageAsset < 3) {
    unittest.expect(o.fileSize!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonImageDimension(o.fullSize!);
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonImageAsset--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonImageDimension = 0;
api.GoogleAdsSearchads360V0CommonImageDimension
buildGoogleAdsSearchads360V0CommonImageDimension() {
  final o = api.GoogleAdsSearchads360V0CommonImageDimension();
  buildCounterGoogleAdsSearchads360V0CommonImageDimension++;
  if (buildCounterGoogleAdsSearchads360V0CommonImageDimension < 3) {
    o.heightPixels = 'foo';
    o.url = 'foo';
    o.widthPixels = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonImageDimension--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonImageDimension(
  api.GoogleAdsSearchads360V0CommonImageDimension o,
) {
  buildCounterGoogleAdsSearchads360V0CommonImageDimension++;
  if (buildCounterGoogleAdsSearchads360V0CommonImageDimension < 3) {
    unittest.expect(o.heightPixels!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
    unittest.expect(o.widthPixels!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonImageDimension--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonKeyword = 0;
api.GoogleAdsSearchads360V0CommonKeyword
buildGoogleAdsSearchads360V0CommonKeyword() {
  final o = api.GoogleAdsSearchads360V0CommonKeyword();
  buildCounterGoogleAdsSearchads360V0CommonKeyword++;
  if (buildCounterGoogleAdsSearchads360V0CommonKeyword < 3) {
    o.adGroupCriterion = 'foo';
    o.info = buildGoogleAdsSearchads360V0CommonKeywordInfo();
  }
  buildCounterGoogleAdsSearchads360V0CommonKeyword--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonKeyword(
  api.GoogleAdsSearchads360V0CommonKeyword o,
) {
  buildCounterGoogleAdsSearchads360V0CommonKeyword++;
  if (buildCounterGoogleAdsSearchads360V0CommonKeyword < 3) {
    unittest.expect(o.adGroupCriterion!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonKeywordInfo(o.info!);
  }
  buildCounterGoogleAdsSearchads360V0CommonKeyword--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonKeywordInfo = 0;
api.GoogleAdsSearchads360V0CommonKeywordInfo
buildGoogleAdsSearchads360V0CommonKeywordInfo() {
  final o = api.GoogleAdsSearchads360V0CommonKeywordInfo();
  buildCounterGoogleAdsSearchads360V0CommonKeywordInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonKeywordInfo < 3) {
    o.matchType = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonKeywordInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonKeywordInfo(
  api.GoogleAdsSearchads360V0CommonKeywordInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonKeywordInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonKeywordInfo < 3) {
    unittest.expect(o.matchType!, unittest.equals('foo'));
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonKeywordInfo--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonLanguageInfo = 0;
api.GoogleAdsSearchads360V0CommonLanguageInfo
buildGoogleAdsSearchads360V0CommonLanguageInfo() {
  final o = api.GoogleAdsSearchads360V0CommonLanguageInfo();
  buildCounterGoogleAdsSearchads360V0CommonLanguageInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonLanguageInfo < 3) {
    o.languageConstant = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonLanguageInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonLanguageInfo(
  api.GoogleAdsSearchads360V0CommonLanguageInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonLanguageInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonLanguageInfo < 3) {
    unittest.expect(o.languageConstant!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonLanguageInfo--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonListingGroupInfo = 0;
api.GoogleAdsSearchads360V0CommonListingGroupInfo
buildGoogleAdsSearchads360V0CommonListingGroupInfo() {
  final o = api.GoogleAdsSearchads360V0CommonListingGroupInfo();
  buildCounterGoogleAdsSearchads360V0CommonListingGroupInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonListingGroupInfo < 3) {
    o.type = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonListingGroupInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonListingGroupInfo(
  api.GoogleAdsSearchads360V0CommonListingGroupInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonListingGroupInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonListingGroupInfo < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonListingGroupInfo--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo = 0;
api.GoogleAdsSearchads360V0CommonLocationGroupInfo
buildGoogleAdsSearchads360V0CommonLocationGroupInfo() {
  final o = api.GoogleAdsSearchads360V0CommonLocationGroupInfo();
  buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo < 3) {
    o.feedItemSets = buildUnnamed1();
    o.geoTargetConstants = buildUnnamed2();
    o.radius = 'foo';
    o.radiusUnits = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonLocationGroupInfo(
  api.GoogleAdsSearchads360V0CommonLocationGroupInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo < 3) {
    checkUnnamed1(o.feedItemSets!);
    checkUnnamed2(o.geoTargetConstants!);
    unittest.expect(o.radius!, unittest.equals('foo'));
    unittest.expect(o.radiusUnits!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonLocationInfo = 0;
api.GoogleAdsSearchads360V0CommonLocationInfo
buildGoogleAdsSearchads360V0CommonLocationInfo() {
  final o = api.GoogleAdsSearchads360V0CommonLocationInfo();
  buildCounterGoogleAdsSearchads360V0CommonLocationInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonLocationInfo < 3) {
    o.geoTargetConstant = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonLocationInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonLocationInfo(
  api.GoogleAdsSearchads360V0CommonLocationInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonLocationInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonLocationInfo < 3) {
    unittest.expect(o.geoTargetConstant!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonLocationInfo--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonManualCpa = 0;
api.GoogleAdsSearchads360V0CommonManualCpa
buildGoogleAdsSearchads360V0CommonManualCpa() {
  final o = api.GoogleAdsSearchads360V0CommonManualCpa();
  buildCounterGoogleAdsSearchads360V0CommonManualCpa++;
  if (buildCounterGoogleAdsSearchads360V0CommonManualCpa < 3) {}
  buildCounterGoogleAdsSearchads360V0CommonManualCpa--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonManualCpa(
  api.GoogleAdsSearchads360V0CommonManualCpa o,
) {
  buildCounterGoogleAdsSearchads360V0CommonManualCpa++;
  if (buildCounterGoogleAdsSearchads360V0CommonManualCpa < 3) {}
  buildCounterGoogleAdsSearchads360V0CommonManualCpa--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonManualCpc = 0;
api.GoogleAdsSearchads360V0CommonManualCpc
buildGoogleAdsSearchads360V0CommonManualCpc() {
  final o = api.GoogleAdsSearchads360V0CommonManualCpc();
  buildCounterGoogleAdsSearchads360V0CommonManualCpc++;
  if (buildCounterGoogleAdsSearchads360V0CommonManualCpc < 3) {
    o.enhancedCpcEnabled = true;
  }
  buildCounterGoogleAdsSearchads360V0CommonManualCpc--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonManualCpc(
  api.GoogleAdsSearchads360V0CommonManualCpc o,
) {
  buildCounterGoogleAdsSearchads360V0CommonManualCpc++;
  if (buildCounterGoogleAdsSearchads360V0CommonManualCpc < 3) {
    unittest.expect(o.enhancedCpcEnabled!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0CommonManualCpc--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonManualCpm = 0;
api.GoogleAdsSearchads360V0CommonManualCpm
buildGoogleAdsSearchads360V0CommonManualCpm() {
  final o = api.GoogleAdsSearchads360V0CommonManualCpm();
  buildCounterGoogleAdsSearchads360V0CommonManualCpm++;
  if (buildCounterGoogleAdsSearchads360V0CommonManualCpm < 3) {}
  buildCounterGoogleAdsSearchads360V0CommonManualCpm--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonManualCpm(
  api.GoogleAdsSearchads360V0CommonManualCpm o,
) {
  buildCounterGoogleAdsSearchads360V0CommonManualCpm++;
  if (buildCounterGoogleAdsSearchads360V0CommonManualCpm < 3) {}
  buildCounterGoogleAdsSearchads360V0CommonManualCpm--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonMaximizeConversionValue = 0;
api.GoogleAdsSearchads360V0CommonMaximizeConversionValue
buildGoogleAdsSearchads360V0CommonMaximizeConversionValue() {
  final o = api.GoogleAdsSearchads360V0CommonMaximizeConversionValue();
  buildCounterGoogleAdsSearchads360V0CommonMaximizeConversionValue++;
  if (buildCounterGoogleAdsSearchads360V0CommonMaximizeConversionValue < 3) {
    o.cpcBidCeilingMicros = 'foo';
    o.cpcBidFloorMicros = 'foo';
    o.targetRoas = 42.0;
  }
  buildCounterGoogleAdsSearchads360V0CommonMaximizeConversionValue--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonMaximizeConversionValue(
  api.GoogleAdsSearchads360V0CommonMaximizeConversionValue o,
) {
  buildCounterGoogleAdsSearchads360V0CommonMaximizeConversionValue++;
  if (buildCounterGoogleAdsSearchads360V0CommonMaximizeConversionValue < 3) {
    unittest.expect(o.cpcBidCeilingMicros!, unittest.equals('foo'));
    unittest.expect(o.cpcBidFloorMicros!, unittest.equals('foo'));
    unittest.expect(o.targetRoas!, unittest.equals(42.0));
  }
  buildCounterGoogleAdsSearchads360V0CommonMaximizeConversionValue--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonMaximizeConversions = 0;
api.GoogleAdsSearchads360V0CommonMaximizeConversions
buildGoogleAdsSearchads360V0CommonMaximizeConversions() {
  final o = api.GoogleAdsSearchads360V0CommonMaximizeConversions();
  buildCounterGoogleAdsSearchads360V0CommonMaximizeConversions++;
  if (buildCounterGoogleAdsSearchads360V0CommonMaximizeConversions < 3) {
    o.cpcBidCeilingMicros = 'foo';
    o.cpcBidFloorMicros = 'foo';
    o.targetCpaMicros = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonMaximizeConversions--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonMaximizeConversions(
  api.GoogleAdsSearchads360V0CommonMaximizeConversions o,
) {
  buildCounterGoogleAdsSearchads360V0CommonMaximizeConversions++;
  if (buildCounterGoogleAdsSearchads360V0CommonMaximizeConversions < 3) {
    unittest.expect(o.cpcBidCeilingMicros!, unittest.equals('foo'));
    unittest.expect(o.cpcBidFloorMicros!, unittest.equals('foo'));
    unittest.expect(o.targetCpaMicros!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonMaximizeConversions--;
}

core.List<api.GoogleAdsSearchads360V0CommonValue> buildUnnamed3() => [
  buildGoogleAdsSearchads360V0CommonValue(),
  buildGoogleAdsSearchads360V0CommonValue(),
];

void checkUnnamed3(core.List<api.GoogleAdsSearchads360V0CommonValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonValue(o[0]);
  checkGoogleAdsSearchads360V0CommonValue(o[1]);
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleAdsSearchads360V0CommonValue> buildUnnamed5() => [
  buildGoogleAdsSearchads360V0CommonValue(),
  buildGoogleAdsSearchads360V0CommonValue(),
];

void checkUnnamed5(core.List<api.GoogleAdsSearchads360V0CommonValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonValue(o[0]);
  checkGoogleAdsSearchads360V0CommonValue(o[1]);
}

core.int buildCounterGoogleAdsSearchads360V0CommonMetrics = 0;
api.GoogleAdsSearchads360V0CommonMetrics
buildGoogleAdsSearchads360V0CommonMetrics() {
  final o = api.GoogleAdsSearchads360V0CommonMetrics();
  buildCounterGoogleAdsSearchads360V0CommonMetrics++;
  if (buildCounterGoogleAdsSearchads360V0CommonMetrics < 3) {
    o.absoluteTopImpressionPercentage = 42.0;
    o.allConversions = 42.0;
    o.allConversionsByConversionDate = 42.0;
    o.allConversionsFromClickToCall = 42.0;
    o.allConversionsFromDirections = 42.0;
    o.allConversionsFromInteractionsRate = 42.0;
    o.allConversionsFromInteractionsValuePerInteraction = 42.0;
    o.allConversionsFromMenu = 42.0;
    o.allConversionsFromOrder = 42.0;
    o.allConversionsFromOtherEngagement = 42.0;
    o.allConversionsFromStoreVisit = 42.0;
    o.allConversionsFromStoreWebsite = 42.0;
    o.allConversionsValue = 42.0;
    o.allConversionsValueByConversionDate = 42.0;
    o.allConversionsValuePerCost = 42.0;
    o.averageCost = 42.0;
    o.averageCpc = 42.0;
    o.averageCpm = 42.0;
    o.averageQualityScore = 42.0;
    o.clicks = 'foo';
    o.clientAccountConversions = 42.0;
    o.clientAccountConversionsValue = 42.0;
    o.clientAccountCrossSellCostOfGoodsSoldMicros = 'foo';
    o.clientAccountCrossSellGrossProfitMicros = 'foo';
    o.clientAccountCrossSellRevenueMicros = 'foo';
    o.clientAccountCrossSellUnitsSold = 42.0;
    o.clientAccountLeadCostOfGoodsSoldMicros = 'foo';
    o.clientAccountLeadGrossProfitMicros = 'foo';
    o.clientAccountLeadRevenueMicros = 'foo';
    o.clientAccountLeadUnitsSold = 42.0;
    o.clientAccountViewThroughConversions = 'foo';
    o.contentBudgetLostImpressionShare = 42.0;
    o.contentImpressionShare = 42.0;
    o.contentRankLostImpressionShare = 42.0;
    o.conversionCustomMetrics = buildUnnamed3();
    o.conversions = 42.0;
    o.conversionsByConversionDate = 42.0;
    o.conversionsFromInteractionsRate = 42.0;
    o.conversionsFromInteractionsValuePerInteraction = 42.0;
    o.conversionsValue = 42.0;
    o.conversionsValueByConversionDate = 42.0;
    o.conversionsValuePerCost = 42.0;
    o.costMicros = 'foo';
    o.costPerAllConversions = 42.0;
    o.costPerConversion = 42.0;
    o.costPerCurrentModelAttributedConversion = 42.0;
    o.crossDeviceConversions = 42.0;
    o.crossDeviceConversionsByConversionDate = 42.0;
    o.crossDeviceConversionsValue = 42.0;
    o.crossDeviceConversionsValueByConversionDate = 42.0;
    o.crossSellCostOfGoodsSoldMicros = 'foo';
    o.crossSellGrossProfitMicros = 'foo';
    o.crossSellRevenueMicros = 'foo';
    o.crossSellUnitsSold = 42.0;
    o.ctr = 42.0;
    o.generalInvalidClickRate = 42.0;
    o.generalInvalidClicks = 'foo';
    o.historicalCreativeQualityScore = 'foo';
    o.historicalLandingPageQualityScore = 'foo';
    o.historicalQualityScore = 'foo';
    o.historicalSearchPredictedCtr = 'foo';
    o.impressions = 'foo';
    o.interactionEventTypes = buildUnnamed4();
    o.interactionRate = 42.0;
    o.interactions = 'foo';
    o.invalidClickRate = 42.0;
    o.invalidClicks = 'foo';
    o.leadCostOfGoodsSoldMicros = 'foo';
    o.leadGrossProfitMicros = 'foo';
    o.leadRevenueMicros = 'foo';
    o.leadUnitsSold = 42.0;
    o.mobileFriendlyClicksPercentage = 42.0;
    o.rawEventConversionMetrics = buildUnnamed5();
    o.searchAbsoluteTopImpressionShare = 42.0;
    o.searchBudgetLostAbsoluteTopImpressionShare = 42.0;
    o.searchBudgetLostImpressionShare = 42.0;
    o.searchBudgetLostTopImpressionShare = 42.0;
    o.searchClickShare = 42.0;
    o.searchExactMatchImpressionShare = 42.0;
    o.searchImpressionShare = 42.0;
    o.searchRankLostAbsoluteTopImpressionShare = 42.0;
    o.searchRankLostImpressionShare = 42.0;
    o.searchRankLostTopImpressionShare = 42.0;
    o.searchTopImpressionShare = 42.0;
    o.topImpressionPercentage = 42.0;
    o.valuePerAllConversions = 42.0;
    o.valuePerAllConversionsByConversionDate = 42.0;
    o.valuePerConversion = 42.0;
    o.valuePerConversionsByConversionDate = 42.0;
    o.visits = 42.0;
  }
  buildCounterGoogleAdsSearchads360V0CommonMetrics--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonMetrics(
  api.GoogleAdsSearchads360V0CommonMetrics o,
) {
  buildCounterGoogleAdsSearchads360V0CommonMetrics++;
  if (buildCounterGoogleAdsSearchads360V0CommonMetrics < 3) {
    unittest.expect(o.absoluteTopImpressionPercentage!, unittest.equals(42.0));
    unittest.expect(o.allConversions!, unittest.equals(42.0));
    unittest.expect(o.allConversionsByConversionDate!, unittest.equals(42.0));
    unittest.expect(o.allConversionsFromClickToCall!, unittest.equals(42.0));
    unittest.expect(o.allConversionsFromDirections!, unittest.equals(42.0));
    unittest.expect(
      o.allConversionsFromInteractionsRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsFromInteractionsValuePerInteraction!,
      unittest.equals(42.0),
    );
    unittest.expect(o.allConversionsFromMenu!, unittest.equals(42.0));
    unittest.expect(o.allConversionsFromOrder!, unittest.equals(42.0));
    unittest.expect(
      o.allConversionsFromOtherEngagement!,
      unittest.equals(42.0),
    );
    unittest.expect(o.allConversionsFromStoreVisit!, unittest.equals(42.0));
    unittest.expect(o.allConversionsFromStoreWebsite!, unittest.equals(42.0));
    unittest.expect(o.allConversionsValue!, unittest.equals(42.0));
    unittest.expect(
      o.allConversionsValueByConversionDate!,
      unittest.equals(42.0),
    );
    unittest.expect(o.allConversionsValuePerCost!, unittest.equals(42.0));
    unittest.expect(o.averageCost!, unittest.equals(42.0));
    unittest.expect(o.averageCpc!, unittest.equals(42.0));
    unittest.expect(o.averageCpm!, unittest.equals(42.0));
    unittest.expect(o.averageQualityScore!, unittest.equals(42.0));
    unittest.expect(o.clicks!, unittest.equals('foo'));
    unittest.expect(o.clientAccountConversions!, unittest.equals(42.0));
    unittest.expect(o.clientAccountConversionsValue!, unittest.equals(42.0));
    unittest.expect(
      o.clientAccountCrossSellCostOfGoodsSoldMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientAccountCrossSellGrossProfitMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientAccountCrossSellRevenueMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(o.clientAccountCrossSellUnitsSold!, unittest.equals(42.0));
    unittest.expect(
      o.clientAccountLeadCostOfGoodsSoldMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientAccountLeadGrossProfitMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(o.clientAccountLeadRevenueMicros!, unittest.equals('foo'));
    unittest.expect(o.clientAccountLeadUnitsSold!, unittest.equals(42.0));
    unittest.expect(
      o.clientAccountViewThroughConversions!,
      unittest.equals('foo'),
    );
    unittest.expect(o.contentBudgetLostImpressionShare!, unittest.equals(42.0));
    unittest.expect(o.contentImpressionShare!, unittest.equals(42.0));
    unittest.expect(o.contentRankLostImpressionShare!, unittest.equals(42.0));
    checkUnnamed3(o.conversionCustomMetrics!);
    unittest.expect(o.conversions!, unittest.equals(42.0));
    unittest.expect(o.conversionsByConversionDate!, unittest.equals(42.0));
    unittest.expect(o.conversionsFromInteractionsRate!, unittest.equals(42.0));
    unittest.expect(
      o.conversionsFromInteractionsValuePerInteraction!,
      unittest.equals(42.0),
    );
    unittest.expect(o.conversionsValue!, unittest.equals(42.0));
    unittest.expect(o.conversionsValueByConversionDate!, unittest.equals(42.0));
    unittest.expect(o.conversionsValuePerCost!, unittest.equals(42.0));
    unittest.expect(o.costMicros!, unittest.equals('foo'));
    unittest.expect(o.costPerAllConversions!, unittest.equals(42.0));
    unittest.expect(o.costPerConversion!, unittest.equals(42.0));
    unittest.expect(
      o.costPerCurrentModelAttributedConversion!,
      unittest.equals(42.0),
    );
    unittest.expect(o.crossDeviceConversions!, unittest.equals(42.0));
    unittest.expect(
      o.crossDeviceConversionsByConversionDate!,
      unittest.equals(42.0),
    );
    unittest.expect(o.crossDeviceConversionsValue!, unittest.equals(42.0));
    unittest.expect(
      o.crossDeviceConversionsValueByConversionDate!,
      unittest.equals(42.0),
    );
    unittest.expect(o.crossSellCostOfGoodsSoldMicros!, unittest.equals('foo'));
    unittest.expect(o.crossSellGrossProfitMicros!, unittest.equals('foo'));
    unittest.expect(o.crossSellRevenueMicros!, unittest.equals('foo'));
    unittest.expect(o.crossSellUnitsSold!, unittest.equals(42.0));
    unittest.expect(o.ctr!, unittest.equals(42.0));
    unittest.expect(o.generalInvalidClickRate!, unittest.equals(42.0));
    unittest.expect(o.generalInvalidClicks!, unittest.equals('foo'));
    unittest.expect(o.historicalCreativeQualityScore!, unittest.equals('foo'));
    unittest.expect(
      o.historicalLandingPageQualityScore!,
      unittest.equals('foo'),
    );
    unittest.expect(o.historicalQualityScore!, unittest.equals('foo'));
    unittest.expect(o.historicalSearchPredictedCtr!, unittest.equals('foo'));
    unittest.expect(o.impressions!, unittest.equals('foo'));
    checkUnnamed4(o.interactionEventTypes!);
    unittest.expect(o.interactionRate!, unittest.equals(42.0));
    unittest.expect(o.interactions!, unittest.equals('foo'));
    unittest.expect(o.invalidClickRate!, unittest.equals(42.0));
    unittest.expect(o.invalidClicks!, unittest.equals('foo'));
    unittest.expect(o.leadCostOfGoodsSoldMicros!, unittest.equals('foo'));
    unittest.expect(o.leadGrossProfitMicros!, unittest.equals('foo'));
    unittest.expect(o.leadRevenueMicros!, unittest.equals('foo'));
    unittest.expect(o.leadUnitsSold!, unittest.equals(42.0));
    unittest.expect(o.mobileFriendlyClicksPercentage!, unittest.equals(42.0));
    checkUnnamed5(o.rawEventConversionMetrics!);
    unittest.expect(o.searchAbsoluteTopImpressionShare!, unittest.equals(42.0));
    unittest.expect(
      o.searchBudgetLostAbsoluteTopImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(o.searchBudgetLostImpressionShare!, unittest.equals(42.0));
    unittest.expect(
      o.searchBudgetLostTopImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(o.searchClickShare!, unittest.equals(42.0));
    unittest.expect(o.searchExactMatchImpressionShare!, unittest.equals(42.0));
    unittest.expect(o.searchImpressionShare!, unittest.equals(42.0));
    unittest.expect(
      o.searchRankLostAbsoluteTopImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(o.searchRankLostImpressionShare!, unittest.equals(42.0));
    unittest.expect(o.searchRankLostTopImpressionShare!, unittest.equals(42.0));
    unittest.expect(o.searchTopImpressionShare!, unittest.equals(42.0));
    unittest.expect(o.topImpressionPercentage!, unittest.equals(42.0));
    unittest.expect(o.valuePerAllConversions!, unittest.equals(42.0));
    unittest.expect(
      o.valuePerAllConversionsByConversionDate!,
      unittest.equals(42.0),
    );
    unittest.expect(o.valuePerConversion!, unittest.equals(42.0));
    unittest.expect(
      o.valuePerConversionsByConversionDate!,
      unittest.equals(42.0),
    );
    unittest.expect(o.visits!, unittest.equals(42.0));
  }
  buildCounterGoogleAdsSearchads360V0CommonMetrics--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonMobileAppAsset = 0;
api.GoogleAdsSearchads360V0CommonMobileAppAsset
buildGoogleAdsSearchads360V0CommonMobileAppAsset() {
  final o = api.GoogleAdsSearchads360V0CommonMobileAppAsset();
  buildCounterGoogleAdsSearchads360V0CommonMobileAppAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonMobileAppAsset < 3) {
    o.appId = 'foo';
    o.appStore = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonMobileAppAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonMobileAppAsset(
  api.GoogleAdsSearchads360V0CommonMobileAppAsset o,
) {
  buildCounterGoogleAdsSearchads360V0CommonMobileAppAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonMobileAppAsset < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.appStore!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonMobileAppAsset--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonPercentCpc = 0;
api.GoogleAdsSearchads360V0CommonPercentCpc
buildGoogleAdsSearchads360V0CommonPercentCpc() {
  final o = api.GoogleAdsSearchads360V0CommonPercentCpc();
  buildCounterGoogleAdsSearchads360V0CommonPercentCpc++;
  if (buildCounterGoogleAdsSearchads360V0CommonPercentCpc < 3) {
    o.cpcBidCeilingMicros = 'foo';
    o.enhancedCpcEnabled = true;
  }
  buildCounterGoogleAdsSearchads360V0CommonPercentCpc--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonPercentCpc(
  api.GoogleAdsSearchads360V0CommonPercentCpc o,
) {
  buildCounterGoogleAdsSearchads360V0CommonPercentCpc++;
  if (buildCounterGoogleAdsSearchads360V0CommonPercentCpc < 3) {
    unittest.expect(o.cpcBidCeilingMicros!, unittest.equals('foo'));
    unittest.expect(o.enhancedCpcEnabled!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0CommonPercentCpc--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonRealTimeBiddingSetting = 0;
api.GoogleAdsSearchads360V0CommonRealTimeBiddingSetting
buildGoogleAdsSearchads360V0CommonRealTimeBiddingSetting() {
  final o = api.GoogleAdsSearchads360V0CommonRealTimeBiddingSetting();
  buildCounterGoogleAdsSearchads360V0CommonRealTimeBiddingSetting++;
  if (buildCounterGoogleAdsSearchads360V0CommonRealTimeBiddingSetting < 3) {
    o.optIn = true;
  }
  buildCounterGoogleAdsSearchads360V0CommonRealTimeBiddingSetting--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonRealTimeBiddingSetting(
  api.GoogleAdsSearchads360V0CommonRealTimeBiddingSetting o,
) {
  buildCounterGoogleAdsSearchads360V0CommonRealTimeBiddingSetting++;
  if (buildCounterGoogleAdsSearchads360V0CommonRealTimeBiddingSetting < 3) {
    unittest.expect(o.optIn!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0CommonRealTimeBiddingSetting--;
}

core.int
buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo =
    0;
api.GoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo
buildGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo() {
  final o =
      api.GoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo();
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo <
      3) {
    o.adTrackingId = 'foo';
    o.description1 = 'foo';
    o.description2 = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo(
  api.GoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo <
      3) {
    unittest.expect(o.adTrackingId!, unittest.equals('foo'));
    unittest.expect(o.description1!, unittest.equals('foo'));
    unittest.expect(o.description2!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo--;
}

core.int
buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo = 0;
api.GoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo
buildGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo() {
  final o = api.GoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo();
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo <
      3) {
    o.adTrackingId = 'foo';
    o.description1 = 'foo';
    o.description2 = 'foo';
    o.headline = 'foo';
    o.headline2 = 'foo';
    o.headline3 = 'foo';
    o.path1 = 'foo';
    o.path2 = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo(
  api.GoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo <
      3) {
    unittest.expect(o.adTrackingId!, unittest.equals('foo'));
    unittest.expect(o.description1!, unittest.equals('foo'));
    unittest.expect(o.description2!, unittest.equals('foo'));
    unittest.expect(o.headline!, unittest.equals('foo'));
    unittest.expect(o.headline2!, unittest.equals('foo'));
    unittest.expect(o.headline3!, unittest.equals('foo'));
    unittest.expect(o.path1!, unittest.equals('foo'));
    unittest.expect(o.path2!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo = 0;
api.GoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo
buildGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo() {
  final o = api.GoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo();
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo < 3) {}
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo(
  api.GoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo < 3) {}
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo--;
}

core.List<api.GoogleAdsSearchads360V0CommonAdTextAsset> buildUnnamed6() => [
  buildGoogleAdsSearchads360V0CommonAdTextAsset(),
  buildGoogleAdsSearchads360V0CommonAdTextAsset(),
];

void checkUnnamed6(core.List<api.GoogleAdsSearchads360V0CommonAdTextAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonAdTextAsset(o[0]);
  checkGoogleAdsSearchads360V0CommonAdTextAsset(o[1]);
}

core.List<api.GoogleAdsSearchads360V0CommonAdTextAsset> buildUnnamed7() => [
  buildGoogleAdsSearchads360V0CommonAdTextAsset(),
  buildGoogleAdsSearchads360V0CommonAdTextAsset(),
];

void checkUnnamed7(core.List<api.GoogleAdsSearchads360V0CommonAdTextAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonAdTextAsset(o[0]);
  checkGoogleAdsSearchads360V0CommonAdTextAsset(o[1]);
}

core.int
buildCounterGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo = 0;
api.GoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo
buildGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo() {
  final o =
      api.GoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo();
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo <
      3) {
    o.adTrackingId = 'foo';
    o.descriptions = buildUnnamed6();
    o.headlines = buildUnnamed7();
    o.path1 = 'foo';
    o.path2 = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo(
  api.GoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo <
      3) {
    unittest.expect(o.adTrackingId!, unittest.equals('foo'));
    checkUnnamed6(o.descriptions!);
    checkUnnamed7(o.headlines!);
    unittest.expect(o.path1!, unittest.equals('foo'));
    unittest.expect(o.path2!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo = 0;
api.GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo
buildGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo() {
  final o = api.GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo();
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo < 3) {
    o.adTrackingId = 'foo';
    o.description1 = 'foo';
    o.description2 = 'foo';
    o.displayMobileUrl = 'foo';
    o.displayUrl = 'foo';
    o.headline = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo(
  api.GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo < 3) {
    unittest.expect(o.adTrackingId!, unittest.equals('foo'));
    unittest.expect(o.description1!, unittest.equals('foo'));
    unittest.expect(o.description2!, unittest.equals('foo'));
    unittest.expect(o.displayMobileUrl!, unittest.equals('foo'));
    unittest.expect(o.displayUrl!, unittest.equals('foo'));
    unittest.expect(o.headline!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo--;
}

core.List<api.GoogleAdsSearchads360V0CommonValue> buildUnnamed8() => [
  buildGoogleAdsSearchads360V0CommonValue(),
  buildGoogleAdsSearchads360V0CommonValue(),
];

void checkUnnamed8(core.List<api.GoogleAdsSearchads360V0CommonValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonValue(o[0]);
  checkGoogleAdsSearchads360V0CommonValue(o[1]);
}

core.List<api.GoogleAdsSearchads360V0CommonValue> buildUnnamed9() => [
  buildGoogleAdsSearchads360V0CommonValue(),
  buildGoogleAdsSearchads360V0CommonValue(),
];

void checkUnnamed9(core.List<api.GoogleAdsSearchads360V0CommonValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonValue(o[0]);
  checkGoogleAdsSearchads360V0CommonValue(o[1]);
}

core.int buildCounterGoogleAdsSearchads360V0CommonSegments = 0;
api.GoogleAdsSearchads360V0CommonSegments
buildGoogleAdsSearchads360V0CommonSegments() {
  final o = api.GoogleAdsSearchads360V0CommonSegments();
  buildCounterGoogleAdsSearchads360V0CommonSegments++;
  if (buildCounterGoogleAdsSearchads360V0CommonSegments < 3) {
    o.adNetworkType = 'foo';
    o.assetInteractionTarget =
        buildGoogleAdsSearchads360V0CommonAssetInteractionTarget();
    o.conversionAction = 'foo';
    o.conversionActionCategory = 'foo';
    o.conversionActionName = 'foo';
    o.conversionCustomDimensions = buildUnnamed8();
    o.date = 'foo';
    o.dayOfWeek = 'foo';
    o.device = 'foo';
    o.geoTargetCity = 'foo';
    o.geoTargetCountry = 'foo';
    o.geoTargetMetro = 'foo';
    o.geoTargetRegion = 'foo';
    o.hour = 42;
    o.keyword = buildGoogleAdsSearchads360V0CommonKeyword();
    o.month = 'foo';
    o.productBiddingCategoryLevel1 = 'foo';
    o.productBiddingCategoryLevel2 = 'foo';
    o.productBiddingCategoryLevel3 = 'foo';
    o.productBiddingCategoryLevel4 = 'foo';
    o.productBiddingCategoryLevel5 = 'foo';
    o.productBrand = 'foo';
    o.productChannel = 'foo';
    o.productChannelExclusivity = 'foo';
    o.productCondition = 'foo';
    o.productCountry = 'foo';
    o.productCustomAttribute0 = 'foo';
    o.productCustomAttribute1 = 'foo';
    o.productCustomAttribute2 = 'foo';
    o.productCustomAttribute3 = 'foo';
    o.productCustomAttribute4 = 'foo';
    o.productItemId = 'foo';
    o.productLanguage = 'foo';
    o.productSoldBiddingCategoryLevel1 = 'foo';
    o.productSoldBiddingCategoryLevel2 = 'foo';
    o.productSoldBiddingCategoryLevel3 = 'foo';
    o.productSoldBiddingCategoryLevel4 = 'foo';
    o.productSoldBiddingCategoryLevel5 = 'foo';
    o.productSoldBrand = 'foo';
    o.productSoldCondition = 'foo';
    o.productSoldCustomAttribute0 = 'foo';
    o.productSoldCustomAttribute1 = 'foo';
    o.productSoldCustomAttribute2 = 'foo';
    o.productSoldCustomAttribute3 = 'foo';
    o.productSoldCustomAttribute4 = 'foo';
    o.productSoldItemId = 'foo';
    o.productSoldTitle = 'foo';
    o.productSoldTypeL1 = 'foo';
    o.productSoldTypeL2 = 'foo';
    o.productSoldTypeL3 = 'foo';
    o.productSoldTypeL4 = 'foo';
    o.productSoldTypeL5 = 'foo';
    o.productStoreId = 'foo';
    o.productTitle = 'foo';
    o.productTypeL1 = 'foo';
    o.productTypeL2 = 'foo';
    o.productTypeL3 = 'foo';
    o.productTypeL4 = 'foo';
    o.productTypeL5 = 'foo';
    o.quarter = 'foo';
    o.rawEventConversionDimensions = buildUnnamed9();
    o.week = 'foo';
    o.year = 42;
  }
  buildCounterGoogleAdsSearchads360V0CommonSegments--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonSegments(
  api.GoogleAdsSearchads360V0CommonSegments o,
) {
  buildCounterGoogleAdsSearchads360V0CommonSegments++;
  if (buildCounterGoogleAdsSearchads360V0CommonSegments < 3) {
    unittest.expect(o.adNetworkType!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonAssetInteractionTarget(
      o.assetInteractionTarget!,
    );
    unittest.expect(o.conversionAction!, unittest.equals('foo'));
    unittest.expect(o.conversionActionCategory!, unittest.equals('foo'));
    unittest.expect(o.conversionActionName!, unittest.equals('foo'));
    checkUnnamed8(o.conversionCustomDimensions!);
    unittest.expect(o.date!, unittest.equals('foo'));
    unittest.expect(o.dayOfWeek!, unittest.equals('foo'));
    unittest.expect(o.device!, unittest.equals('foo'));
    unittest.expect(o.geoTargetCity!, unittest.equals('foo'));
    unittest.expect(o.geoTargetCountry!, unittest.equals('foo'));
    unittest.expect(o.geoTargetMetro!, unittest.equals('foo'));
    unittest.expect(o.geoTargetRegion!, unittest.equals('foo'));
    unittest.expect(o.hour!, unittest.equals(42));
    checkGoogleAdsSearchads360V0CommonKeyword(o.keyword!);
    unittest.expect(o.month!, unittest.equals('foo'));
    unittest.expect(o.productBiddingCategoryLevel1!, unittest.equals('foo'));
    unittest.expect(o.productBiddingCategoryLevel2!, unittest.equals('foo'));
    unittest.expect(o.productBiddingCategoryLevel3!, unittest.equals('foo'));
    unittest.expect(o.productBiddingCategoryLevel4!, unittest.equals('foo'));
    unittest.expect(o.productBiddingCategoryLevel5!, unittest.equals('foo'));
    unittest.expect(o.productBrand!, unittest.equals('foo'));
    unittest.expect(o.productChannel!, unittest.equals('foo'));
    unittest.expect(o.productChannelExclusivity!, unittest.equals('foo'));
    unittest.expect(o.productCondition!, unittest.equals('foo'));
    unittest.expect(o.productCountry!, unittest.equals('foo'));
    unittest.expect(o.productCustomAttribute0!, unittest.equals('foo'));
    unittest.expect(o.productCustomAttribute1!, unittest.equals('foo'));
    unittest.expect(o.productCustomAttribute2!, unittest.equals('foo'));
    unittest.expect(o.productCustomAttribute3!, unittest.equals('foo'));
    unittest.expect(o.productCustomAttribute4!, unittest.equals('foo'));
    unittest.expect(o.productItemId!, unittest.equals('foo'));
    unittest.expect(o.productLanguage!, unittest.equals('foo'));
    unittest.expect(
      o.productSoldBiddingCategoryLevel1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productSoldBiddingCategoryLevel2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productSoldBiddingCategoryLevel3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productSoldBiddingCategoryLevel4!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productSoldBiddingCategoryLevel5!,
      unittest.equals('foo'),
    );
    unittest.expect(o.productSoldBrand!, unittest.equals('foo'));
    unittest.expect(o.productSoldCondition!, unittest.equals('foo'));
    unittest.expect(o.productSoldCustomAttribute0!, unittest.equals('foo'));
    unittest.expect(o.productSoldCustomAttribute1!, unittest.equals('foo'));
    unittest.expect(o.productSoldCustomAttribute2!, unittest.equals('foo'));
    unittest.expect(o.productSoldCustomAttribute3!, unittest.equals('foo'));
    unittest.expect(o.productSoldCustomAttribute4!, unittest.equals('foo'));
    unittest.expect(o.productSoldItemId!, unittest.equals('foo'));
    unittest.expect(o.productSoldTitle!, unittest.equals('foo'));
    unittest.expect(o.productSoldTypeL1!, unittest.equals('foo'));
    unittest.expect(o.productSoldTypeL2!, unittest.equals('foo'));
    unittest.expect(o.productSoldTypeL3!, unittest.equals('foo'));
    unittest.expect(o.productSoldTypeL4!, unittest.equals('foo'));
    unittest.expect(o.productSoldTypeL5!, unittest.equals('foo'));
    unittest.expect(o.productStoreId!, unittest.equals('foo'));
    unittest.expect(o.productTitle!, unittest.equals('foo'));
    unittest.expect(o.productTypeL1!, unittest.equals('foo'));
    unittest.expect(o.productTypeL2!, unittest.equals('foo'));
    unittest.expect(o.productTypeL3!, unittest.equals('foo'));
    unittest.expect(o.productTypeL4!, unittest.equals('foo'));
    unittest.expect(o.productTypeL5!, unittest.equals('foo'));
    unittest.expect(o.quarter!, unittest.equals('foo'));
    checkUnnamed9(o.rawEventConversionDimensions!);
    unittest.expect(o.week!, unittest.equals('foo'));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterGoogleAdsSearchads360V0CommonSegments--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonTargetCpa = 0;
api.GoogleAdsSearchads360V0CommonTargetCpa
buildGoogleAdsSearchads360V0CommonTargetCpa() {
  final o = api.GoogleAdsSearchads360V0CommonTargetCpa();
  buildCounterGoogleAdsSearchads360V0CommonTargetCpa++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetCpa < 3) {
    o.cpcBidCeilingMicros = 'foo';
    o.cpcBidFloorMicros = 'foo';
    o.targetCpaMicros = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetCpa--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonTargetCpa(
  api.GoogleAdsSearchads360V0CommonTargetCpa o,
) {
  buildCounterGoogleAdsSearchads360V0CommonTargetCpa++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetCpa < 3) {
    unittest.expect(o.cpcBidCeilingMicros!, unittest.equals('foo'));
    unittest.expect(o.cpcBidFloorMicros!, unittest.equals('foo'));
    unittest.expect(o.targetCpaMicros!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetCpa--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonTargetCpm = 0;
api.GoogleAdsSearchads360V0CommonTargetCpm
buildGoogleAdsSearchads360V0CommonTargetCpm() {
  final o = api.GoogleAdsSearchads360V0CommonTargetCpm();
  buildCounterGoogleAdsSearchads360V0CommonTargetCpm++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetCpm < 3) {}
  buildCounterGoogleAdsSearchads360V0CommonTargetCpm--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonTargetCpm(
  api.GoogleAdsSearchads360V0CommonTargetCpm o,
) {
  buildCounterGoogleAdsSearchads360V0CommonTargetCpm++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetCpm < 3) {}
  buildCounterGoogleAdsSearchads360V0CommonTargetCpm--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonTargetImpressionShare = 0;
api.GoogleAdsSearchads360V0CommonTargetImpressionShare
buildGoogleAdsSearchads360V0CommonTargetImpressionShare() {
  final o = api.GoogleAdsSearchads360V0CommonTargetImpressionShare();
  buildCounterGoogleAdsSearchads360V0CommonTargetImpressionShare++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetImpressionShare < 3) {
    o.cpcBidCeilingMicros = 'foo';
    o.location = 'foo';
    o.locationFractionMicros = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetImpressionShare--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonTargetImpressionShare(
  api.GoogleAdsSearchads360V0CommonTargetImpressionShare o,
) {
  buildCounterGoogleAdsSearchads360V0CommonTargetImpressionShare++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetImpressionShare < 3) {
    unittest.expect(o.cpcBidCeilingMicros!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.locationFractionMicros!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetImpressionShare--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonTargetOutrankShare = 0;
api.GoogleAdsSearchads360V0CommonTargetOutrankShare
buildGoogleAdsSearchads360V0CommonTargetOutrankShare() {
  final o = api.GoogleAdsSearchads360V0CommonTargetOutrankShare();
  buildCounterGoogleAdsSearchads360V0CommonTargetOutrankShare++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetOutrankShare < 3) {
    o.cpcBidCeilingMicros = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetOutrankShare--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonTargetOutrankShare(
  api.GoogleAdsSearchads360V0CommonTargetOutrankShare o,
) {
  buildCounterGoogleAdsSearchads360V0CommonTargetOutrankShare++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetOutrankShare < 3) {
    unittest.expect(o.cpcBidCeilingMicros!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetOutrankShare--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonTargetRestriction = 0;
api.GoogleAdsSearchads360V0CommonTargetRestriction
buildGoogleAdsSearchads360V0CommonTargetRestriction() {
  final o = api.GoogleAdsSearchads360V0CommonTargetRestriction();
  buildCounterGoogleAdsSearchads360V0CommonTargetRestriction++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetRestriction < 3) {
    o.bidOnly = true;
    o.targetingDimension = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetRestriction--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonTargetRestriction(
  api.GoogleAdsSearchads360V0CommonTargetRestriction o,
) {
  buildCounterGoogleAdsSearchads360V0CommonTargetRestriction++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetRestriction < 3) {
    unittest.expect(o.bidOnly!, unittest.isTrue);
    unittest.expect(o.targetingDimension!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetRestriction--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonTargetRoas = 0;
api.GoogleAdsSearchads360V0CommonTargetRoas
buildGoogleAdsSearchads360V0CommonTargetRoas() {
  final o = api.GoogleAdsSearchads360V0CommonTargetRoas();
  buildCounterGoogleAdsSearchads360V0CommonTargetRoas++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetRoas < 3) {
    o.cpcBidCeilingMicros = 'foo';
    o.cpcBidFloorMicros = 'foo';
    o.targetRoas = 42.0;
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetRoas--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonTargetRoas(
  api.GoogleAdsSearchads360V0CommonTargetRoas o,
) {
  buildCounterGoogleAdsSearchads360V0CommonTargetRoas++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetRoas < 3) {
    unittest.expect(o.cpcBidCeilingMicros!, unittest.equals('foo'));
    unittest.expect(o.cpcBidFloorMicros!, unittest.equals('foo'));
    unittest.expect(o.targetRoas!, unittest.equals(42.0));
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetRoas--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonTargetSpend = 0;
api.GoogleAdsSearchads360V0CommonTargetSpend
buildGoogleAdsSearchads360V0CommonTargetSpend() {
  final o = api.GoogleAdsSearchads360V0CommonTargetSpend();
  buildCounterGoogleAdsSearchads360V0CommonTargetSpend++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetSpend < 3) {
    o.cpcBidCeilingMicros = 'foo';
    o.targetSpendMicros = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetSpend--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonTargetSpend(
  api.GoogleAdsSearchads360V0CommonTargetSpend o,
) {
  buildCounterGoogleAdsSearchads360V0CommonTargetSpend++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetSpend < 3) {
    unittest.expect(o.cpcBidCeilingMicros!, unittest.equals('foo'));
    unittest.expect(o.targetSpendMicros!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetSpend--;
}

core.List<api.GoogleAdsSearchads360V0CommonTargetRestriction>
buildUnnamed10() => [
  buildGoogleAdsSearchads360V0CommonTargetRestriction(),
  buildGoogleAdsSearchads360V0CommonTargetRestriction(),
];

void checkUnnamed10(
  core.List<api.GoogleAdsSearchads360V0CommonTargetRestriction> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonTargetRestriction(o[0]);
  checkGoogleAdsSearchads360V0CommonTargetRestriction(o[1]);
}

core.int buildCounterGoogleAdsSearchads360V0CommonTargetingSetting = 0;
api.GoogleAdsSearchads360V0CommonTargetingSetting
buildGoogleAdsSearchads360V0CommonTargetingSetting() {
  final o = api.GoogleAdsSearchads360V0CommonTargetingSetting();
  buildCounterGoogleAdsSearchads360V0CommonTargetingSetting++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetingSetting < 3) {
    o.targetRestrictions = buildUnnamed10();
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetingSetting--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonTargetingSetting(
  api.GoogleAdsSearchads360V0CommonTargetingSetting o,
) {
  buildCounterGoogleAdsSearchads360V0CommonTargetingSetting++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetingSetting < 3) {
    checkUnnamed10(o.targetRestrictions!);
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetingSetting--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonTextAsset = 0;
api.GoogleAdsSearchads360V0CommonTextAsset
buildGoogleAdsSearchads360V0CommonTextAsset() {
  final o = api.GoogleAdsSearchads360V0CommonTextAsset();
  buildCounterGoogleAdsSearchads360V0CommonTextAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonTextAsset < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonTextAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonTextAsset(
  api.GoogleAdsSearchads360V0CommonTextAsset o,
) {
  buildCounterGoogleAdsSearchads360V0CommonTextAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonTextAsset < 3) {
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonTextAsset--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonTextLabel = 0;
api.GoogleAdsSearchads360V0CommonTextLabel
buildGoogleAdsSearchads360V0CommonTextLabel() {
  final o = api.GoogleAdsSearchads360V0CommonTextLabel();
  buildCounterGoogleAdsSearchads360V0CommonTextLabel++;
  if (buildCounterGoogleAdsSearchads360V0CommonTextLabel < 3) {
    o.backgroundColor = 'foo';
    o.description = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonTextLabel--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonTextLabel(
  api.GoogleAdsSearchads360V0CommonTextLabel o,
) {
  buildCounterGoogleAdsSearchads360V0CommonTextLabel++;
  if (buildCounterGoogleAdsSearchads360V0CommonTextLabel < 3) {
    unittest.expect(o.backgroundColor!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonTextLabel--;
}

core.List<api.GoogleAdsSearchads360V0CommonAdScheduleInfo> buildUnnamed11() => [
  buildGoogleAdsSearchads360V0CommonAdScheduleInfo(),
  buildGoogleAdsSearchads360V0CommonAdScheduleInfo(),
];

void checkUnnamed11(
  core.List<api.GoogleAdsSearchads360V0CommonAdScheduleInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonAdScheduleInfo(o[0]);
  checkGoogleAdsSearchads360V0CommonAdScheduleInfo(o[1]);
}

core.int buildCounterGoogleAdsSearchads360V0CommonUnifiedCallAsset = 0;
api.GoogleAdsSearchads360V0CommonUnifiedCallAsset
buildGoogleAdsSearchads360V0CommonUnifiedCallAsset() {
  final o = api.GoogleAdsSearchads360V0CommonUnifiedCallAsset();
  buildCounterGoogleAdsSearchads360V0CommonUnifiedCallAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonUnifiedCallAsset < 3) {
    o.adScheduleTargets = buildUnnamed11();
    o.callConversionAction = 'foo';
    o.callConversionReportingState = 'foo';
    o.callOnly = true;
    o.callTrackingEnabled = true;
    o.countryCode = 'foo';
    o.endDate = 'foo';
    o.phoneNumber = 'foo';
    o.startDate = 'foo';
    o.useSearcherTimeZone = true;
  }
  buildCounterGoogleAdsSearchads360V0CommonUnifiedCallAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonUnifiedCallAsset(
  api.GoogleAdsSearchads360V0CommonUnifiedCallAsset o,
) {
  buildCounterGoogleAdsSearchads360V0CommonUnifiedCallAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonUnifiedCallAsset < 3) {
    checkUnnamed11(o.adScheduleTargets!);
    unittest.expect(o.callConversionAction!, unittest.equals('foo'));
    unittest.expect(o.callConversionReportingState!, unittest.equals('foo'));
    unittest.expect(o.callOnly!, unittest.isTrue);
    unittest.expect(o.callTrackingEnabled!, unittest.isTrue);
    unittest.expect(o.countryCode!, unittest.equals('foo'));
    unittest.expect(o.endDate!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.startDate!, unittest.equals('foo'));
    unittest.expect(o.useSearcherTimeZone!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0CommonUnifiedCallAsset--;
}

core.List<api.GoogleAdsSearchads360V0CommonAdScheduleInfo> buildUnnamed12() => [
  buildGoogleAdsSearchads360V0CommonAdScheduleInfo(),
  buildGoogleAdsSearchads360V0CommonAdScheduleInfo(),
];

void checkUnnamed12(
  core.List<api.GoogleAdsSearchads360V0CommonAdScheduleInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonAdScheduleInfo(o[0]);
  checkGoogleAdsSearchads360V0CommonAdScheduleInfo(o[1]);
}

core.int buildCounterGoogleAdsSearchads360V0CommonUnifiedCalloutAsset = 0;
api.GoogleAdsSearchads360V0CommonUnifiedCalloutAsset
buildGoogleAdsSearchads360V0CommonUnifiedCalloutAsset() {
  final o = api.GoogleAdsSearchads360V0CommonUnifiedCalloutAsset();
  buildCounterGoogleAdsSearchads360V0CommonUnifiedCalloutAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonUnifiedCalloutAsset < 3) {
    o.adScheduleTargets = buildUnnamed12();
    o.calloutText = 'foo';
    o.endDate = 'foo';
    o.startDate = 'foo';
    o.useSearcherTimeZone = true;
  }
  buildCounterGoogleAdsSearchads360V0CommonUnifiedCalloutAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonUnifiedCalloutAsset(
  api.GoogleAdsSearchads360V0CommonUnifiedCalloutAsset o,
) {
  buildCounterGoogleAdsSearchads360V0CommonUnifiedCalloutAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonUnifiedCalloutAsset < 3) {
    checkUnnamed12(o.adScheduleTargets!);
    unittest.expect(o.calloutText!, unittest.equals('foo'));
    unittest.expect(o.endDate!, unittest.equals('foo'));
    unittest.expect(o.startDate!, unittest.equals('foo'));
    unittest.expect(o.useSearcherTimeZone!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0CommonUnifiedCalloutAsset--;
}

core.List<api.GoogleAdsSearchads360V0CommonBusinessProfileLocation>
buildUnnamed13() => [
  buildGoogleAdsSearchads360V0CommonBusinessProfileLocation(),
  buildGoogleAdsSearchads360V0CommonBusinessProfileLocation(),
];

void checkUnnamed13(
  core.List<api.GoogleAdsSearchads360V0CommonBusinessProfileLocation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonBusinessProfileLocation(o[0]);
  checkGoogleAdsSearchads360V0CommonBusinessProfileLocation(o[1]);
}

core.int buildCounterGoogleAdsSearchads360V0CommonUnifiedLocationAsset = 0;
api.GoogleAdsSearchads360V0CommonUnifiedLocationAsset
buildGoogleAdsSearchads360V0CommonUnifiedLocationAsset() {
  final o = api.GoogleAdsSearchads360V0CommonUnifiedLocationAsset();
  buildCounterGoogleAdsSearchads360V0CommonUnifiedLocationAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonUnifiedLocationAsset < 3) {
    o.businessProfileLocations = buildUnnamed13();
    o.locationOwnershipType = 'foo';
    o.placeId = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonUnifiedLocationAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonUnifiedLocationAsset(
  api.GoogleAdsSearchads360V0CommonUnifiedLocationAsset o,
) {
  buildCounterGoogleAdsSearchads360V0CommonUnifiedLocationAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonUnifiedLocationAsset < 3) {
    checkUnnamed13(o.businessProfileLocations!);
    unittest.expect(o.locationOwnershipType!, unittest.equals('foo'));
    unittest.expect(o.placeId!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonUnifiedLocationAsset--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset = 0;
api.GoogleAdsSearchads360V0CommonUnifiedPageFeedAsset
buildGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset() {
  final o = api.GoogleAdsSearchads360V0CommonUnifiedPageFeedAsset();
  buildCounterGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset < 3) {
    o.labels = buildUnnamed14();
    o.pageUrl = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset(
  api.GoogleAdsSearchads360V0CommonUnifiedPageFeedAsset o,
) {
  buildCounterGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset < 3) {
    checkUnnamed14(o.labels!);
    unittest.expect(o.pageUrl!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset--;
}

core.List<api.GoogleAdsSearchads360V0CommonAdScheduleInfo> buildUnnamed15() => [
  buildGoogleAdsSearchads360V0CommonAdScheduleInfo(),
  buildGoogleAdsSearchads360V0CommonAdScheduleInfo(),
];

void checkUnnamed15(
  core.List<api.GoogleAdsSearchads360V0CommonAdScheduleInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonAdScheduleInfo(o[0]);
  checkGoogleAdsSearchads360V0CommonAdScheduleInfo(o[1]);
}

core.int buildCounterGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset = 0;
api.GoogleAdsSearchads360V0CommonUnifiedSitelinkAsset
buildGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset() {
  final o = api.GoogleAdsSearchads360V0CommonUnifiedSitelinkAsset();
  buildCounterGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset < 3) {
    o.adScheduleTargets = buildUnnamed15();
    o.description1 = 'foo';
    o.description2 = 'foo';
    o.endDate = 'foo';
    o.linkText = 'foo';
    o.mobilePreferred = true;
    o.startDate = 'foo';
    o.trackingId = 'foo';
    o.useSearcherTimeZone = true;
  }
  buildCounterGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset(
  api.GoogleAdsSearchads360V0CommonUnifiedSitelinkAsset o,
) {
  buildCounterGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset < 3) {
    checkUnnamed15(o.adScheduleTargets!);
    unittest.expect(o.description1!, unittest.equals('foo'));
    unittest.expect(o.description2!, unittest.equals('foo'));
    unittest.expect(o.endDate!, unittest.equals('foo'));
    unittest.expect(o.linkText!, unittest.equals('foo'));
    unittest.expect(o.mobilePreferred!, unittest.isTrue);
    unittest.expect(o.startDate!, unittest.equals('foo'));
    unittest.expect(o.trackingId!, unittest.equals('foo'));
    unittest.expect(o.useSearcherTimeZone!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonUserListInfo = 0;
api.GoogleAdsSearchads360V0CommonUserListInfo
buildGoogleAdsSearchads360V0CommonUserListInfo() {
  final o = api.GoogleAdsSearchads360V0CommonUserListInfo();
  buildCounterGoogleAdsSearchads360V0CommonUserListInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonUserListInfo < 3) {
    o.userList = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonUserListInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonUserListInfo(
  api.GoogleAdsSearchads360V0CommonUserListInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonUserListInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonUserListInfo < 3) {
    unittest.expect(o.userList!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonUserListInfo--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonValue = 0;
api.GoogleAdsSearchads360V0CommonValue
buildGoogleAdsSearchads360V0CommonValue() {
  final o = api.GoogleAdsSearchads360V0CommonValue();
  buildCounterGoogleAdsSearchads360V0CommonValue++;
  if (buildCounterGoogleAdsSearchads360V0CommonValue < 3) {
    o.booleanValue = true;
    o.doubleValue = 42.0;
    o.floatValue = 42.0;
    o.int64Value = 'foo';
    o.stringValue = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonValue--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonValue(
  api.GoogleAdsSearchads360V0CommonValue o,
) {
  buildCounterGoogleAdsSearchads360V0CommonValue++;
  if (buildCounterGoogleAdsSearchads360V0CommonValue < 3) {
    unittest.expect(o.booleanValue!, unittest.isTrue);
    unittest.expect(o.doubleValue!, unittest.equals(42.0));
    unittest.expect(o.floatValue!, unittest.equals(42.0));
    unittest.expect(o.int64Value!, unittest.equals('foo'));
    unittest.expect(o.stringValue!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonValue--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonWebpageConditionInfo = 0;
api.GoogleAdsSearchads360V0CommonWebpageConditionInfo
buildGoogleAdsSearchads360V0CommonWebpageConditionInfo() {
  final o = api.GoogleAdsSearchads360V0CommonWebpageConditionInfo();
  buildCounterGoogleAdsSearchads360V0CommonWebpageConditionInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonWebpageConditionInfo < 3) {
    o.argument = 'foo';
    o.operand = 'foo';
    o.operator = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonWebpageConditionInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonWebpageConditionInfo(
  api.GoogleAdsSearchads360V0CommonWebpageConditionInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonWebpageConditionInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonWebpageConditionInfo < 3) {
    unittest.expect(o.argument!, unittest.equals('foo'));
    unittest.expect(o.operand!, unittest.equals('foo'));
    unittest.expect(o.operator!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonWebpageConditionInfo--;
}

core.List<api.GoogleAdsSearchads360V0CommonWebpageConditionInfo>
buildUnnamed16() => [
  buildGoogleAdsSearchads360V0CommonWebpageConditionInfo(),
  buildGoogleAdsSearchads360V0CommonWebpageConditionInfo(),
];

void checkUnnamed16(
  core.List<api.GoogleAdsSearchads360V0CommonWebpageConditionInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonWebpageConditionInfo(o[0]);
  checkGoogleAdsSearchads360V0CommonWebpageConditionInfo(o[1]);
}

core.int buildCounterGoogleAdsSearchads360V0CommonWebpageInfo = 0;
api.GoogleAdsSearchads360V0CommonWebpageInfo
buildGoogleAdsSearchads360V0CommonWebpageInfo() {
  final o = api.GoogleAdsSearchads360V0CommonWebpageInfo();
  buildCounterGoogleAdsSearchads360V0CommonWebpageInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonWebpageInfo < 3) {
    o.conditions = buildUnnamed16();
    o.coveragePercentage = 42.0;
    o.criterionName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonWebpageInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonWebpageInfo(
  api.GoogleAdsSearchads360V0CommonWebpageInfo o,
) {
  buildCounterGoogleAdsSearchads360V0CommonWebpageInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonWebpageInfo < 3) {
    checkUnnamed16(o.conditions!);
    unittest.expect(o.coveragePercentage!, unittest.equals(42.0));
    unittest.expect(o.criterionName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonWebpageInfo--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonYoutubeVideoAsset = 0;
api.GoogleAdsSearchads360V0CommonYoutubeVideoAsset
buildGoogleAdsSearchads360V0CommonYoutubeVideoAsset() {
  final o = api.GoogleAdsSearchads360V0CommonYoutubeVideoAsset();
  buildCounterGoogleAdsSearchads360V0CommonYoutubeVideoAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonYoutubeVideoAsset < 3) {
    o.youtubeVideoId = 'foo';
    o.youtubeVideoTitle = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonYoutubeVideoAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonYoutubeVideoAsset(
  api.GoogleAdsSearchads360V0CommonYoutubeVideoAsset o,
) {
  buildCounterGoogleAdsSearchads360V0CommonYoutubeVideoAsset++;
  if (buildCounterGoogleAdsSearchads360V0CommonYoutubeVideoAsset < 3) {
    unittest.expect(o.youtubeVideoId!, unittest.equals('foo'));
    unittest.expect(o.youtubeVideoTitle!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0CommonYoutubeVideoAsset--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue =
    0;
api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue
buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue();
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue <
      3) {
    o.targetRoas = 42.0;
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue--;
  return o;
}

void
checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue(
  api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue
  o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue <
      3) {
    unittest.expect(o.targetRoas!, unittest.equals(42.0));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions =
    0;
api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions
buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions();
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions <
      3) {
    o.targetCpa = 'foo';
    o.targetCpaMicros = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions--;
  return o;
}

void
checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions(
  api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions
  o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions <
      3) {
    unittest.expect(o.targetCpa!, unittest.equals('foo'));
    unittest.expect(o.targetCpaMicros!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa =
    0;
api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa
buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa();
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa <
      3) {
    o.targetCpaMicros = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa(
  api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa <
      3) {
    unittest.expect(o.targetCpaMicros!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare =
    0;
api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare
buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare();
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare <
      3) {
    o.cpcBidCeilingMicros = 'foo';
    o.location = 'foo';
    o.locationFractionMicros = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare--;
  return o;
}

void
checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare(
  api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare
  o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare <
      3) {
    unittest.expect(o.cpcBidCeilingMicros!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.locationFractionMicros!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas =
    0;
api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas
buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas();
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas <
      3) {
    o.targetRoas = 42.0;
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas(
  api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas <
      3) {
    unittest.expect(o.targetRoas!, unittest.equals(42.0));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend =
    0;
api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend
buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend();
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend <
      3) {
    o.cpcBidCeilingMicros = 'foo';
    o.targetSpendMicros = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend(
  api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend <
      3) {
    unittest.expect(o.cpcBidCeilingMicros!, unittest.equals('foo'));
    unittest.expect(o.targetSpendMicros!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates =
    0;
api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates
buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates <
      3) {
    o.topOfPageCpcMicros = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates(
  api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates <
      3) {
    unittest.expect(o.topOfPageCpcMicros!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo
buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo <
      3) {
    o.qualityScore = 42;
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo(
  api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo <
      3) {
    unittest.expect(o.qualityScore!, unittest.equals(42));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting = 0;
api.GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting
buildGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting <
      3) {
    o.domainName = 'foo';
    o.languageCode = 'foo';
    o.useSuppliedUrlsOnly = true;
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting(
  api.GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting <
      3) {
    unittest.expect(o.domainName!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.useSuppliedUrlsOnly!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting = 0;
api.GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting
buildGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting <
      3) {
    o.negativeGeoTargetType = 'foo';
    o.positiveGeoTargetType = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting(
  api.GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting <
      3) {
    unittest.expect(o.negativeGeoTargetType!, unittest.equals('foo'));
    unittest.expect(o.positiveGeoTargetType!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings =
    0;
api.GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings
buildGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings < 3) {
    o.targetContentNetwork = true;
    o.targetGoogleSearch = true;
    o.targetPartnerSearchNetwork = true;
    o.targetSearchNetwork = true;
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings(
  api.GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings < 3) {
    unittest.expect(o.targetContentNetwork!, unittest.isTrue);
    unittest.expect(o.targetGoogleSearch!, unittest.isTrue);
    unittest.expect(o.targetPartnerSearchNetwork!, unittest.isTrue);
    unittest.expect(o.targetSearchNetwork!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting = 0;
api.GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting
buildGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting <
      3) {
    o.optimizationGoalTypes = buildUnnamed17();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting(
  api.GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting <
      3) {
    checkUnnamed17(o.optimizationGoalTypes!);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization = 0;
api.GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization
buildGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization <
      3) {
    o.conversionActions = buildUnnamed18();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization(
  api.GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization <
      3) {
    checkUnnamed18(o.conversionActions!);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting =
    0;
api.GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting
buildGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting < 3) {
    o.campaignPriority = 42;
    o.enableLocal = true;
    o.feedLabel = 'foo';
    o.merchantId = 'foo';
    o.salesCountry = 'foo';
    o.useVehicleInventory = true;
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting(
  api.GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting < 3) {
    unittest.expect(o.campaignPriority!, unittest.equals(42));
    unittest.expect(o.enableLocal!, unittest.isTrue);
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
    unittest.expect(o.merchantId!, unittest.equals('foo'));
    unittest.expect(o.salesCountry!, unittest.equals('foo'));
    unittest.expect(o.useVehicleInventory!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting =
    0;
api.GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting
buildGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting < 3) {
    o.trackingUrl = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting(
  api.GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting < 3) {
    unittest.expect(o.trackingUrl!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings =
    0;
api.GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings
buildGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings();
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings <
      3) {
    o.attributionModel = 'foo';
    o.dataDrivenModelStatus = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings--;
  return o;
}

void
checkGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings(
  api.GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings
  o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings <
      3) {
    unittest.expect(o.attributionModel!, unittest.equals('foo'));
    unittest.expect(o.dataDrivenModelStatus!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings =
    0;
api.GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings
buildGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings();
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings <
      3) {
    o.activityGroupTag = 'foo';
    o.activityId = 'foo';
    o.activityTag = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings(
  api.GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings <
      3) {
    unittest.expect(o.activityGroupTag!, unittest.equals('foo'));
    unittest.expect(o.activityId!, unittest.equals('foo'));
    unittest.expect(o.activityTag!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesConversionActionValueSettings = 0;
api.GoogleAdsSearchads360V0ResourcesConversionActionValueSettings
buildGoogleAdsSearchads360V0ResourcesConversionActionValueSettings() {
  final o = api.GoogleAdsSearchads360V0ResourcesConversionActionValueSettings();
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionValueSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionActionValueSettings <
      3) {
    o.alwaysUseDefaultValue = true;
    o.defaultCurrencyCode = 'foo';
    o.defaultValue = 42.0;
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionValueSettings--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesConversionActionValueSettings(
  api.GoogleAdsSearchads360V0ResourcesConversionActionValueSettings o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionValueSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionActionValueSettings <
      3) {
    unittest.expect(o.alwaysUseDefaultValue!, unittest.isTrue);
    unittest.expect(o.defaultCurrencyCode!, unittest.equals('foo'));
    unittest.expect(o.defaultValue!, unittest.equals(42.0));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionValueSettings--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo =
    0;
api.GoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo
buildGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo();
  buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo <
      3) {
    o.floodlightVariableDataType = 'foo';
    o.floodlightVariableType = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo--;
  return o;
}

void
checkGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo(
  api.GoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo
  o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo <
      3) {
    unittest.expect(o.floodlightVariableDataType!, unittest.equals('foo'));
    unittest.expect(o.floodlightVariableType!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory =
    0;
api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory
buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory();
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory <
      3) {
    o.id = 'foo';
    o.level = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory--;
  return o;
}

void
checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory(
  api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory
  o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.level!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand =
    0;
api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand
buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand();
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand <
      3) {
    o.value = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand--;
  return o;
}

void
checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand(
  api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand <
      3) {
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel =
    0;
api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel
buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel();
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel <
      3) {
    o.channel = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel--;
  return o;
}

void
checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel(
  api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel
  o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel <
      3) {
    unittest.expect(o.channel!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition =
    0;
api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition
buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition();
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition <
      3) {
    o.condition = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition--;
  return o;
}

void
checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition(
  api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition
  o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition <
      3) {
    unittest.expect(o.condition!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute =
    0;
api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute
buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute();
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute <
      3) {
    o.index = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute--;
  return o;
}

void
checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute(
  api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute
  o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute <
      3) {
    unittest.expect(o.index!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId =
    0;
api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId
buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId();
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId <
      3) {
    o.value = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId--;
  return o;
}

void
checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId(
  api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId
  o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId <
      3) {
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType =
    0;
api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType
buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType();
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType <
      3) {
    o.level = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType--;
  return o;
}

void
checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType(
  api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType <
      3) {
    unittest.expect(o.level!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy =
    0;
api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy
buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy() {
  final o = api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy();
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy <
      3) {
    o.id = 'foo';
    o.maximizeConversionValue =
        buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue();
    o.maximizeConversions =
        buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions();
    o.name = 'foo';
    o.ownerCustomerId = 'foo';
    o.ownerDescriptiveName = 'foo';
    o.resourceName = 'foo';
    o.targetCpa =
        buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa();
    o.targetImpressionShare =
        buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare();
    o.targetRoas =
        buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas();
    o.targetSpend =
        buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend();
    o.type = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy(
  api.GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue(
      o.maximizeConversionValue!,
    );
    checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions(
      o.maximizeConversions!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ownerCustomerId!, unittest.equals('foo'));
    unittest.expect(o.ownerDescriptiveName!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa(
      o.targetCpa!,
    );
    checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare(
      o.targetImpressionShare!,
    );
    checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas(
      o.targetRoas!,
    );
    checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend(
      o.targetSpend!,
    );
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAd = 0;
api.GoogleAdsSearchads360V0ResourcesAd
buildGoogleAdsSearchads360V0ResourcesAd() {
  final o = api.GoogleAdsSearchads360V0ResourcesAd();
  buildCounterGoogleAdsSearchads360V0ResourcesAd++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAd < 3) {
    o.displayUrl = 'foo';
    o.expandedDynamicSearchAd =
        buildGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo();
    o.expandedTextAd =
        buildGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo();
    o.finalUrls = buildUnnamed19();
    o.id = 'foo';
    o.name = 'foo';
    o.productAd = buildGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo();
    o.resourceName = 'foo';
    o.responsiveSearchAd =
        buildGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo();
    o.textAd = buildGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo();
    o.type = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAd--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAd(
  api.GoogleAdsSearchads360V0ResourcesAd o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAd++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAd < 3) {
    unittest.expect(o.displayUrl!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo(
      o.expandedDynamicSearchAd!,
    );
    checkGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo(
      o.expandedTextAd!,
    );
    checkUnnamed19(o.finalUrls!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo(o.productAd!);
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo(
      o.responsiveSearchAd!,
    );
    checkGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo(o.textAd!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAd--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroup = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroup
buildGoogleAdsSearchads360V0ResourcesAdGroup() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroup();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroup++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroup < 3) {
    o.adRotationMode = 'foo';
    o.cpcBidMicros = 'foo';
    o.creationTime = 'foo';
    o.effectiveLabels = buildUnnamed20();
    o.endDate = 'foo';
    o.engineId = 'foo';
    o.engineStatus = 'foo';
    o.id = 'foo';
    o.labels = buildUnnamed21();
    o.languageCode = 'foo';
    o.lastModifiedTime = 'foo';
    o.name = 'foo';
    o.resourceName = 'foo';
    o.startDate = 'foo';
    o.status = 'foo';
    o.targetingSetting = buildGoogleAdsSearchads360V0CommonTargetingSetting();
    o.type = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroup--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroup(
  api.GoogleAdsSearchads360V0ResourcesAdGroup o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroup++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroup < 3) {
    unittest.expect(o.adRotationMode!, unittest.equals('foo'));
    unittest.expect(o.cpcBidMicros!, unittest.equals('foo'));
    unittest.expect(o.creationTime!, unittest.equals('foo'));
    checkUnnamed20(o.effectiveLabels!);
    unittest.expect(o.endDate!, unittest.equals('foo'));
    unittest.expect(o.engineId!, unittest.equals('foo'));
    unittest.expect(o.engineStatus!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed21(o.labels!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.startDate!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonTargetingSetting(o.targetingSetting!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroup--;
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

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAd = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupAd
buildGoogleAdsSearchads360V0ResourcesAdGroupAd() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupAd();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAd++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAd < 3) {
    o.ad = buildGoogleAdsSearchads360V0ResourcesAd();
    o.creationTime = 'foo';
    o.effectiveLabels = buildUnnamed22();
    o.engineId = 'foo';
    o.engineStatus = 'foo';
    o.labels = buildUnnamed23();
    o.lastModifiedTime = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAd--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupAd(
  api.GoogleAdsSearchads360V0ResourcesAdGroupAd o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAd++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAd < 3) {
    checkGoogleAdsSearchads360V0ResourcesAd(o.ad!);
    unittest.expect(o.creationTime!, unittest.equals('foo'));
    checkUnnamed22(o.effectiveLabels!);
    unittest.expect(o.engineId!, unittest.equals('foo'));
    unittest.expect(o.engineStatus!, unittest.equals('foo'));
    checkUnnamed23(o.labels!);
    unittest.expect(o.lastModifiedTime!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAd--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel =
    0;
api.GoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel
buildGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel < 3) {
    o.adGroupAd = 'foo';
    o.label = 'foo';
    o.ownerCustomerId = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel(
  api.GoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel < 3) {
    unittest.expect(o.adGroupAd!, unittest.equals('foo'));
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.ownerCustomerId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdLabel = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupAdLabel
buildGoogleAdsSearchads360V0ResourcesAdGroupAdLabel() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupAdLabel();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdLabel < 3) {
    o.adGroupAd = 'foo';
    o.label = 'foo';
    o.ownerCustomerId = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdLabel--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupAdLabel(
  api.GoogleAdsSearchads360V0ResourcesAdGroupAdLabel o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdLabel < 3) {
    unittest.expect(o.adGroupAd!, unittest.equals('foo'));
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.ownerCustomerId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAdLabel--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAsset = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupAsset
buildGoogleAdsSearchads360V0ResourcesAdGroupAsset() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupAsset();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAsset++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAsset < 3) {
    o.adGroup = 'foo';
    o.asset = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupAsset(
  api.GoogleAdsSearchads360V0ResourcesAdGroupAsset o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAsset++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAsset < 3) {
    unittest.expect(o.adGroup!, unittest.equals('foo'));
    unittest.expect(o.asset!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAsset--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAssetSet = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupAssetSet
buildGoogleAdsSearchads360V0ResourcesAdGroupAssetSet() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupAssetSet();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAssetSet++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAssetSet < 3) {
    o.adGroup = 'foo';
    o.assetSet = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAssetSet--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupAssetSet(
  api.GoogleAdsSearchads360V0ResourcesAdGroupAssetSet o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAssetSet++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAssetSet < 3) {
    unittest.expect(o.adGroup!, unittest.equals('foo'));
    unittest.expect(o.assetSet!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAssetSet--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAudienceView = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupAudienceView
buildGoogleAdsSearchads360V0ResourcesAdGroupAudienceView() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupAudienceView();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAudienceView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAudienceView < 3) {
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAudienceView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupAudienceView(
  api.GoogleAdsSearchads360V0ResourcesAdGroupAudienceView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAudienceView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAudienceView < 3) {
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupAudienceView--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupBidModifier
buildGoogleAdsSearchads360V0ResourcesAdGroupBidModifier() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupBidModifier();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier < 3) {
    o.bidModifier = 42.0;
    o.device = buildGoogleAdsSearchads360V0CommonDeviceInfo();
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupBidModifier(
  api.GoogleAdsSearchads360V0ResourcesAdGroupBidModifier o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier < 3) {
    unittest.expect(o.bidModifier!, unittest.equals(42.0));
    checkGoogleAdsSearchads360V0CommonDeviceInfo(o.device!);
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterion = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupCriterion
buildGoogleAdsSearchads360V0ResourcesAdGroupCriterion() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupCriterion();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterion++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterion < 3) {
    o.adGroup = 'foo';
    o.ageRange = buildGoogleAdsSearchads360V0CommonAgeRangeInfo();
    o.bidModifier = 42.0;
    o.cpcBidMicros = 'foo';
    o.creationTime = 'foo';
    o.criterionId = 'foo';
    o.effectiveCpcBidMicros = 'foo';
    o.effectiveLabels = buildUnnamed24();
    o.engineId = 'foo';
    o.engineStatus = 'foo';
    o.finalUrlSuffix = 'foo';
    o.finalUrls = buildUnnamed25();
    o.gender = buildGoogleAdsSearchads360V0CommonGenderInfo();
    o.keyword = buildGoogleAdsSearchads360V0CommonKeywordInfo();
    o.labels = buildUnnamed26();
    o.lastModifiedTime = 'foo';
    o.listingGroup = buildGoogleAdsSearchads360V0CommonListingGroupInfo();
    o.location = buildGoogleAdsSearchads360V0CommonLocationInfo();
    o.negative = true;
    o.positionEstimates =
        buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates();
    o.qualityInfo =
        buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo();
    o.resourceName = 'foo';
    o.status = 'foo';
    o.trackingUrlTemplate = 'foo';
    o.type = 'foo';
    o.userList = buildGoogleAdsSearchads360V0CommonUserListInfo();
    o.webpage = buildGoogleAdsSearchads360V0CommonWebpageInfo();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterion--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupCriterion(
  api.GoogleAdsSearchads360V0ResourcesAdGroupCriterion o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterion++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterion < 3) {
    unittest.expect(o.adGroup!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonAgeRangeInfo(o.ageRange!);
    unittest.expect(o.bidModifier!, unittest.equals(42.0));
    unittest.expect(o.cpcBidMicros!, unittest.equals('foo'));
    unittest.expect(o.creationTime!, unittest.equals('foo'));
    unittest.expect(o.criterionId!, unittest.equals('foo'));
    unittest.expect(o.effectiveCpcBidMicros!, unittest.equals('foo'));
    checkUnnamed24(o.effectiveLabels!);
    unittest.expect(o.engineId!, unittest.equals('foo'));
    unittest.expect(o.engineStatus!, unittest.equals('foo'));
    unittest.expect(o.finalUrlSuffix!, unittest.equals('foo'));
    checkUnnamed25(o.finalUrls!);
    checkGoogleAdsSearchads360V0CommonGenderInfo(o.gender!);
    checkGoogleAdsSearchads360V0CommonKeywordInfo(o.keyword!);
    checkUnnamed26(o.labels!);
    unittest.expect(o.lastModifiedTime!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonListingGroupInfo(o.listingGroup!);
    checkGoogleAdsSearchads360V0CommonLocationInfo(o.location!);
    unittest.expect(o.negative!, unittest.isTrue);
    checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates(
      o.positionEstimates!,
    );
    checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo(
      o.qualityInfo!,
    );
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.trackingUrlTemplate!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonUserListInfo(o.userList!);
    checkGoogleAdsSearchads360V0CommonWebpageInfo(o.webpage!);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterion--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel
buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel <
      3) {
    o.adGroupCriterion = 'foo';
    o.label = 'foo';
    o.ownerCustomerId = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel(
  api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel <
      3) {
    unittest.expect(o.adGroupCriterion!, unittest.equals('foo'));
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.ownerCustomerId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel
buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel < 3) {
    o.adGroupCriterion = 'foo';
    o.label = 'foo';
    o.ownerCustomerId = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel(
  api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel < 3) {
    unittest.expect(o.adGroupCriterion!, unittest.equals('foo'));
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.ownerCustomerId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel
buildGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel < 3) {
    o.adGroup = 'foo';
    o.label = 'foo';
    o.ownerCustomerId = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel(
  api.GoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel < 3) {
    unittest.expect(o.adGroup!, unittest.equals('foo'));
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.ownerCustomerId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroupLabel = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupLabel
buildGoogleAdsSearchads360V0ResourcesAdGroupLabel() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupLabel();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupLabel < 3) {
    o.adGroup = 'foo';
    o.label = 'foo';
    o.ownerCustomerId = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupLabel--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupLabel(
  api.GoogleAdsSearchads360V0ResourcesAdGroupLabel o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupLabel < 3) {
    unittest.expect(o.adGroup!, unittest.equals('foo'));
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.ownerCustomerId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupLabel--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAgeRangeView = 0;
api.GoogleAdsSearchads360V0ResourcesAgeRangeView
buildGoogleAdsSearchads360V0ResourcesAgeRangeView() {
  final o = api.GoogleAdsSearchads360V0ResourcesAgeRangeView();
  buildCounterGoogleAdsSearchads360V0ResourcesAgeRangeView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAgeRangeView < 3) {
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAgeRangeView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAgeRangeView(
  api.GoogleAdsSearchads360V0ResourcesAgeRangeView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAgeRangeView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAgeRangeView < 3) {
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAgeRangeView--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAsset = 0;
api.GoogleAdsSearchads360V0ResourcesAsset
buildGoogleAdsSearchads360V0ResourcesAsset() {
  final o = api.GoogleAdsSearchads360V0ResourcesAsset();
  buildCounterGoogleAdsSearchads360V0ResourcesAsset++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAsset < 3) {
    o.callAsset = buildGoogleAdsSearchads360V0CommonUnifiedCallAsset();
    o.callToActionAsset = buildGoogleAdsSearchads360V0CommonCallToActionAsset();
    o.calloutAsset = buildGoogleAdsSearchads360V0CommonUnifiedCalloutAsset();
    o.creationTime = 'foo';
    o.engineStatus = 'foo';
    o.finalUrls = buildUnnamed27();
    o.id = 'foo';
    o.imageAsset = buildGoogleAdsSearchads360V0CommonImageAsset();
    o.lastModifiedTime = 'foo';
    o.locationAsset = buildGoogleAdsSearchads360V0CommonUnifiedLocationAsset();
    o.mobileAppAsset = buildGoogleAdsSearchads360V0CommonMobileAppAsset();
    o.name = 'foo';
    o.pageFeedAsset = buildGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset();
    o.resourceName = 'foo';
    o.sitelinkAsset = buildGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset();
    o.status = 'foo';
    o.textAsset = buildGoogleAdsSearchads360V0CommonTextAsset();
    o.trackingUrlTemplate = 'foo';
    o.type = 'foo';
    o.youtubeVideoAsset = buildGoogleAdsSearchads360V0CommonYoutubeVideoAsset();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAsset(
  api.GoogleAdsSearchads360V0ResourcesAsset o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAsset++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAsset < 3) {
    checkGoogleAdsSearchads360V0CommonUnifiedCallAsset(o.callAsset!);
    checkGoogleAdsSearchads360V0CommonCallToActionAsset(o.callToActionAsset!);
    checkGoogleAdsSearchads360V0CommonUnifiedCalloutAsset(o.calloutAsset!);
    unittest.expect(o.creationTime!, unittest.equals('foo'));
    unittest.expect(o.engineStatus!, unittest.equals('foo'));
    checkUnnamed27(o.finalUrls!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonImageAsset(o.imageAsset!);
    unittest.expect(o.lastModifiedTime!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonUnifiedLocationAsset(o.locationAsset!);
    checkGoogleAdsSearchads360V0CommonMobileAppAsset(o.mobileAppAsset!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset(o.pageFeedAsset!);
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset(o.sitelinkAsset!);
    unittest.expect(o.status!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonTextAsset(o.textAsset!);
    unittest.expect(o.trackingUrlTemplate!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonYoutubeVideoAsset(o.youtubeVideoAsset!);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAsset--;
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

core.int buildCounterGoogleAdsSearchads360V0ResourcesAssetGroup = 0;
api.GoogleAdsSearchads360V0ResourcesAssetGroup
buildGoogleAdsSearchads360V0ResourcesAssetGroup() {
  final o = api.GoogleAdsSearchads360V0ResourcesAssetGroup();
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroup++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetGroup < 3) {
    o.adStrength = 'foo';
    o.campaign = 'foo';
    o.finalMobileUrls = buildUnnamed28();
    o.finalUrls = buildUnnamed29();
    o.id = 'foo';
    o.name = 'foo';
    o.path1 = 'foo';
    o.path2 = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroup--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAssetGroup(
  api.GoogleAdsSearchads360V0ResourcesAssetGroup o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroup++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetGroup < 3) {
    unittest.expect(o.adStrength!, unittest.equals('foo'));
    unittest.expect(o.campaign!, unittest.equals('foo'));
    checkUnnamed28(o.finalMobileUrls!);
    checkUnnamed29(o.finalUrls!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.path1!, unittest.equals('foo'));
    unittest.expect(o.path2!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroup--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAsset = 0;
api.GoogleAdsSearchads360V0ResourcesAssetGroupAsset
buildGoogleAdsSearchads360V0ResourcesAssetGroupAsset() {
  final o = api.GoogleAdsSearchads360V0ResourcesAssetGroupAsset();
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAsset++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAsset < 3) {
    o.asset = 'foo';
    o.assetGroup = 'foo';
    o.fieldType = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAssetGroupAsset(
  api.GoogleAdsSearchads360V0ResourcesAssetGroupAsset o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAsset++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAsset < 3) {
    unittest.expect(o.asset!, unittest.equals('foo'));
    unittest.expect(o.assetGroup!, unittest.equals('foo'));
    unittest.expect(o.fieldType!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAsset--;
}

core.List<api.GoogleAdsSearchads360V0CommonAssetUsage> buildUnnamed30() => [
  buildGoogleAdsSearchads360V0CommonAssetUsage(),
  buildGoogleAdsSearchads360V0CommonAssetUsage(),
];

void checkUnnamed30(core.List<api.GoogleAdsSearchads360V0CommonAssetUsage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonAssetUsage(o[0]);
  checkGoogleAdsSearchads360V0CommonAssetUsage(o[1]);
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData = 0;
api.GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData
buildGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData();
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData <
      3) {
    o.assetCombinationServedAssets = buildUnnamed30();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData(
  api.GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData <
      3) {
    checkUnnamed30(o.assetCombinationServedAssets!);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter = 0;
api.GoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter
buildGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter() {
  final o = api.GoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter();
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter <
      3) {
    o.assetGroup = 'foo';
    o.caseValue =
        buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension();
    o.id = 'foo';
    o.parentListingGroupFilter = 'foo';
    o.path =
        buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath();
    o.resourceName = 'foo';
    o.type = 'foo';
    o.vertical = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter(
  api.GoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter <
      3) {
    unittest.expect(o.assetGroup!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension(
      o.caseValue!,
    );
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.parentListingGroupFilter!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath(
      o.path!,
    );
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.vertical!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupSignal = 0;
api.GoogleAdsSearchads360V0ResourcesAssetGroupSignal
buildGoogleAdsSearchads360V0ResourcesAssetGroupSignal() {
  final o = api.GoogleAdsSearchads360V0ResourcesAssetGroupSignal();
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupSignal++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupSignal < 3) {
    o.assetGroup = 'foo';
    o.audience = buildGoogleAdsSearchads360V0CommonAudienceInfo();
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupSignal--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAssetGroupSignal(
  api.GoogleAdsSearchads360V0ResourcesAssetGroupSignal o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupSignal++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupSignal < 3) {
    unittest.expect(o.assetGroup!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonAudienceInfo(o.audience!);
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupSignal--;
}

core.List<api.GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData>
buildUnnamed31() => [
  buildGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData(),
  buildGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData(),
];

void checkUnnamed31(
  core.List<api.GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData(o[0]);
  checkGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData(o[1]);
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView = 0;
api.GoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView
buildGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView() {
  final o = api.GoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView();
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView <
      3) {
    o.assetGroupTopCombinations = buildUnnamed31();
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView(
  api.GoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView <
      3) {
    checkUnnamed31(o.assetGroupTopCombinations!);
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAssetSet = 0;
api.GoogleAdsSearchads360V0ResourcesAssetSet
buildGoogleAdsSearchads360V0ResourcesAssetSet() {
  final o = api.GoogleAdsSearchads360V0ResourcesAssetSet();
  buildCounterGoogleAdsSearchads360V0ResourcesAssetSet++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetSet < 3) {
    o.id = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetSet--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAssetSet(
  api.GoogleAdsSearchads360V0ResourcesAssetSet o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAssetSet++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetSet < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetSet--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAssetSetAsset = 0;
api.GoogleAdsSearchads360V0ResourcesAssetSetAsset
buildGoogleAdsSearchads360V0ResourcesAssetSetAsset() {
  final o = api.GoogleAdsSearchads360V0ResourcesAssetSetAsset();
  buildCounterGoogleAdsSearchads360V0ResourcesAssetSetAsset++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetSetAsset < 3) {
    o.asset = 'foo';
    o.assetSet = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetSetAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAssetSetAsset(
  api.GoogleAdsSearchads360V0ResourcesAssetSetAsset o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAssetSetAsset++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAssetSetAsset < 3) {
    unittest.expect(o.asset!, unittest.equals('foo'));
    unittest.expect(o.assetSet!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAssetSetAsset--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAudience = 0;
api.GoogleAdsSearchads360V0ResourcesAudience
buildGoogleAdsSearchads360V0ResourcesAudience() {
  final o = api.GoogleAdsSearchads360V0ResourcesAudience();
  buildCounterGoogleAdsSearchads360V0ResourcesAudience++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAudience < 3) {
    o.description = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAudience--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAudience(
  api.GoogleAdsSearchads360V0ResourcesAudience o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesAudience++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAudience < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAudience--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesBiddingStrategy = 0;
api.GoogleAdsSearchads360V0ResourcesBiddingStrategy
buildGoogleAdsSearchads360V0ResourcesBiddingStrategy() {
  final o = api.GoogleAdsSearchads360V0ResourcesBiddingStrategy();
  buildCounterGoogleAdsSearchads360V0ResourcesBiddingStrategy++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesBiddingStrategy < 3) {
    o.campaignCount = 'foo';
    o.currencyCode = 'foo';
    o.effectiveCurrencyCode = 'foo';
    o.enhancedCpc = buildGoogleAdsSearchads360V0CommonEnhancedCpc();
    o.id = 'foo';
    o.maximizeConversionValue =
        buildGoogleAdsSearchads360V0CommonMaximizeConversionValue();
    o.maximizeConversions =
        buildGoogleAdsSearchads360V0CommonMaximizeConversions();
    o.name = 'foo';
    o.nonRemovedCampaignCount = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
    o.targetCpa = buildGoogleAdsSearchads360V0CommonTargetCpa();
    o.targetImpressionShare =
        buildGoogleAdsSearchads360V0CommonTargetImpressionShare();
    o.targetOutrankShare =
        buildGoogleAdsSearchads360V0CommonTargetOutrankShare();
    o.targetRoas = buildGoogleAdsSearchads360V0CommonTargetRoas();
    o.targetSpend = buildGoogleAdsSearchads360V0CommonTargetSpend();
    o.type = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesBiddingStrategy--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesBiddingStrategy(
  api.GoogleAdsSearchads360V0ResourcesBiddingStrategy o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesBiddingStrategy++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesBiddingStrategy < 3) {
    unittest.expect(o.campaignCount!, unittest.equals('foo'));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.effectiveCurrencyCode!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonEnhancedCpc(o.enhancedCpc!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonMaximizeConversionValue(
      o.maximizeConversionValue!,
    );
    checkGoogleAdsSearchads360V0CommonMaximizeConversions(
      o.maximizeConversions!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nonRemovedCampaignCount!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonTargetCpa(o.targetCpa!);
    checkGoogleAdsSearchads360V0CommonTargetImpressionShare(
      o.targetImpressionShare!,
    );
    checkGoogleAdsSearchads360V0CommonTargetOutrankShare(o.targetOutrankShare!);
    checkGoogleAdsSearchads360V0CommonTargetRoas(o.targetRoas!);
    checkGoogleAdsSearchads360V0CommonTargetSpend(o.targetSpend!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesBiddingStrategy--;
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleAdsSearchads360V0CommonFrequencyCapEntry>
buildUnnamed34() => [
  buildGoogleAdsSearchads360V0CommonFrequencyCapEntry(),
  buildGoogleAdsSearchads360V0CommonFrequencyCapEntry(),
];

void checkUnnamed34(
  core.List<api.GoogleAdsSearchads360V0CommonFrequencyCapEntry> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonFrequencyCapEntry(o[0]);
  checkGoogleAdsSearchads360V0CommonFrequencyCapEntry(o[1]);
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleAdsSearchads360V0CommonCustomParameter> buildUnnamed36() =>
    [
      buildGoogleAdsSearchads360V0CommonCustomParameter(),
      buildGoogleAdsSearchads360V0CommonCustomParameter(),
    ];

void checkUnnamed36(
  core.List<api.GoogleAdsSearchads360V0CommonCustomParameter> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonCustomParameter(o[0]);
  checkGoogleAdsSearchads360V0CommonCustomParameter(o[1]);
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCampaign = 0;
api.GoogleAdsSearchads360V0ResourcesCampaign
buildGoogleAdsSearchads360V0ResourcesCampaign() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaign();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaign++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaign < 3) {
    o.accessibleBiddingStrategy = 'foo';
    o.adServingOptimizationStatus = 'foo';
    o.advertisingChannelSubType = 'foo';
    o.advertisingChannelType = 'foo';
    o.biddingStrategy = 'foo';
    o.biddingStrategySystemStatus = 'foo';
    o.biddingStrategyType = 'foo';
    o.campaignBudget = 'foo';
    o.createTime = 'foo';
    o.creationTime = 'foo';
    o.dynamicSearchAdsSetting =
        buildGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting();
    o.effectiveLabels = buildUnnamed32();
    o.endDate = 'foo';
    o.engineId = 'foo';
    o.excludedParentAssetFieldTypes = buildUnnamed33();
    o.finalUrlSuffix = 'foo';
    o.frequencyCaps = buildUnnamed34();
    o.geoTargetTypeSetting =
        buildGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting();
    o.id = 'foo';
    o.labels = buildUnnamed35();
    o.lastModifiedTime = 'foo';
    o.manualCpa = buildGoogleAdsSearchads360V0CommonManualCpa();
    o.manualCpc = buildGoogleAdsSearchads360V0CommonManualCpc();
    o.manualCpm = buildGoogleAdsSearchads360V0CommonManualCpm();
    o.maximizeConversionValue =
        buildGoogleAdsSearchads360V0CommonMaximizeConversionValue();
    o.maximizeConversions =
        buildGoogleAdsSearchads360V0CommonMaximizeConversions();
    o.name = 'foo';
    o.networkSettings =
        buildGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings();
    o.optimizationGoalSetting =
        buildGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting();
    o.percentCpc = buildGoogleAdsSearchads360V0CommonPercentCpc();
    o.realTimeBiddingSetting =
        buildGoogleAdsSearchads360V0CommonRealTimeBiddingSetting();
    o.resourceName = 'foo';
    o.selectiveOptimization =
        buildGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization();
    o.servingStatus = 'foo';
    o.shoppingSetting =
        buildGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting();
    o.startDate = 'foo';
    o.status = 'foo';
    o.targetCpa = buildGoogleAdsSearchads360V0CommonTargetCpa();
    o.targetCpm = buildGoogleAdsSearchads360V0CommonTargetCpm();
    o.targetImpressionShare =
        buildGoogleAdsSearchads360V0CommonTargetImpressionShare();
    o.targetRoas = buildGoogleAdsSearchads360V0CommonTargetRoas();
    o.targetSpend = buildGoogleAdsSearchads360V0CommonTargetSpend();
    o.trackingSetting =
        buildGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting();
    o.trackingUrlTemplate = 'foo';
    o.urlCustomParameters = buildUnnamed36();
    o.urlExpansionOptOut = true;
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaign--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaign(
  api.GoogleAdsSearchads360V0ResourcesCampaign o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaign++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaign < 3) {
    unittest.expect(o.accessibleBiddingStrategy!, unittest.equals('foo'));
    unittest.expect(o.adServingOptimizationStatus!, unittest.equals('foo'));
    unittest.expect(o.advertisingChannelSubType!, unittest.equals('foo'));
    unittest.expect(o.advertisingChannelType!, unittest.equals('foo'));
    unittest.expect(o.biddingStrategy!, unittest.equals('foo'));
    unittest.expect(o.biddingStrategySystemStatus!, unittest.equals('foo'));
    unittest.expect(o.biddingStrategyType!, unittest.equals('foo'));
    unittest.expect(o.campaignBudget!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.creationTime!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting(
      o.dynamicSearchAdsSetting!,
    );
    checkUnnamed32(o.effectiveLabels!);
    unittest.expect(o.endDate!, unittest.equals('foo'));
    unittest.expect(o.engineId!, unittest.equals('foo'));
    checkUnnamed33(o.excludedParentAssetFieldTypes!);
    unittest.expect(o.finalUrlSuffix!, unittest.equals('foo'));
    checkUnnamed34(o.frequencyCaps!);
    checkGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting(
      o.geoTargetTypeSetting!,
    );
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed35(o.labels!);
    unittest.expect(o.lastModifiedTime!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonManualCpa(o.manualCpa!);
    checkGoogleAdsSearchads360V0CommonManualCpc(o.manualCpc!);
    checkGoogleAdsSearchads360V0CommonManualCpm(o.manualCpm!);
    checkGoogleAdsSearchads360V0CommonMaximizeConversionValue(
      o.maximizeConversionValue!,
    );
    checkGoogleAdsSearchads360V0CommonMaximizeConversions(
      o.maximizeConversions!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings(
      o.networkSettings!,
    );
    checkGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting(
      o.optimizationGoalSetting!,
    );
    checkGoogleAdsSearchads360V0CommonPercentCpc(o.percentCpc!);
    checkGoogleAdsSearchads360V0CommonRealTimeBiddingSetting(
      o.realTimeBiddingSetting!,
    );
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization(
      o.selectiveOptimization!,
    );
    unittest.expect(o.servingStatus!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting(
      o.shoppingSetting!,
    );
    unittest.expect(o.startDate!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonTargetCpa(o.targetCpa!);
    checkGoogleAdsSearchads360V0CommonTargetCpm(o.targetCpm!);
    checkGoogleAdsSearchads360V0CommonTargetImpressionShare(
      o.targetImpressionShare!,
    );
    checkGoogleAdsSearchads360V0CommonTargetRoas(o.targetRoas!);
    checkGoogleAdsSearchads360V0CommonTargetSpend(o.targetSpend!);
    checkGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting(
      o.trackingSetting!,
    );
    unittest.expect(o.trackingUrlTemplate!, unittest.equals('foo'));
    checkUnnamed36(o.urlCustomParameters!);
    unittest.expect(o.urlExpansionOptOut!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaign--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCampaignAsset = 0;
api.GoogleAdsSearchads360V0ResourcesCampaignAsset
buildGoogleAdsSearchads360V0ResourcesCampaignAsset() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignAsset();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignAsset++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignAsset < 3) {
    o.asset = 'foo';
    o.campaign = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignAsset(
  api.GoogleAdsSearchads360V0ResourcesCampaignAsset o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignAsset++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignAsset < 3) {
    unittest.expect(o.asset!, unittest.equals('foo'));
    unittest.expect(o.campaign!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignAsset--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCampaignAssetSet = 0;
api.GoogleAdsSearchads360V0ResourcesCampaignAssetSet
buildGoogleAdsSearchads360V0ResourcesCampaignAssetSet() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignAssetSet();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignAssetSet++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignAssetSet < 3) {
    o.assetSet = 'foo';
    o.campaign = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignAssetSet--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignAssetSet(
  api.GoogleAdsSearchads360V0ResourcesCampaignAssetSet o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignAssetSet++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignAssetSet < 3) {
    unittest.expect(o.assetSet!, unittest.equals('foo'));
    unittest.expect(o.campaign!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignAssetSet--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCampaignAudienceView = 0;
api.GoogleAdsSearchads360V0ResourcesCampaignAudienceView
buildGoogleAdsSearchads360V0ResourcesCampaignAudienceView() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignAudienceView();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignAudienceView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignAudienceView < 3) {
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignAudienceView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignAudienceView(
  api.GoogleAdsSearchads360V0ResourcesCampaignAudienceView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignAudienceView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignAudienceView < 3) {
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignAudienceView--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCampaignBudget = 0;
api.GoogleAdsSearchads360V0ResourcesCampaignBudget
buildGoogleAdsSearchads360V0ResourcesCampaignBudget() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignBudget();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignBudget++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignBudget < 3) {
    o.amountMicros = 'foo';
    o.deliveryMethod = 'foo';
    o.period = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignBudget--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignBudget(
  api.GoogleAdsSearchads360V0ResourcesCampaignBudget o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignBudget++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignBudget < 3) {
    unittest.expect(o.amountMicros!, unittest.equals('foo'));
    unittest.expect(o.deliveryMethod!, unittest.equals('foo'));
    unittest.expect(o.period!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignBudget--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion = 0;
api.GoogleAdsSearchads360V0ResourcesCampaignCriterion
buildGoogleAdsSearchads360V0ResourcesCampaignCriterion() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignCriterion();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion < 3) {
    o.ageRange = buildGoogleAdsSearchads360V0CommonAgeRangeInfo();
    o.bidModifier = 42.0;
    o.criterionId = 'foo';
    o.device = buildGoogleAdsSearchads360V0CommonDeviceInfo();
    o.displayName = 'foo';
    o.gender = buildGoogleAdsSearchads360V0CommonGenderInfo();
    o.keyword = buildGoogleAdsSearchads360V0CommonKeywordInfo();
    o.language = buildGoogleAdsSearchads360V0CommonLanguageInfo();
    o.lastModifiedTime = 'foo';
    o.location = buildGoogleAdsSearchads360V0CommonLocationInfo();
    o.locationGroup = buildGoogleAdsSearchads360V0CommonLocationGroupInfo();
    o.negative = true;
    o.resourceName = 'foo';
    o.status = 'foo';
    o.type = 'foo';
    o.userList = buildGoogleAdsSearchads360V0CommonUserListInfo();
    o.webpage = buildGoogleAdsSearchads360V0CommonWebpageInfo();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignCriterion(
  api.GoogleAdsSearchads360V0ResourcesCampaignCriterion o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion < 3) {
    checkGoogleAdsSearchads360V0CommonAgeRangeInfo(o.ageRange!);
    unittest.expect(o.bidModifier!, unittest.equals(42.0));
    unittest.expect(o.criterionId!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonDeviceInfo(o.device!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonGenderInfo(o.gender!);
    checkGoogleAdsSearchads360V0CommonKeywordInfo(o.keyword!);
    checkGoogleAdsSearchads360V0CommonLanguageInfo(o.language!);
    unittest.expect(o.lastModifiedTime!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonLocationInfo(o.location!);
    checkGoogleAdsSearchads360V0CommonLocationGroupInfo(o.locationGroup!);
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonUserListInfo(o.userList!);
    checkGoogleAdsSearchads360V0CommonWebpageInfo(o.webpage!);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel = 0;
api.GoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel
buildGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel < 3) {
    o.campaign = 'foo';
    o.label = 'foo';
    o.ownerCustomerId = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel(
  api.GoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel < 3) {
    unittest.expect(o.campaign!, unittest.equals('foo'));
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.ownerCustomerId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCampaignLabel = 0;
api.GoogleAdsSearchads360V0ResourcesCampaignLabel
buildGoogleAdsSearchads360V0ResourcesCampaignLabel() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignLabel();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignLabel < 3) {
    o.campaign = 'foo';
    o.label = 'foo';
    o.ownerCustomerId = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignLabel--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignLabel(
  api.GoogleAdsSearchads360V0ResourcesCampaignLabel o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignLabel < 3) {
    unittest.expect(o.campaign!, unittest.equals('foo'));
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.ownerCustomerId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignLabel--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCartDataSalesView = 0;
api.GoogleAdsSearchads360V0ResourcesCartDataSalesView
buildGoogleAdsSearchads360V0ResourcesCartDataSalesView() {
  final o = api.GoogleAdsSearchads360V0ResourcesCartDataSalesView();
  buildCounterGoogleAdsSearchads360V0ResourcesCartDataSalesView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCartDataSalesView < 3) {
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCartDataSalesView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCartDataSalesView(
  api.GoogleAdsSearchads360V0ResourcesCartDataSalesView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCartDataSalesView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCartDataSalesView < 3) {
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCartDataSalesView--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesConversion = 0;
api.GoogleAdsSearchads360V0ResourcesConversion
buildGoogleAdsSearchads360V0ResourcesConversion() {
  final o = api.GoogleAdsSearchads360V0ResourcesConversion();
  buildCounterGoogleAdsSearchads360V0ResourcesConversion++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversion < 3) {
    o.adId = 'foo';
    o.advertiserConversionId = 'foo';
    o.assetFieldType = 'foo';
    o.assetId = 'foo';
    o.attributionType = 'foo';
    o.clickId = 'foo';
    o.conversionDateTime = 'foo';
    o.conversionLastModifiedDateTime = 'foo';
    o.conversionQuantity = 'foo';
    o.conversionRevenueMicros = 'foo';
    o.conversionVisitDateTime = 'foo';
    o.criterionId = 'foo';
    o.floodlightOrderId = 'foo';
    o.floodlightOriginalRevenue = 'foo';
    o.id = 'foo';
    o.merchantId = 'foo';
    o.productChannel = 'foo';
    o.productCountryCode = 'foo';
    o.productId = 'foo';
    o.productLanguageCode = 'foo';
    o.productStoreId = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
    o.visitId = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversion--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesConversion(
  api.GoogleAdsSearchads360V0ResourcesConversion o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversion++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversion < 3) {
    unittest.expect(o.adId!, unittest.equals('foo'));
    unittest.expect(o.advertiserConversionId!, unittest.equals('foo'));
    unittest.expect(o.assetFieldType!, unittest.equals('foo'));
    unittest.expect(o.assetId!, unittest.equals('foo'));
    unittest.expect(o.attributionType!, unittest.equals('foo'));
    unittest.expect(o.clickId!, unittest.equals('foo'));
    unittest.expect(o.conversionDateTime!, unittest.equals('foo'));
    unittest.expect(o.conversionLastModifiedDateTime!, unittest.equals('foo'));
    unittest.expect(o.conversionQuantity!, unittest.equals('foo'));
    unittest.expect(o.conversionRevenueMicros!, unittest.equals('foo'));
    unittest.expect(o.conversionVisitDateTime!, unittest.equals('foo'));
    unittest.expect(o.criterionId!, unittest.equals('foo'));
    unittest.expect(o.floodlightOrderId!, unittest.equals('foo'));
    unittest.expect(o.floodlightOriginalRevenue!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.merchantId!, unittest.equals('foo'));
    unittest.expect(o.productChannel!, unittest.equals('foo'));
    unittest.expect(o.productCountryCode!, unittest.equals('foo'));
    unittest.expect(o.productId!, unittest.equals('foo'));
    unittest.expect(o.productLanguageCode!, unittest.equals('foo'));
    unittest.expect(o.productStoreId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.visitId!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversion--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesConversionAction = 0;
api.GoogleAdsSearchads360V0ResourcesConversionAction
buildGoogleAdsSearchads360V0ResourcesConversionAction() {
  final o = api.GoogleAdsSearchads360V0ResourcesConversionAction();
  buildCounterGoogleAdsSearchads360V0ResourcesConversionAction++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionAction < 3) {
    o.appId = 'foo';
    o.attributionModelSettings =
        buildGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings();
    o.category = 'foo';
    o.clickThroughLookbackWindowDays = 'foo';
    o.creationTime = 'foo';
    o.floodlightSettings =
        buildGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings();
    o.id = 'foo';
    o.includeInClientAccountConversionsMetric = true;
    o.includeInConversionsMetric = true;
    o.name = 'foo';
    o.ownerCustomer = 'foo';
    o.primaryForGoal = true;
    o.resourceName = 'foo';
    o.status = 'foo';
    o.type = 'foo';
    o.valueSettings =
        buildGoogleAdsSearchads360V0ResourcesConversionActionValueSettings();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionAction--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesConversionAction(
  api.GoogleAdsSearchads360V0ResourcesConversionAction o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversionAction++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionAction < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings(
      o.attributionModelSettings!,
    );
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.clickThroughLookbackWindowDays!, unittest.equals('foo'));
    unittest.expect(o.creationTime!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings(
      o.floodlightSettings!,
    );
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(
      o.includeInClientAccountConversionsMetric!,
      unittest.isTrue,
    );
    unittest.expect(o.includeInConversionsMetric!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ownerCustomer!, unittest.equals('foo'));
    unittest.expect(o.primaryForGoal!, unittest.isTrue);
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesConversionActionValueSettings(
      o.valueSettings!,
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionAction--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariable =
    0;
api.GoogleAdsSearchads360V0ResourcesConversionCustomVariable
buildGoogleAdsSearchads360V0ResourcesConversionCustomVariable() {
  final o = api.GoogleAdsSearchads360V0ResourcesConversionCustomVariable();
  buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariable++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariable <
      3) {
    o.cardinality = 'foo';
    o.customColumnIds = buildUnnamed37();
    o.family = 'foo';
    o.floodlightConversionCustomVariableInfo =
        buildGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo();
    o.id = 'foo';
    o.name = 'foo';
    o.ownerCustomer = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
    o.tag = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariable--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesConversionCustomVariable(
  api.GoogleAdsSearchads360V0ResourcesConversionCustomVariable o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariable++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariable <
      3) {
    unittest.expect(o.cardinality!, unittest.equals('foo'));
    checkUnnamed37(o.customColumnIds!);
    unittest.expect(o.family!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo(
      o.floodlightConversionCustomVariableInfo!,
    );
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ownerCustomer!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.tag!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionCustomVariable--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesConversionTrackingSetting =
    0;
api.GoogleAdsSearchads360V0ResourcesConversionTrackingSetting
buildGoogleAdsSearchads360V0ResourcesConversionTrackingSetting() {
  final o = api.GoogleAdsSearchads360V0ResourcesConversionTrackingSetting();
  buildCounterGoogleAdsSearchads360V0ResourcesConversionTrackingSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionTrackingSetting <
      3) {
    o.acceptedCustomerDataTerms = true;
    o.conversionTrackingId = 'foo';
    o.conversionTrackingStatus = 'foo';
    o.crossAccountConversionTrackingId = 'foo';
    o.enhancedConversionsForLeadsEnabled = true;
    o.googleAdsConversionCustomer = 'foo';
    o.googleAdsCrossAccountConversionTrackingId = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionTrackingSetting--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesConversionTrackingSetting(
  api.GoogleAdsSearchads360V0ResourcesConversionTrackingSetting o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversionTrackingSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionTrackingSetting <
      3) {
    unittest.expect(o.acceptedCustomerDataTerms!, unittest.isTrue);
    unittest.expect(o.conversionTrackingId!, unittest.equals('foo'));
    unittest.expect(o.conversionTrackingStatus!, unittest.equals('foo'));
    unittest.expect(
      o.crossAccountConversionTrackingId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enhancedConversionsForLeadsEnabled!, unittest.isTrue);
    unittest.expect(o.googleAdsConversionCustomer!, unittest.equals('foo'));
    unittest.expect(
      o.googleAdsCrossAccountConversionTrackingId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionTrackingSetting--;
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCustomColumn = 0;
api.GoogleAdsSearchads360V0ResourcesCustomColumn
buildGoogleAdsSearchads360V0ResourcesCustomColumn() {
  final o = api.GoogleAdsSearchads360V0ResourcesCustomColumn();
  buildCounterGoogleAdsSearchads360V0ResourcesCustomColumn++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomColumn < 3) {
    o.description = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.queryable = true;
    o.referencedSystemColumns = buildUnnamed38();
    o.referencesAttributes = true;
    o.referencesMetrics = true;
    o.renderType = 'foo';
    o.resourceName = 'foo';
    o.valueType = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomColumn--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCustomColumn(
  api.GoogleAdsSearchads360V0ResourcesCustomColumn o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCustomColumn++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomColumn < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.queryable!, unittest.isTrue);
    checkUnnamed38(o.referencedSystemColumns!);
    unittest.expect(o.referencesAttributes!, unittest.isTrue);
    unittest.expect(o.referencesMetrics!, unittest.isTrue);
    unittest.expect(o.renderType!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.valueType!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomColumn--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCustomer = 0;
api.GoogleAdsSearchads360V0ResourcesCustomer
buildGoogleAdsSearchads360V0ResourcesCustomer() {
  final o = api.GoogleAdsSearchads360V0ResourcesCustomer();
  buildCounterGoogleAdsSearchads360V0ResourcesCustomer++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomer < 3) {
    o.accountLevel = 'foo';
    o.accountStatus = 'foo';
    o.accountType = 'foo';
    o.associateManagerDescriptiveName = 'foo';
    o.associateManagerId = 'foo';
    o.autoTaggingEnabled = true;
    o.conversionTrackingSetting =
        buildGoogleAdsSearchads360V0ResourcesConversionTrackingSetting();
    o.creationTime = 'foo';
    o.currencyCode = 'foo';
    o.descriptiveName = 'foo';
    o.doubleClickCampaignManagerSetting =
        buildGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting();
    o.engineId = 'foo';
    o.finalUrlSuffix = 'foo';
    o.id = 'foo';
    o.lastModifiedTime = 'foo';
    o.manager = true;
    o.managerDescriptiveName = 'foo';
    o.managerId = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
    o.subManagerDescriptiveName = 'foo';
    o.subManagerId = 'foo';
    o.timeZone = 'foo';
    o.trackingUrlTemplate = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomer--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCustomer(
  api.GoogleAdsSearchads360V0ResourcesCustomer o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCustomer++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomer < 3) {
    unittest.expect(o.accountLevel!, unittest.equals('foo'));
    unittest.expect(o.accountStatus!, unittest.equals('foo'));
    unittest.expect(o.accountType!, unittest.equals('foo'));
    unittest.expect(o.associateManagerDescriptiveName!, unittest.equals('foo'));
    unittest.expect(o.associateManagerId!, unittest.equals('foo'));
    unittest.expect(o.autoTaggingEnabled!, unittest.isTrue);
    checkGoogleAdsSearchads360V0ResourcesConversionTrackingSetting(
      o.conversionTrackingSetting!,
    );
    unittest.expect(o.creationTime!, unittest.equals('foo'));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.descriptiveName!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting(
      o.doubleClickCampaignManagerSetting!,
    );
    unittest.expect(o.engineId!, unittest.equals('foo'));
    unittest.expect(o.finalUrlSuffix!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime!, unittest.equals('foo'));
    unittest.expect(o.manager!, unittest.isTrue);
    unittest.expect(o.managerDescriptiveName!, unittest.equals('foo'));
    unittest.expect(o.managerId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.subManagerDescriptiveName!, unittest.equals('foo'));
    unittest.expect(o.subManagerId!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
    unittest.expect(o.trackingUrlTemplate!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomer--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCustomerAsset = 0;
api.GoogleAdsSearchads360V0ResourcesCustomerAsset
buildGoogleAdsSearchads360V0ResourcesCustomerAsset() {
  final o = api.GoogleAdsSearchads360V0ResourcesCustomerAsset();
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerAsset++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomerAsset < 3) {
    o.asset = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerAsset--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCustomerAsset(
  api.GoogleAdsSearchads360V0ResourcesCustomerAsset o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerAsset++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomerAsset < 3) {
    unittest.expect(o.asset!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerAsset--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCustomerAssetSet = 0;
api.GoogleAdsSearchads360V0ResourcesCustomerAssetSet
buildGoogleAdsSearchads360V0ResourcesCustomerAssetSet() {
  final o = api.GoogleAdsSearchads360V0ResourcesCustomerAssetSet();
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerAssetSet++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomerAssetSet < 3) {
    o.assetSet = 'foo';
    o.customer = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerAssetSet--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCustomerAssetSet(
  api.GoogleAdsSearchads360V0ResourcesCustomerAssetSet o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerAssetSet++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomerAssetSet < 3) {
    unittest.expect(o.assetSet!, unittest.equals('foo'));
    unittest.expect(o.customer!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerAssetSet--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCustomerClient = 0;
api.GoogleAdsSearchads360V0ResourcesCustomerClient
buildGoogleAdsSearchads360V0ResourcesCustomerClient() {
  final o = api.GoogleAdsSearchads360V0ResourcesCustomerClient();
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerClient++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomerClient < 3) {
    o.appliedLabels = buildUnnamed39();
    o.clientCustomer = 'foo';
    o.currencyCode = 'foo';
    o.descriptiveName = 'foo';
    o.hidden = true;
    o.id = 'foo';
    o.level = 'foo';
    o.manager = true;
    o.resourceName = 'foo';
    o.status = 'foo';
    o.testAccount = true;
    o.timeZone = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerClient--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCustomerClient(
  api.GoogleAdsSearchads360V0ResourcesCustomerClient o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerClient++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomerClient < 3) {
    checkUnnamed39(o.appliedLabels!);
    unittest.expect(o.clientCustomer!, unittest.equals('foo'));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.descriptiveName!, unittest.equals('foo'));
    unittest.expect(o.hidden!, unittest.isTrue);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.level!, unittest.equals('foo'));
    unittest.expect(o.manager!, unittest.isTrue);
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.testAccount!, unittest.isTrue);
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerClient--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCustomerManagerLink = 0;
api.GoogleAdsSearchads360V0ResourcesCustomerManagerLink
buildGoogleAdsSearchads360V0ResourcesCustomerManagerLink() {
  final o = api.GoogleAdsSearchads360V0ResourcesCustomerManagerLink();
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerManagerLink++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomerManagerLink < 3) {
    o.managerCustomer = 'foo';
    o.managerLinkId = 'foo';
    o.resourceName = 'foo';
    o.startTime = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerManagerLink--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCustomerManagerLink(
  api.GoogleAdsSearchads360V0ResourcesCustomerManagerLink o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerManagerLink++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomerManagerLink < 3) {
    unittest.expect(o.managerCustomer!, unittest.equals('foo'));
    unittest.expect(o.managerLinkId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerManagerLink--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting =
    0;
api.GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting
buildGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting();
  buildCounterGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting <
      3) {
    o.advertiserId = 'foo';
    o.networkId = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting(
  api.GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting <
      3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    unittest.expect(o.networkId!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView = 0;
api.GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView
buildGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView();
  buildCounterGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView <
      3) {
    o.landingPage = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView(
  api.GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView <
      3) {
    unittest.expect(o.landingPage!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesGenderView = 0;
api.GoogleAdsSearchads360V0ResourcesGenderView
buildGoogleAdsSearchads360V0ResourcesGenderView() {
  final o = api.GoogleAdsSearchads360V0ResourcesGenderView();
  buildCounterGoogleAdsSearchads360V0ResourcesGenderView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesGenderView < 3) {
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesGenderView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesGenderView(
  api.GoogleAdsSearchads360V0ResourcesGenderView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesGenderView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesGenderView < 3) {
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesGenderView--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesGeoTargetConstant = 0;
api.GoogleAdsSearchads360V0ResourcesGeoTargetConstant
buildGoogleAdsSearchads360V0ResourcesGeoTargetConstant() {
  final o = api.GoogleAdsSearchads360V0ResourcesGeoTargetConstant();
  buildCounterGoogleAdsSearchads360V0ResourcesGeoTargetConstant++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesGeoTargetConstant < 3) {
    o.canonicalName = 'foo';
    o.countryCode = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.parentGeoTarget = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
    o.targetType = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesGeoTargetConstant--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesGeoTargetConstant(
  api.GoogleAdsSearchads360V0ResourcesGeoTargetConstant o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesGeoTargetConstant++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesGeoTargetConstant < 3) {
    unittest.expect(o.canonicalName!, unittest.equals('foo'));
    unittest.expect(o.countryCode!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parentGeoTarget!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.targetType!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesGeoTargetConstant--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesKeywordView = 0;
api.GoogleAdsSearchads360V0ResourcesKeywordView
buildGoogleAdsSearchads360V0ResourcesKeywordView() {
  final o = api.GoogleAdsSearchads360V0ResourcesKeywordView();
  buildCounterGoogleAdsSearchads360V0ResourcesKeywordView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesKeywordView < 3) {
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesKeywordView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesKeywordView(
  api.GoogleAdsSearchads360V0ResourcesKeywordView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesKeywordView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesKeywordView < 3) {
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesKeywordView--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesLabel = 0;
api.GoogleAdsSearchads360V0ResourcesLabel
buildGoogleAdsSearchads360V0ResourcesLabel() {
  final o = api.GoogleAdsSearchads360V0ResourcesLabel();
  buildCounterGoogleAdsSearchads360V0ResourcesLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesLabel < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
    o.textLabel = buildGoogleAdsSearchads360V0CommonTextLabel();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesLabel--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesLabel(
  api.GoogleAdsSearchads360V0ResourcesLabel o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesLabel++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesLabel < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    checkGoogleAdsSearchads360V0CommonTextLabel(o.textLabel!);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesLabel--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesLanguageConstant = 0;
api.GoogleAdsSearchads360V0ResourcesLanguageConstant
buildGoogleAdsSearchads360V0ResourcesLanguageConstant() {
  final o = api.GoogleAdsSearchads360V0ResourcesLanguageConstant();
  buildCounterGoogleAdsSearchads360V0ResourcesLanguageConstant++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesLanguageConstant < 3) {
    o.code = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.resourceName = 'foo';
    o.targetable = true;
  }
  buildCounterGoogleAdsSearchads360V0ResourcesLanguageConstant--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesLanguageConstant(
  api.GoogleAdsSearchads360V0ResourcesLanguageConstant o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesLanguageConstant++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesLanguageConstant < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.targetable!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesLanguageConstant--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension = 0;
api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension
buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension() {
  final o = api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension();
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension <
      3) {
    o.productBiddingCategory =
        buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory();
    o.productBrand =
        buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand();
    o.productChannel =
        buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel();
    o.productCondition =
        buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition();
    o.productCustomAttribute =
        buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute();
    o.productItemId =
        buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId();
    o.productType =
        buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension(
  api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension <
      3) {
    checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory(
      o.productBiddingCategory!,
    );
    checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand(
      o.productBrand!,
    );
    checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel(
      o.productChannel!,
    );
    checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition(
      o.productCondition!,
    );
    checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute(
      o.productCustomAttribute!,
    );
    checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId(
      o.productItemId!,
    );
    checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType(
      o.productType!,
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension--;
}

core.List<api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension>
buildUnnamed40() => [
  buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension(),
  buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension(),
];

void checkUnnamed40(
  core.List<api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension(o[0]);
  checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension(o[1]);
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath = 0;
api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath
buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath();
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath <
      3) {
    o.dimensions = buildUnnamed40();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath(
  api.GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath <
      3) {
    checkUnnamed40(o.dimensions!);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesLocationView = 0;
api.GoogleAdsSearchads360V0ResourcesLocationView
buildGoogleAdsSearchads360V0ResourcesLocationView() {
  final o = api.GoogleAdsSearchads360V0ResourcesLocationView();
  buildCounterGoogleAdsSearchads360V0ResourcesLocationView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesLocationView < 3) {
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesLocationView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesLocationView(
  api.GoogleAdsSearchads360V0ResourcesLocationView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesLocationView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesLocationView < 3) {
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesLocationView--;
}

core.int
buildCounterGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant = 0;
api.GoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant
buildGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant();
  buildCounterGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant <
      3) {
    o.countryCode = 'foo';
    o.id = 'foo';
    o.languageCode = 'foo';
    o.level = 'foo';
    o.localizedName = 'foo';
    o.productBiddingCategoryConstantParent = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant(
  api.GoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant <
      3) {
    unittest.expect(o.countryCode!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.level!, unittest.equals('foo'));
    unittest.expect(o.localizedName!, unittest.equals('foo'));
    unittest.expect(
      o.productBiddingCategoryConstantParent!,
      unittest.equals('foo'),
    );
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesProductGroupView = 0;
api.GoogleAdsSearchads360V0ResourcesProductGroupView
buildGoogleAdsSearchads360V0ResourcesProductGroupView() {
  final o = api.GoogleAdsSearchads360V0ResourcesProductGroupView();
  buildCounterGoogleAdsSearchads360V0ResourcesProductGroupView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesProductGroupView < 3) {
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesProductGroupView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesProductGroupView(
  api.GoogleAdsSearchads360V0ResourcesProductGroupView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesProductGroupView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesProductGroupView < 3) {
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesProductGroupView--;
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed42() => ['foo', 'foo'];

void checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed44() => ['foo', 'foo'];

void checkUnnamed44(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field = 0;
api.GoogleAdsSearchads360V0ResourcesSearchAds360Field
buildGoogleAdsSearchads360V0ResourcesSearchAds360Field() {
  final o = api.GoogleAdsSearchads360V0ResourcesSearchAds360Field();
  buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field < 3) {
    o.attributeResources = buildUnnamed41();
    o.category = 'foo';
    o.dataType = 'foo';
    o.enumValues = buildUnnamed42();
    o.filterable = true;
    o.isRepeated = true;
    o.metrics = buildUnnamed43();
    o.name = 'foo';
    o.resourceName = 'foo';
    o.segments = buildUnnamed44();
    o.selectable = true;
    o.selectableWith = buildUnnamed45();
    o.sortable = true;
    o.typeUrl = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesSearchAds360Field(
  api.GoogleAdsSearchads360V0ResourcesSearchAds360Field o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field < 3) {
    checkUnnamed41(o.attributeResources!);
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.dataType!, unittest.equals('foo'));
    checkUnnamed42(o.enumValues!);
    unittest.expect(o.filterable!, unittest.isTrue);
    unittest.expect(o.isRepeated!, unittest.isTrue);
    checkUnnamed43(o.metrics!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    checkUnnamed44(o.segments!);
    unittest.expect(o.selectable!, unittest.isTrue);
    checkUnnamed45(o.selectableWith!);
    unittest.expect(o.sortable!, unittest.isTrue);
    unittest.expect(o.typeUrl!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesShoppingPerformanceView =
    0;
api.GoogleAdsSearchads360V0ResourcesShoppingPerformanceView
buildGoogleAdsSearchads360V0ResourcesShoppingPerformanceView() {
  final o = api.GoogleAdsSearchads360V0ResourcesShoppingPerformanceView();
  buildCounterGoogleAdsSearchads360V0ResourcesShoppingPerformanceView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesShoppingPerformanceView < 3) {
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesShoppingPerformanceView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesShoppingPerformanceView(
  api.GoogleAdsSearchads360V0ResourcesShoppingPerformanceView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesShoppingPerformanceView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesShoppingPerformanceView < 3) {
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesShoppingPerformanceView--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesUserList = 0;
api.GoogleAdsSearchads360V0ResourcesUserList
buildGoogleAdsSearchads360V0ResourcesUserList() {
  final o = api.GoogleAdsSearchads360V0ResourcesUserList();
  buildCounterGoogleAdsSearchads360V0ResourcesUserList++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesUserList < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.resourceName = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesUserList--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesUserList(
  api.GoogleAdsSearchads360V0ResourcesUserList o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesUserList++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesUserList < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesUserList--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesUserLocationView = 0;
api.GoogleAdsSearchads360V0ResourcesUserLocationView
buildGoogleAdsSearchads360V0ResourcesUserLocationView() {
  final o = api.GoogleAdsSearchads360V0ResourcesUserLocationView();
  buildCounterGoogleAdsSearchads360V0ResourcesUserLocationView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesUserLocationView < 3) {
    o.countryCriterionId = 'foo';
    o.resourceName = 'foo';
    o.targetingLocation = true;
  }
  buildCounterGoogleAdsSearchads360V0ResourcesUserLocationView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesUserLocationView(
  api.GoogleAdsSearchads360V0ResourcesUserLocationView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesUserLocationView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesUserLocationView < 3) {
    unittest.expect(o.countryCriterionId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.targetingLocation!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesUserLocationView--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesVisit = 0;
api.GoogleAdsSearchads360V0ResourcesVisit
buildGoogleAdsSearchads360V0ResourcesVisit() {
  final o = api.GoogleAdsSearchads360V0ResourcesVisit();
  buildCounterGoogleAdsSearchads360V0ResourcesVisit++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesVisit < 3) {
    o.adId = 'foo';
    o.assetFieldType = 'foo';
    o.assetId = 'foo';
    o.clickId = 'foo';
    o.criterionId = 'foo';
    o.id = 'foo';
    o.merchantId = 'foo';
    o.productChannel = 'foo';
    o.productCountryCode = 'foo';
    o.productId = 'foo';
    o.productLanguageCode = 'foo';
    o.productStoreId = 'foo';
    o.resourceName = 'foo';
    o.visitDateTime = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesVisit--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesVisit(
  api.GoogleAdsSearchads360V0ResourcesVisit o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesVisit++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesVisit < 3) {
    unittest.expect(o.adId!, unittest.equals('foo'));
    unittest.expect(o.assetFieldType!, unittest.equals('foo'));
    unittest.expect(o.assetId!, unittest.equals('foo'));
    unittest.expect(o.clickId!, unittest.equals('foo'));
    unittest.expect(o.criterionId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.merchantId!, unittest.equals('foo'));
    unittest.expect(o.productChannel!, unittest.equals('foo'));
    unittest.expect(o.productCountryCode!, unittest.equals('foo'));
    unittest.expect(o.productId!, unittest.equals('foo'));
    unittest.expect(o.productLanguageCode!, unittest.equals('foo'));
    unittest.expect(o.productStoreId!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.visitDateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesVisit--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesWebpageView = 0;
api.GoogleAdsSearchads360V0ResourcesWebpageView
buildGoogleAdsSearchads360V0ResourcesWebpageView() {
  final o = api.GoogleAdsSearchads360V0ResourcesWebpageView();
  buildCounterGoogleAdsSearchads360V0ResourcesWebpageView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesWebpageView < 3) {
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesWebpageView--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesWebpageView(
  api.GoogleAdsSearchads360V0ResourcesWebpageView o,
) {
  buildCounterGoogleAdsSearchads360V0ResourcesWebpageView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesWebpageView < 3) {
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ResourcesWebpageView--;
}

core.int
buildCounterGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader = 0;
api.GoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader
buildGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader() {
  final o =
      api.GoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader();
  buildCounterGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader++;
  if (buildCounterGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader <
      3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader(
  api.GoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader o,
) {
  buildCounterGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader++;
  if (buildCounterGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader--;
}

core.int
buildCounterGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader = 0;
api.GoogleAdsSearchads360V0ServicesConversionCustomMetricHeader
buildGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader() {
  final o = api.GoogleAdsSearchads360V0ServicesConversionCustomMetricHeader();
  buildCounterGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader++;
  if (buildCounterGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader <
      3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader(
  api.GoogleAdsSearchads360V0ServicesConversionCustomMetricHeader o,
) {
  buildCounterGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader++;
  if (buildCounterGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader--;
}

core.int buildCounterGoogleAdsSearchads360V0ServicesCustomColumnHeader = 0;
api.GoogleAdsSearchads360V0ServicesCustomColumnHeader
buildGoogleAdsSearchads360V0ServicesCustomColumnHeader() {
  final o = api.GoogleAdsSearchads360V0ServicesCustomColumnHeader();
  buildCounterGoogleAdsSearchads360V0ServicesCustomColumnHeader++;
  if (buildCounterGoogleAdsSearchads360V0ServicesCustomColumnHeader < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.referencesMetrics = true;
  }
  buildCounterGoogleAdsSearchads360V0ServicesCustomColumnHeader--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesCustomColumnHeader(
  api.GoogleAdsSearchads360V0ServicesCustomColumnHeader o,
) {
  buildCounterGoogleAdsSearchads360V0ServicesCustomColumnHeader++;
  if (buildCounterGoogleAdsSearchads360V0ServicesCustomColumnHeader < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.referencesMetrics!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ServicesCustomColumnHeader--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse = 0;
api.GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse
buildGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse() {
  final o =
      api.GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse();
  buildCounterGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse++;
  if (buildCounterGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse <
      3) {
    o.resourceNames = buildUnnamed46();
  }
  buildCounterGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse(
  api.GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse o,
) {
  buildCounterGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse++;
  if (buildCounterGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse <
      3) {
    checkUnnamed46(o.resourceNames!);
  }
  buildCounterGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse--;
}

core.List<api.GoogleAdsSearchads360V0ResourcesCustomColumn> buildUnnamed47() =>
    [
      buildGoogleAdsSearchads360V0ResourcesCustomColumn(),
      buildGoogleAdsSearchads360V0ResourcesCustomColumn(),
    ];

void checkUnnamed47(
  core.List<api.GoogleAdsSearchads360V0ResourcesCustomColumn> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ResourcesCustomColumn(o[0]);
  checkGoogleAdsSearchads360V0ResourcesCustomColumn(o[1]);
}

core.int buildCounterGoogleAdsSearchads360V0ServicesListCustomColumnsResponse =
    0;
api.GoogleAdsSearchads360V0ServicesListCustomColumnsResponse
buildGoogleAdsSearchads360V0ServicesListCustomColumnsResponse() {
  final o = api.GoogleAdsSearchads360V0ServicesListCustomColumnsResponse();
  buildCounterGoogleAdsSearchads360V0ServicesListCustomColumnsResponse++;
  if (buildCounterGoogleAdsSearchads360V0ServicesListCustomColumnsResponse <
      3) {
    o.customColumns = buildUnnamed47();
  }
  buildCounterGoogleAdsSearchads360V0ServicesListCustomColumnsResponse--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesListCustomColumnsResponse(
  api.GoogleAdsSearchads360V0ServicesListCustomColumnsResponse o,
) {
  buildCounterGoogleAdsSearchads360V0ServicesListCustomColumnsResponse++;
  if (buildCounterGoogleAdsSearchads360V0ServicesListCustomColumnsResponse <
      3) {
    checkUnnamed47(o.customColumns!);
  }
  buildCounterGoogleAdsSearchads360V0ServicesListCustomColumnsResponse--;
}

core.int
buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader =
    0;
api.GoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader
buildGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader() {
  final o =
      api.GoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader();
  buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader++;
  if (buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader <
      3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader(
  api.GoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader o,
) {
  buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader++;
  if (buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader--;
}

core.int
buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader = 0;
api.GoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader
buildGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader() {
  final o = api.GoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader();
  buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader++;
  if (buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader <
      3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader(
  api.GoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader o,
) {
  buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader++;
  if (buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader--;
}

core.List<api.GoogleAdsSearchads360V0CommonValue> buildUnnamed48() => [
  buildGoogleAdsSearchads360V0CommonValue(),
  buildGoogleAdsSearchads360V0CommonValue(),
];

void checkUnnamed48(core.List<api.GoogleAdsSearchads360V0CommonValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonValue(o[0]);
  checkGoogleAdsSearchads360V0CommonValue(o[1]);
}

core.int buildCounterGoogleAdsSearchads360V0ServicesSearchAds360Row = 0;
api.GoogleAdsSearchads360V0ServicesSearchAds360Row
buildGoogleAdsSearchads360V0ServicesSearchAds360Row() {
  final o = api.GoogleAdsSearchads360V0ServicesSearchAds360Row();
  buildCounterGoogleAdsSearchads360V0ServicesSearchAds360Row++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchAds360Row < 3) {
    o.accessibleBiddingStrategy =
        buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy();
    o.adGroup = buildGoogleAdsSearchads360V0ResourcesAdGroup();
    o.adGroupAd = buildGoogleAdsSearchads360V0ResourcesAdGroupAd();
    o.adGroupAdEffectiveLabel =
        buildGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel();
    o.adGroupAdLabel = buildGoogleAdsSearchads360V0ResourcesAdGroupAdLabel();
    o.adGroupAsset = buildGoogleAdsSearchads360V0ResourcesAdGroupAsset();
    o.adGroupAssetSet = buildGoogleAdsSearchads360V0ResourcesAdGroupAssetSet();
    o.adGroupAudienceView =
        buildGoogleAdsSearchads360V0ResourcesAdGroupAudienceView();
    o.adGroupBidModifier =
        buildGoogleAdsSearchads360V0ResourcesAdGroupBidModifier();
    o.adGroupCriterion =
        buildGoogleAdsSearchads360V0ResourcesAdGroupCriterion();
    o.adGroupCriterionEffectiveLabel =
        buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel();
    o.adGroupCriterionLabel =
        buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel();
    o.adGroupEffectiveLabel =
        buildGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel();
    o.adGroupLabel = buildGoogleAdsSearchads360V0ResourcesAdGroupLabel();
    o.ageRangeView = buildGoogleAdsSearchads360V0ResourcesAgeRangeView();
    o.asset = buildGoogleAdsSearchads360V0ResourcesAsset();
    o.assetGroup = buildGoogleAdsSearchads360V0ResourcesAssetGroup();
    o.assetGroupAsset = buildGoogleAdsSearchads360V0ResourcesAssetGroupAsset();
    o.assetGroupListingGroupFilter =
        buildGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter();
    o.assetGroupSignal =
        buildGoogleAdsSearchads360V0ResourcesAssetGroupSignal();
    o.assetGroupTopCombinationView =
        buildGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView();
    o.assetSet = buildGoogleAdsSearchads360V0ResourcesAssetSet();
    o.assetSetAsset = buildGoogleAdsSearchads360V0ResourcesAssetSetAsset();
    o.audience = buildGoogleAdsSearchads360V0ResourcesAudience();
    o.biddingStrategy = buildGoogleAdsSearchads360V0ResourcesBiddingStrategy();
    o.campaign = buildGoogleAdsSearchads360V0ResourcesCampaign();
    o.campaignAsset = buildGoogleAdsSearchads360V0ResourcesCampaignAsset();
    o.campaignAssetSet =
        buildGoogleAdsSearchads360V0ResourcesCampaignAssetSet();
    o.campaignAudienceView =
        buildGoogleAdsSearchads360V0ResourcesCampaignAudienceView();
    o.campaignBudget = buildGoogleAdsSearchads360V0ResourcesCampaignBudget();
    o.campaignCriterion =
        buildGoogleAdsSearchads360V0ResourcesCampaignCriterion();
    o.campaignEffectiveLabel =
        buildGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel();
    o.campaignLabel = buildGoogleAdsSearchads360V0ResourcesCampaignLabel();
    o.cartDataSalesView =
        buildGoogleAdsSearchads360V0ResourcesCartDataSalesView();
    o.conversion = buildGoogleAdsSearchads360V0ResourcesConversion();
    o.conversionAction =
        buildGoogleAdsSearchads360V0ResourcesConversionAction();
    o.conversionCustomVariable =
        buildGoogleAdsSearchads360V0ResourcesConversionCustomVariable();
    o.customColumns = buildUnnamed48();
    o.customer = buildGoogleAdsSearchads360V0ResourcesCustomer();
    o.customerAsset = buildGoogleAdsSearchads360V0ResourcesCustomerAsset();
    o.customerAssetSet =
        buildGoogleAdsSearchads360V0ResourcesCustomerAssetSet();
    o.customerClient = buildGoogleAdsSearchads360V0ResourcesCustomerClient();
    o.customerManagerLink =
        buildGoogleAdsSearchads360V0ResourcesCustomerManagerLink();
    o.dynamicSearchAdsSearchTermView =
        buildGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView();
    o.genderView = buildGoogleAdsSearchads360V0ResourcesGenderView();
    o.geoTargetConstant =
        buildGoogleAdsSearchads360V0ResourcesGeoTargetConstant();
    o.keywordView = buildGoogleAdsSearchads360V0ResourcesKeywordView();
    o.label = buildGoogleAdsSearchads360V0ResourcesLabel();
    o.languageConstant =
        buildGoogleAdsSearchads360V0ResourcesLanguageConstant();
    o.locationView = buildGoogleAdsSearchads360V0ResourcesLocationView();
    o.metrics = buildGoogleAdsSearchads360V0CommonMetrics();
    o.productBiddingCategoryConstant =
        buildGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant();
    o.productGroupView =
        buildGoogleAdsSearchads360V0ResourcesProductGroupView();
    o.segments = buildGoogleAdsSearchads360V0CommonSegments();
    o.shoppingPerformanceView =
        buildGoogleAdsSearchads360V0ResourcesShoppingPerformanceView();
    o.userList = buildGoogleAdsSearchads360V0ResourcesUserList();
    o.userLocationView =
        buildGoogleAdsSearchads360V0ResourcesUserLocationView();
    o.visit = buildGoogleAdsSearchads360V0ResourcesVisit();
    o.webpageView = buildGoogleAdsSearchads360V0ResourcesWebpageView();
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchAds360Row--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesSearchAds360Row(
  api.GoogleAdsSearchads360V0ServicesSearchAds360Row o,
) {
  buildCounterGoogleAdsSearchads360V0ServicesSearchAds360Row++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchAds360Row < 3) {
    checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy(
      o.accessibleBiddingStrategy!,
    );
    checkGoogleAdsSearchads360V0ResourcesAdGroup(o.adGroup!);
    checkGoogleAdsSearchads360V0ResourcesAdGroupAd(o.adGroupAd!);
    checkGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel(
      o.adGroupAdEffectiveLabel!,
    );
    checkGoogleAdsSearchads360V0ResourcesAdGroupAdLabel(o.adGroupAdLabel!);
    checkGoogleAdsSearchads360V0ResourcesAdGroupAsset(o.adGroupAsset!);
    checkGoogleAdsSearchads360V0ResourcesAdGroupAssetSet(o.adGroupAssetSet!);
    checkGoogleAdsSearchads360V0ResourcesAdGroupAudienceView(
      o.adGroupAudienceView!,
    );
    checkGoogleAdsSearchads360V0ResourcesAdGroupBidModifier(
      o.adGroupBidModifier!,
    );
    checkGoogleAdsSearchads360V0ResourcesAdGroupCriterion(o.adGroupCriterion!);
    checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel(
      o.adGroupCriterionEffectiveLabel!,
    );
    checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel(
      o.adGroupCriterionLabel!,
    );
    checkGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel(
      o.adGroupEffectiveLabel!,
    );
    checkGoogleAdsSearchads360V0ResourcesAdGroupLabel(o.adGroupLabel!);
    checkGoogleAdsSearchads360V0ResourcesAgeRangeView(o.ageRangeView!);
    checkGoogleAdsSearchads360V0ResourcesAsset(o.asset!);
    checkGoogleAdsSearchads360V0ResourcesAssetGroup(o.assetGroup!);
    checkGoogleAdsSearchads360V0ResourcesAssetGroupAsset(o.assetGroupAsset!);
    checkGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter(
      o.assetGroupListingGroupFilter!,
    );
    checkGoogleAdsSearchads360V0ResourcesAssetGroupSignal(o.assetGroupSignal!);
    checkGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView(
      o.assetGroupTopCombinationView!,
    );
    checkGoogleAdsSearchads360V0ResourcesAssetSet(o.assetSet!);
    checkGoogleAdsSearchads360V0ResourcesAssetSetAsset(o.assetSetAsset!);
    checkGoogleAdsSearchads360V0ResourcesAudience(o.audience!);
    checkGoogleAdsSearchads360V0ResourcesBiddingStrategy(o.biddingStrategy!);
    checkGoogleAdsSearchads360V0ResourcesCampaign(o.campaign!);
    checkGoogleAdsSearchads360V0ResourcesCampaignAsset(o.campaignAsset!);
    checkGoogleAdsSearchads360V0ResourcesCampaignAssetSet(o.campaignAssetSet!);
    checkGoogleAdsSearchads360V0ResourcesCampaignAudienceView(
      o.campaignAudienceView!,
    );
    checkGoogleAdsSearchads360V0ResourcesCampaignBudget(o.campaignBudget!);
    checkGoogleAdsSearchads360V0ResourcesCampaignCriterion(
      o.campaignCriterion!,
    );
    checkGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel(
      o.campaignEffectiveLabel!,
    );
    checkGoogleAdsSearchads360V0ResourcesCampaignLabel(o.campaignLabel!);
    checkGoogleAdsSearchads360V0ResourcesCartDataSalesView(
      o.cartDataSalesView!,
    );
    checkGoogleAdsSearchads360V0ResourcesConversion(o.conversion!);
    checkGoogleAdsSearchads360V0ResourcesConversionAction(o.conversionAction!);
    checkGoogleAdsSearchads360V0ResourcesConversionCustomVariable(
      o.conversionCustomVariable!,
    );
    checkUnnamed48(o.customColumns!);
    checkGoogleAdsSearchads360V0ResourcesCustomer(o.customer!);
    checkGoogleAdsSearchads360V0ResourcesCustomerAsset(o.customerAsset!);
    checkGoogleAdsSearchads360V0ResourcesCustomerAssetSet(o.customerAssetSet!);
    checkGoogleAdsSearchads360V0ResourcesCustomerClient(o.customerClient!);
    checkGoogleAdsSearchads360V0ResourcesCustomerManagerLink(
      o.customerManagerLink!,
    );
    checkGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView(
      o.dynamicSearchAdsSearchTermView!,
    );
    checkGoogleAdsSearchads360V0ResourcesGenderView(o.genderView!);
    checkGoogleAdsSearchads360V0ResourcesGeoTargetConstant(
      o.geoTargetConstant!,
    );
    checkGoogleAdsSearchads360V0ResourcesKeywordView(o.keywordView!);
    checkGoogleAdsSearchads360V0ResourcesLabel(o.label!);
    checkGoogleAdsSearchads360V0ResourcesLanguageConstant(o.languageConstant!);
    checkGoogleAdsSearchads360V0ResourcesLocationView(o.locationView!);
    checkGoogleAdsSearchads360V0CommonMetrics(o.metrics!);
    checkGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant(
      o.productBiddingCategoryConstant!,
    );
    checkGoogleAdsSearchads360V0ResourcesProductGroupView(o.productGroupView!);
    checkGoogleAdsSearchads360V0CommonSegments(o.segments!);
    checkGoogleAdsSearchads360V0ResourcesShoppingPerformanceView(
      o.shoppingPerformanceView!,
    );
    checkGoogleAdsSearchads360V0ResourcesUserList(o.userList!);
    checkGoogleAdsSearchads360V0ResourcesUserLocationView(o.userLocationView!);
    checkGoogleAdsSearchads360V0ResourcesVisit(o.visit!);
    checkGoogleAdsSearchads360V0ResourcesWebpageView(o.webpageView!);
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchAds360Row--;
}

core.int
buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest = 0;
api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest
buildGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest() {
  final o =
      api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest();
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest <
      3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.query = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest(
  api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest o,
) {
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest <
      3) {
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest--;
}

core.List<api.GoogleAdsSearchads360V0ResourcesSearchAds360Field>
buildUnnamed49() => [
  buildGoogleAdsSearchads360V0ResourcesSearchAds360Field(),
  buildGoogleAdsSearchads360V0ResourcesSearchAds360Field(),
];

void checkUnnamed49(
  core.List<api.GoogleAdsSearchads360V0ResourcesSearchAds360Field> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ResourcesSearchAds360Field(o[0]);
  checkGoogleAdsSearchads360V0ResourcesSearchAds360Field(o[1]);
}

core.int
buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse = 0;
api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse
buildGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse() {
  final o =
      api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse();
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed49();
    o.totalResultsCount = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse(
  api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse o,
) {
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed49(o.results!);
    unittest.expect(o.totalResultsCount!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse--;
}

core.int buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Request =
    0;
api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Request
buildGoogleAdsSearchads360V0ServicesSearchSearchAds360Request() {
  final o = api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Request();
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Request++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Request <
      3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.query = 'foo';
    o.returnTotalResultsCount = true;
    o.summaryRowSetting = 'foo';
    o.validateOnly = true;
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Request--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesSearchSearchAds360Request(
  api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Request o,
) {
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Request++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Request <
      3) {
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.returnTotalResultsCount!, unittest.isTrue);
    unittest.expect(o.summaryRowSetting!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Request--;
}

core.List<api.GoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader>
buildUnnamed50() => [
  buildGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader(),
  buildGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader(),
];

void checkUnnamed50(
  core.List<api.GoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader(o[0]);
  checkGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader(o[1]);
}

core.List<api.GoogleAdsSearchads360V0ServicesConversionCustomMetricHeader>
buildUnnamed51() => [
  buildGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader(),
  buildGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader(),
];

void checkUnnamed51(
  core.List<api.GoogleAdsSearchads360V0ServicesConversionCustomMetricHeader> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader(o[0]);
  checkGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader(o[1]);
}

core.List<api.GoogleAdsSearchads360V0ServicesCustomColumnHeader>
buildUnnamed52() => [
  buildGoogleAdsSearchads360V0ServicesCustomColumnHeader(),
  buildGoogleAdsSearchads360V0ServicesCustomColumnHeader(),
];

void checkUnnamed52(
  core.List<api.GoogleAdsSearchads360V0ServicesCustomColumnHeader> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ServicesCustomColumnHeader(o[0]);
  checkGoogleAdsSearchads360V0ServicesCustomColumnHeader(o[1]);
}

core.List<api.GoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader>
buildUnnamed53() => [
  buildGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader(),
  buildGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader(),
];

void checkUnnamed53(
  core.List<
    api.GoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader(o[0]);
  checkGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader(o[1]);
}

core.List<api.GoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader>
buildUnnamed54() => [
  buildGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader(),
  buildGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader(),
];

void checkUnnamed54(
  core.List<api.GoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader(o[0]);
  checkGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader(o[1]);
}

core.List<api.GoogleAdsSearchads360V0ServicesSearchAds360Row>
buildUnnamed55() => [
  buildGoogleAdsSearchads360V0ServicesSearchAds360Row(),
  buildGoogleAdsSearchads360V0ServicesSearchAds360Row(),
];

void checkUnnamed55(
  core.List<api.GoogleAdsSearchads360V0ServicesSearchAds360Row> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ServicesSearchAds360Row(o[0]);
  checkGoogleAdsSearchads360V0ServicesSearchAds360Row(o[1]);
}

core.int buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Response =
    0;
api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Response
buildGoogleAdsSearchads360V0ServicesSearchSearchAds360Response() {
  final o = api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Response();
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Response++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Response <
      3) {
    o.conversionCustomDimensionHeaders = buildUnnamed50();
    o.conversionCustomMetricHeaders = buildUnnamed51();
    o.customColumnHeaders = buildUnnamed52();
    o.fieldMask = 'foo';
    o.nextPageToken = 'foo';
    o.rawEventConversionDimensionHeaders = buildUnnamed53();
    o.rawEventConversionMetricHeaders = buildUnnamed54();
    o.results = buildUnnamed55();
    o.summaryRow = buildGoogleAdsSearchads360V0ServicesSearchAds360Row();
    o.totalResultsCount = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Response--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesSearchSearchAds360Response(
  api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Response o,
) {
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Response++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Response <
      3) {
    checkUnnamed50(o.conversionCustomDimensionHeaders!);
    checkUnnamed51(o.conversionCustomMetricHeaders!);
    checkUnnamed52(o.customColumnHeaders!);
    unittest.expect(o.fieldMask!, unittest.equals('foo'));
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed53(o.rawEventConversionDimensionHeaders!);
    checkUnnamed54(o.rawEventConversionMetricHeaders!);
    checkUnnamed55(o.results!);
    checkGoogleAdsSearchads360V0ServicesSearchAds360Row(o.summaryRow!);
    unittest.expect(o.totalResultsCount!, unittest.equals('foo'));
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Response--;
}

void main() {
  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonAdScheduleInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonAdScheduleInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonAdScheduleInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonAdScheduleInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonAdTextAsset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonAdTextAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonAdTextAsset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonAdTextAsset(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonAgeRangeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonAgeRangeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonAgeRangeInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonAgeRangeInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonAssetInteractionTarget',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonAssetInteractionTarget();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonAssetInteractionTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonAssetInteractionTarget(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonAssetUsage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonAssetUsage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonAssetUsage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonAssetUsage(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonAudienceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonAudienceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonAudienceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonAudienceInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonBusinessProfileLocation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonBusinessProfileLocation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonBusinessProfileLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonBusinessProfileLocation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonCallToActionAsset',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonCallToActionAsset();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0CommonCallToActionAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonCallToActionAsset(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonCustomParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonCustomParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonCustomParameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonCustomParameter(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonDeviceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonDeviceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonDeviceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonDeviceInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonEnhancedCpc', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonEnhancedCpc();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonEnhancedCpc.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonEnhancedCpc(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonFrequencyCapEntry',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonFrequencyCapEntry();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0CommonFrequencyCapEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonFrequencyCapEntry(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonGenderInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonGenderInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonGenderInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonGenderInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonImageAsset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonImageAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonImageAsset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonImageAsset(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonImageDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonImageDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonImageDimension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonImageDimension(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonKeyword', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonKeyword();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonKeyword.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonKeyword(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonKeywordInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonKeywordInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonKeywordInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonKeywordInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonLanguageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonLanguageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonLanguageInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonLanguageInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonListingGroupInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonListingGroupInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0CommonListingGroupInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonListingGroupInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonLocationGroupInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonLocationGroupInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0CommonLocationGroupInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonLocationGroupInfo(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonLocationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonLocationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonLocationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonLocationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonManualCpa', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonManualCpa();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonManualCpa.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonManualCpa(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonManualCpc', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonManualCpc();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonManualCpc.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonManualCpc(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonManualCpm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonManualCpm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonManualCpm.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonManualCpm(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonMaximizeConversionValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonMaximizeConversionValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonMaximizeConversionValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonMaximizeConversionValue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonMaximizeConversions',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonMaximizeConversions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonMaximizeConversions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonMaximizeConversions(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonMetrics(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonMobileAppAsset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonMobileAppAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonMobileAppAsset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonMobileAppAsset(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonPercentCpc', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonPercentCpc();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonPercentCpc.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonPercentCpc(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonRealTimeBiddingSetting',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonRealTimeBiddingSetting();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonRealTimeBiddingSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonRealTimeBiddingSetting(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonSearchAds360TextAdInfo(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonSegments', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonSegments();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonSegments.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonSegments(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonTargetCpa', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonTargetCpa();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonTargetCpa.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonTargetCpa(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonTargetCpm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonTargetCpm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonTargetCpm.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonTargetCpm(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonTargetImpressionShare',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonTargetImpressionShare();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonTargetImpressionShare.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonTargetImpressionShare(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonTargetOutrankShare',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonTargetOutrankShare();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0CommonTargetOutrankShare.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonTargetOutrankShare(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonTargetRestriction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonTargetRestriction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0CommonTargetRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonTargetRestriction(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonTargetRoas', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonTargetRoas();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonTargetRoas.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonTargetRoas(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonTargetSpend', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonTargetSpend();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonTargetSpend.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonTargetSpend(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonTargetingSetting',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonTargetingSetting();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0CommonTargetingSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonTargetingSetting(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonTextAsset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonTextAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonTextAsset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonTextAsset(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonTextLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonTextLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonTextLabel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonTextLabel(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonUnifiedCallAsset',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonUnifiedCallAsset();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0CommonUnifiedCallAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonUnifiedCallAsset(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonUnifiedCalloutAsset',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonUnifiedCalloutAsset();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonUnifiedCalloutAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonUnifiedCalloutAsset(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonUnifiedLocationAsset',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonUnifiedLocationAsset();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonUnifiedLocationAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonUnifiedLocationAsset(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonUnifiedPageFeedAsset',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonUnifiedPageFeedAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonUnifiedPageFeedAsset(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonUnifiedSitelinkAsset',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonUnifiedSitelinkAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonUnifiedSitelinkAsset(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonUserListInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonUserListInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonUserListInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonUserListInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonValue(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonWebpageConditionInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonWebpageConditionInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0CommonWebpageConditionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonWebpageConditionInfo(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonWebpageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonWebpageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonWebpageInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0CommonWebpageInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0CommonYoutubeVideoAsset',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0CommonYoutubeVideoAsset();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0CommonYoutubeVideoAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0CommonYoutubeVideoAsset(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversionValue(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyMaximizeConversions(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetCpa(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetImpressionShare(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetRoas(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategyTargetSpend(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesConversionActionValueSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesConversionActionValueSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesConversionActionValueSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesConversionActionValueSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesConversionCustomVariableFloodlightConversionCustomVariableInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAccessibleBiddingStrategy(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAd.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesAd(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesAdGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAdGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAdGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesAdGroup(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAdGroupAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAdGroupAd.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesAdGroupAd(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAdGroupAdEffectiveLabel(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupAdLabel',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesAdGroupAdLabel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0ResourcesAdGroupAdLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAdGroupAdLabel(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupAsset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAdGroupAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAdGroupAsset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesAdGroupAsset(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupAssetSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesAdGroupAssetSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0ResourcesAdGroupAssetSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAdGroupAssetSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupAudienceView',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesAdGroupAudienceView();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAdGroupAudienceView.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAdGroupAudienceView(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupBidModifier',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesAdGroupBidModifier();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAdGroupBidModifier.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAdGroupBidModifier(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupCriterion',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesAdGroupCriterion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAdGroupCriterion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAdGroupCriterion(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionEffectiveLabel(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAdGroupEffectiveLabel(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAdGroupLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAdGroupLabel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesAdGroupLabel(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesAgeRangeView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAgeRangeView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAgeRangeView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesAgeRangeView(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesAsset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAsset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesAsset(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesAssetGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAssetGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAssetGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesAssetGroup(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAssetGroupAsset',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesAssetGroupAsset();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0ResourcesAssetGroupAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAssetGroupAsset(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAssetGroupSignal',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesAssetGroupSignal();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAssetGroupSignal.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAssetGroupSignal(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesAssetSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAssetSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAssetSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesAssetSet(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesAssetSetAsset',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesAssetSetAsset();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0ResourcesAssetSetAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesAssetSetAsset(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesAudience', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAudience();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAudience.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesAudience(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesBiddingStrategy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesBiddingStrategy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0ResourcesBiddingStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesBiddingStrategy(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesCampaign', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCampaign();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesCampaign.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesCampaign(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignAsset',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesCampaignAsset();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0ResourcesCampaignAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignAsset(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignAssetSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesCampaignAssetSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCampaignAssetSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignAssetSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignAudienceView',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesCampaignAudienceView();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCampaignAudienceView.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignAudienceView(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignBudget',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesCampaignBudget();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0ResourcesCampaignBudget.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignBudget(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignCriterion',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesCampaignCriterion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCampaignCriterion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignCriterion(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignEffectiveLabel(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignLabel',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesCampaignLabel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0ResourcesCampaignLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCampaignLabel(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCartDataSalesView',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesCartDataSalesView();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCartDataSalesView.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCartDataSalesView(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesConversion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesConversion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesConversion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesConversion(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesConversionAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesConversionAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesConversionAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesConversionAction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesConversionCustomVariable',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesConversionCustomVariable();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesConversionCustomVariable.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesConversionCustomVariable(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesConversionTrackingSetting',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesConversionTrackingSetting();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesConversionTrackingSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesConversionTrackingSetting(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesCustomColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCustomColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesCustomColumn.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesCustomColumn(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesCustomer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCustomer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesCustomer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesCustomer(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCustomerAsset',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesCustomerAsset();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0ResourcesCustomerAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCustomerAsset(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCustomerAssetSet',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesCustomerAssetSet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCustomerAssetSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCustomerAssetSet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCustomerClient',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesCustomerClient();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0ResourcesCustomerClient.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCustomerClient(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesCustomerManagerLink',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesCustomerManagerLink();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesCustomerManagerLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesCustomerManagerLink(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesGenderView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesGenderView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesGenderView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesGenderView(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesGeoTargetConstant',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesGeoTargetConstant();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesGeoTargetConstant.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesGeoTargetConstant(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesKeywordView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesKeywordView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesKeywordView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesKeywordView(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesLabel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesLabel(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesLanguageConstant',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesLanguageConstant();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesLanguageConstant.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesLanguageConstant(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimension(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesLocationView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesLocationView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesLocationView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesLocationView(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesProductGroupView',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesProductGroupView();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesProductGroupView.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesProductGroupView(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesSearchAds360Field',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesSearchAds360Field();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesSearchAds360Field.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesSearchAds360Field(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesShoppingPerformanceView',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ResourcesShoppingPerformanceView();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesShoppingPerformanceView.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesShoppingPerformanceView(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesUserList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesUserList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesUserList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesUserList(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ResourcesUserLocationView',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ResourcesUserLocationView();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ResourcesUserLocationView.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ResourcesUserLocationView(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesVisit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesVisit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesVisit.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesVisit(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesWebpageView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesWebpageView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesWebpageView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAdsSearchads360V0ResourcesWebpageView(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ServicesConversionCustomDimensionHeader(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ServicesConversionCustomMetricHeader',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ServicesConversionCustomMetricHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ServicesConversionCustomMetricHeader(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ServicesCustomColumnHeader',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ServicesCustomColumnHeader();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ServicesCustomColumnHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ServicesCustomColumnHeader(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ServicesListCustomColumnsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ServicesListCustomColumnsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ServicesListCustomColumnsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ServicesListCustomColumnsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ServicesRawEventConversionDimensionHeader(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ServicesRawEventConversionMetricHeader(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ServicesSearchAds360Row',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAdsSearchads360V0ServicesSearchAds360Row();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAdsSearchads360V0ServicesSearchAds360Row.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ServicesSearchAds360Row(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ServicesSearchSearchAds360Request',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ServicesSearchSearchAds360Request();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ServicesSearchSearchAds360Request.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ServicesSearchSearchAds360Request(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAdsSearchads360V0ServicesSearchSearchAds360Response',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAdsSearchads360V0ServicesSearchSearchAds360Response();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAdsSearchads360V0ServicesSearchSearchAds360Response.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAdsSearchads360V0ServicesSearchSearchAds360Response(od);
      });
    },
  );

  unittest.group('resource-CustomersResource', () {
    unittest.test('method--listAccessibleCustomers', () async {
      final mock = HttpServerMock();
      final res = api.SA360Api(mock).customers;
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
            path.substring(pathOffset, pathOffset + 36),
            unittest.equals('v0/customers:listAccessibleCustomers'),
          );
          pathOffset += 36;

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
            buildGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listAccessibleCustomers($fields: arg_$fields);
      checkGoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse(
        response
            as api.GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse,
      );
    });
  });

  unittest.group('resource-CustomersCustomColumnsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SA360Api(mock).customers.customColumns;
      final arg_resourceName = 'foo';
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
            unittest.equals('v0/'),
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
            buildGoogleAdsSearchads360V0ResourcesCustomColumn(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceName, $fields: arg_$fields);
      checkGoogleAdsSearchads360V0ResourcesCustomColumn(
        response as api.GoogleAdsSearchads360V0ResourcesCustomColumn,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SA360Api(mock).customers.customColumns;
      final arg_customerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v0/customers/'),
          );
          pathOffset += 13;
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
            buildGoogleAdsSearchads360V0ServicesListCustomColumnsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(arg_customerId, $fields: arg_$fields);
      checkGoogleAdsSearchads360V0ServicesListCustomColumnsResponse(
        response
            as api.GoogleAdsSearchads360V0ServicesListCustomColumnsResponse,
      );
    });
  });

  unittest.group('resource-CustomersSearchAds360Resource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.SA360Api(mock).customers.searchAds360;
      final arg_request =
          buildGoogleAdsSearchads360V0ServicesSearchSearchAds360Request();
      final arg_customerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleAdsSearchads360V0ServicesSearchSearchAds360Request.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAdsSearchads360V0ServicesSearchSearchAds360Request(obj);

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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v0/customers/'),
          );
          pathOffset += 13;
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
            buildGoogleAdsSearchads360V0ServicesSearchSearchAds360Response(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_request,
        arg_customerId,
        $fields: arg_$fields,
      );
      checkGoogleAdsSearchads360V0ServicesSearchSearchAds360Response(
        response
            as api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Response,
      );
    });
  });

  unittest.group('resource-SearchAds360FieldsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SA360Api(mock).searchAds360Fields;
      final arg_resourceName = 'foo';
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
            unittest.equals('v0/'),
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
            buildGoogleAdsSearchads360V0ResourcesSearchAds360Field(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceName, $fields: arg_$fields);
      checkGoogleAdsSearchads360V0ResourcesSearchAds360Field(
        response as api.GoogleAdsSearchads360V0ResourcesSearchAds360Field,
      );
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.SA360Api(mock).searchAds360Fields;
      final arg_request =
          buildGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest(
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
            path.substring(pathOffset, pathOffset + 28),
            unittest.equals('v0/searchAds360Fields:search'),
          );
          pathOffset += 28;

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
            buildGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(arg_request, $fields: arg_$fields);
      checkGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse(
        response
            as api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse,
      );
    });
  });
}
