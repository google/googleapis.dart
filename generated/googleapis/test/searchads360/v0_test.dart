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

import 'package:googleapis/searchads360/v0.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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
    api.GoogleAdsSearchads360V0CommonAgeRangeInfo o) {
  buildCounterGoogleAdsSearchads360V0CommonAgeRangeInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonAgeRangeInfo < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0CommonAgeRangeInfo--;
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
    api.GoogleAdsSearchads360V0CommonCustomParameter o) {
  buildCounterGoogleAdsSearchads360V0CommonCustomParameter++;
  if (buildCounterGoogleAdsSearchads360V0CommonCustomParameter < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0CommonDeviceInfo o) {
  buildCounterGoogleAdsSearchads360V0CommonDeviceInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonDeviceInfo < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0CommonEnhancedCpc o) {
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
    api.GoogleAdsSearchads360V0CommonFrequencyCapEntry o) {
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
    api.GoogleAdsSearchads360V0CommonGenderInfo o) {
  buildCounterGoogleAdsSearchads360V0CommonGenderInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonGenderInfo < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0CommonGenderInfo--;
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
    api.GoogleAdsSearchads360V0CommonKeywordInfo o) {
  buildCounterGoogleAdsSearchads360V0CommonKeywordInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonKeywordInfo < 3) {
    unittest.expect(
      o.matchType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0CommonLanguageInfo o) {
  buildCounterGoogleAdsSearchads360V0CommonLanguageInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonLanguageInfo < 3) {
    unittest.expect(
      o.languageConstant!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0CommonListingGroupInfo o) {
  buildCounterGoogleAdsSearchads360V0CommonListingGroupInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonListingGroupInfo < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0CommonListingGroupInfo--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo = 0;
api.GoogleAdsSearchads360V0CommonLocationGroupInfo
    buildGoogleAdsSearchads360V0CommonLocationGroupInfo() {
  final o = api.GoogleAdsSearchads360V0CommonLocationGroupInfo();
  buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo < 3) {
    o.feedItemSets = buildUnnamed0();
    o.geoTargetConstants = buildUnnamed1();
    o.radius = 'foo';
    o.radiusUnits = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonLocationGroupInfo(
    api.GoogleAdsSearchads360V0CommonLocationGroupInfo o) {
  buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonLocationGroupInfo < 3) {
    checkUnnamed0(o.feedItemSets!);
    checkUnnamed1(o.geoTargetConstants!);
    unittest.expect(
      o.radius!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.radiusUnits!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0CommonLocationInfo o) {
  buildCounterGoogleAdsSearchads360V0CommonLocationInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonLocationInfo < 3) {
    unittest.expect(
      o.geoTargetConstant!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0CommonManualCpa o) {
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
    api.GoogleAdsSearchads360V0CommonManualCpc o) {
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
    api.GoogleAdsSearchads360V0CommonManualCpm o) {
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
    api.GoogleAdsSearchads360V0CommonMaximizeConversionValue o) {
  buildCounterGoogleAdsSearchads360V0CommonMaximizeConversionValue++;
  if (buildCounterGoogleAdsSearchads360V0CommonMaximizeConversionValue < 3) {
    unittest.expect(
      o.cpcBidCeilingMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpcBidFloorMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetRoas!,
      unittest.equals(42.0),
    );
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
    api.GoogleAdsSearchads360V0CommonMaximizeConversions o) {
  buildCounterGoogleAdsSearchads360V0CommonMaximizeConversions++;
  if (buildCounterGoogleAdsSearchads360V0CommonMaximizeConversions < 3) {
    unittest.expect(
      o.cpcBidCeilingMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpcBidFloorMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCpaMicros!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0CommonMaximizeConversions--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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
    o.clicks = 'foo';
    o.clientAccountConversions = 42.0;
    o.clientAccountConversionsValue = 42.0;
    o.clientAccountViewThroughConversions = 'foo';
    o.contentBudgetLostImpressionShare = 42.0;
    o.contentImpressionShare = 42.0;
    o.contentRankLostImpressionShare = 42.0;
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
    o.crossDeviceConversionsValue = 42.0;
    o.ctr = 42.0;
    o.historicalCreativeQualityScore = 'foo';
    o.historicalLandingPageQualityScore = 'foo';
    o.historicalQualityScore = 'foo';
    o.historicalSearchPredictedCtr = 'foo';
    o.impressions = 'foo';
    o.interactionEventTypes = buildUnnamed2();
    o.interactionRate = 42.0;
    o.interactions = 'foo';
    o.invalidClickRate = 42.0;
    o.invalidClicks = 'foo';
    o.mobileFriendlyClicksPercentage = 42.0;
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
  }
  buildCounterGoogleAdsSearchads360V0CommonMetrics--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonMetrics(
    api.GoogleAdsSearchads360V0CommonMetrics o) {
  buildCounterGoogleAdsSearchads360V0CommonMetrics++;
  if (buildCounterGoogleAdsSearchads360V0CommonMetrics < 3) {
    unittest.expect(
      o.absoluteTopImpressionPercentage!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversions!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsByConversionDate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsFromClickToCall!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsFromDirections!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsFromInteractionsRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsFromInteractionsValuePerInteraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsFromMenu!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsFromOrder!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsFromOtherEngagement!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsFromStoreVisit!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsFromStoreWebsite!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsValueByConversionDate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allConversionsValuePerCost!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.averageCost!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.averageCpc!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.averageCpm!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.clicks!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientAccountConversions!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.clientAccountConversionsValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.clientAccountViewThroughConversions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentBudgetLostImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.contentImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.contentRankLostImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.conversions!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.conversionsByConversionDate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.conversionsFromInteractionsRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.conversionsFromInteractionsValuePerInteraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.conversionsValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.conversionsValueByConversionDate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.conversionsValuePerCost!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.costMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.costPerAllConversions!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.costPerConversion!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.costPerCurrentModelAttributedConversion!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.crossDeviceConversions!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.crossDeviceConversionsValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.ctr!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.historicalCreativeQualityScore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.historicalLandingPageQualityScore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.historicalQualityScore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.historicalSearchPredictedCtr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.impressions!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.interactionEventTypes!);
    unittest.expect(
      o.interactionRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.interactions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invalidClickRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.invalidClicks!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mobileFriendlyClicksPercentage!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.searchAbsoluteTopImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.searchBudgetLostAbsoluteTopImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.searchBudgetLostImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.searchBudgetLostTopImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.searchClickShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.searchExactMatchImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.searchImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.searchRankLostAbsoluteTopImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.searchRankLostImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.searchRankLostTopImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.searchTopImpressionShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.topImpressionPercentage!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.valuePerAllConversions!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.valuePerAllConversionsByConversionDate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.valuePerConversion!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.valuePerConversionsByConversionDate!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleAdsSearchads360V0CommonMetrics--;
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
    api.GoogleAdsSearchads360V0CommonPercentCpc o) {
  buildCounterGoogleAdsSearchads360V0CommonPercentCpc++;
  if (buildCounterGoogleAdsSearchads360V0CommonPercentCpc < 3) {
    unittest.expect(
      o.cpcBidCeilingMicros!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0CommonRealTimeBiddingSetting o) {
  buildCounterGoogleAdsSearchads360V0CommonRealTimeBiddingSetting++;
  if (buildCounterGoogleAdsSearchads360V0CommonRealTimeBiddingSetting < 3) {
    unittest.expect(o.optIn!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0CommonRealTimeBiddingSetting--;
}

core.int buildCounterGoogleAdsSearchads360V0CommonSegments = 0;
api.GoogleAdsSearchads360V0CommonSegments
    buildGoogleAdsSearchads360V0CommonSegments() {
  final o = api.GoogleAdsSearchads360V0CommonSegments();
  buildCounterGoogleAdsSearchads360V0CommonSegments++;
  if (buildCounterGoogleAdsSearchads360V0CommonSegments < 3) {
    o.conversionAction = 'foo';
    o.conversionActionCategory = 'foo';
    o.conversionActionName = 'foo';
    o.date = 'foo';
    o.dayOfWeek = 'foo';
    o.device = 'foo';
    o.month = 'foo';
    o.quarter = 'foo';
    o.week = 'foo';
    o.year = 42;
  }
  buildCounterGoogleAdsSearchads360V0CommonSegments--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonSegments(
    api.GoogleAdsSearchads360V0CommonSegments o) {
  buildCounterGoogleAdsSearchads360V0CommonSegments++;
  if (buildCounterGoogleAdsSearchads360V0CommonSegments < 3) {
    unittest.expect(
      o.conversionAction!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conversionActionCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conversionActionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.date!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dayOfWeek!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.device!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.month!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quarter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.week!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
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
    api.GoogleAdsSearchads360V0CommonTargetCpa o) {
  buildCounterGoogleAdsSearchads360V0CommonTargetCpa++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetCpa < 3) {
    unittest.expect(
      o.cpcBidCeilingMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpcBidFloorMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCpaMicros!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0CommonTargetCpm o) {
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
    api.GoogleAdsSearchads360V0CommonTargetImpressionShare o) {
  buildCounterGoogleAdsSearchads360V0CommonTargetImpressionShare++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetImpressionShare < 3) {
    unittest.expect(
      o.cpcBidCeilingMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationFractionMicros!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0CommonTargetOutrankShare o) {
  buildCounterGoogleAdsSearchads360V0CommonTargetOutrankShare++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetOutrankShare < 3) {
    unittest.expect(
      o.cpcBidCeilingMicros!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetOutrankShare--;
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
    api.GoogleAdsSearchads360V0CommonTargetRoas o) {
  buildCounterGoogleAdsSearchads360V0CommonTargetRoas++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetRoas < 3) {
    unittest.expect(
      o.cpcBidCeilingMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpcBidFloorMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetRoas!,
      unittest.equals(42.0),
    );
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
    api.GoogleAdsSearchads360V0CommonTargetSpend o) {
  buildCounterGoogleAdsSearchads360V0CommonTargetSpend++;
  if (buildCounterGoogleAdsSearchads360V0CommonTargetSpend < 3) {
    unittest.expect(
      o.cpcBidCeilingMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetSpendMicros!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0CommonTargetSpend--;
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
    api.GoogleAdsSearchads360V0CommonValue o) {
  buildCounterGoogleAdsSearchads360V0CommonValue++;
  if (buildCounterGoogleAdsSearchads360V0CommonValue < 3) {
    unittest.expect(o.booleanValue!, unittest.isTrue);
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.floatValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0CommonWebpageConditionInfo o) {
  buildCounterGoogleAdsSearchads360V0CommonWebpageConditionInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonWebpageConditionInfo < 3) {
    unittest.expect(
      o.argument!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0CommonWebpageConditionInfo--;
}

core.List<api.GoogleAdsSearchads360V0CommonWebpageConditionInfo>
    buildUnnamed3() => [
          buildGoogleAdsSearchads360V0CommonWebpageConditionInfo(),
          buildGoogleAdsSearchads360V0CommonWebpageConditionInfo(),
        ];

void checkUnnamed3(
    core.List<api.GoogleAdsSearchads360V0CommonWebpageConditionInfo> o) {
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
    o.conditions = buildUnnamed3();
    o.coveragePercentage = 42.0;
    o.criterionName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0CommonWebpageInfo--;
  return o;
}

void checkGoogleAdsSearchads360V0CommonWebpageInfo(
    api.GoogleAdsSearchads360V0CommonWebpageInfo o) {
  buildCounterGoogleAdsSearchads360V0CommonWebpageInfo++;
  if (buildCounterGoogleAdsSearchads360V0CommonWebpageInfo < 3) {
    checkUnnamed3(o.conditions!);
    unittest.expect(
      o.coveragePercentage!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.criterionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0CommonWebpageInfo--;
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
    api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo o) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo <
      3) {
    unittest.expect(
      o.qualityScore!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo--;
}

core.int
    buildCounterGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting =
    0;
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
    api.GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting <
      3) {
    unittest.expect(
      o.domainName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useSuppliedUrlsOnly!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting--;
}

core.int
    buildCounterGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting =
    0;
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
    api.GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting <
      3) {
    unittest.expect(
      o.negativeGeoTargetType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.positiveGeoTargetType!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings < 3) {
    unittest.expect(o.targetContentNetwork!, unittest.isTrue);
    unittest.expect(o.targetGoogleSearch!, unittest.isTrue);
    unittest.expect(o.targetPartnerSearchNetwork!, unittest.isTrue);
    unittest.expect(o.targetSearchNetwork!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings--;
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

core.int
    buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting =
    0;
api.GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting
    buildGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting() {
  final o =
      api.GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting <
      3) {
    o.optimizationGoalTypes = buildUnnamed4();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting(
    api.GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting <
      3) {
    checkUnnamed4(o.optimizationGoalTypes!);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting--;
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

core.int
    buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization =
    0;
api.GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization
    buildGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization <
      3) {
    o.conversionActions = buildUnnamed5();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization(
    api.GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization <
      3) {
    checkUnnamed5(o.conversionActions!);
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
    api.GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting < 3) {
    unittest.expect(
      o.campaignPriority!,
      unittest.equals(42),
    );
    unittest.expect(o.enableLocal!, unittest.isTrue);
    unittest.expect(
      o.feedLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.salesCountry!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting < 3) {
    unittest.expect(
      o.trackingUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting--;
}

core.int
    buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings =
    0;
api.GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings
    buildGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings() {
  final o = api
      .GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings();
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings <
      3) {
    o.attributionModel = 'foo';
    o.dataDrivenModelStatus = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings(
    api.GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings
        o) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings <
      3) {
    unittest.expect(
      o.attributionModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataDrivenModelStatus!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings o) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings <
      3) {
    unittest.expect(
      o.activityGroupTag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.activityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.activityTag!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings--;
}

core.int
    buildCounterGoogleAdsSearchads360V0ResourcesConversionActionValueSettings =
    0;
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
    api.GoogleAdsSearchads360V0ResourcesConversionActionValueSettings o) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionValueSettings++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionActionValueSettings <
      3) {
    unittest.expect(o.alwaysUseDefaultValue!, unittest.isTrue);
    unittest.expect(
      o.defaultCurrencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultValue!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionActionValueSettings--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroup = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroup
    buildGoogleAdsSearchads360V0ResourcesAdGroup() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroup();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroup++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroup < 3) {
    o.adRotationMode = 'foo';
    o.cpcBidMicros = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.resourceName = 'foo';
    o.status = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroup--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroup(
    api.GoogleAdsSearchads360V0ResourcesAdGroup o) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroup++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroup < 3) {
    unittest.expect(
      o.adRotationMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpcBidMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroup--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier = 0;
api.GoogleAdsSearchads360V0ResourcesAdGroupBidModifier
    buildGoogleAdsSearchads360V0ResourcesAdGroupBidModifier() {
  final o = api.GoogleAdsSearchads360V0ResourcesAdGroupBidModifier();
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier < 3) {
    o.bidModifier = 42.0;
    o.resourceName = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupBidModifier(
    api.GoogleAdsSearchads360V0ResourcesAdGroupBidModifier o) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier < 3) {
    unittest.expect(
      o.bidModifier!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupBidModifier--;
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
    o.criterionId = 'foo';
    o.effectiveCpcBidMicros = 'foo';
    o.engineStatus = 'foo';
    o.finalUrlSuffix = 'foo';
    o.finalUrls = buildUnnamed6();
    o.gender = buildGoogleAdsSearchads360V0CommonGenderInfo();
    o.keyword = buildGoogleAdsSearchads360V0CommonKeywordInfo();
    o.lastModifiedTime = 'foo';
    o.listingGroup = buildGoogleAdsSearchads360V0CommonListingGroupInfo();
    o.qualityInfo =
        buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo();
    o.resourceName = 'foo';
    o.status = 'foo';
    o.trackingUrlTemplate = 'foo';
    o.type = 'foo';
    o.webpage = buildGoogleAdsSearchads360V0CommonWebpageInfo();
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterion--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesAdGroupCriterion(
    api.GoogleAdsSearchads360V0ResourcesAdGroupCriterion o) {
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterion++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterion < 3) {
    unittest.expect(
      o.adGroup!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0CommonAgeRangeInfo(o.ageRange!);
    unittest.expect(
      o.bidModifier!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.cpcBidMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.criterionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.effectiveCpcBidMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.engineStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.finalUrlSuffix!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.finalUrls!);
    checkGoogleAdsSearchads360V0CommonGenderInfo(o.gender!);
    checkGoogleAdsSearchads360V0CommonKeywordInfo(o.keyword!);
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0CommonListingGroupInfo(o.listingGroup!);
    checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo(
        o.qualityInfo!);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingUrlTemplate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0CommonWebpageInfo(o.webpage!);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesAdGroupCriterion--;
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
    api.GoogleAdsSearchads360V0ResourcesBiddingStrategy o) {
  buildCounterGoogleAdsSearchads360V0ResourcesBiddingStrategy++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesBiddingStrategy < 3) {
    unittest.expect(
      o.campaignCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.effectiveCurrencyCode!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0CommonEnhancedCpc(o.enhancedCpc!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0CommonMaximizeConversionValue(
        o.maximizeConversionValue!);
    checkGoogleAdsSearchads360V0CommonMaximizeConversions(
        o.maximizeConversions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nonRemovedCampaignCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0CommonTargetCpa(o.targetCpa!);
    checkGoogleAdsSearchads360V0CommonTargetImpressionShare(
        o.targetImpressionShare!);
    checkGoogleAdsSearchads360V0CommonTargetOutrankShare(o.targetOutrankShare!);
    checkGoogleAdsSearchads360V0CommonTargetRoas(o.targetRoas!);
    checkGoogleAdsSearchads360V0CommonTargetSpend(o.targetSpend!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesBiddingStrategy--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.List<api.GoogleAdsSearchads360V0CommonFrequencyCapEntry> buildUnnamed8() =>
    [
      buildGoogleAdsSearchads360V0CommonFrequencyCapEntry(),
      buildGoogleAdsSearchads360V0CommonFrequencyCapEntry(),
    ];

void checkUnnamed8(
    core.List<api.GoogleAdsSearchads360V0CommonFrequencyCapEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0CommonFrequencyCapEntry(o[0]);
  checkGoogleAdsSearchads360V0CommonFrequencyCapEntry(o[1]);
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.List<api.GoogleAdsSearchads360V0CommonCustomParameter> buildUnnamed10() =>
    [
      buildGoogleAdsSearchads360V0CommonCustomParameter(),
      buildGoogleAdsSearchads360V0CommonCustomParameter(),
    ];

void checkUnnamed10(
    core.List<api.GoogleAdsSearchads360V0CommonCustomParameter> o) {
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
    o.adServingOptimizationStatus = 'foo';
    o.advertisingChannelSubType = 'foo';
    o.advertisingChannelType = 'foo';
    o.biddingStrategy = 'foo';
    o.biddingStrategySystemStatus = 'foo';
    o.biddingStrategyType = 'foo';
    o.campaignBudget = 'foo';
    o.createTime = 'foo';
    o.dynamicSearchAdsSetting =
        buildGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting();
    o.endDate = 'foo';
    o.engineId = 'foo';
    o.excludedParentAssetFieldTypes = buildUnnamed7();
    o.finalUrlSuffix = 'foo';
    o.frequencyCaps = buildUnnamed8();
    o.geoTargetTypeSetting =
        buildGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting();
    o.id = 'foo';
    o.labels = buildUnnamed9();
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
    o.urlCustomParameters = buildUnnamed10();
    o.urlExpansionOptOut = true;
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaign--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaign(
    api.GoogleAdsSearchads360V0ResourcesCampaign o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaign++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaign < 3) {
    unittest.expect(
      o.adServingOptimizationStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertisingChannelSubType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertisingChannelType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.biddingStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.biddingStrategySystemStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.biddingStrategyType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.campaignBudget!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting(
        o.dynamicSearchAdsSetting!);
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.engineId!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.excludedParentAssetFieldTypes!);
    unittest.expect(
      o.finalUrlSuffix!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.frequencyCaps!);
    checkGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting(
        o.geoTargetTypeSetting!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.labels!);
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0CommonManualCpa(o.manualCpa!);
    checkGoogleAdsSearchads360V0CommonManualCpc(o.manualCpc!);
    checkGoogleAdsSearchads360V0CommonManualCpm(o.manualCpm!);
    checkGoogleAdsSearchads360V0CommonMaximizeConversionValue(
        o.maximizeConversionValue!);
    checkGoogleAdsSearchads360V0CommonMaximizeConversions(
        o.maximizeConversions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings(
        o.networkSettings!);
    checkGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting(
        o.optimizationGoalSetting!);
    checkGoogleAdsSearchads360V0CommonPercentCpc(o.percentCpc!);
    checkGoogleAdsSearchads360V0CommonRealTimeBiddingSetting(
        o.realTimeBiddingSetting!);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization(
        o.selectiveOptimization!);
    unittest.expect(
      o.servingStatus!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting(
        o.shoppingSetting!);
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0CommonTargetCpa(o.targetCpa!);
    checkGoogleAdsSearchads360V0CommonTargetCpm(o.targetCpm!);
    checkGoogleAdsSearchads360V0CommonTargetImpressionShare(
        o.targetImpressionShare!);
    checkGoogleAdsSearchads360V0CommonTargetRoas(o.targetRoas!);
    checkGoogleAdsSearchads360V0CommonTargetSpend(o.targetSpend!);
    checkGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting(
        o.trackingSetting!);
    unittest.expect(
      o.trackingUrlTemplate!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.urlCustomParameters!);
    unittest.expect(o.urlExpansionOptOut!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaign--;
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
    api.GoogleAdsSearchads360V0ResourcesCampaignBudget o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignBudget++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignBudget < 3) {
    unittest.expect(
      o.amountMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.period!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignBudget--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion = 0;
api.GoogleAdsSearchads360V0ResourcesCampaignCriterion
    buildGoogleAdsSearchads360V0ResourcesCampaignCriterion() {
  final o = api.GoogleAdsSearchads360V0ResourcesCampaignCriterion();
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion < 3) {
    o.bidModifier = 42.0;
    o.criterionId = 'foo';
    o.device = buildGoogleAdsSearchads360V0CommonDeviceInfo();
    o.displayName = 'foo';
    o.language = buildGoogleAdsSearchads360V0CommonLanguageInfo();
    o.location = buildGoogleAdsSearchads360V0CommonLocationInfo();
    o.locationGroup = buildGoogleAdsSearchads360V0CommonLocationGroupInfo();
    o.negative = true;
    o.resourceName = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCampaignCriterion(
    api.GoogleAdsSearchads360V0ResourcesCampaignCriterion o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion < 3) {
    unittest.expect(
      o.bidModifier!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.criterionId!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0CommonDeviceInfo(o.device!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0CommonLanguageInfo(o.language!);
    checkGoogleAdsSearchads360V0CommonLocationInfo(o.location!);
    checkGoogleAdsSearchads360V0CommonLocationGroupInfo(o.locationGroup!);
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCampaignCriterion--;
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
    api.GoogleAdsSearchads360V0ResourcesConversionAction o) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversionAction++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionAction < 3) {
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings(
        o.attributionModelSettings!);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clickThroughLookbackWindowDays!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings(
        o.floodlightSettings!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
        o.includeInClientAccountConversionsMetric!, unittest.isTrue);
    unittest.expect(o.includeInConversionsMetric!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ownerCustomer!,
      unittest.equals('foo'),
    );
    unittest.expect(o.primaryForGoal!, unittest.isTrue);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0ResourcesConversionActionValueSettings(
        o.valueSettings!);
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionAction--;
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
    api.GoogleAdsSearchads360V0ResourcesConversionTrackingSetting o) {
  buildCounterGoogleAdsSearchads360V0ResourcesConversionTrackingSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesConversionTrackingSetting <
      3) {
    unittest.expect(o.acceptedCustomerDataTerms!, unittest.isTrue);
    unittest.expect(
      o.conversionTrackingId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conversionTrackingStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crossAccountConversionTrackingId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enhancedConversionsForLeadsEnabled!, unittest.isTrue);
    unittest.expect(
      o.googleAdsConversionCustomer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googleAdsCrossAccountConversionTrackingId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesConversionTrackingSetting--;
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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
    o.referencedSystemColumns = buildUnnamed11();
    o.referencesAttributes = true;
    o.referencesMetrics = true;
    o.resourceName = 'foo';
    o.valueType = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomColumn--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCustomColumn(
    api.GoogleAdsSearchads360V0ResourcesCustomColumn o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCustomColumn++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomColumn < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.queryable!, unittest.isTrue);
    checkUnnamed11(o.referencedSystemColumns!);
    unittest.expect(o.referencesAttributes!, unittest.isTrue);
    unittest.expect(o.referencesMetrics!, unittest.isTrue);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomColumn--;
}

core.int buildCounterGoogleAdsSearchads360V0ResourcesCustomer = 0;
api.GoogleAdsSearchads360V0ResourcesCustomer
    buildGoogleAdsSearchads360V0ResourcesCustomer() {
  final o = api.GoogleAdsSearchads360V0ResourcesCustomer();
  buildCounterGoogleAdsSearchads360V0ResourcesCustomer++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomer < 3) {
    o.accountStatus = 'foo';
    o.accountType = 'foo';
    o.autoTaggingEnabled = true;
    o.conversionTrackingSetting =
        buildGoogleAdsSearchads360V0ResourcesConversionTrackingSetting();
    o.currencyCode = 'foo';
    o.descriptiveName = 'foo';
    o.doubleClickCampaignManagerSetting =
        buildGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting();
    o.engineId = 'foo';
    o.finalUrlSuffix = 'foo';
    o.id = 'foo';
    o.lastModifiedTime = 'foo';
    o.manager = true;
    o.resourceName = 'foo';
    o.status = 'foo';
    o.timeZone = 'foo';
    o.trackingUrlTemplate = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomer--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCustomer(
    api.GoogleAdsSearchads360V0ResourcesCustomer o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCustomer++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomer < 3) {
    unittest.expect(
      o.accountStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.accountType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.autoTaggingEnabled!, unittest.isTrue);
    checkGoogleAdsSearchads360V0ResourcesConversionTrackingSetting(
        o.conversionTrackingSetting!);
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.descriptiveName!,
      unittest.equals('foo'),
    );
    checkGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting(
        o.doubleClickCampaignManagerSetting!);
    unittest.expect(
      o.engineId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.finalUrlSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.manager!, unittest.isTrue);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingUrlTemplate!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomer--;
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

core.int buildCounterGoogleAdsSearchads360V0ResourcesCustomerClient = 0;
api.GoogleAdsSearchads360V0ResourcesCustomerClient
    buildGoogleAdsSearchads360V0ResourcesCustomerClient() {
  final o = api.GoogleAdsSearchads360V0ResourcesCustomerClient();
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerClient++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomerClient < 3) {
    o.appliedLabels = buildUnnamed12();
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
    api.GoogleAdsSearchads360V0ResourcesCustomerClient o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerClient++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomerClient < 3) {
    checkUnnamed12(o.appliedLabels!);
    unittest.expect(
      o.clientCustomer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.descriptiveName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hidden!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.level!,
      unittest.equals('foo'),
    );
    unittest.expect(o.manager!, unittest.isTrue);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(o.testAccount!, unittest.isTrue);
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
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
    o.status = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerManagerLink--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesCustomerManagerLink(
    api.GoogleAdsSearchads360V0ResourcesCustomerManagerLink o) {
  buildCounterGoogleAdsSearchads360V0ResourcesCustomerManagerLink++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesCustomerManagerLink < 3) {
    unittest.expect(
      o.managerCustomer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managerLinkId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting o) {
  buildCounterGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting <
      3) {
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting--;
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
    api.GoogleAdsSearchads360V0ResourcesKeywordView o) {
  buildCounterGoogleAdsSearchads360V0ResourcesKeywordView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesKeywordView < 3) {
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesKeywordView--;
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
    api.GoogleAdsSearchads360V0ResourcesProductGroupView o) {
  buildCounterGoogleAdsSearchads360V0ResourcesProductGroupView++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesProductGroupView < 3) {
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesProductGroupView--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.int buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field = 0;
api.GoogleAdsSearchads360V0ResourcesSearchAds360Field
    buildGoogleAdsSearchads360V0ResourcesSearchAds360Field() {
  final o = api.GoogleAdsSearchads360V0ResourcesSearchAds360Field();
  buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field < 3) {
    o.attributeResources = buildUnnamed13();
    o.category = 'foo';
    o.dataType = 'foo';
    o.enumValues = buildUnnamed14();
    o.filterable = true;
    o.isRepeated = true;
    o.metrics = buildUnnamed15();
    o.name = 'foo';
    o.resourceName = 'foo';
    o.segments = buildUnnamed16();
    o.selectable = true;
    o.selectableWith = buildUnnamed17();
    o.sortable = true;
    o.typeUrl = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field--;
  return o;
}

void checkGoogleAdsSearchads360V0ResourcesSearchAds360Field(
    api.GoogleAdsSearchads360V0ResourcesSearchAds360Field o) {
  buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field++;
  if (buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field < 3) {
    checkUnnamed13(o.attributeResources!);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.enumValues!);
    unittest.expect(o.filterable!, unittest.isTrue);
    unittest.expect(o.isRepeated!, unittest.isTrue);
    checkUnnamed15(o.metrics!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.segments!);
    unittest.expect(o.selectable!, unittest.isTrue);
    checkUnnamed17(o.selectableWith!);
    unittest.expect(o.sortable!, unittest.isTrue);
    unittest.expect(
      o.typeUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ResourcesSearchAds360Field--;
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
    api.GoogleAdsSearchads360V0ServicesCustomColumnHeader o) {
  buildCounterGoogleAdsSearchads360V0ServicesCustomColumnHeader++;
  if (buildCounterGoogleAdsSearchads360V0ServicesCustomColumnHeader < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.referencesMetrics!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ServicesCustomColumnHeader--;
}

core.List<api.GoogleAdsSearchads360V0ResourcesCustomColumn> buildUnnamed18() =>
    [
      buildGoogleAdsSearchads360V0ResourcesCustomColumn(),
      buildGoogleAdsSearchads360V0ResourcesCustomColumn(),
    ];

void checkUnnamed18(
    core.List<api.GoogleAdsSearchads360V0ResourcesCustomColumn> o) {
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
    o.customColumns = buildUnnamed18();
  }
  buildCounterGoogleAdsSearchads360V0ServicesListCustomColumnsResponse--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesListCustomColumnsResponse(
    api.GoogleAdsSearchads360V0ServicesListCustomColumnsResponse o) {
  buildCounterGoogleAdsSearchads360V0ServicesListCustomColumnsResponse++;
  if (buildCounterGoogleAdsSearchads360V0ServicesListCustomColumnsResponse <
      3) {
    checkUnnamed18(o.customColumns!);
  }
  buildCounterGoogleAdsSearchads360V0ServicesListCustomColumnsResponse--;
}

core.List<api.GoogleAdsSearchads360V0CommonValue> buildUnnamed19() => [
      buildGoogleAdsSearchads360V0CommonValue(),
      buildGoogleAdsSearchads360V0CommonValue(),
    ];

void checkUnnamed19(core.List<api.GoogleAdsSearchads360V0CommonValue> o) {
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
    o.adGroup = buildGoogleAdsSearchads360V0ResourcesAdGroup();
    o.adGroupBidModifier =
        buildGoogleAdsSearchads360V0ResourcesAdGroupBidModifier();
    o.adGroupCriterion =
        buildGoogleAdsSearchads360V0ResourcesAdGroupCriterion();
    o.biddingStrategy = buildGoogleAdsSearchads360V0ResourcesBiddingStrategy();
    o.campaign = buildGoogleAdsSearchads360V0ResourcesCampaign();
    o.campaignBudget = buildGoogleAdsSearchads360V0ResourcesCampaignBudget();
    o.campaignCriterion =
        buildGoogleAdsSearchads360V0ResourcesCampaignCriterion();
    o.conversionAction =
        buildGoogleAdsSearchads360V0ResourcesConversionAction();
    o.customColumns = buildUnnamed19();
    o.customer = buildGoogleAdsSearchads360V0ResourcesCustomer();
    o.customerClient = buildGoogleAdsSearchads360V0ResourcesCustomerClient();
    o.customerManagerLink =
        buildGoogleAdsSearchads360V0ResourcesCustomerManagerLink();
    o.keywordView = buildGoogleAdsSearchads360V0ResourcesKeywordView();
    o.metrics = buildGoogleAdsSearchads360V0CommonMetrics();
    o.productGroupView =
        buildGoogleAdsSearchads360V0ResourcesProductGroupView();
    o.segments = buildGoogleAdsSearchads360V0CommonSegments();
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchAds360Row--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesSearchAds360Row(
    api.GoogleAdsSearchads360V0ServicesSearchAds360Row o) {
  buildCounterGoogleAdsSearchads360V0ServicesSearchAds360Row++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchAds360Row < 3) {
    checkGoogleAdsSearchads360V0ResourcesAdGroup(o.adGroup!);
    checkGoogleAdsSearchads360V0ResourcesAdGroupBidModifier(
        o.adGroupBidModifier!);
    checkGoogleAdsSearchads360V0ResourcesAdGroupCriterion(o.adGroupCriterion!);
    checkGoogleAdsSearchads360V0ResourcesBiddingStrategy(o.biddingStrategy!);
    checkGoogleAdsSearchads360V0ResourcesCampaign(o.campaign!);
    checkGoogleAdsSearchads360V0ResourcesCampaignBudget(o.campaignBudget!);
    checkGoogleAdsSearchads360V0ResourcesCampaignCriterion(
        o.campaignCriterion!);
    checkGoogleAdsSearchads360V0ResourcesConversionAction(o.conversionAction!);
    checkUnnamed19(o.customColumns!);
    checkGoogleAdsSearchads360V0ResourcesCustomer(o.customer!);
    checkGoogleAdsSearchads360V0ResourcesCustomerClient(o.customerClient!);
    checkGoogleAdsSearchads360V0ResourcesCustomerManagerLink(
        o.customerManagerLink!);
    checkGoogleAdsSearchads360V0ResourcesKeywordView(o.keywordView!);
    checkGoogleAdsSearchads360V0CommonMetrics(o.metrics!);
    checkGoogleAdsSearchads360V0ResourcesProductGroupView(o.productGroupView!);
    checkGoogleAdsSearchads360V0CommonSegments(o.segments!);
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchAds360Row--;
}

core.int
    buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest =
    0;
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
    api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest o) {
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest <
      3) {
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest--;
}

core.List<api.GoogleAdsSearchads360V0ResourcesSearchAds360Field>
    buildUnnamed20() => [
          buildGoogleAdsSearchads360V0ResourcesSearchAds360Field(),
          buildGoogleAdsSearchads360V0ResourcesSearchAds360Field(),
        ];

void checkUnnamed20(
    core.List<api.GoogleAdsSearchads360V0ResourcesSearchAds360Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ResourcesSearchAds360Field(o[0]);
  checkGoogleAdsSearchads360V0ResourcesSearchAds360Field(o[1]);
}

core.int
    buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse =
    0;
api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse
    buildGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse() {
  final o =
      api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse();
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed20();
    o.totalResultsCount = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse(
    api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse o) {
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.results!);
    unittest.expect(
      o.totalResultsCount!,
      unittest.equals('foo'),
    );
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
    api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Request o) {
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Request++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Request <
      3) {
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(o.returnTotalResultsCount!, unittest.isTrue);
    unittest.expect(
      o.summaryRowSetting!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Request--;
}

core.List<api.GoogleAdsSearchads360V0ServicesCustomColumnHeader>
    buildUnnamed21() => [
          buildGoogleAdsSearchads360V0ServicesCustomColumnHeader(),
          buildGoogleAdsSearchads360V0ServicesCustomColumnHeader(),
        ];

void checkUnnamed21(
    core.List<api.GoogleAdsSearchads360V0ServicesCustomColumnHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ServicesCustomColumnHeader(o[0]);
  checkGoogleAdsSearchads360V0ServicesCustomColumnHeader(o[1]);
}

core.List<api.GoogleAdsSearchads360V0ServicesSearchAds360Row>
    buildUnnamed22() => [
          buildGoogleAdsSearchads360V0ServicesSearchAds360Row(),
          buildGoogleAdsSearchads360V0ServicesSearchAds360Row(),
        ];

void checkUnnamed22(
    core.List<api.GoogleAdsSearchads360V0ServicesSearchAds360Row> o) {
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
    o.customColumnHeaders = buildUnnamed21();
    o.fieldMask = 'foo';
    o.nextPageToken = 'foo';
    o.results = buildUnnamed22();
    o.summaryRow = buildGoogleAdsSearchads360V0ServicesSearchAds360Row();
    o.totalResultsCount = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Response--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesSearchSearchAds360Response(
    api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Response o) {
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Response++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Response <
      3) {
    checkUnnamed21(o.customColumnHeaders!);
    unittest.expect(
      o.fieldMask!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.results!);
    checkGoogleAdsSearchads360V0ServicesSearchAds360Row(o.summaryRow!);
    unittest.expect(
      o.totalResultsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360Response--;
}

core.int
    buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest =
    0;
api.GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest
    buildGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest() {
  final o =
      api.GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest();
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest <
      3) {
    o.batchSize = 42;
    o.query = 'foo';
    o.summaryRowSetting = 'foo';
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest(
    api.GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest o) {
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest <
      3) {
    unittest.expect(
      o.batchSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.summaryRowSetting!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest--;
}

core.List<api.GoogleAdsSearchads360V0ServicesCustomColumnHeader>
    buildUnnamed23() => [
          buildGoogleAdsSearchads360V0ServicesCustomColumnHeader(),
          buildGoogleAdsSearchads360V0ServicesCustomColumnHeader(),
        ];

void checkUnnamed23(
    core.List<api.GoogleAdsSearchads360V0ServicesCustomColumnHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ServicesCustomColumnHeader(o[0]);
  checkGoogleAdsSearchads360V0ServicesCustomColumnHeader(o[1]);
}

core.List<api.GoogleAdsSearchads360V0ServicesSearchAds360Row>
    buildUnnamed24() => [
          buildGoogleAdsSearchads360V0ServicesSearchAds360Row(),
          buildGoogleAdsSearchads360V0ServicesSearchAds360Row(),
        ];

void checkUnnamed24(
    core.List<api.GoogleAdsSearchads360V0ServicesSearchAds360Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsSearchads360V0ServicesSearchAds360Row(o[0]);
  checkGoogleAdsSearchads360V0ServicesSearchAds360Row(o[1]);
}

core.int
    buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse =
    0;
api.GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse
    buildGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse() {
  final o =
      api.GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse();
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse <
      3) {
    o.customColumnHeaders = buildUnnamed23();
    o.fieldMask = 'foo';
    o.requestId = 'foo';
    o.results = buildUnnamed24();
    o.summaryRow = buildGoogleAdsSearchads360V0ServicesSearchAds360Row();
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse--;
  return o;
}

void checkGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse(
    api.GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse o) {
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse++;
  if (buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse <
      3) {
    checkUnnamed23(o.customColumnHeaders!);
    unittest.expect(
      o.fieldMask!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.results!);
    checkGoogleAdsSearchads360V0ServicesSearchAds360Row(o.summaryRow!);
  }
  buildCounterGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse--;
}

void main() {
  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonAgeRangeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonAgeRangeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonAgeRangeInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonAgeRangeInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonCustomParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonCustomParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonCustomParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonCustomParameter(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonDeviceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonDeviceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonDeviceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonDeviceInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonEnhancedCpc', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonEnhancedCpc();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonEnhancedCpc.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonEnhancedCpc(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonFrequencyCapEntry',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonFrequencyCapEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonFrequencyCapEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonFrequencyCapEntry(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonGenderInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonGenderInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonGenderInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonGenderInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonKeywordInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonKeywordInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonKeywordInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonKeywordInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonLanguageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonLanguageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonLanguageInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonLanguageInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonListingGroupInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonListingGroupInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonListingGroupInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonListingGroupInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonLocationGroupInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonLocationGroupInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonLocationGroupInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonLocationGroupInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonLocationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonLocationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonLocationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonLocationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonManualCpa', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonManualCpa();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonManualCpa.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonManualCpa(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonManualCpc', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonManualCpc();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonManualCpc.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonManualCpc(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonManualCpm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonManualCpm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonManualCpm.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonManualCpm(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0CommonMaximizeConversionValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonMaximizeConversionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0CommonMaximizeConversionValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonMaximizeConversionValue(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonMaximizeConversions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonMaximizeConversions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonMaximizeConversions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonMaximizeConversions(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonMetrics(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonPercentCpc', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonPercentCpc();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonPercentCpc.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonPercentCpc(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0CommonRealTimeBiddingSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonRealTimeBiddingSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0CommonRealTimeBiddingSetting.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonRealTimeBiddingSetting(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonSegments', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonSegments();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonSegments.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonSegments(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonTargetCpa', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonTargetCpa();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonTargetCpa.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonTargetCpa(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonTargetCpm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonTargetCpm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonTargetCpm.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonTargetCpm(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0CommonTargetImpressionShare', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonTargetImpressionShare();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0CommonTargetImpressionShare.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonTargetImpressionShare(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonTargetOutrankShare',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonTargetOutrankShare();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonTargetOutrankShare.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonTargetOutrankShare(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonTargetRoas', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonTargetRoas();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonTargetRoas.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonTargetRoas(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonTargetSpend', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonTargetSpend();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonTargetSpend.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonTargetSpend(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonValue(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonWebpageConditionInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonWebpageConditionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonWebpageConditionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonWebpageConditionInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0CommonWebpageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0CommonWebpageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0CommonWebpageInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0CommonWebpageInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCampaignNetworkSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCampaignShoppingSetting(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCampaignTrackingSetting(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesConversionActionValueSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ResourcesConversionActionValueSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesConversionActionValueSettings
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesConversionActionValueSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesAdGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAdGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAdGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesAdGroup(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupBidModifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAdGroupBidModifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesAdGroupBidModifier.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesAdGroupBidModifier(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesAdGroupCriterion',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesAdGroupCriterion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesAdGroupCriterion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesAdGroupCriterion(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesBiddingStrategy',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesBiddingStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesBiddingStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesBiddingStrategy(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesCampaign', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCampaign();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesCampaign.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCampaign(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesCampaignBudget',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCampaignBudget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesCampaignBudget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCampaignBudget(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesCampaignCriterion',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCampaignCriterion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesCampaignCriterion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCampaignCriterion(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesConversionAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesConversionAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesConversionAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesConversionAction(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesConversionTrackingSetting',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ResourcesConversionTrackingSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesConversionTrackingSetting
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesConversionTrackingSetting(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesCustomColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCustomColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesCustomColumn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCustomColumn(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesCustomer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCustomer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesCustomer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCustomer(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesCustomerClient',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCustomerClient();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesCustomerClient.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCustomerClient(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesCustomerManagerLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesCustomerManagerLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesCustomerManagerLink.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesCustomerManagerLink(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting(
          od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesKeywordView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesKeywordView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesKeywordView.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesKeywordView(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesProductGroupView',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesProductGroupView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesProductGroupView.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesProductGroupView(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ResourcesSearchAds360Field',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ResourcesSearchAds360Field();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ResourcesSearchAds360Field.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ResourcesSearchAds360Field(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ServicesCustomColumnHeader',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ServicesCustomColumnHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ServicesCustomColumnHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ServicesCustomColumnHeader(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ServicesListCustomColumnsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ServicesListCustomColumnsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ServicesListCustomColumnsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ServicesListCustomColumnsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsSearchads360V0ServicesSearchAds360Row',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ServicesSearchAds360Row();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ServicesSearchAds360Row.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ServicesSearchAds360Row(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ServicesSearchSearchAds360Request',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsSearchads360V0ServicesSearchSearchAds360Request();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Request.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ServicesSearchSearchAds360Request(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ServicesSearchSearchAds360Response',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ServicesSearchSearchAds360Response();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Response
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ServicesSearchSearchAds360Response(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse(od);
    });
  });

  unittest.group('resource-CustomersCustomColumnsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SA360Api(mock).customers.customColumns;
      final arg_resourceName = 'foo';
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
          unittest.equals('v0/'),
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
        final resp = convert.json
            .encode(buildGoogleAdsSearchads360V0ResourcesCustomColumn());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_resourceName, $fields: arg_$fields);
      checkGoogleAdsSearchads360V0ResourcesCustomColumn(
          response as api.GoogleAdsSearchads360V0ResourcesCustomColumn);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SA360Api(mock).customers.customColumns;
      final arg_customerId = 'foo';
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
          unittest.equals('v0/customers/'),
        );
        pathOffset += 13;
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
        final resp = convert.json.encode(
            buildGoogleAdsSearchads360V0ServicesListCustomColumnsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customerId, $fields: arg_$fields);
      checkGoogleAdsSearchads360V0ServicesListCustomColumnsResponse(response
          as api.GoogleAdsSearchads360V0ServicesListCustomColumnsResponse);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Request
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAdsSearchads360V0ServicesSearchSearchAds360Request(obj);

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
          unittest.equals('v0/customers/'),
        );
        pathOffset += 13;
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
        final resp = convert.json.encode(
            buildGoogleAdsSearchads360V0ServicesSearchSearchAds360Response());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.search(arg_request, arg_customerId, $fields: arg_$fields);
      checkGoogleAdsSearchads360V0ServicesSearchSearchAds360Response(response
          as api.GoogleAdsSearchads360V0ServicesSearchSearchAds360Response);
    });

    unittest.test('method--searchStream', () async {
      final mock = HttpServerMock();
      final res = api.SA360Api(mock).customers.searchAds360;
      final arg_request =
          buildGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest();
      final arg_customerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest(
            obj);

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
          unittest.equals('v0/customers/'),
        );
        pathOffset += 13;
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
        final resp = convert.json.encode(
            buildGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchStream(arg_request, arg_customerId,
          $fields: arg_$fields);
      checkGoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse(
          response as api
              .GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse);
    });
  });

  unittest.group('resource-SearchAds360FieldsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SA360Api(mock).searchAds360Fields;
      final arg_resourceName = 'foo';
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
          unittest.equals('v0/'),
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
        final resp = convert.json
            .encode(buildGoogleAdsSearchads360V0ResourcesSearchAds360Field());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_resourceName, $fields: arg_$fields);
      checkGoogleAdsSearchads360V0ResourcesSearchAds360Field(
          response as api.GoogleAdsSearchads360V0ResourcesSearchAds360Field);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.SA360Api(mock).searchAds360Fields;
      final arg_request =
          buildGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest(
            obj);

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
          unittest.equals('v0/searchAds360Fields:search'),
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
        final resp = convert.json.encode(
            buildGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_request, $fields: arg_$fields);
      checkGoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse(
          response as api
              .GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse);
    });
  });
}
