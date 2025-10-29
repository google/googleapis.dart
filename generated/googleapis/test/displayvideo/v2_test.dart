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

import 'package:googleapis/displayvideo/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterActivateManualTriggerRequest = 0;
api.ActivateManualTriggerRequest buildActivateManualTriggerRequest() {
  final o = api.ActivateManualTriggerRequest();
  buildCounterActivateManualTriggerRequest++;
  if (buildCounterActivateManualTriggerRequest < 3) {}
  buildCounterActivateManualTriggerRequest--;
  return o;
}

void checkActivateManualTriggerRequest(api.ActivateManualTriggerRequest o) {
  buildCounterActivateManualTriggerRequest++;
  if (buildCounterActivateManualTriggerRequest < 3) {}
  buildCounterActivateManualTriggerRequest--;
}

core.int buildCounterActiveViewVideoViewabilityMetricConfig = 0;
api.ActiveViewVideoViewabilityMetricConfig
buildActiveViewVideoViewabilityMetricConfig() {
  final o = api.ActiveViewVideoViewabilityMetricConfig();
  buildCounterActiveViewVideoViewabilityMetricConfig++;
  if (buildCounterActiveViewVideoViewabilityMetricConfig < 3) {
    o.displayName = 'foo';
    o.minimumDuration = 'foo';
    o.minimumQuartile = 'foo';
    o.minimumViewability = 'foo';
    o.minimumVolume = 'foo';
  }
  buildCounterActiveViewVideoViewabilityMetricConfig--;
  return o;
}

void checkActiveViewVideoViewabilityMetricConfig(
  api.ActiveViewVideoViewabilityMetricConfig o,
) {
  buildCounterActiveViewVideoViewabilityMetricConfig++;
  if (buildCounterActiveViewVideoViewabilityMetricConfig < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.minimumDuration!, unittest.equals('foo'));
    unittest.expect(o.minimumQuartile!, unittest.equals('foo'));
    unittest.expect(o.minimumViewability!, unittest.equals('foo'));
    unittest.expect(o.minimumVolume!, unittest.equals('foo'));
  }
  buildCounterActiveViewVideoViewabilityMetricConfig--;
}

core.int buildCounterAdUrl = 0;
api.AdUrl buildAdUrl() {
  final o = api.AdUrl();
  buildCounterAdUrl++;
  if (buildCounterAdUrl < 3) {
    o.type = 'foo';
    o.url = 'foo';
  }
  buildCounterAdUrl--;
  return o;
}

void checkAdUrl(api.AdUrl o) {
  buildCounterAdUrl++;
  if (buildCounterAdUrl < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterAdUrl--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdloox = 0;
api.Adloox buildAdloox() {
  final o = api.Adloox();
  buildCounterAdloox++;
  if (buildCounterAdloox < 3) {
    o.excludedAdlooxCategories = buildUnnamed0();
  }
  buildCounterAdloox--;
  return o;
}

void checkAdloox(api.Adloox o) {
  buildCounterAdloox++;
  if (buildCounterAdloox < 3) {
    checkUnnamed0(o.excludedAdlooxCategories!);
  }
  buildCounterAdloox--;
}

core.int buildCounterAdvertiser = 0;
api.Advertiser buildAdvertiser() {
  final o = api.Advertiser();
  buildCounterAdvertiser++;
  if (buildCounterAdvertiser < 3) {
    o.adServerConfig = buildAdvertiserAdServerConfig();
    o.advertiserId = 'foo';
    o.containsEuPoliticalAds = 'foo';
    o.creativeConfig = buildAdvertiserCreativeConfig();
    o.dataAccessConfig = buildAdvertiserDataAccessConfig();
    o.displayName = 'foo';
    o.entityStatus = 'foo';
    o.generalConfig = buildAdvertiserGeneralConfig();
    o.integrationDetails = buildIntegrationDetails();
    o.name = 'foo';
    o.partnerId = 'foo';
    o.prismaEnabled = true;
    o.servingConfig = buildAdvertiserTargetingConfig();
    o.updateTime = 'foo';
  }
  buildCounterAdvertiser--;
  return o;
}

void checkAdvertiser(api.Advertiser o) {
  buildCounterAdvertiser++;
  if (buildCounterAdvertiser < 3) {
    checkAdvertiserAdServerConfig(o.adServerConfig!);
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    unittest.expect(o.containsEuPoliticalAds!, unittest.equals('foo'));
    checkAdvertiserCreativeConfig(o.creativeConfig!);
    checkAdvertiserDataAccessConfig(o.dataAccessConfig!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entityStatus!, unittest.equals('foo'));
    checkAdvertiserGeneralConfig(o.generalConfig!);
    checkIntegrationDetails(o.integrationDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.partnerId!, unittest.equals('foo'));
    unittest.expect(o.prismaEnabled!, unittest.isTrue);
    checkAdvertiserTargetingConfig(o.servingConfig!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAdvertiser--;
}

core.int buildCounterAdvertiserAdServerConfig = 0;
api.AdvertiserAdServerConfig buildAdvertiserAdServerConfig() {
  final o = api.AdvertiserAdServerConfig();
  buildCounterAdvertiserAdServerConfig++;
  if (buildCounterAdvertiserAdServerConfig < 3) {
    o.cmHybridConfig = buildCmHybridConfig();
    o.thirdPartyOnlyConfig = buildThirdPartyOnlyConfig();
  }
  buildCounterAdvertiserAdServerConfig--;
  return o;
}

void checkAdvertiserAdServerConfig(api.AdvertiserAdServerConfig o) {
  buildCounterAdvertiserAdServerConfig++;
  if (buildCounterAdvertiserAdServerConfig < 3) {
    checkCmHybridConfig(o.cmHybridConfig!);
    checkThirdPartyOnlyConfig(o.thirdPartyOnlyConfig!);
  }
  buildCounterAdvertiserAdServerConfig--;
}

core.int buildCounterAdvertiserCreativeConfig = 0;
api.AdvertiserCreativeConfig buildAdvertiserCreativeConfig() {
  final o = api.AdvertiserCreativeConfig();
  buildCounterAdvertiserCreativeConfig++;
  if (buildCounterAdvertiserCreativeConfig < 3) {
    o.dynamicCreativeEnabled = true;
    o.iasClientId = 'foo';
    o.obaComplianceDisabled = true;
    o.videoCreativeDataSharingAuthorized = true;
  }
  buildCounterAdvertiserCreativeConfig--;
  return o;
}

void checkAdvertiserCreativeConfig(api.AdvertiserCreativeConfig o) {
  buildCounterAdvertiserCreativeConfig++;
  if (buildCounterAdvertiserCreativeConfig < 3) {
    unittest.expect(o.dynamicCreativeEnabled!, unittest.isTrue);
    unittest.expect(o.iasClientId!, unittest.equals('foo'));
    unittest.expect(o.obaComplianceDisabled!, unittest.isTrue);
    unittest.expect(o.videoCreativeDataSharingAuthorized!, unittest.isTrue);
  }
  buildCounterAdvertiserCreativeConfig--;
}

core.int buildCounterAdvertiserDataAccessConfig = 0;
api.AdvertiserDataAccessConfig buildAdvertiserDataAccessConfig() {
  final o = api.AdvertiserDataAccessConfig();
  buildCounterAdvertiserDataAccessConfig++;
  if (buildCounterAdvertiserDataAccessConfig < 3) {
    o.sdfConfig = buildAdvertiserSdfConfig();
  }
  buildCounterAdvertiserDataAccessConfig--;
  return o;
}

void checkAdvertiserDataAccessConfig(api.AdvertiserDataAccessConfig o) {
  buildCounterAdvertiserDataAccessConfig++;
  if (buildCounterAdvertiserDataAccessConfig < 3) {
    checkAdvertiserSdfConfig(o.sdfConfig!);
  }
  buildCounterAdvertiserDataAccessConfig--;
}

core.int buildCounterAdvertiserGeneralConfig = 0;
api.AdvertiserGeneralConfig buildAdvertiserGeneralConfig() {
  final o = api.AdvertiserGeneralConfig();
  buildCounterAdvertiserGeneralConfig++;
  if (buildCounterAdvertiserGeneralConfig < 3) {
    o.currencyCode = 'foo';
    o.domainUrl = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterAdvertiserGeneralConfig--;
  return o;
}

void checkAdvertiserGeneralConfig(api.AdvertiserGeneralConfig o) {
  buildCounterAdvertiserGeneralConfig++;
  if (buildCounterAdvertiserGeneralConfig < 3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.domainUrl!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterAdvertiserGeneralConfig--;
}

core.int buildCounterAdvertiserSdfConfig = 0;
api.AdvertiserSdfConfig buildAdvertiserSdfConfig() {
  final o = api.AdvertiserSdfConfig();
  buildCounterAdvertiserSdfConfig++;
  if (buildCounterAdvertiserSdfConfig < 3) {
    o.overridePartnerSdfConfig = true;
    o.sdfConfig = buildSdfConfig();
  }
  buildCounterAdvertiserSdfConfig--;
  return o;
}

void checkAdvertiserSdfConfig(api.AdvertiserSdfConfig o) {
  buildCounterAdvertiserSdfConfig++;
  if (buildCounterAdvertiserSdfConfig < 3) {
    unittest.expect(o.overridePartnerSdfConfig!, unittest.isTrue);
    checkSdfConfig(o.sdfConfig!);
  }
  buildCounterAdvertiserSdfConfig--;
}

core.int buildCounterAdvertiserTargetingConfig = 0;
api.AdvertiserTargetingConfig buildAdvertiserTargetingConfig() {
  final o = api.AdvertiserTargetingConfig();
  buildCounterAdvertiserTargetingConfig++;
  if (buildCounterAdvertiserTargetingConfig < 3) {
    o.exemptTvFromViewabilityTargeting = true;
  }
  buildCounterAdvertiserTargetingConfig--;
  return o;
}

void checkAdvertiserTargetingConfig(api.AdvertiserTargetingConfig o) {
  buildCounterAdvertiserTargetingConfig++;
  if (buildCounterAdvertiserTargetingConfig < 3) {
    unittest.expect(o.exemptTvFromViewabilityTargeting!, unittest.isTrue);
  }
  buildCounterAdvertiserTargetingConfig--;
}

core.int buildCounterAgeRangeAssignedTargetingOptionDetails = 0;
api.AgeRangeAssignedTargetingOptionDetails
buildAgeRangeAssignedTargetingOptionDetails() {
  final o = api.AgeRangeAssignedTargetingOptionDetails();
  buildCounterAgeRangeAssignedTargetingOptionDetails++;
  if (buildCounterAgeRangeAssignedTargetingOptionDetails < 3) {
    o.ageRange = 'foo';
  }
  buildCounterAgeRangeAssignedTargetingOptionDetails--;
  return o;
}

void checkAgeRangeAssignedTargetingOptionDetails(
  api.AgeRangeAssignedTargetingOptionDetails o,
) {
  buildCounterAgeRangeAssignedTargetingOptionDetails++;
  if (buildCounterAgeRangeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.ageRange!, unittest.equals('foo'));
  }
  buildCounterAgeRangeAssignedTargetingOptionDetails--;
}

core.int buildCounterAgeRangeTargetingOptionDetails = 0;
api.AgeRangeTargetingOptionDetails buildAgeRangeTargetingOptionDetails() {
  final o = api.AgeRangeTargetingOptionDetails();
  buildCounterAgeRangeTargetingOptionDetails++;
  if (buildCounterAgeRangeTargetingOptionDetails < 3) {
    o.ageRange = 'foo';
  }
  buildCounterAgeRangeTargetingOptionDetails--;
  return o;
}

void checkAgeRangeTargetingOptionDetails(api.AgeRangeTargetingOptionDetails o) {
  buildCounterAgeRangeTargetingOptionDetails++;
  if (buildCounterAgeRangeTargetingOptionDetails < 3) {
    unittest.expect(o.ageRange!, unittest.equals('foo'));
  }
  buildCounterAgeRangeTargetingOptionDetails--;
}

core.int buildCounterAppAssignedTargetingOptionDetails = 0;
api.AppAssignedTargetingOptionDetails buildAppAssignedTargetingOptionDetails() {
  final o = api.AppAssignedTargetingOptionDetails();
  buildCounterAppAssignedTargetingOptionDetails++;
  if (buildCounterAppAssignedTargetingOptionDetails < 3) {
    o.appId = 'foo';
    o.appPlatform = 'foo';
    o.displayName = 'foo';
    o.negative = true;
  }
  buildCounterAppAssignedTargetingOptionDetails--;
  return o;
}

void checkAppAssignedTargetingOptionDetails(
  api.AppAssignedTargetingOptionDetails o,
) {
  buildCounterAppAssignedTargetingOptionDetails++;
  if (buildCounterAppAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.appPlatform!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
  }
  buildCounterAppAssignedTargetingOptionDetails--;
}

core.int buildCounterAppCategoryAssignedTargetingOptionDetails = 0;
api.AppCategoryAssignedTargetingOptionDetails
buildAppCategoryAssignedTargetingOptionDetails() {
  final o = api.AppCategoryAssignedTargetingOptionDetails();
  buildCounterAppCategoryAssignedTargetingOptionDetails++;
  if (buildCounterAppCategoryAssignedTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.negative = true;
    o.targetingOptionId = 'foo';
  }
  buildCounterAppCategoryAssignedTargetingOptionDetails--;
  return o;
}

void checkAppCategoryAssignedTargetingOptionDetails(
  api.AppCategoryAssignedTargetingOptionDetails o,
) {
  buildCounterAppCategoryAssignedTargetingOptionDetails++;
  if (buildCounterAppCategoryAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterAppCategoryAssignedTargetingOptionDetails--;
}

core.int buildCounterAppCategoryTargetingOptionDetails = 0;
api.AppCategoryTargetingOptionDetails buildAppCategoryTargetingOptionDetails() {
  final o = api.AppCategoryTargetingOptionDetails();
  buildCounterAppCategoryTargetingOptionDetails++;
  if (buildCounterAppCategoryTargetingOptionDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterAppCategoryTargetingOptionDetails--;
  return o;
}

void checkAppCategoryTargetingOptionDetails(
  api.AppCategoryTargetingOptionDetails o,
) {
  buildCounterAppCategoryTargetingOptionDetails++;
  if (buildCounterAppCategoryTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterAppCategoryTargetingOptionDetails--;
}

core.int buildCounterAsset = 0;
api.Asset buildAsset() {
  final o = api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.content = 'foo';
    o.mediaId = 'foo';
  }
  buildCounterAsset--;
  return o;
}

void checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.mediaId!, unittest.equals('foo'));
  }
  buildCounterAsset--;
}

core.int buildCounterAssetAssociation = 0;
api.AssetAssociation buildAssetAssociation() {
  final o = api.AssetAssociation();
  buildCounterAssetAssociation++;
  if (buildCounterAssetAssociation < 3) {
    o.asset = buildAsset();
    o.role = 'foo';
  }
  buildCounterAssetAssociation--;
  return o;
}

void checkAssetAssociation(api.AssetAssociation o) {
  buildCounterAssetAssociation++;
  if (buildCounterAssetAssociation < 3) {
    checkAsset(o.asset!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterAssetAssociation--;
}

core.int buildCounterAssignedInventorySource = 0;
api.AssignedInventorySource buildAssignedInventorySource() {
  final o = api.AssignedInventorySource();
  buildCounterAssignedInventorySource++;
  if (buildCounterAssignedInventorySource < 3) {
    o.assignedInventorySourceId = 'foo';
    o.inventorySourceId = 'foo';
    o.name = 'foo';
  }
  buildCounterAssignedInventorySource--;
  return o;
}

void checkAssignedInventorySource(api.AssignedInventorySource o) {
  buildCounterAssignedInventorySource++;
  if (buildCounterAssignedInventorySource < 3) {
    unittest.expect(o.assignedInventorySourceId!, unittest.equals('foo'));
    unittest.expect(o.inventorySourceId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAssignedInventorySource--;
}

core.int buildCounterAssignedLocation = 0;
api.AssignedLocation buildAssignedLocation() {
  final o = api.AssignedLocation();
  buildCounterAssignedLocation++;
  if (buildCounterAssignedLocation < 3) {
    o.assignedLocationId = 'foo';
    o.name = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterAssignedLocation--;
  return o;
}

void checkAssignedLocation(api.AssignedLocation o) {
  buildCounterAssignedLocation++;
  if (buildCounterAssignedLocation < 3) {
    unittest.expect(o.assignedLocationId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterAssignedLocation--;
}

core.int buildCounterAssignedTargetingOption = 0;
api.AssignedTargetingOption buildAssignedTargetingOption() {
  final o = api.AssignedTargetingOption();
  buildCounterAssignedTargetingOption++;
  if (buildCounterAssignedTargetingOption < 3) {
    o.ageRangeDetails = buildAgeRangeAssignedTargetingOptionDetails();
    o.appCategoryDetails = buildAppCategoryAssignedTargetingOptionDetails();
    o.appDetails = buildAppAssignedTargetingOptionDetails();
    o.assignedTargetingOptionId = 'foo';
    o.assignedTargetingOptionIdAlias = 'foo';
    o.audienceGroupDetails = buildAudienceGroupAssignedTargetingOptionDetails();
    o.audioContentTypeDetails =
        buildAudioContentTypeAssignedTargetingOptionDetails();
    o.authorizedSellerStatusDetails =
        buildAuthorizedSellerStatusAssignedTargetingOptionDetails();
    o.browserDetails = buildBrowserAssignedTargetingOptionDetails();
    o.businessChainDetails = buildBusinessChainAssignedTargetingOptionDetails();
    o.carrierAndIspDetails = buildCarrierAndIspAssignedTargetingOptionDetails();
    o.categoryDetails = buildCategoryAssignedTargetingOptionDetails();
    o.channelDetails = buildChannelAssignedTargetingOptionDetails();
    o.contentDurationDetails =
        buildContentDurationAssignedTargetingOptionDetails();
    o.contentGenreDetails = buildContentGenreAssignedTargetingOptionDetails();
    o.contentInstreamPositionDetails =
        buildContentInstreamPositionAssignedTargetingOptionDetails();
    o.contentOutstreamPositionDetails =
        buildContentOutstreamPositionAssignedTargetingOptionDetails();
    o.contentStreamTypeDetails =
        buildContentStreamTypeAssignedTargetingOptionDetails();
    o.dayAndTimeDetails = buildDayAndTimeAssignedTargetingOptionDetails();
    o.deviceMakeModelDetails =
        buildDeviceMakeModelAssignedTargetingOptionDetails();
    o.deviceTypeDetails = buildDeviceTypeAssignedTargetingOptionDetails();
    o.digitalContentLabelExclusionDetails =
        buildDigitalContentLabelAssignedTargetingOptionDetails();
    o.environmentDetails = buildEnvironmentAssignedTargetingOptionDetails();
    o.exchangeDetails = buildExchangeAssignedTargetingOptionDetails();
    o.genderDetails = buildGenderAssignedTargetingOptionDetails();
    o.geoRegionDetails = buildGeoRegionAssignedTargetingOptionDetails();
    o.householdIncomeDetails =
        buildHouseholdIncomeAssignedTargetingOptionDetails();
    o.inheritance = 'foo';
    o.inventorySourceDetails =
        buildInventorySourceAssignedTargetingOptionDetails();
    o.inventorySourceGroupDetails =
        buildInventorySourceGroupAssignedTargetingOptionDetails();
    o.keywordDetails = buildKeywordAssignedTargetingOptionDetails();
    o.languageDetails = buildLanguageAssignedTargetingOptionDetails();
    o.name = 'foo';
    o.nativeContentPositionDetails =
        buildNativeContentPositionAssignedTargetingOptionDetails();
    o.negativeKeywordListDetails =
        buildNegativeKeywordListAssignedTargetingOptionDetails();
    o.omidDetails = buildOmidAssignedTargetingOptionDetails();
    o.onScreenPositionDetails =
        buildOnScreenPositionAssignedTargetingOptionDetails();
    o.operatingSystemDetails =
        buildOperatingSystemAssignedTargetingOptionDetails();
    o.parentalStatusDetails =
        buildParentalStatusAssignedTargetingOptionDetails();
    o.poiDetails = buildPoiAssignedTargetingOptionDetails();
    o.proximityLocationListDetails =
        buildProximityLocationListAssignedTargetingOptionDetails();
    o.regionalLocationListDetails =
        buildRegionalLocationListAssignedTargetingOptionDetails();
    o.sensitiveCategoryExclusionDetails =
        buildSensitiveCategoryAssignedTargetingOptionDetails();
    o.sessionPositionDetails =
        buildSessionPositionAssignedTargetingOptionDetails();
    o.subExchangeDetails = buildSubExchangeAssignedTargetingOptionDetails();
    o.targetingType = 'foo';
    o.thirdPartyVerifierDetails =
        buildThirdPartyVerifierAssignedTargetingOptionDetails();
    o.urlDetails = buildUrlAssignedTargetingOptionDetails();
    o.userRewardedContentDetails =
        buildUserRewardedContentAssignedTargetingOptionDetails();
    o.videoPlayerSizeDetails =
        buildVideoPlayerSizeAssignedTargetingOptionDetails();
    o.viewabilityDetails = buildViewabilityAssignedTargetingOptionDetails();
    o.youtubeChannelDetails =
        buildYoutubeChannelAssignedTargetingOptionDetails();
    o.youtubeVideoDetails = buildYoutubeVideoAssignedTargetingOptionDetails();
  }
  buildCounterAssignedTargetingOption--;
  return o;
}

void checkAssignedTargetingOption(api.AssignedTargetingOption o) {
  buildCounterAssignedTargetingOption++;
  if (buildCounterAssignedTargetingOption < 3) {
    checkAgeRangeAssignedTargetingOptionDetails(o.ageRangeDetails!);
    checkAppCategoryAssignedTargetingOptionDetails(o.appCategoryDetails!);
    checkAppAssignedTargetingOptionDetails(o.appDetails!);
    unittest.expect(o.assignedTargetingOptionId!, unittest.equals('foo'));
    unittest.expect(o.assignedTargetingOptionIdAlias!, unittest.equals('foo'));
    checkAudienceGroupAssignedTargetingOptionDetails(o.audienceGroupDetails!);
    checkAudioContentTypeAssignedTargetingOptionDetails(
      o.audioContentTypeDetails!,
    );
    checkAuthorizedSellerStatusAssignedTargetingOptionDetails(
      o.authorizedSellerStatusDetails!,
    );
    checkBrowserAssignedTargetingOptionDetails(o.browserDetails!);
    checkBusinessChainAssignedTargetingOptionDetails(o.businessChainDetails!);
    checkCarrierAndIspAssignedTargetingOptionDetails(o.carrierAndIspDetails!);
    checkCategoryAssignedTargetingOptionDetails(o.categoryDetails!);
    checkChannelAssignedTargetingOptionDetails(o.channelDetails!);
    checkContentDurationAssignedTargetingOptionDetails(
      o.contentDurationDetails!,
    );
    checkContentGenreAssignedTargetingOptionDetails(o.contentGenreDetails!);
    checkContentInstreamPositionAssignedTargetingOptionDetails(
      o.contentInstreamPositionDetails!,
    );
    checkContentOutstreamPositionAssignedTargetingOptionDetails(
      o.contentOutstreamPositionDetails!,
    );
    checkContentStreamTypeAssignedTargetingOptionDetails(
      o.contentStreamTypeDetails!,
    );
    checkDayAndTimeAssignedTargetingOptionDetails(o.dayAndTimeDetails!);
    checkDeviceMakeModelAssignedTargetingOptionDetails(
      o.deviceMakeModelDetails!,
    );
    checkDeviceTypeAssignedTargetingOptionDetails(o.deviceTypeDetails!);
    checkDigitalContentLabelAssignedTargetingOptionDetails(
      o.digitalContentLabelExclusionDetails!,
    );
    checkEnvironmentAssignedTargetingOptionDetails(o.environmentDetails!);
    checkExchangeAssignedTargetingOptionDetails(o.exchangeDetails!);
    checkGenderAssignedTargetingOptionDetails(o.genderDetails!);
    checkGeoRegionAssignedTargetingOptionDetails(o.geoRegionDetails!);
    checkHouseholdIncomeAssignedTargetingOptionDetails(
      o.householdIncomeDetails!,
    );
    unittest.expect(o.inheritance!, unittest.equals('foo'));
    checkInventorySourceAssignedTargetingOptionDetails(
      o.inventorySourceDetails!,
    );
    checkInventorySourceGroupAssignedTargetingOptionDetails(
      o.inventorySourceGroupDetails!,
    );
    checkKeywordAssignedTargetingOptionDetails(o.keywordDetails!);
    checkLanguageAssignedTargetingOptionDetails(o.languageDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNativeContentPositionAssignedTargetingOptionDetails(
      o.nativeContentPositionDetails!,
    );
    checkNegativeKeywordListAssignedTargetingOptionDetails(
      o.negativeKeywordListDetails!,
    );
    checkOmidAssignedTargetingOptionDetails(o.omidDetails!);
    checkOnScreenPositionAssignedTargetingOptionDetails(
      o.onScreenPositionDetails!,
    );
    checkOperatingSystemAssignedTargetingOptionDetails(
      o.operatingSystemDetails!,
    );
    checkParentalStatusAssignedTargetingOptionDetails(o.parentalStatusDetails!);
    checkPoiAssignedTargetingOptionDetails(o.poiDetails!);
    checkProximityLocationListAssignedTargetingOptionDetails(
      o.proximityLocationListDetails!,
    );
    checkRegionalLocationListAssignedTargetingOptionDetails(
      o.regionalLocationListDetails!,
    );
    checkSensitiveCategoryAssignedTargetingOptionDetails(
      o.sensitiveCategoryExclusionDetails!,
    );
    checkSessionPositionAssignedTargetingOptionDetails(
      o.sessionPositionDetails!,
    );
    checkSubExchangeAssignedTargetingOptionDetails(o.subExchangeDetails!);
    unittest.expect(o.targetingType!, unittest.equals('foo'));
    checkThirdPartyVerifierAssignedTargetingOptionDetails(
      o.thirdPartyVerifierDetails!,
    );
    checkUrlAssignedTargetingOptionDetails(o.urlDetails!);
    checkUserRewardedContentAssignedTargetingOptionDetails(
      o.userRewardedContentDetails!,
    );
    checkVideoPlayerSizeAssignedTargetingOptionDetails(
      o.videoPlayerSizeDetails!,
    );
    checkViewabilityAssignedTargetingOptionDetails(o.viewabilityDetails!);
    checkYoutubeChannelAssignedTargetingOptionDetails(o.youtubeChannelDetails!);
    checkYoutubeVideoAssignedTargetingOptionDetails(o.youtubeVideoDetails!);
  }
  buildCounterAssignedTargetingOption--;
}

core.int buildCounterAssignedUserRole = 0;
api.AssignedUserRole buildAssignedUserRole() {
  final o = api.AssignedUserRole();
  buildCounterAssignedUserRole++;
  if (buildCounterAssignedUserRole < 3) {
    o.advertiserId = 'foo';
    o.assignedUserRoleId = 'foo';
    o.partnerId = 'foo';
    o.userRole = 'foo';
  }
  buildCounterAssignedUserRole--;
  return o;
}

void checkAssignedUserRole(api.AssignedUserRole o) {
  buildCounterAssignedUserRole++;
  if (buildCounterAssignedUserRole < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    unittest.expect(o.assignedUserRoleId!, unittest.equals('foo'));
    unittest.expect(o.partnerId!, unittest.equals('foo'));
    unittest.expect(o.userRole!, unittest.equals('foo'));
  }
  buildCounterAssignedUserRole--;
}

core.int buildCounterAudienceGroupAssignedTargetingOptionDetails = 0;
api.AudienceGroupAssignedTargetingOptionDetails
buildAudienceGroupAssignedTargetingOptionDetails() {
  final o = api.AudienceGroupAssignedTargetingOptionDetails();
  buildCounterAudienceGroupAssignedTargetingOptionDetails++;
  if (buildCounterAudienceGroupAssignedTargetingOptionDetails < 3) {
    o.excludedGoogleAudienceGroup = buildGoogleAudienceGroup();
    o.includedCombinedAudienceGroup = buildCombinedAudienceGroup();
    o.includedCustomListGroup = buildCustomListGroup();
    o.includedGoogleAudienceGroup = buildGoogleAudienceGroup();
  }
  buildCounterAudienceGroupAssignedTargetingOptionDetails--;
  return o;
}

void checkAudienceGroupAssignedTargetingOptionDetails(
  api.AudienceGroupAssignedTargetingOptionDetails o,
) {
  buildCounterAudienceGroupAssignedTargetingOptionDetails++;
  if (buildCounterAudienceGroupAssignedTargetingOptionDetails < 3) {
    checkGoogleAudienceGroup(o.excludedGoogleAudienceGroup!);
    checkCombinedAudienceGroup(o.includedCombinedAudienceGroup!);
    checkCustomListGroup(o.includedCustomListGroup!);
    checkGoogleAudienceGroup(o.includedGoogleAudienceGroup!);
  }
  buildCounterAudienceGroupAssignedTargetingOptionDetails--;
}

core.int buildCounterAudioAd = 0;
api.AudioAd buildAudioAd() {
  final o = api.AudioAd();
  buildCounterAudioAd++;
  if (buildCounterAudioAd < 3) {
    o.displayUrl = 'foo';
    o.finalUrl = 'foo';
    o.trackingUrl = 'foo';
    o.video = buildYoutubeVideoDetails();
  }
  buildCounterAudioAd--;
  return o;
}

void checkAudioAd(api.AudioAd o) {
  buildCounterAudioAd++;
  if (buildCounterAudioAd < 3) {
    unittest.expect(o.displayUrl!, unittest.equals('foo'));
    unittest.expect(o.finalUrl!, unittest.equals('foo'));
    unittest.expect(o.trackingUrl!, unittest.equals('foo'));
    checkYoutubeVideoDetails(o.video!);
  }
  buildCounterAudioAd--;
}

core.int buildCounterAudioContentTypeAssignedTargetingOptionDetails = 0;
api.AudioContentTypeAssignedTargetingOptionDetails
buildAudioContentTypeAssignedTargetingOptionDetails() {
  final o = api.AudioContentTypeAssignedTargetingOptionDetails();
  buildCounterAudioContentTypeAssignedTargetingOptionDetails++;
  if (buildCounterAudioContentTypeAssignedTargetingOptionDetails < 3) {
    o.audioContentType = 'foo';
  }
  buildCounterAudioContentTypeAssignedTargetingOptionDetails--;
  return o;
}

void checkAudioContentTypeAssignedTargetingOptionDetails(
  api.AudioContentTypeAssignedTargetingOptionDetails o,
) {
  buildCounterAudioContentTypeAssignedTargetingOptionDetails++;
  if (buildCounterAudioContentTypeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.audioContentType!, unittest.equals('foo'));
  }
  buildCounterAudioContentTypeAssignedTargetingOptionDetails--;
}

core.int buildCounterAudioContentTypeTargetingOptionDetails = 0;
api.AudioContentTypeTargetingOptionDetails
buildAudioContentTypeTargetingOptionDetails() {
  final o = api.AudioContentTypeTargetingOptionDetails();
  buildCounterAudioContentTypeTargetingOptionDetails++;
  if (buildCounterAudioContentTypeTargetingOptionDetails < 3) {
    o.audioContentType = 'foo';
  }
  buildCounterAudioContentTypeTargetingOptionDetails--;
  return o;
}

void checkAudioContentTypeTargetingOptionDetails(
  api.AudioContentTypeTargetingOptionDetails o,
) {
  buildCounterAudioContentTypeTargetingOptionDetails++;
  if (buildCounterAudioContentTypeTargetingOptionDetails < 3) {
    unittest.expect(o.audioContentType!, unittest.equals('foo'));
  }
  buildCounterAudioContentTypeTargetingOptionDetails--;
}

core.int buildCounterAudioVideoOffset = 0;
api.AudioVideoOffset buildAudioVideoOffset() {
  final o = api.AudioVideoOffset();
  buildCounterAudioVideoOffset++;
  if (buildCounterAudioVideoOffset < 3) {
    o.percentage = 'foo';
    o.seconds = 'foo';
  }
  buildCounterAudioVideoOffset--;
  return o;
}

void checkAudioVideoOffset(api.AudioVideoOffset o) {
  buildCounterAudioVideoOffset++;
  if (buildCounterAudioVideoOffset < 3) {
    unittest.expect(o.percentage!, unittest.equals('foo'));
    unittest.expect(o.seconds!, unittest.equals('foo'));
  }
  buildCounterAudioVideoOffset--;
}

core.int buildCounterAuditAdvertiserResponse = 0;
api.AuditAdvertiserResponse buildAuditAdvertiserResponse() {
  final o = api.AuditAdvertiserResponse();
  buildCounterAuditAdvertiserResponse++;
  if (buildCounterAuditAdvertiserResponse < 3) {
    o.adGroupCriteriaCount = 'foo';
    o.campaignCriteriaCount = 'foo';
    o.channelsCount = 'foo';
    o.negativeKeywordListsCount = 'foo';
    o.negativelyTargetedChannelsCount = 'foo';
    o.usedCampaignsCount = 'foo';
    o.usedInsertionOrdersCount = 'foo';
    o.usedLineItemsCount = 'foo';
  }
  buildCounterAuditAdvertiserResponse--;
  return o;
}

void checkAuditAdvertiserResponse(api.AuditAdvertiserResponse o) {
  buildCounterAuditAdvertiserResponse++;
  if (buildCounterAuditAdvertiserResponse < 3) {
    unittest.expect(o.adGroupCriteriaCount!, unittest.equals('foo'));
    unittest.expect(o.campaignCriteriaCount!, unittest.equals('foo'));
    unittest.expect(o.channelsCount!, unittest.equals('foo'));
    unittest.expect(o.negativeKeywordListsCount!, unittest.equals('foo'));
    unittest.expect(o.negativelyTargetedChannelsCount!, unittest.equals('foo'));
    unittest.expect(o.usedCampaignsCount!, unittest.equals('foo'));
    unittest.expect(o.usedInsertionOrdersCount!, unittest.equals('foo'));
    unittest.expect(o.usedLineItemsCount!, unittest.equals('foo'));
  }
  buildCounterAuditAdvertiserResponse--;
}

core.int buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails = 0;
api.AuthorizedSellerStatusAssignedTargetingOptionDetails
buildAuthorizedSellerStatusAssignedTargetingOptionDetails() {
  final o = api.AuthorizedSellerStatusAssignedTargetingOptionDetails();
  buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails++;
  if (buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails < 3) {
    o.authorizedSellerStatus = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails--;
  return o;
}

void checkAuthorizedSellerStatusAssignedTargetingOptionDetails(
  api.AuthorizedSellerStatusAssignedTargetingOptionDetails o,
) {
  buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails++;
  if (buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.authorizedSellerStatus!, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails--;
}

core.int buildCounterAuthorizedSellerStatusTargetingOptionDetails = 0;
api.AuthorizedSellerStatusTargetingOptionDetails
buildAuthorizedSellerStatusTargetingOptionDetails() {
  final o = api.AuthorizedSellerStatusTargetingOptionDetails();
  buildCounterAuthorizedSellerStatusTargetingOptionDetails++;
  if (buildCounterAuthorizedSellerStatusTargetingOptionDetails < 3) {
    o.authorizedSellerStatus = 'foo';
  }
  buildCounterAuthorizedSellerStatusTargetingOptionDetails--;
  return o;
}

void checkAuthorizedSellerStatusTargetingOptionDetails(
  api.AuthorizedSellerStatusTargetingOptionDetails o,
) {
  buildCounterAuthorizedSellerStatusTargetingOptionDetails++;
  if (buildCounterAuthorizedSellerStatusTargetingOptionDetails < 3) {
    unittest.expect(o.authorizedSellerStatus!, unittest.equals('foo'));
  }
  buildCounterAuthorizedSellerStatusTargetingOptionDetails--;
}

core.int buildCounterBiddingStrategy = 0;
api.BiddingStrategy buildBiddingStrategy() {
  final o = api.BiddingStrategy();
  buildCounterBiddingStrategy++;
  if (buildCounterBiddingStrategy < 3) {
    o.fixedBid = buildFixedBidStrategy();
    o.maximizeSpendAutoBid = buildMaximizeSpendBidStrategy();
    o.performanceGoalAutoBid = buildPerformanceGoalBidStrategy();
  }
  buildCounterBiddingStrategy--;
  return o;
}

void checkBiddingStrategy(api.BiddingStrategy o) {
  buildCounterBiddingStrategy++;
  if (buildCounterBiddingStrategy < 3) {
    checkFixedBidStrategy(o.fixedBid!);
    checkMaximizeSpendBidStrategy(o.maximizeSpendAutoBid!);
    checkPerformanceGoalBidStrategy(o.performanceGoalAutoBid!);
  }
  buildCounterBiddingStrategy--;
}

core.int buildCounterBrowserAssignedTargetingOptionDetails = 0;
api.BrowserAssignedTargetingOptionDetails
buildBrowserAssignedTargetingOptionDetails() {
  final o = api.BrowserAssignedTargetingOptionDetails();
  buildCounterBrowserAssignedTargetingOptionDetails++;
  if (buildCounterBrowserAssignedTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.negative = true;
    o.targetingOptionId = 'foo';
  }
  buildCounterBrowserAssignedTargetingOptionDetails--;
  return o;
}

void checkBrowserAssignedTargetingOptionDetails(
  api.BrowserAssignedTargetingOptionDetails o,
) {
  buildCounterBrowserAssignedTargetingOptionDetails++;
  if (buildCounterBrowserAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterBrowserAssignedTargetingOptionDetails--;
}

core.int buildCounterBrowserTargetingOptionDetails = 0;
api.BrowserTargetingOptionDetails buildBrowserTargetingOptionDetails() {
  final o = api.BrowserTargetingOptionDetails();
  buildCounterBrowserTargetingOptionDetails++;
  if (buildCounterBrowserTargetingOptionDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterBrowserTargetingOptionDetails--;
  return o;
}

void checkBrowserTargetingOptionDetails(api.BrowserTargetingOptionDetails o) {
  buildCounterBrowserTargetingOptionDetails++;
  if (buildCounterBrowserTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterBrowserTargetingOptionDetails--;
}

core.int buildCounterBudgetSummary = 0;
api.BudgetSummary buildBudgetSummary() {
  final o = api.BudgetSummary();
  buildCounterBudgetSummary++;
  if (buildCounterBudgetSummary < 3) {
    o.externalBudgetId = 'foo';
    o.preTaxAmountMicros = 'foo';
    o.prismaCpeCode = buildPrismaCpeCode();
    o.taxAmountMicros = 'foo';
    o.totalAmountMicros = 'foo';
  }
  buildCounterBudgetSummary--;
  return o;
}

void checkBudgetSummary(api.BudgetSummary o) {
  buildCounterBudgetSummary++;
  if (buildCounterBudgetSummary < 3) {
    unittest.expect(o.externalBudgetId!, unittest.equals('foo'));
    unittest.expect(o.preTaxAmountMicros!, unittest.equals('foo'));
    checkPrismaCpeCode(o.prismaCpeCode!);
    unittest.expect(o.taxAmountMicros!, unittest.equals('foo'));
    unittest.expect(o.totalAmountMicros!, unittest.equals('foo'));
  }
  buildCounterBudgetSummary--;
}

core.List<api.CreateAssignedTargetingOptionsRequest> buildUnnamed1() => [
  buildCreateAssignedTargetingOptionsRequest(),
  buildCreateAssignedTargetingOptionsRequest(),
];

void checkUnnamed1(core.List<api.CreateAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateAssignedTargetingOptionsRequest(o[0]);
  checkCreateAssignedTargetingOptionsRequest(o[1]);
}

core.List<api.DeleteAssignedTargetingOptionsRequest> buildUnnamed2() => [
  buildDeleteAssignedTargetingOptionsRequest(),
  buildDeleteAssignedTargetingOptionsRequest(),
];

void checkUnnamed2(core.List<api.DeleteAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeleteAssignedTargetingOptionsRequest(o[0]);
  checkDeleteAssignedTargetingOptionsRequest(o[1]);
}

core.int buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest = 0;
api.BulkEditAdvertiserAssignedTargetingOptionsRequest
buildBulkEditAdvertiserAssignedTargetingOptionsRequest() {
  final o = api.BulkEditAdvertiserAssignedTargetingOptionsRequest();
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest < 3) {
    o.createRequests = buildUnnamed1();
    o.deleteRequests = buildUnnamed2();
  }
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest--;
  return o;
}

void checkBulkEditAdvertiserAssignedTargetingOptionsRequest(
  api.BulkEditAdvertiserAssignedTargetingOptionsRequest o,
) {
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest < 3) {
    checkUnnamed1(o.createRequests!);
    checkUnnamed2(o.deleteRequests!);
  }
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest--;
}

core.List<api.AssignedTargetingOption> buildUnnamed3() => [
  buildAssignedTargetingOption(),
  buildAssignedTargetingOption(),
];

void checkUnnamed3(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse = 0;
api.BulkEditAdvertiserAssignedTargetingOptionsResponse
buildBulkEditAdvertiserAssignedTargetingOptionsResponse() {
  final o = api.BulkEditAdvertiserAssignedTargetingOptionsResponse();
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse < 3) {
    o.createdAssignedTargetingOptions = buildUnnamed3();
  }
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkEditAdvertiserAssignedTargetingOptionsResponse(
  api.BulkEditAdvertiserAssignedTargetingOptionsResponse o,
) {
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse < 3) {
    checkUnnamed3(o.createdAssignedTargetingOptions!);
  }
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse--;
}

core.List<api.AssignedInventorySource> buildUnnamed4() => [
  buildAssignedInventorySource(),
  buildAssignedInventorySource(),
];

void checkUnnamed4(core.List<api.AssignedInventorySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedInventorySource(o[0]);
  checkAssignedInventorySource(o[1]);
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditAssignedInventorySourcesRequest = 0;
api.BulkEditAssignedInventorySourcesRequest
buildBulkEditAssignedInventorySourcesRequest() {
  final o = api.BulkEditAssignedInventorySourcesRequest();
  buildCounterBulkEditAssignedInventorySourcesRequest++;
  if (buildCounterBulkEditAssignedInventorySourcesRequest < 3) {
    o.advertiserId = 'foo';
    o.createdAssignedInventorySources = buildUnnamed4();
    o.deletedAssignedInventorySources = buildUnnamed5();
    o.partnerId = 'foo';
  }
  buildCounterBulkEditAssignedInventorySourcesRequest--;
  return o;
}

void checkBulkEditAssignedInventorySourcesRequest(
  api.BulkEditAssignedInventorySourcesRequest o,
) {
  buildCounterBulkEditAssignedInventorySourcesRequest++;
  if (buildCounterBulkEditAssignedInventorySourcesRequest < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    checkUnnamed4(o.createdAssignedInventorySources!);
    checkUnnamed5(o.deletedAssignedInventorySources!);
    unittest.expect(o.partnerId!, unittest.equals('foo'));
  }
  buildCounterBulkEditAssignedInventorySourcesRequest--;
}

core.List<api.AssignedInventorySource> buildUnnamed6() => [
  buildAssignedInventorySource(),
  buildAssignedInventorySource(),
];

void checkUnnamed6(core.List<api.AssignedInventorySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedInventorySource(o[0]);
  checkAssignedInventorySource(o[1]);
}

core.int buildCounterBulkEditAssignedInventorySourcesResponse = 0;
api.BulkEditAssignedInventorySourcesResponse
buildBulkEditAssignedInventorySourcesResponse() {
  final o = api.BulkEditAssignedInventorySourcesResponse();
  buildCounterBulkEditAssignedInventorySourcesResponse++;
  if (buildCounterBulkEditAssignedInventorySourcesResponse < 3) {
    o.assignedInventorySources = buildUnnamed6();
  }
  buildCounterBulkEditAssignedInventorySourcesResponse--;
  return o;
}

void checkBulkEditAssignedInventorySourcesResponse(
  api.BulkEditAssignedInventorySourcesResponse o,
) {
  buildCounterBulkEditAssignedInventorySourcesResponse++;
  if (buildCounterBulkEditAssignedInventorySourcesResponse < 3) {
    checkUnnamed6(o.assignedInventorySources!);
  }
  buildCounterBulkEditAssignedInventorySourcesResponse--;
}

core.List<api.AssignedLocation> buildUnnamed7() => [
  buildAssignedLocation(),
  buildAssignedLocation(),
];

void checkUnnamed7(core.List<api.AssignedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedLocation(o[0]);
  checkAssignedLocation(o[1]);
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditAssignedLocationsRequest = 0;
api.BulkEditAssignedLocationsRequest buildBulkEditAssignedLocationsRequest() {
  final o = api.BulkEditAssignedLocationsRequest();
  buildCounterBulkEditAssignedLocationsRequest++;
  if (buildCounterBulkEditAssignedLocationsRequest < 3) {
    o.createdAssignedLocations = buildUnnamed7();
    o.deletedAssignedLocations = buildUnnamed8();
  }
  buildCounterBulkEditAssignedLocationsRequest--;
  return o;
}

void checkBulkEditAssignedLocationsRequest(
  api.BulkEditAssignedLocationsRequest o,
) {
  buildCounterBulkEditAssignedLocationsRequest++;
  if (buildCounterBulkEditAssignedLocationsRequest < 3) {
    checkUnnamed7(o.createdAssignedLocations!);
    checkUnnamed8(o.deletedAssignedLocations!);
  }
  buildCounterBulkEditAssignedLocationsRequest--;
}

core.List<api.AssignedLocation> buildUnnamed9() => [
  buildAssignedLocation(),
  buildAssignedLocation(),
];

void checkUnnamed9(core.List<api.AssignedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedLocation(o[0]);
  checkAssignedLocation(o[1]);
}

core.int buildCounterBulkEditAssignedLocationsResponse = 0;
api.BulkEditAssignedLocationsResponse buildBulkEditAssignedLocationsResponse() {
  final o = api.BulkEditAssignedLocationsResponse();
  buildCounterBulkEditAssignedLocationsResponse++;
  if (buildCounterBulkEditAssignedLocationsResponse < 3) {
    o.assignedLocations = buildUnnamed9();
  }
  buildCounterBulkEditAssignedLocationsResponse--;
  return o;
}

void checkBulkEditAssignedLocationsResponse(
  api.BulkEditAssignedLocationsResponse o,
) {
  buildCounterBulkEditAssignedLocationsResponse++;
  if (buildCounterBulkEditAssignedLocationsResponse < 3) {
    checkUnnamed9(o.assignedLocations!);
  }
  buildCounterBulkEditAssignedLocationsResponse--;
}

core.List<api.CreateAssignedTargetingOptionsRequest> buildUnnamed10() => [
  buildCreateAssignedTargetingOptionsRequest(),
  buildCreateAssignedTargetingOptionsRequest(),
];

void checkUnnamed10(core.List<api.CreateAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateAssignedTargetingOptionsRequest(o[0]);
  checkCreateAssignedTargetingOptionsRequest(o[1]);
}

core.List<api.DeleteAssignedTargetingOptionsRequest> buildUnnamed11() => [
  buildDeleteAssignedTargetingOptionsRequest(),
  buildDeleteAssignedTargetingOptionsRequest(),
];

void checkUnnamed11(core.List<api.DeleteAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeleteAssignedTargetingOptionsRequest(o[0]);
  checkDeleteAssignedTargetingOptionsRequest(o[1]);
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditAssignedTargetingOptionsRequest = 0;
api.BulkEditAssignedTargetingOptionsRequest
buildBulkEditAssignedTargetingOptionsRequest() {
  final o = api.BulkEditAssignedTargetingOptionsRequest();
  buildCounterBulkEditAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditAssignedTargetingOptionsRequest < 3) {
    o.createRequests = buildUnnamed10();
    o.deleteRequests = buildUnnamed11();
    o.lineItemIds = buildUnnamed12();
  }
  buildCounterBulkEditAssignedTargetingOptionsRequest--;
  return o;
}

void checkBulkEditAssignedTargetingOptionsRequest(
  api.BulkEditAssignedTargetingOptionsRequest o,
) {
  buildCounterBulkEditAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditAssignedTargetingOptionsRequest < 3) {
    checkUnnamed10(o.createRequests!);
    checkUnnamed11(o.deleteRequests!);
    checkUnnamed12(o.lineItemIds!);
  }
  buildCounterBulkEditAssignedTargetingOptionsRequest--;
}

core.List<api.Status> buildUnnamed13() => [buildStatus(), buildStatus()];

void checkUnnamed13(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditAssignedTargetingOptionsResponse = 0;
api.BulkEditAssignedTargetingOptionsResponse
buildBulkEditAssignedTargetingOptionsResponse() {
  final o = api.BulkEditAssignedTargetingOptionsResponse();
  buildCounterBulkEditAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditAssignedTargetingOptionsResponse < 3) {
    o.errors = buildUnnamed13();
    o.failedLineItemIds = buildUnnamed14();
    o.updatedLineItemIds = buildUnnamed15();
  }
  buildCounterBulkEditAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkEditAssignedTargetingOptionsResponse(
  api.BulkEditAssignedTargetingOptionsResponse o,
) {
  buildCounterBulkEditAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditAssignedTargetingOptionsResponse < 3) {
    checkUnnamed13(o.errors!);
    checkUnnamed14(o.failedLineItemIds!);
    checkUnnamed15(o.updatedLineItemIds!);
  }
  buildCounterBulkEditAssignedTargetingOptionsResponse--;
}

core.List<api.AssignedUserRole> buildUnnamed16() => [
  buildAssignedUserRole(),
  buildAssignedUserRole(),
];

void checkUnnamed16(core.List<api.AssignedUserRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedUserRole(o[0]);
  checkAssignedUserRole(o[1]);
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditAssignedUserRolesRequest = 0;
api.BulkEditAssignedUserRolesRequest buildBulkEditAssignedUserRolesRequest() {
  final o = api.BulkEditAssignedUserRolesRequest();
  buildCounterBulkEditAssignedUserRolesRequest++;
  if (buildCounterBulkEditAssignedUserRolesRequest < 3) {
    o.createdAssignedUserRoles = buildUnnamed16();
    o.deletedAssignedUserRoles = buildUnnamed17();
  }
  buildCounterBulkEditAssignedUserRolesRequest--;
  return o;
}

void checkBulkEditAssignedUserRolesRequest(
  api.BulkEditAssignedUserRolesRequest o,
) {
  buildCounterBulkEditAssignedUserRolesRequest++;
  if (buildCounterBulkEditAssignedUserRolesRequest < 3) {
    checkUnnamed16(o.createdAssignedUserRoles!);
    checkUnnamed17(o.deletedAssignedUserRoles!);
  }
  buildCounterBulkEditAssignedUserRolesRequest--;
}

core.List<api.AssignedUserRole> buildUnnamed18() => [
  buildAssignedUserRole(),
  buildAssignedUserRole(),
];

void checkUnnamed18(core.List<api.AssignedUserRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedUserRole(o[0]);
  checkAssignedUserRole(o[1]);
}

core.int buildCounterBulkEditAssignedUserRolesResponse = 0;
api.BulkEditAssignedUserRolesResponse buildBulkEditAssignedUserRolesResponse() {
  final o = api.BulkEditAssignedUserRolesResponse();
  buildCounterBulkEditAssignedUserRolesResponse++;
  if (buildCounterBulkEditAssignedUserRolesResponse < 3) {
    o.createdAssignedUserRoles = buildUnnamed18();
  }
  buildCounterBulkEditAssignedUserRolesResponse--;
  return o;
}

void checkBulkEditAssignedUserRolesResponse(
  api.BulkEditAssignedUserRolesResponse o,
) {
  buildCounterBulkEditAssignedUserRolesResponse++;
  if (buildCounterBulkEditAssignedUserRolesResponse < 3) {
    checkUnnamed18(o.createdAssignedUserRoles!);
  }
  buildCounterBulkEditAssignedUserRolesResponse--;
}

core.List<api.NegativeKeyword> buildUnnamed19() => [
  buildNegativeKeyword(),
  buildNegativeKeyword(),
];

void checkUnnamed19(core.List<api.NegativeKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeyword(o[0]);
  checkNegativeKeyword(o[1]);
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditNegativeKeywordsRequest = 0;
api.BulkEditNegativeKeywordsRequest buildBulkEditNegativeKeywordsRequest() {
  final o = api.BulkEditNegativeKeywordsRequest();
  buildCounterBulkEditNegativeKeywordsRequest++;
  if (buildCounterBulkEditNegativeKeywordsRequest < 3) {
    o.createdNegativeKeywords = buildUnnamed19();
    o.deletedNegativeKeywords = buildUnnamed20();
  }
  buildCounterBulkEditNegativeKeywordsRequest--;
  return o;
}

void checkBulkEditNegativeKeywordsRequest(
  api.BulkEditNegativeKeywordsRequest o,
) {
  buildCounterBulkEditNegativeKeywordsRequest++;
  if (buildCounterBulkEditNegativeKeywordsRequest < 3) {
    checkUnnamed19(o.createdNegativeKeywords!);
    checkUnnamed20(o.deletedNegativeKeywords!);
  }
  buildCounterBulkEditNegativeKeywordsRequest--;
}

core.List<api.NegativeKeyword> buildUnnamed21() => [
  buildNegativeKeyword(),
  buildNegativeKeyword(),
];

void checkUnnamed21(core.List<api.NegativeKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeyword(o[0]);
  checkNegativeKeyword(o[1]);
}

core.int buildCounterBulkEditNegativeKeywordsResponse = 0;
api.BulkEditNegativeKeywordsResponse buildBulkEditNegativeKeywordsResponse() {
  final o = api.BulkEditNegativeKeywordsResponse();
  buildCounterBulkEditNegativeKeywordsResponse++;
  if (buildCounterBulkEditNegativeKeywordsResponse < 3) {
    o.negativeKeywords = buildUnnamed21();
  }
  buildCounterBulkEditNegativeKeywordsResponse--;
  return o;
}

void checkBulkEditNegativeKeywordsResponse(
  api.BulkEditNegativeKeywordsResponse o,
) {
  buildCounterBulkEditNegativeKeywordsResponse++;
  if (buildCounterBulkEditNegativeKeywordsResponse < 3) {
    checkUnnamed21(o.negativeKeywords!);
  }
  buildCounterBulkEditNegativeKeywordsResponse--;
}

core.List<api.CreateAssignedTargetingOptionsRequest> buildUnnamed22() => [
  buildCreateAssignedTargetingOptionsRequest(),
  buildCreateAssignedTargetingOptionsRequest(),
];

void checkUnnamed22(core.List<api.CreateAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateAssignedTargetingOptionsRequest(o[0]);
  checkCreateAssignedTargetingOptionsRequest(o[1]);
}

core.List<api.DeleteAssignedTargetingOptionsRequest> buildUnnamed23() => [
  buildDeleteAssignedTargetingOptionsRequest(),
  buildDeleteAssignedTargetingOptionsRequest(),
];

void checkUnnamed23(core.List<api.DeleteAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeleteAssignedTargetingOptionsRequest(o[0]);
  checkDeleteAssignedTargetingOptionsRequest(o[1]);
}

core.int buildCounterBulkEditPartnerAssignedTargetingOptionsRequest = 0;
api.BulkEditPartnerAssignedTargetingOptionsRequest
buildBulkEditPartnerAssignedTargetingOptionsRequest() {
  final o = api.BulkEditPartnerAssignedTargetingOptionsRequest();
  buildCounterBulkEditPartnerAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditPartnerAssignedTargetingOptionsRequest < 3) {
    o.createRequests = buildUnnamed22();
    o.deleteRequests = buildUnnamed23();
  }
  buildCounterBulkEditPartnerAssignedTargetingOptionsRequest--;
  return o;
}

void checkBulkEditPartnerAssignedTargetingOptionsRequest(
  api.BulkEditPartnerAssignedTargetingOptionsRequest o,
) {
  buildCounterBulkEditPartnerAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditPartnerAssignedTargetingOptionsRequest < 3) {
    checkUnnamed22(o.createRequests!);
    checkUnnamed23(o.deleteRequests!);
  }
  buildCounterBulkEditPartnerAssignedTargetingOptionsRequest--;
}

core.List<api.AssignedTargetingOption> buildUnnamed24() => [
  buildAssignedTargetingOption(),
  buildAssignedTargetingOption(),
];

void checkUnnamed24(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterBulkEditPartnerAssignedTargetingOptionsResponse = 0;
api.BulkEditPartnerAssignedTargetingOptionsResponse
buildBulkEditPartnerAssignedTargetingOptionsResponse() {
  final o = api.BulkEditPartnerAssignedTargetingOptionsResponse();
  buildCounterBulkEditPartnerAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditPartnerAssignedTargetingOptionsResponse < 3) {
    o.createdAssignedTargetingOptions = buildUnnamed24();
  }
  buildCounterBulkEditPartnerAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkEditPartnerAssignedTargetingOptionsResponse(
  api.BulkEditPartnerAssignedTargetingOptionsResponse o,
) {
  buildCounterBulkEditPartnerAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditPartnerAssignedTargetingOptionsResponse < 3) {
    checkUnnamed24(o.createdAssignedTargetingOptions!);
  }
  buildCounterBulkEditPartnerAssignedTargetingOptionsResponse--;
}

core.List<api.Site> buildUnnamed25() => [buildSite(), buildSite()];

void checkUnnamed25(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0]);
  checkSite(o[1]);
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditSitesRequest = 0;
api.BulkEditSitesRequest buildBulkEditSitesRequest() {
  final o = api.BulkEditSitesRequest();
  buildCounterBulkEditSitesRequest++;
  if (buildCounterBulkEditSitesRequest < 3) {
    o.advertiserId = 'foo';
    o.createdSites = buildUnnamed25();
    o.deletedSites = buildUnnamed26();
    o.partnerId = 'foo';
  }
  buildCounterBulkEditSitesRequest--;
  return o;
}

void checkBulkEditSitesRequest(api.BulkEditSitesRequest o) {
  buildCounterBulkEditSitesRequest++;
  if (buildCounterBulkEditSitesRequest < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    checkUnnamed25(o.createdSites!);
    checkUnnamed26(o.deletedSites!);
    unittest.expect(o.partnerId!, unittest.equals('foo'));
  }
  buildCounterBulkEditSitesRequest--;
}

core.List<api.Site> buildUnnamed27() => [buildSite(), buildSite()];

void checkUnnamed27(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0]);
  checkSite(o[1]);
}

core.int buildCounterBulkEditSitesResponse = 0;
api.BulkEditSitesResponse buildBulkEditSitesResponse() {
  final o = api.BulkEditSitesResponse();
  buildCounterBulkEditSitesResponse++;
  if (buildCounterBulkEditSitesResponse < 3) {
    o.sites = buildUnnamed27();
  }
  buildCounterBulkEditSitesResponse--;
  return o;
}

void checkBulkEditSitesResponse(api.BulkEditSitesResponse o) {
  buildCounterBulkEditSitesResponse++;
  if (buildCounterBulkEditSitesResponse < 3) {
    checkUnnamed27(o.sites!);
  }
  buildCounterBulkEditSitesResponse--;
}

core.List<api.YoutubeAdGroupAssignedTargetingOption> buildUnnamed28() => [
  buildYoutubeAdGroupAssignedTargetingOption(),
  buildYoutubeAdGroupAssignedTargetingOption(),
];

void checkUnnamed28(core.List<api.YoutubeAdGroupAssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYoutubeAdGroupAssignedTargetingOption(o[0]);
  checkYoutubeAdGroupAssignedTargetingOption(o[1]);
}

core.int buildCounterBulkListAdGroupAssignedTargetingOptionsResponse = 0;
api.BulkListAdGroupAssignedTargetingOptionsResponse
buildBulkListAdGroupAssignedTargetingOptionsResponse() {
  final o = api.BulkListAdGroupAssignedTargetingOptionsResponse();
  buildCounterBulkListAdGroupAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListAdGroupAssignedTargetingOptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.youtubeAdGroupAssignedTargetingOptions = buildUnnamed28();
  }
  buildCounterBulkListAdGroupAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkListAdGroupAssignedTargetingOptionsResponse(
  api.BulkListAdGroupAssignedTargetingOptionsResponse o,
) {
  buildCounterBulkListAdGroupAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListAdGroupAssignedTargetingOptionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed28(o.youtubeAdGroupAssignedTargetingOptions!);
  }
  buildCounterBulkListAdGroupAssignedTargetingOptionsResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed29() => [
  buildAssignedTargetingOption(),
  buildAssignedTargetingOption(),
];

void checkUnnamed29(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse = 0;
api.BulkListAdvertiserAssignedTargetingOptionsResponse
buildBulkListAdvertiserAssignedTargetingOptionsResponse() {
  final o = api.BulkListAdvertiserAssignedTargetingOptionsResponse();
  buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed29();
    o.nextPageToken = 'foo';
  }
  buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkListAdvertiserAssignedTargetingOptionsResponse(
  api.BulkListAdvertiserAssignedTargetingOptionsResponse o,
) {
  buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse < 3) {
    checkUnnamed29(o.assignedTargetingOptions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse--;
}

core.List<api.LineItemAssignedTargetingOption> buildUnnamed30() => [
  buildLineItemAssignedTargetingOption(),
  buildLineItemAssignedTargetingOption(),
];

void checkUnnamed30(core.List<api.LineItemAssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLineItemAssignedTargetingOption(o[0]);
  checkLineItemAssignedTargetingOption(o[1]);
}

core.int buildCounterBulkListAssignedTargetingOptionsResponse = 0;
api.BulkListAssignedTargetingOptionsResponse
buildBulkListAssignedTargetingOptionsResponse() {
  final o = api.BulkListAssignedTargetingOptionsResponse();
  buildCounterBulkListAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListAssignedTargetingOptionsResponse < 3) {
    o.lineItemAssignedTargetingOptions = buildUnnamed30();
    o.nextPageToken = 'foo';
  }
  buildCounterBulkListAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkListAssignedTargetingOptionsResponse(
  api.BulkListAssignedTargetingOptionsResponse o,
) {
  buildCounterBulkListAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListAssignedTargetingOptionsResponse < 3) {
    checkUnnamed30(o.lineItemAssignedTargetingOptions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterBulkListAssignedTargetingOptionsResponse--;
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkUpdateLineItemsRequest = 0;
api.BulkUpdateLineItemsRequest buildBulkUpdateLineItemsRequest() {
  final o = api.BulkUpdateLineItemsRequest();
  buildCounterBulkUpdateLineItemsRequest++;
  if (buildCounterBulkUpdateLineItemsRequest < 3) {
    o.lineItemIds = buildUnnamed31();
    o.targetLineItem = buildLineItem();
    o.updateMask = 'foo';
  }
  buildCounterBulkUpdateLineItemsRequest--;
  return o;
}

void checkBulkUpdateLineItemsRequest(api.BulkUpdateLineItemsRequest o) {
  buildCounterBulkUpdateLineItemsRequest++;
  if (buildCounterBulkUpdateLineItemsRequest < 3) {
    checkUnnamed31(o.lineItemIds!);
    checkLineItem(o.targetLineItem!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterBulkUpdateLineItemsRequest--;
}

core.List<api.Status> buildUnnamed32() => [buildStatus(), buildStatus()];

void checkUnnamed32(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkUpdateLineItemsResponse = 0;
api.BulkUpdateLineItemsResponse buildBulkUpdateLineItemsResponse() {
  final o = api.BulkUpdateLineItemsResponse();
  buildCounterBulkUpdateLineItemsResponse++;
  if (buildCounterBulkUpdateLineItemsResponse < 3) {
    o.errors = buildUnnamed32();
    o.failedLineItemIds = buildUnnamed33();
    o.skippedLineItemIds = buildUnnamed34();
    o.updatedLineItemIds = buildUnnamed35();
  }
  buildCounterBulkUpdateLineItemsResponse--;
  return o;
}

void checkBulkUpdateLineItemsResponse(api.BulkUpdateLineItemsResponse o) {
  buildCounterBulkUpdateLineItemsResponse++;
  if (buildCounterBulkUpdateLineItemsResponse < 3) {
    checkUnnamed32(o.errors!);
    checkUnnamed33(o.failedLineItemIds!);
    checkUnnamed34(o.skippedLineItemIds!);
    checkUnnamed35(o.updatedLineItemIds!);
  }
  buildCounterBulkUpdateLineItemsResponse--;
}

core.int buildCounterBumperAd = 0;
api.BumperAd buildBumperAd() {
  final o = api.BumperAd();
  buildCounterBumperAd++;
  if (buildCounterBumperAd < 3) {
    o.commonInStreamAttribute = buildCommonInStreamAttribute();
  }
  buildCounterBumperAd--;
  return o;
}

void checkBumperAd(api.BumperAd o) {
  buildCounterBumperAd++;
  if (buildCounterBumperAd < 3) {
    checkCommonInStreamAttribute(o.commonInStreamAttribute!);
  }
  buildCounterBumperAd--;
}

core.int buildCounterBusinessChainAssignedTargetingOptionDetails = 0;
api.BusinessChainAssignedTargetingOptionDetails
buildBusinessChainAssignedTargetingOptionDetails() {
  final o = api.BusinessChainAssignedTargetingOptionDetails();
  buildCounterBusinessChainAssignedTargetingOptionDetails++;
  if (buildCounterBusinessChainAssignedTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.proximityRadiusAmount = 42.0;
    o.proximityRadiusUnit = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterBusinessChainAssignedTargetingOptionDetails--;
  return o;
}

void checkBusinessChainAssignedTargetingOptionDetails(
  api.BusinessChainAssignedTargetingOptionDetails o,
) {
  buildCounterBusinessChainAssignedTargetingOptionDetails++;
  if (buildCounterBusinessChainAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.proximityRadiusAmount!, unittest.equals(42.0));
    unittest.expect(o.proximityRadiusUnit!, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterBusinessChainAssignedTargetingOptionDetails--;
}

core.int buildCounterBusinessChainSearchTerms = 0;
api.BusinessChainSearchTerms buildBusinessChainSearchTerms() {
  final o = api.BusinessChainSearchTerms();
  buildCounterBusinessChainSearchTerms++;
  if (buildCounterBusinessChainSearchTerms < 3) {
    o.businessChainQuery = 'foo';
    o.regionQuery = 'foo';
  }
  buildCounterBusinessChainSearchTerms--;
  return o;
}

void checkBusinessChainSearchTerms(api.BusinessChainSearchTerms o) {
  buildCounterBusinessChainSearchTerms++;
  if (buildCounterBusinessChainSearchTerms < 3) {
    unittest.expect(o.businessChainQuery!, unittest.equals('foo'));
    unittest.expect(o.regionQuery!, unittest.equals('foo'));
  }
  buildCounterBusinessChainSearchTerms--;
}

core.int buildCounterBusinessChainTargetingOptionDetails = 0;
api.BusinessChainTargetingOptionDetails
buildBusinessChainTargetingOptionDetails() {
  final o = api.BusinessChainTargetingOptionDetails();
  buildCounterBusinessChainTargetingOptionDetails++;
  if (buildCounterBusinessChainTargetingOptionDetails < 3) {
    o.businessChain = 'foo';
    o.geoRegion = 'foo';
    o.geoRegionType = 'foo';
  }
  buildCounterBusinessChainTargetingOptionDetails--;
  return o;
}

void checkBusinessChainTargetingOptionDetails(
  api.BusinessChainTargetingOptionDetails o,
) {
  buildCounterBusinessChainTargetingOptionDetails++;
  if (buildCounterBusinessChainTargetingOptionDetails < 3) {
    unittest.expect(o.businessChain!, unittest.equals('foo'));
    unittest.expect(o.geoRegion!, unittest.equals('foo'));
    unittest.expect(o.geoRegionType!, unittest.equals('foo'));
  }
  buildCounterBusinessChainTargetingOptionDetails--;
}

core.List<api.CampaignBudget> buildUnnamed36() => [
  buildCampaignBudget(),
  buildCampaignBudget(),
];

void checkUnnamed36(core.List<api.CampaignBudget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCampaignBudget(o[0]);
  checkCampaignBudget(o[1]);
}

core.int buildCounterCampaign = 0;
api.Campaign buildCampaign() {
  final o = api.Campaign();
  buildCounterCampaign++;
  if (buildCounterCampaign < 3) {
    o.advertiserId = 'foo';
    o.campaignBudgets = buildUnnamed36();
    o.campaignFlight = buildCampaignFlight();
    o.campaignGoal = buildCampaignGoal();
    o.campaignId = 'foo';
    o.displayName = 'foo';
    o.entityStatus = 'foo';
    o.frequencyCap = buildFrequencyCap();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCampaign--;
  return o;
}

void checkCampaign(api.Campaign o) {
  buildCounterCampaign++;
  if (buildCounterCampaign < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    checkUnnamed36(o.campaignBudgets!);
    checkCampaignFlight(o.campaignFlight!);
    checkCampaignGoal(o.campaignGoal!);
    unittest.expect(o.campaignId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entityStatus!, unittest.equals('foo'));
    checkFrequencyCap(o.frequencyCap!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterCampaign--;
}

core.int buildCounterCampaignBudget = 0;
api.CampaignBudget buildCampaignBudget() {
  final o = api.CampaignBudget();
  buildCounterCampaignBudget++;
  if (buildCounterCampaignBudget < 3) {
    o.budgetAmountMicros = 'foo';
    o.budgetId = 'foo';
    o.budgetUnit = 'foo';
    o.dateRange = buildDateRange();
    o.displayName = 'foo';
    o.externalBudgetId = 'foo';
    o.externalBudgetSource = 'foo';
    o.invoiceGroupingId = 'foo';
    o.prismaConfig = buildPrismaConfig();
  }
  buildCounterCampaignBudget--;
  return o;
}

void checkCampaignBudget(api.CampaignBudget o) {
  buildCounterCampaignBudget++;
  if (buildCounterCampaignBudget < 3) {
    unittest.expect(o.budgetAmountMicros!, unittest.equals('foo'));
    unittest.expect(o.budgetId!, unittest.equals('foo'));
    unittest.expect(o.budgetUnit!, unittest.equals('foo'));
    checkDateRange(o.dateRange!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.externalBudgetId!, unittest.equals('foo'));
    unittest.expect(o.externalBudgetSource!, unittest.equals('foo'));
    unittest.expect(o.invoiceGroupingId!, unittest.equals('foo'));
    checkPrismaConfig(o.prismaConfig!);
  }
  buildCounterCampaignBudget--;
}

core.int buildCounterCampaignFlight = 0;
api.CampaignFlight buildCampaignFlight() {
  final o = api.CampaignFlight();
  buildCounterCampaignFlight++;
  if (buildCounterCampaignFlight < 3) {
    o.plannedDates = buildDateRange();
    o.plannedSpendAmountMicros = 'foo';
  }
  buildCounterCampaignFlight--;
  return o;
}

void checkCampaignFlight(api.CampaignFlight o) {
  buildCounterCampaignFlight++;
  if (buildCounterCampaignFlight < 3) {
    checkDateRange(o.plannedDates!);
    unittest.expect(o.plannedSpendAmountMicros!, unittest.equals('foo'));
  }
  buildCounterCampaignFlight--;
}

core.int buildCounterCampaignGoal = 0;
api.CampaignGoal buildCampaignGoal() {
  final o = api.CampaignGoal();
  buildCounterCampaignGoal++;
  if (buildCounterCampaignGoal < 3) {
    o.campaignGoalType = 'foo';
    o.performanceGoal = buildPerformanceGoal();
  }
  buildCounterCampaignGoal--;
  return o;
}

void checkCampaignGoal(api.CampaignGoal o) {
  buildCounterCampaignGoal++;
  if (buildCounterCampaignGoal < 3) {
    unittest.expect(o.campaignGoalType!, unittest.equals('foo'));
    checkPerformanceGoal(o.performanceGoal!);
  }
  buildCounterCampaignGoal--;
}

core.int buildCounterCarrierAndIspAssignedTargetingOptionDetails = 0;
api.CarrierAndIspAssignedTargetingOptionDetails
buildCarrierAndIspAssignedTargetingOptionDetails() {
  final o = api.CarrierAndIspAssignedTargetingOptionDetails();
  buildCounterCarrierAndIspAssignedTargetingOptionDetails++;
  if (buildCounterCarrierAndIspAssignedTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.negative = true;
    o.targetingOptionId = 'foo';
  }
  buildCounterCarrierAndIspAssignedTargetingOptionDetails--;
  return o;
}

void checkCarrierAndIspAssignedTargetingOptionDetails(
  api.CarrierAndIspAssignedTargetingOptionDetails o,
) {
  buildCounterCarrierAndIspAssignedTargetingOptionDetails++;
  if (buildCounterCarrierAndIspAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterCarrierAndIspAssignedTargetingOptionDetails--;
}

core.int buildCounterCarrierAndIspTargetingOptionDetails = 0;
api.CarrierAndIspTargetingOptionDetails
buildCarrierAndIspTargetingOptionDetails() {
  final o = api.CarrierAndIspTargetingOptionDetails();
  buildCounterCarrierAndIspTargetingOptionDetails++;
  if (buildCounterCarrierAndIspTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.type = 'foo';
  }
  buildCounterCarrierAndIspTargetingOptionDetails--;
  return o;
}

void checkCarrierAndIspTargetingOptionDetails(
  api.CarrierAndIspTargetingOptionDetails o,
) {
  buildCounterCarrierAndIspTargetingOptionDetails++;
  if (buildCounterCarrierAndIspTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterCarrierAndIspTargetingOptionDetails--;
}

core.int buildCounterCategoryAssignedTargetingOptionDetails = 0;
api.CategoryAssignedTargetingOptionDetails
buildCategoryAssignedTargetingOptionDetails() {
  final o = api.CategoryAssignedTargetingOptionDetails();
  buildCounterCategoryAssignedTargetingOptionDetails++;
  if (buildCounterCategoryAssignedTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.negative = true;
    o.targetingOptionId = 'foo';
  }
  buildCounterCategoryAssignedTargetingOptionDetails--;
  return o;
}

void checkCategoryAssignedTargetingOptionDetails(
  api.CategoryAssignedTargetingOptionDetails o,
) {
  buildCounterCategoryAssignedTargetingOptionDetails++;
  if (buildCounterCategoryAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterCategoryAssignedTargetingOptionDetails--;
}

core.int buildCounterCategoryTargetingOptionDetails = 0;
api.CategoryTargetingOptionDetails buildCategoryTargetingOptionDetails() {
  final o = api.CategoryTargetingOptionDetails();
  buildCounterCategoryTargetingOptionDetails++;
  if (buildCounterCategoryTargetingOptionDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterCategoryTargetingOptionDetails--;
  return o;
}

void checkCategoryTargetingOptionDetails(api.CategoryTargetingOptionDetails o) {
  buildCounterCategoryTargetingOptionDetails++;
  if (buildCounterCategoryTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterCategoryTargetingOptionDetails--;
}

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  final o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.advertiserId = 'foo';
    o.channelId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.negativelyTargetedLineItemCount = 'foo';
    o.partnerId = 'foo';
    o.positivelyTargetedLineItemCount = 'foo';
  }
  buildCounterChannel--;
  return o;
}

void checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    unittest.expect(o.channelId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.negativelyTargetedLineItemCount!, unittest.equals('foo'));
    unittest.expect(o.partnerId!, unittest.equals('foo'));
    unittest.expect(o.positivelyTargetedLineItemCount!, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.int buildCounterChannelAssignedTargetingOptionDetails = 0;
api.ChannelAssignedTargetingOptionDetails
buildChannelAssignedTargetingOptionDetails() {
  final o = api.ChannelAssignedTargetingOptionDetails();
  buildCounterChannelAssignedTargetingOptionDetails++;
  if (buildCounterChannelAssignedTargetingOptionDetails < 3) {
    o.channelId = 'foo';
    o.negative = true;
  }
  buildCounterChannelAssignedTargetingOptionDetails--;
  return o;
}

void checkChannelAssignedTargetingOptionDetails(
  api.ChannelAssignedTargetingOptionDetails o,
) {
  buildCounterChannelAssignedTargetingOptionDetails++;
  if (buildCounterChannelAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.channelId!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
  }
  buildCounterChannelAssignedTargetingOptionDetails--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCmHybridConfig = 0;
api.CmHybridConfig buildCmHybridConfig() {
  final o = api.CmHybridConfig();
  buildCounterCmHybridConfig++;
  if (buildCounterCmHybridConfig < 3) {
    o.cmAccountId = 'foo';
    o.cmAdvertiserIds = buildUnnamed37();
    o.cmFloodlightConfigId = 'foo';
    o.cmFloodlightLinkingAuthorized = true;
    o.cmSyncableSiteIds = buildUnnamed38();
    o.dv360ToCmCostReportingEnabled = true;
    o.dv360ToCmDataSharingEnabled = true;
  }
  buildCounterCmHybridConfig--;
  return o;
}

void checkCmHybridConfig(api.CmHybridConfig o) {
  buildCounterCmHybridConfig++;
  if (buildCounterCmHybridConfig < 3) {
    unittest.expect(o.cmAccountId!, unittest.equals('foo'));
    checkUnnamed37(o.cmAdvertiserIds!);
    unittest.expect(o.cmFloodlightConfigId!, unittest.equals('foo'));
    unittest.expect(o.cmFloodlightLinkingAuthorized!, unittest.isTrue);
    checkUnnamed38(o.cmSyncableSiteIds!);
    unittest.expect(o.dv360ToCmCostReportingEnabled!, unittest.isTrue);
    unittest.expect(o.dv360ToCmDataSharingEnabled!, unittest.isTrue);
  }
  buildCounterCmHybridConfig--;
}

core.int buildCounterCmTrackingAd = 0;
api.CmTrackingAd buildCmTrackingAd() {
  final o = api.CmTrackingAd();
  buildCounterCmTrackingAd++;
  if (buildCounterCmTrackingAd < 3) {
    o.cmAdId = 'foo';
    o.cmCreativeId = 'foo';
    o.cmPlacementId = 'foo';
  }
  buildCounterCmTrackingAd--;
  return o;
}

void checkCmTrackingAd(api.CmTrackingAd o) {
  buildCounterCmTrackingAd++;
  if (buildCounterCmTrackingAd < 3) {
    unittest.expect(o.cmAdId!, unittest.equals('foo'));
    unittest.expect(o.cmCreativeId!, unittest.equals('foo'));
    unittest.expect(o.cmPlacementId!, unittest.equals('foo'));
  }
  buildCounterCmTrackingAd--;
}

core.int buildCounterCombinedAudience = 0;
api.CombinedAudience buildCombinedAudience() {
  final o = api.CombinedAudience();
  buildCounterCombinedAudience++;
  if (buildCounterCombinedAudience < 3) {
    o.combinedAudienceId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterCombinedAudience--;
  return o;
}

void checkCombinedAudience(api.CombinedAudience o) {
  buildCounterCombinedAudience++;
  if (buildCounterCombinedAudience < 3) {
    unittest.expect(o.combinedAudienceId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterCombinedAudience--;
}

core.List<api.CombinedAudienceTargetingSetting> buildUnnamed39() => [
  buildCombinedAudienceTargetingSetting(),
  buildCombinedAudienceTargetingSetting(),
];

void checkUnnamed39(core.List<api.CombinedAudienceTargetingSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCombinedAudienceTargetingSetting(o[0]);
  checkCombinedAudienceTargetingSetting(o[1]);
}

core.int buildCounterCombinedAudienceGroup = 0;
api.CombinedAudienceGroup buildCombinedAudienceGroup() {
  final o = api.CombinedAudienceGroup();
  buildCounterCombinedAudienceGroup++;
  if (buildCounterCombinedAudienceGroup < 3) {
    o.settings = buildUnnamed39();
  }
  buildCounterCombinedAudienceGroup--;
  return o;
}

void checkCombinedAudienceGroup(api.CombinedAudienceGroup o) {
  buildCounterCombinedAudienceGroup++;
  if (buildCounterCombinedAudienceGroup < 3) {
    checkUnnamed39(o.settings!);
  }
  buildCounterCombinedAudienceGroup--;
}

core.int buildCounterCombinedAudienceTargetingSetting = 0;
api.CombinedAudienceTargetingSetting buildCombinedAudienceTargetingSetting() {
  final o = api.CombinedAudienceTargetingSetting();
  buildCounterCombinedAudienceTargetingSetting++;
  if (buildCounterCombinedAudienceTargetingSetting < 3) {
    o.combinedAudienceId = 'foo';
  }
  buildCounterCombinedAudienceTargetingSetting--;
  return o;
}

void checkCombinedAudienceTargetingSetting(
  api.CombinedAudienceTargetingSetting o,
) {
  buildCounterCombinedAudienceTargetingSetting++;
  if (buildCounterCombinedAudienceTargetingSetting < 3) {
    unittest.expect(o.combinedAudienceId!, unittest.equals('foo'));
  }
  buildCounterCombinedAudienceTargetingSetting--;
}

core.int buildCounterCommonInStreamAttribute = 0;
api.CommonInStreamAttribute buildCommonInStreamAttribute() {
  final o = api.CommonInStreamAttribute();
  buildCounterCommonInStreamAttribute++;
  if (buildCounterCommonInStreamAttribute < 3) {
    o.actionButtonLabel = 'foo';
    o.actionHeadline = 'foo';
    o.companionBanner = buildImageAsset();
    o.displayUrl = 'foo';
    o.finalUrl = 'foo';
    o.trackingUrl = 'foo';
    o.video = buildYoutubeVideoDetails();
  }
  buildCounterCommonInStreamAttribute--;
  return o;
}

void checkCommonInStreamAttribute(api.CommonInStreamAttribute o) {
  buildCounterCommonInStreamAttribute++;
  if (buildCounterCommonInStreamAttribute < 3) {
    unittest.expect(o.actionButtonLabel!, unittest.equals('foo'));
    unittest.expect(o.actionHeadline!, unittest.equals('foo'));
    checkImageAsset(o.companionBanner!);
    unittest.expect(o.displayUrl!, unittest.equals('foo'));
    unittest.expect(o.finalUrl!, unittest.equals('foo'));
    unittest.expect(o.trackingUrl!, unittest.equals('foo'));
    checkYoutubeVideoDetails(o.video!);
  }
  buildCounterCommonInStreamAttribute--;
}

core.int buildCounterContentDurationAssignedTargetingOptionDetails = 0;
api.ContentDurationAssignedTargetingOptionDetails
buildContentDurationAssignedTargetingOptionDetails() {
  final o = api.ContentDurationAssignedTargetingOptionDetails();
  buildCounterContentDurationAssignedTargetingOptionDetails++;
  if (buildCounterContentDurationAssignedTargetingOptionDetails < 3) {
    o.contentDuration = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterContentDurationAssignedTargetingOptionDetails--;
  return o;
}

void checkContentDurationAssignedTargetingOptionDetails(
  api.ContentDurationAssignedTargetingOptionDetails o,
) {
  buildCounterContentDurationAssignedTargetingOptionDetails++;
  if (buildCounterContentDurationAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.contentDuration!, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterContentDurationAssignedTargetingOptionDetails--;
}

core.int buildCounterContentDurationTargetingOptionDetails = 0;
api.ContentDurationTargetingOptionDetails
buildContentDurationTargetingOptionDetails() {
  final o = api.ContentDurationTargetingOptionDetails();
  buildCounterContentDurationTargetingOptionDetails++;
  if (buildCounterContentDurationTargetingOptionDetails < 3) {
    o.contentDuration = 'foo';
  }
  buildCounterContentDurationTargetingOptionDetails--;
  return o;
}

void checkContentDurationTargetingOptionDetails(
  api.ContentDurationTargetingOptionDetails o,
) {
  buildCounterContentDurationTargetingOptionDetails++;
  if (buildCounterContentDurationTargetingOptionDetails < 3) {
    unittest.expect(o.contentDuration!, unittest.equals('foo'));
  }
  buildCounterContentDurationTargetingOptionDetails--;
}

core.int buildCounterContentGenreAssignedTargetingOptionDetails = 0;
api.ContentGenreAssignedTargetingOptionDetails
buildContentGenreAssignedTargetingOptionDetails() {
  final o = api.ContentGenreAssignedTargetingOptionDetails();
  buildCounterContentGenreAssignedTargetingOptionDetails++;
  if (buildCounterContentGenreAssignedTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.negative = true;
    o.targetingOptionId = 'foo';
  }
  buildCounterContentGenreAssignedTargetingOptionDetails--;
  return o;
}

void checkContentGenreAssignedTargetingOptionDetails(
  api.ContentGenreAssignedTargetingOptionDetails o,
) {
  buildCounterContentGenreAssignedTargetingOptionDetails++;
  if (buildCounterContentGenreAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterContentGenreAssignedTargetingOptionDetails--;
}

core.int buildCounterContentGenreTargetingOptionDetails = 0;
api.ContentGenreTargetingOptionDetails
buildContentGenreTargetingOptionDetails() {
  final o = api.ContentGenreTargetingOptionDetails();
  buildCounterContentGenreTargetingOptionDetails++;
  if (buildCounterContentGenreTargetingOptionDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterContentGenreTargetingOptionDetails--;
  return o;
}

void checkContentGenreTargetingOptionDetails(
  api.ContentGenreTargetingOptionDetails o,
) {
  buildCounterContentGenreTargetingOptionDetails++;
  if (buildCounterContentGenreTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterContentGenreTargetingOptionDetails--;
}

core.int buildCounterContentInstreamPositionAssignedTargetingOptionDetails = 0;
api.ContentInstreamPositionAssignedTargetingOptionDetails
buildContentInstreamPositionAssignedTargetingOptionDetails() {
  final o = api.ContentInstreamPositionAssignedTargetingOptionDetails();
  buildCounterContentInstreamPositionAssignedTargetingOptionDetails++;
  if (buildCounterContentInstreamPositionAssignedTargetingOptionDetails < 3) {
    o.adType = 'foo';
    o.contentInstreamPosition = 'foo';
  }
  buildCounterContentInstreamPositionAssignedTargetingOptionDetails--;
  return o;
}

void checkContentInstreamPositionAssignedTargetingOptionDetails(
  api.ContentInstreamPositionAssignedTargetingOptionDetails o,
) {
  buildCounterContentInstreamPositionAssignedTargetingOptionDetails++;
  if (buildCounterContentInstreamPositionAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.adType!, unittest.equals('foo'));
    unittest.expect(o.contentInstreamPosition!, unittest.equals('foo'));
  }
  buildCounterContentInstreamPositionAssignedTargetingOptionDetails--;
}

core.int buildCounterContentInstreamPositionTargetingOptionDetails = 0;
api.ContentInstreamPositionTargetingOptionDetails
buildContentInstreamPositionTargetingOptionDetails() {
  final o = api.ContentInstreamPositionTargetingOptionDetails();
  buildCounterContentInstreamPositionTargetingOptionDetails++;
  if (buildCounterContentInstreamPositionTargetingOptionDetails < 3) {
    o.contentInstreamPosition = 'foo';
  }
  buildCounterContentInstreamPositionTargetingOptionDetails--;
  return o;
}

void checkContentInstreamPositionTargetingOptionDetails(
  api.ContentInstreamPositionTargetingOptionDetails o,
) {
  buildCounterContentInstreamPositionTargetingOptionDetails++;
  if (buildCounterContentInstreamPositionTargetingOptionDetails < 3) {
    unittest.expect(o.contentInstreamPosition!, unittest.equals('foo'));
  }
  buildCounterContentInstreamPositionTargetingOptionDetails--;
}

core.int buildCounterContentOutstreamPositionAssignedTargetingOptionDetails = 0;
api.ContentOutstreamPositionAssignedTargetingOptionDetails
buildContentOutstreamPositionAssignedTargetingOptionDetails() {
  final o = api.ContentOutstreamPositionAssignedTargetingOptionDetails();
  buildCounterContentOutstreamPositionAssignedTargetingOptionDetails++;
  if (buildCounterContentOutstreamPositionAssignedTargetingOptionDetails < 3) {
    o.adType = 'foo';
    o.contentOutstreamPosition = 'foo';
  }
  buildCounterContentOutstreamPositionAssignedTargetingOptionDetails--;
  return o;
}

void checkContentOutstreamPositionAssignedTargetingOptionDetails(
  api.ContentOutstreamPositionAssignedTargetingOptionDetails o,
) {
  buildCounterContentOutstreamPositionAssignedTargetingOptionDetails++;
  if (buildCounterContentOutstreamPositionAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.adType!, unittest.equals('foo'));
    unittest.expect(o.contentOutstreamPosition!, unittest.equals('foo'));
  }
  buildCounterContentOutstreamPositionAssignedTargetingOptionDetails--;
}

core.int buildCounterContentOutstreamPositionTargetingOptionDetails = 0;
api.ContentOutstreamPositionTargetingOptionDetails
buildContentOutstreamPositionTargetingOptionDetails() {
  final o = api.ContentOutstreamPositionTargetingOptionDetails();
  buildCounterContentOutstreamPositionTargetingOptionDetails++;
  if (buildCounterContentOutstreamPositionTargetingOptionDetails < 3) {
    o.contentOutstreamPosition = 'foo';
  }
  buildCounterContentOutstreamPositionTargetingOptionDetails--;
  return o;
}

void checkContentOutstreamPositionTargetingOptionDetails(
  api.ContentOutstreamPositionTargetingOptionDetails o,
) {
  buildCounterContentOutstreamPositionTargetingOptionDetails++;
  if (buildCounterContentOutstreamPositionTargetingOptionDetails < 3) {
    unittest.expect(o.contentOutstreamPosition!, unittest.equals('foo'));
  }
  buildCounterContentOutstreamPositionTargetingOptionDetails--;
}

core.int buildCounterContentStreamTypeAssignedTargetingOptionDetails = 0;
api.ContentStreamTypeAssignedTargetingOptionDetails
buildContentStreamTypeAssignedTargetingOptionDetails() {
  final o = api.ContentStreamTypeAssignedTargetingOptionDetails();
  buildCounterContentStreamTypeAssignedTargetingOptionDetails++;
  if (buildCounterContentStreamTypeAssignedTargetingOptionDetails < 3) {
    o.contentStreamType = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterContentStreamTypeAssignedTargetingOptionDetails--;
  return o;
}

void checkContentStreamTypeAssignedTargetingOptionDetails(
  api.ContentStreamTypeAssignedTargetingOptionDetails o,
) {
  buildCounterContentStreamTypeAssignedTargetingOptionDetails++;
  if (buildCounterContentStreamTypeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.contentStreamType!, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterContentStreamTypeAssignedTargetingOptionDetails--;
}

core.int buildCounterContentStreamTypeTargetingOptionDetails = 0;
api.ContentStreamTypeTargetingOptionDetails
buildContentStreamTypeTargetingOptionDetails() {
  final o = api.ContentStreamTypeTargetingOptionDetails();
  buildCounterContentStreamTypeTargetingOptionDetails++;
  if (buildCounterContentStreamTypeTargetingOptionDetails < 3) {
    o.contentStreamType = 'foo';
  }
  buildCounterContentStreamTypeTargetingOptionDetails--;
  return o;
}

void checkContentStreamTypeTargetingOptionDetails(
  api.ContentStreamTypeTargetingOptionDetails o,
) {
  buildCounterContentStreamTypeTargetingOptionDetails++;
  if (buildCounterContentStreamTypeTargetingOptionDetails < 3) {
    unittest.expect(o.contentStreamType!, unittest.equals('foo'));
  }
  buildCounterContentStreamTypeTargetingOptionDetails--;
}

core.List<api.TrackingFloodlightActivityConfig> buildUnnamed40() => [
  buildTrackingFloodlightActivityConfig(),
  buildTrackingFloodlightActivityConfig(),
];

void checkUnnamed40(core.List<api.TrackingFloodlightActivityConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackingFloodlightActivityConfig(o[0]);
  checkTrackingFloodlightActivityConfig(o[1]);
}

core.int buildCounterConversionCountingConfig = 0;
api.ConversionCountingConfig buildConversionCountingConfig() {
  final o = api.ConversionCountingConfig();
  buildCounterConversionCountingConfig++;
  if (buildCounterConversionCountingConfig < 3) {
    o.floodlightActivityConfigs = buildUnnamed40();
    o.postViewCountPercentageMillis = 'foo';
  }
  buildCounterConversionCountingConfig--;
  return o;
}

void checkConversionCountingConfig(api.ConversionCountingConfig o) {
  buildCounterConversionCountingConfig++;
  if (buildCounterConversionCountingConfig < 3) {
    checkUnnamed40(o.floodlightActivityConfigs!);
    unittest.expect(o.postViewCountPercentageMillis!, unittest.equals('foo'));
  }
  buildCounterConversionCountingConfig--;
}

core.int buildCounterCounterEvent = 0;
api.CounterEvent buildCounterEvent() {
  final o = api.CounterEvent();
  buildCounterCounterEvent++;
  if (buildCounterCounterEvent < 3) {
    o.name = 'foo';
    o.reportingName = 'foo';
  }
  buildCounterCounterEvent--;
  return o;
}

void checkCounterEvent(api.CounterEvent o) {
  buildCounterCounterEvent++;
  if (buildCounterCounterEvent < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reportingName!, unittest.equals('foo'));
  }
  buildCounterCounterEvent--;
}

core.int buildCounterCreateAssetRequest = 0;
api.CreateAssetRequest buildCreateAssetRequest() {
  final o = api.CreateAssetRequest();
  buildCounterCreateAssetRequest++;
  if (buildCounterCreateAssetRequest < 3) {
    o.filename = 'foo';
  }
  buildCounterCreateAssetRequest--;
  return o;
}

void checkCreateAssetRequest(api.CreateAssetRequest o) {
  buildCounterCreateAssetRequest++;
  if (buildCounterCreateAssetRequest < 3) {
    unittest.expect(o.filename!, unittest.equals('foo'));
  }
  buildCounterCreateAssetRequest--;
}

core.int buildCounterCreateAssetResponse = 0;
api.CreateAssetResponse buildCreateAssetResponse() {
  final o = api.CreateAssetResponse();
  buildCounterCreateAssetResponse++;
  if (buildCounterCreateAssetResponse < 3) {
    o.asset = buildAsset();
  }
  buildCounterCreateAssetResponse--;
  return o;
}

void checkCreateAssetResponse(api.CreateAssetResponse o) {
  buildCounterCreateAssetResponse++;
  if (buildCounterCreateAssetResponse < 3) {
    checkAsset(o.asset!);
  }
  buildCounterCreateAssetResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed41() => [
  buildAssignedTargetingOption(),
  buildAssignedTargetingOption(),
];

void checkUnnamed41(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterCreateAssignedTargetingOptionsRequest = 0;
api.CreateAssignedTargetingOptionsRequest
buildCreateAssignedTargetingOptionsRequest() {
  final o = api.CreateAssignedTargetingOptionsRequest();
  buildCounterCreateAssignedTargetingOptionsRequest++;
  if (buildCounterCreateAssignedTargetingOptionsRequest < 3) {
    o.assignedTargetingOptions = buildUnnamed41();
    o.targetingType = 'foo';
  }
  buildCounterCreateAssignedTargetingOptionsRequest--;
  return o;
}

void checkCreateAssignedTargetingOptionsRequest(
  api.CreateAssignedTargetingOptionsRequest o,
) {
  buildCounterCreateAssignedTargetingOptionsRequest++;
  if (buildCounterCreateAssignedTargetingOptionsRequest < 3) {
    checkUnnamed41(o.assignedTargetingOptions!);
    unittest.expect(o.targetingType!, unittest.equals('foo'));
  }
  buildCounterCreateAssignedTargetingOptionsRequest--;
}

core.int buildCounterCreateSdfDownloadTaskRequest = 0;
api.CreateSdfDownloadTaskRequest buildCreateSdfDownloadTaskRequest() {
  final o = api.CreateSdfDownloadTaskRequest();
  buildCounterCreateSdfDownloadTaskRequest++;
  if (buildCounterCreateSdfDownloadTaskRequest < 3) {
    o.advertiserId = 'foo';
    o.idFilter = buildIdFilter();
    o.inventorySourceFilter = buildInventorySourceFilter();
    o.parentEntityFilter = buildParentEntityFilter();
    o.partnerId = 'foo';
    o.version = 'foo';
  }
  buildCounterCreateSdfDownloadTaskRequest--;
  return o;
}

void checkCreateSdfDownloadTaskRequest(api.CreateSdfDownloadTaskRequest o) {
  buildCounterCreateSdfDownloadTaskRequest++;
  if (buildCounterCreateSdfDownloadTaskRequest < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    checkIdFilter(o.idFilter!);
    checkInventorySourceFilter(o.inventorySourceFilter!);
    checkParentEntityFilter(o.parentEntityFilter!);
    unittest.expect(o.partnerId!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterCreateSdfDownloadTaskRequest--;
}

core.List<api.Dimensions> buildUnnamed42() => [
  buildDimensions(),
  buildDimensions(),
];

void checkUnnamed42(core.List<api.Dimensions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensions(o[0]);
  checkDimensions(o[1]);
}

core.List<api.AssetAssociation> buildUnnamed43() => [
  buildAssetAssociation(),
  buildAssetAssociation(),
];

void checkUnnamed43(core.List<api.AssetAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssetAssociation(o[0]);
  checkAssetAssociation(o[1]);
}

core.List<core.String> buildUnnamed44() => ['foo', 'foo'];

void checkUnnamed44(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CounterEvent> buildUnnamed45() => [
  buildCounterEvent(),
  buildCounterEvent(),
];

void checkUnnamed45(core.List<api.CounterEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCounterEvent(o[0]);
  checkCounterEvent(o[1]);
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ExitEvent> buildUnnamed47() => [
  buildExitEvent(),
  buildExitEvent(),
];

void checkUnnamed47(core.List<api.ExitEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExitEvent(o[0]);
  checkExitEvent(o[1]);
}

core.List<core.String> buildUnnamed48() => ['foo', 'foo'];

void checkUnnamed48(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ThirdPartyUrl> buildUnnamed49() => [
  buildThirdPartyUrl(),
  buildThirdPartyUrl(),
];

void checkUnnamed49(core.List<api.ThirdPartyUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThirdPartyUrl(o[0]);
  checkThirdPartyUrl(o[1]);
}

core.List<api.TimerEvent> buildUnnamed50() => [
  buildTimerEvent(),
  buildTimerEvent(),
];

void checkUnnamed50(core.List<api.TimerEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimerEvent(o[0]);
  checkTimerEvent(o[1]);
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Transcode> buildUnnamed52() => [
  buildTranscode(),
  buildTranscode(),
];

void checkUnnamed52(core.List<api.Transcode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranscode(o[0]);
  checkTranscode(o[1]);
}

core.int buildCounterCreative = 0;
api.Creative buildCreative() {
  final o = api.Creative();
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    o.additionalDimensions = buildUnnamed42();
    o.advertiserId = 'foo';
    o.appendedTag = 'foo';
    o.assets = buildUnnamed43();
    o.cmPlacementId = 'foo';
    o.cmTrackingAd = buildCmTrackingAd();
    o.companionCreativeIds = buildUnnamed44();
    o.counterEvents = buildUnnamed45();
    o.createTime = 'foo';
    o.creativeAttributes = buildUnnamed46();
    o.creativeId = 'foo';
    o.creativeType = 'foo';
    o.dimensions = buildDimensions();
    o.displayName = 'foo';
    o.dynamic = true;
    o.entityStatus = 'foo';
    o.exitEvents = buildUnnamed47();
    o.expandOnHover = true;
    o.expandingDirection = 'foo';
    o.hostingSource = 'foo';
    o.html5Video = true;
    o.iasCampaignMonitoring = true;
    o.integrationCode = 'foo';
    o.jsTrackerUrl = 'foo';
    o.lineItemIds = buildUnnamed48();
    o.mediaDuration = 'foo';
    o.mp3Audio = true;
    o.name = 'foo';
    o.notes = 'foo';
    o.obaIcon = buildObaIcon();
    o.oggAudio = true;
    o.progressOffset = buildAudioVideoOffset();
    o.requireHtml5 = true;
    o.requireMraid = true;
    o.requirePingForAttribution = true;
    o.reviewStatus = buildReviewStatusInfo();
    o.skipOffset = buildAudioVideoOffset();
    o.skippable = true;
    o.thirdPartyTag = 'foo';
    o.thirdPartyUrls = buildUnnamed49();
    o.timerEvents = buildUnnamed50();
    o.trackerUrls = buildUnnamed51();
    o.transcodes = buildUnnamed52();
    o.universalAdId = buildUniversalAdId();
    o.updateTime = 'foo';
    o.vastTagUrl = 'foo';
    o.vpaid = true;
  }
  buildCounterCreative--;
  return o;
}

void checkCreative(api.Creative o) {
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    checkUnnamed42(o.additionalDimensions!);
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    unittest.expect(o.appendedTag!, unittest.equals('foo'));
    checkUnnamed43(o.assets!);
    unittest.expect(o.cmPlacementId!, unittest.equals('foo'));
    checkCmTrackingAd(o.cmTrackingAd!);
    checkUnnamed44(o.companionCreativeIds!);
    checkUnnamed45(o.counterEvents!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed46(o.creativeAttributes!);
    unittest.expect(o.creativeId!, unittest.equals('foo'));
    unittest.expect(o.creativeType!, unittest.equals('foo'));
    checkDimensions(o.dimensions!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.dynamic!, unittest.isTrue);
    unittest.expect(o.entityStatus!, unittest.equals('foo'));
    checkUnnamed47(o.exitEvents!);
    unittest.expect(o.expandOnHover!, unittest.isTrue);
    unittest.expect(o.expandingDirection!, unittest.equals('foo'));
    unittest.expect(o.hostingSource!, unittest.equals('foo'));
    unittest.expect(o.html5Video!, unittest.isTrue);
    unittest.expect(o.iasCampaignMonitoring!, unittest.isTrue);
    unittest.expect(o.integrationCode!, unittest.equals('foo'));
    unittest.expect(o.jsTrackerUrl!, unittest.equals('foo'));
    checkUnnamed48(o.lineItemIds!);
    unittest.expect(o.mediaDuration!, unittest.equals('foo'));
    unittest.expect(o.mp3Audio!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.notes!, unittest.equals('foo'));
    checkObaIcon(o.obaIcon!);
    unittest.expect(o.oggAudio!, unittest.isTrue);
    checkAudioVideoOffset(o.progressOffset!);
    unittest.expect(o.requireHtml5!, unittest.isTrue);
    unittest.expect(o.requireMraid!, unittest.isTrue);
    unittest.expect(o.requirePingForAttribution!, unittest.isTrue);
    checkReviewStatusInfo(o.reviewStatus!);
    checkAudioVideoOffset(o.skipOffset!);
    unittest.expect(o.skippable!, unittest.isTrue);
    unittest.expect(o.thirdPartyTag!, unittest.equals('foo'));
    checkUnnamed49(o.thirdPartyUrls!);
    checkUnnamed50(o.timerEvents!);
    checkUnnamed51(o.trackerUrls!);
    checkUnnamed52(o.transcodes!);
    checkUniversalAdId(o.universalAdId!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.vastTagUrl!, unittest.equals('foo'));
    unittest.expect(o.vpaid!, unittest.isTrue);
  }
  buildCounterCreative--;
}

core.int buildCounterCreativeConfig = 0;
api.CreativeConfig buildCreativeConfig() {
  final o = api.CreativeConfig();
  buildCounterCreativeConfig++;
  if (buildCounterCreativeConfig < 3) {
    o.creativeType = 'foo';
    o.displayCreativeConfig = buildInventorySourceDisplayCreativeConfig();
    o.videoCreativeConfig = buildInventorySourceVideoCreativeConfig();
  }
  buildCounterCreativeConfig--;
  return o;
}

void checkCreativeConfig(api.CreativeConfig o) {
  buildCounterCreativeConfig++;
  if (buildCounterCreativeConfig < 3) {
    unittest.expect(o.creativeType!, unittest.equals('foo'));
    checkInventorySourceDisplayCreativeConfig(o.displayCreativeConfig!);
    checkInventorySourceVideoCreativeConfig(o.videoCreativeConfig!);
  }
  buildCounterCreativeConfig--;
}

core.List<api.CustomBiddingModelDetails> buildUnnamed53() => [
  buildCustomBiddingModelDetails(),
  buildCustomBiddingModelDetails(),
];

void checkUnnamed53(core.List<api.CustomBiddingModelDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomBiddingModelDetails(o[0]);
  checkCustomBiddingModelDetails(o[1]);
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomBiddingAlgorithm = 0;
api.CustomBiddingAlgorithm buildCustomBiddingAlgorithm() {
  final o = api.CustomBiddingAlgorithm();
  buildCounterCustomBiddingAlgorithm++;
  if (buildCounterCustomBiddingAlgorithm < 3) {
    o.advertiserId = 'foo';
    o.customBiddingAlgorithmId = 'foo';
    o.customBiddingAlgorithmType = 'foo';
    o.displayName = 'foo';
    o.entityStatus = 'foo';
    o.modelDetails = buildUnnamed53();
    o.name = 'foo';
    o.partnerId = 'foo';
    o.sharedAdvertiserIds = buildUnnamed54();
  }
  buildCounterCustomBiddingAlgorithm--;
  return o;
}

void checkCustomBiddingAlgorithm(api.CustomBiddingAlgorithm o) {
  buildCounterCustomBiddingAlgorithm++;
  if (buildCounterCustomBiddingAlgorithm < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    unittest.expect(o.customBiddingAlgorithmId!, unittest.equals('foo'));
    unittest.expect(o.customBiddingAlgorithmType!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entityStatus!, unittest.equals('foo'));
    checkUnnamed53(o.modelDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.partnerId!, unittest.equals('foo'));
    checkUnnamed54(o.sharedAdvertiserIds!);
  }
  buildCounterCustomBiddingAlgorithm--;
}

core.int buildCounterCustomBiddingModelDetails = 0;
api.CustomBiddingModelDetails buildCustomBiddingModelDetails() {
  final o = api.CustomBiddingModelDetails();
  buildCounterCustomBiddingModelDetails++;
  if (buildCounterCustomBiddingModelDetails < 3) {
    o.advertiserId = 'foo';
    o.readinessState = 'foo';
    o.suspensionState = 'foo';
  }
  buildCounterCustomBiddingModelDetails--;
  return o;
}

void checkCustomBiddingModelDetails(api.CustomBiddingModelDetails o) {
  buildCounterCustomBiddingModelDetails++;
  if (buildCounterCustomBiddingModelDetails < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    unittest.expect(o.readinessState!, unittest.equals('foo'));
    unittest.expect(o.suspensionState!, unittest.equals('foo'));
  }
  buildCounterCustomBiddingModelDetails--;
}

core.List<api.ScriptError> buildUnnamed55() => [
  buildScriptError(),
  buildScriptError(),
];

void checkUnnamed55(core.List<api.ScriptError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScriptError(o[0]);
  checkScriptError(o[1]);
}

core.int buildCounterCustomBiddingScript = 0;
api.CustomBiddingScript buildCustomBiddingScript() {
  final o = api.CustomBiddingScript();
  buildCounterCustomBiddingScript++;
  if (buildCounterCustomBiddingScript < 3) {
    o.active = true;
    o.createTime = 'foo';
    o.customBiddingAlgorithmId = 'foo';
    o.customBiddingScriptId = 'foo';
    o.errors = buildUnnamed55();
    o.name = 'foo';
    o.script = buildCustomBiddingScriptRef();
    o.state = 'foo';
  }
  buildCounterCustomBiddingScript--;
  return o;
}

void checkCustomBiddingScript(api.CustomBiddingScript o) {
  buildCounterCustomBiddingScript++;
  if (buildCounterCustomBiddingScript < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.customBiddingAlgorithmId!, unittest.equals('foo'));
    unittest.expect(o.customBiddingScriptId!, unittest.equals('foo'));
    checkUnnamed55(o.errors!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkCustomBiddingScriptRef(o.script!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterCustomBiddingScript--;
}

core.int buildCounterCustomBiddingScriptRef = 0;
api.CustomBiddingScriptRef buildCustomBiddingScriptRef() {
  final o = api.CustomBiddingScriptRef();
  buildCounterCustomBiddingScriptRef++;
  if (buildCounterCustomBiddingScriptRef < 3) {
    o.resourceName = 'foo';
  }
  buildCounterCustomBiddingScriptRef--;
  return o;
}

void checkCustomBiddingScriptRef(api.CustomBiddingScriptRef o) {
  buildCounterCustomBiddingScriptRef++;
  if (buildCounterCustomBiddingScriptRef < 3) {
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterCustomBiddingScriptRef--;
}

core.int buildCounterCustomLabel = 0;
api.CustomLabel buildCustomLabel() {
  final o = api.CustomLabel();
  buildCounterCustomLabel++;
  if (buildCounterCustomLabel < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomLabel--;
  return o;
}

void checkCustomLabel(api.CustomLabel o) {
  buildCounterCustomLabel++;
  if (buildCounterCustomLabel < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterCustomLabel--;
}

core.int buildCounterCustomList = 0;
api.CustomList buildCustomList() {
  final o = api.CustomList();
  buildCounterCustomList++;
  if (buildCounterCustomList < 3) {
    o.customListId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterCustomList--;
  return o;
}

void checkCustomList(api.CustomList o) {
  buildCounterCustomList++;
  if (buildCounterCustomList < 3) {
    unittest.expect(o.customListId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterCustomList--;
}

core.List<api.CustomListTargetingSetting> buildUnnamed56() => [
  buildCustomListTargetingSetting(),
  buildCustomListTargetingSetting(),
];

void checkUnnamed56(core.List<api.CustomListTargetingSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomListTargetingSetting(o[0]);
  checkCustomListTargetingSetting(o[1]);
}

core.int buildCounterCustomListGroup = 0;
api.CustomListGroup buildCustomListGroup() {
  final o = api.CustomListGroup();
  buildCounterCustomListGroup++;
  if (buildCounterCustomListGroup < 3) {
    o.settings = buildUnnamed56();
  }
  buildCounterCustomListGroup--;
  return o;
}

void checkCustomListGroup(api.CustomListGroup o) {
  buildCounterCustomListGroup++;
  if (buildCounterCustomListGroup < 3) {
    checkUnnamed56(o.settings!);
  }
  buildCounterCustomListGroup--;
}

core.int buildCounterCustomListTargetingSetting = 0;
api.CustomListTargetingSetting buildCustomListTargetingSetting() {
  final o = api.CustomListTargetingSetting();
  buildCounterCustomListTargetingSetting++;
  if (buildCounterCustomListTargetingSetting < 3) {
    o.customListId = 'foo';
  }
  buildCounterCustomListTargetingSetting--;
  return o;
}

void checkCustomListTargetingSetting(api.CustomListTargetingSetting o) {
  buildCounterCustomListTargetingSetting++;
  if (buildCounterCustomListTargetingSetting < 3) {
    unittest.expect(o.customListId!, unittest.equals('foo'));
  }
  buildCounterCustomListTargetingSetting--;
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

core.int buildCounterDateRange = 0;
api.DateRange buildDateRange() {
  final o = api.DateRange();
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
    checkDate(o.endDate!);
    checkDate(o.startDate!);
  }
  buildCounterDateRange--;
}

core.int buildCounterDayAndTimeAssignedTargetingOptionDetails = 0;
api.DayAndTimeAssignedTargetingOptionDetails
buildDayAndTimeAssignedTargetingOptionDetails() {
  final o = api.DayAndTimeAssignedTargetingOptionDetails();
  buildCounterDayAndTimeAssignedTargetingOptionDetails++;
  if (buildCounterDayAndTimeAssignedTargetingOptionDetails < 3) {
    o.dayOfWeek = 'foo';
    o.endHour = 42;
    o.startHour = 42;
    o.timeZoneResolution = 'foo';
  }
  buildCounterDayAndTimeAssignedTargetingOptionDetails--;
  return o;
}

void checkDayAndTimeAssignedTargetingOptionDetails(
  api.DayAndTimeAssignedTargetingOptionDetails o,
) {
  buildCounterDayAndTimeAssignedTargetingOptionDetails++;
  if (buildCounterDayAndTimeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.dayOfWeek!, unittest.equals('foo'));
    unittest.expect(o.endHour!, unittest.equals(42));
    unittest.expect(o.startHour!, unittest.equals(42));
    unittest.expect(o.timeZoneResolution!, unittest.equals('foo'));
  }
  buildCounterDayAndTimeAssignedTargetingOptionDetails--;
}

core.int buildCounterDeactivateManualTriggerRequest = 0;
api.DeactivateManualTriggerRequest buildDeactivateManualTriggerRequest() {
  final o = api.DeactivateManualTriggerRequest();
  buildCounterDeactivateManualTriggerRequest++;
  if (buildCounterDeactivateManualTriggerRequest < 3) {}
  buildCounterDeactivateManualTriggerRequest--;
  return o;
}

void checkDeactivateManualTriggerRequest(api.DeactivateManualTriggerRequest o) {
  buildCounterDeactivateManualTriggerRequest++;
  if (buildCounterDeactivateManualTriggerRequest < 3) {}
  buildCounterDeactivateManualTriggerRequest--;
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeleteAssignedTargetingOptionsRequest = 0;
api.DeleteAssignedTargetingOptionsRequest
buildDeleteAssignedTargetingOptionsRequest() {
  final o = api.DeleteAssignedTargetingOptionsRequest();
  buildCounterDeleteAssignedTargetingOptionsRequest++;
  if (buildCounterDeleteAssignedTargetingOptionsRequest < 3) {
    o.assignedTargetingOptionIds = buildUnnamed57();
    o.targetingType = 'foo';
  }
  buildCounterDeleteAssignedTargetingOptionsRequest--;
  return o;
}

void checkDeleteAssignedTargetingOptionsRequest(
  api.DeleteAssignedTargetingOptionsRequest o,
) {
  buildCounterDeleteAssignedTargetingOptionsRequest++;
  if (buildCounterDeleteAssignedTargetingOptionsRequest < 3) {
    checkUnnamed57(o.assignedTargetingOptionIds!);
    unittest.expect(o.targetingType!, unittest.equals('foo'));
  }
  buildCounterDeleteAssignedTargetingOptionsRequest--;
}

core.int buildCounterDeviceMakeModelAssignedTargetingOptionDetails = 0;
api.DeviceMakeModelAssignedTargetingOptionDetails
buildDeviceMakeModelAssignedTargetingOptionDetails() {
  final o = api.DeviceMakeModelAssignedTargetingOptionDetails();
  buildCounterDeviceMakeModelAssignedTargetingOptionDetails++;
  if (buildCounterDeviceMakeModelAssignedTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.negative = true;
    o.targetingOptionId = 'foo';
  }
  buildCounterDeviceMakeModelAssignedTargetingOptionDetails--;
  return o;
}

void checkDeviceMakeModelAssignedTargetingOptionDetails(
  api.DeviceMakeModelAssignedTargetingOptionDetails o,
) {
  buildCounterDeviceMakeModelAssignedTargetingOptionDetails++;
  if (buildCounterDeviceMakeModelAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterDeviceMakeModelAssignedTargetingOptionDetails--;
}

core.int buildCounterDeviceMakeModelTargetingOptionDetails = 0;
api.DeviceMakeModelTargetingOptionDetails
buildDeviceMakeModelTargetingOptionDetails() {
  final o = api.DeviceMakeModelTargetingOptionDetails();
  buildCounterDeviceMakeModelTargetingOptionDetails++;
  if (buildCounterDeviceMakeModelTargetingOptionDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterDeviceMakeModelTargetingOptionDetails--;
  return o;
}

void checkDeviceMakeModelTargetingOptionDetails(
  api.DeviceMakeModelTargetingOptionDetails o,
) {
  buildCounterDeviceMakeModelTargetingOptionDetails++;
  if (buildCounterDeviceMakeModelTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterDeviceMakeModelTargetingOptionDetails--;
}

core.int buildCounterDeviceTypeAssignedTargetingOptionDetails = 0;
api.DeviceTypeAssignedTargetingOptionDetails
buildDeviceTypeAssignedTargetingOptionDetails() {
  final o = api.DeviceTypeAssignedTargetingOptionDetails();
  buildCounterDeviceTypeAssignedTargetingOptionDetails++;
  if (buildCounterDeviceTypeAssignedTargetingOptionDetails < 3) {
    o.deviceType = 'foo';
    o.youtubeAndPartnersBidMultiplier = 42.0;
  }
  buildCounterDeviceTypeAssignedTargetingOptionDetails--;
  return o;
}

void checkDeviceTypeAssignedTargetingOptionDetails(
  api.DeviceTypeAssignedTargetingOptionDetails o,
) {
  buildCounterDeviceTypeAssignedTargetingOptionDetails++;
  if (buildCounterDeviceTypeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.deviceType!, unittest.equals('foo'));
    unittest.expect(o.youtubeAndPartnersBidMultiplier!, unittest.equals(42.0));
  }
  buildCounterDeviceTypeAssignedTargetingOptionDetails--;
}

core.int buildCounterDeviceTypeTargetingOptionDetails = 0;
api.DeviceTypeTargetingOptionDetails buildDeviceTypeTargetingOptionDetails() {
  final o = api.DeviceTypeTargetingOptionDetails();
  buildCounterDeviceTypeTargetingOptionDetails++;
  if (buildCounterDeviceTypeTargetingOptionDetails < 3) {
    o.deviceType = 'foo';
  }
  buildCounterDeviceTypeTargetingOptionDetails--;
  return o;
}

void checkDeviceTypeTargetingOptionDetails(
  api.DeviceTypeTargetingOptionDetails o,
) {
  buildCounterDeviceTypeTargetingOptionDetails++;
  if (buildCounterDeviceTypeTargetingOptionDetails < 3) {
    unittest.expect(o.deviceType!, unittest.equals('foo'));
  }
  buildCounterDeviceTypeTargetingOptionDetails--;
}

core.int buildCounterDigitalContentLabelAssignedTargetingOptionDetails = 0;
api.DigitalContentLabelAssignedTargetingOptionDetails
buildDigitalContentLabelAssignedTargetingOptionDetails() {
  final o = api.DigitalContentLabelAssignedTargetingOptionDetails();
  buildCounterDigitalContentLabelAssignedTargetingOptionDetails++;
  if (buildCounterDigitalContentLabelAssignedTargetingOptionDetails < 3) {
    o.excludedContentRatingTier = 'foo';
  }
  buildCounterDigitalContentLabelAssignedTargetingOptionDetails--;
  return o;
}

void checkDigitalContentLabelAssignedTargetingOptionDetails(
  api.DigitalContentLabelAssignedTargetingOptionDetails o,
) {
  buildCounterDigitalContentLabelAssignedTargetingOptionDetails++;
  if (buildCounterDigitalContentLabelAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.excludedContentRatingTier!, unittest.equals('foo'));
  }
  buildCounterDigitalContentLabelAssignedTargetingOptionDetails--;
}

core.int buildCounterDigitalContentLabelTargetingOptionDetails = 0;
api.DigitalContentLabelTargetingOptionDetails
buildDigitalContentLabelTargetingOptionDetails() {
  final o = api.DigitalContentLabelTargetingOptionDetails();
  buildCounterDigitalContentLabelTargetingOptionDetails++;
  if (buildCounterDigitalContentLabelTargetingOptionDetails < 3) {
    o.contentRatingTier = 'foo';
  }
  buildCounterDigitalContentLabelTargetingOptionDetails--;
  return o;
}

void checkDigitalContentLabelTargetingOptionDetails(
  api.DigitalContentLabelTargetingOptionDetails o,
) {
  buildCounterDigitalContentLabelTargetingOptionDetails++;
  if (buildCounterDigitalContentLabelTargetingOptionDetails < 3) {
    unittest.expect(o.contentRatingTier!, unittest.equals('foo'));
  }
  buildCounterDigitalContentLabelTargetingOptionDetails--;
}

core.int buildCounterDimensions = 0;
api.Dimensions buildDimensions() {
  final o = api.Dimensions();
  buildCounterDimensions++;
  if (buildCounterDimensions < 3) {
    o.heightPixels = 42;
    o.widthPixels = 42;
  }
  buildCounterDimensions--;
  return o;
}

void checkDimensions(api.Dimensions o) {
  buildCounterDimensions++;
  if (buildCounterDimensions < 3) {
    unittest.expect(o.heightPixels!, unittest.equals(42));
    unittest.expect(o.widthPixels!, unittest.equals(42));
  }
  buildCounterDimensions--;
}

core.int buildCounterDisplayVideoSourceAd = 0;
api.DisplayVideoSourceAd buildDisplayVideoSourceAd() {
  final o = api.DisplayVideoSourceAd();
  buildCounterDisplayVideoSourceAd++;
  if (buildCounterDisplayVideoSourceAd < 3) {
    o.creativeId = 'foo';
  }
  buildCounterDisplayVideoSourceAd--;
  return o;
}

void checkDisplayVideoSourceAd(api.DisplayVideoSourceAd o) {
  buildCounterDisplayVideoSourceAd++;
  if (buildCounterDisplayVideoSourceAd < 3) {
    unittest.expect(o.creativeId!, unittest.equals('foo'));
  }
  buildCounterDisplayVideoSourceAd--;
}

core.List<core.String> buildUnnamed58() => ['foo', 'foo'];

void checkUnnamed58(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDoubleVerify = 0;
api.DoubleVerify buildDoubleVerify() {
  final o = api.DoubleVerify();
  buildCounterDoubleVerify++;
  if (buildCounterDoubleVerify < 3) {
    o.appStarRating = buildDoubleVerifyAppStarRating();
    o.avoidedAgeRatings = buildUnnamed58();
    o.brandSafetyCategories = buildDoubleVerifyBrandSafetyCategories();
    o.customSegmentId = 'foo';
    o.displayViewability = buildDoubleVerifyDisplayViewability();
    o.fraudInvalidTraffic = buildDoubleVerifyFraudInvalidTraffic();
    o.videoViewability = buildDoubleVerifyVideoViewability();
  }
  buildCounterDoubleVerify--;
  return o;
}

void checkDoubleVerify(api.DoubleVerify o) {
  buildCounterDoubleVerify++;
  if (buildCounterDoubleVerify < 3) {
    checkDoubleVerifyAppStarRating(o.appStarRating!);
    checkUnnamed58(o.avoidedAgeRatings!);
    checkDoubleVerifyBrandSafetyCategories(o.brandSafetyCategories!);
    unittest.expect(o.customSegmentId!, unittest.equals('foo'));
    checkDoubleVerifyDisplayViewability(o.displayViewability!);
    checkDoubleVerifyFraudInvalidTraffic(o.fraudInvalidTraffic!);
    checkDoubleVerifyVideoViewability(o.videoViewability!);
  }
  buildCounterDoubleVerify--;
}

core.int buildCounterDoubleVerifyAppStarRating = 0;
api.DoubleVerifyAppStarRating buildDoubleVerifyAppStarRating() {
  final o = api.DoubleVerifyAppStarRating();
  buildCounterDoubleVerifyAppStarRating++;
  if (buildCounterDoubleVerifyAppStarRating < 3) {
    o.avoidInsufficientStarRating = true;
    o.avoidedStarRating = 'foo';
  }
  buildCounterDoubleVerifyAppStarRating--;
  return o;
}

void checkDoubleVerifyAppStarRating(api.DoubleVerifyAppStarRating o) {
  buildCounterDoubleVerifyAppStarRating++;
  if (buildCounterDoubleVerifyAppStarRating < 3) {
    unittest.expect(o.avoidInsufficientStarRating!, unittest.isTrue);
    unittest.expect(o.avoidedStarRating!, unittest.equals('foo'));
  }
  buildCounterDoubleVerifyAppStarRating--;
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed60() => ['foo', 'foo'];

void checkUnnamed60(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDoubleVerifyBrandSafetyCategories = 0;
api.DoubleVerifyBrandSafetyCategories buildDoubleVerifyBrandSafetyCategories() {
  final o = api.DoubleVerifyBrandSafetyCategories();
  buildCounterDoubleVerifyBrandSafetyCategories++;
  if (buildCounterDoubleVerifyBrandSafetyCategories < 3) {
    o.avoidUnknownBrandSafetyCategory = true;
    o.avoidedHighSeverityCategories = buildUnnamed59();
    o.avoidedMediumSeverityCategories = buildUnnamed60();
  }
  buildCounterDoubleVerifyBrandSafetyCategories--;
  return o;
}

void checkDoubleVerifyBrandSafetyCategories(
  api.DoubleVerifyBrandSafetyCategories o,
) {
  buildCounterDoubleVerifyBrandSafetyCategories++;
  if (buildCounterDoubleVerifyBrandSafetyCategories < 3) {
    unittest.expect(o.avoidUnknownBrandSafetyCategory!, unittest.isTrue);
    checkUnnamed59(o.avoidedHighSeverityCategories!);
    checkUnnamed60(o.avoidedMediumSeverityCategories!);
  }
  buildCounterDoubleVerifyBrandSafetyCategories--;
}

core.int buildCounterDoubleVerifyDisplayViewability = 0;
api.DoubleVerifyDisplayViewability buildDoubleVerifyDisplayViewability() {
  final o = api.DoubleVerifyDisplayViewability();
  buildCounterDoubleVerifyDisplayViewability++;
  if (buildCounterDoubleVerifyDisplayViewability < 3) {
    o.iab = 'foo';
    o.viewableDuring = 'foo';
  }
  buildCounterDoubleVerifyDisplayViewability--;
  return o;
}

void checkDoubleVerifyDisplayViewability(api.DoubleVerifyDisplayViewability o) {
  buildCounterDoubleVerifyDisplayViewability++;
  if (buildCounterDoubleVerifyDisplayViewability < 3) {
    unittest.expect(o.iab!, unittest.equals('foo'));
    unittest.expect(o.viewableDuring!, unittest.equals('foo'));
  }
  buildCounterDoubleVerifyDisplayViewability--;
}

core.int buildCounterDoubleVerifyFraudInvalidTraffic = 0;
api.DoubleVerifyFraudInvalidTraffic buildDoubleVerifyFraudInvalidTraffic() {
  final o = api.DoubleVerifyFraudInvalidTraffic();
  buildCounterDoubleVerifyFraudInvalidTraffic++;
  if (buildCounterDoubleVerifyFraudInvalidTraffic < 3) {
    o.avoidInsufficientOption = true;
    o.avoidedFraudOption = 'foo';
  }
  buildCounterDoubleVerifyFraudInvalidTraffic--;
  return o;
}

void checkDoubleVerifyFraudInvalidTraffic(
  api.DoubleVerifyFraudInvalidTraffic o,
) {
  buildCounterDoubleVerifyFraudInvalidTraffic++;
  if (buildCounterDoubleVerifyFraudInvalidTraffic < 3) {
    unittest.expect(o.avoidInsufficientOption!, unittest.isTrue);
    unittest.expect(o.avoidedFraudOption!, unittest.equals('foo'));
  }
  buildCounterDoubleVerifyFraudInvalidTraffic--;
}

core.int buildCounterDoubleVerifyVideoViewability = 0;
api.DoubleVerifyVideoViewability buildDoubleVerifyVideoViewability() {
  final o = api.DoubleVerifyVideoViewability();
  buildCounterDoubleVerifyVideoViewability++;
  if (buildCounterDoubleVerifyVideoViewability < 3) {
    o.playerImpressionRate = 'foo';
    o.videoIab = 'foo';
    o.videoViewableRate = 'foo';
  }
  buildCounterDoubleVerifyVideoViewability--;
  return o;
}

void checkDoubleVerifyVideoViewability(api.DoubleVerifyVideoViewability o) {
  buildCounterDoubleVerifyVideoViewability++;
  if (buildCounterDoubleVerifyVideoViewability < 3) {
    unittest.expect(o.playerImpressionRate!, unittest.equals('foo'));
    unittest.expect(o.videoIab!, unittest.equals('foo'));
    unittest.expect(o.videoViewableRate!, unittest.equals('foo'));
  }
  buildCounterDoubleVerifyVideoViewability--;
}

core.int buildCounterDuplicateLineItemRequest = 0;
api.DuplicateLineItemRequest buildDuplicateLineItemRequest() {
  final o = api.DuplicateLineItemRequest();
  buildCounterDuplicateLineItemRequest++;
  if (buildCounterDuplicateLineItemRequest < 3) {
    o.containsEuPoliticalAds = 'foo';
    o.targetDisplayName = 'foo';
  }
  buildCounterDuplicateLineItemRequest--;
  return o;
}

void checkDuplicateLineItemRequest(api.DuplicateLineItemRequest o) {
  buildCounterDuplicateLineItemRequest++;
  if (buildCounterDuplicateLineItemRequest < 3) {
    unittest.expect(o.containsEuPoliticalAds!, unittest.equals('foo'));
    unittest.expect(o.targetDisplayName!, unittest.equals('foo'));
  }
  buildCounterDuplicateLineItemRequest--;
}

core.int buildCounterDuplicateLineItemResponse = 0;
api.DuplicateLineItemResponse buildDuplicateLineItemResponse() {
  final o = api.DuplicateLineItemResponse();
  buildCounterDuplicateLineItemResponse++;
  if (buildCounterDuplicateLineItemResponse < 3) {
    o.duplicateLineItemId = 'foo';
  }
  buildCounterDuplicateLineItemResponse--;
  return o;
}

void checkDuplicateLineItemResponse(api.DuplicateLineItemResponse o) {
  buildCounterDuplicateLineItemResponse++;
  if (buildCounterDuplicateLineItemResponse < 3) {
    unittest.expect(o.duplicateLineItemId!, unittest.equals('foo'));
  }
  buildCounterDuplicateLineItemResponse--;
}

core.List<core.String> buildUnnamed61() => ['foo', 'foo'];

void checkUnnamed61(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed62() => ['foo', 'foo'];

void checkUnnamed62(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEditGuaranteedOrderReadAccessorsRequest = 0;
api.EditGuaranteedOrderReadAccessorsRequest
buildEditGuaranteedOrderReadAccessorsRequest() {
  final o = api.EditGuaranteedOrderReadAccessorsRequest();
  buildCounterEditGuaranteedOrderReadAccessorsRequest++;
  if (buildCounterEditGuaranteedOrderReadAccessorsRequest < 3) {
    o.addedAdvertisers = buildUnnamed61();
    o.partnerId = 'foo';
    o.readAccessInherited = true;
    o.removedAdvertisers = buildUnnamed62();
  }
  buildCounterEditGuaranteedOrderReadAccessorsRequest--;
  return o;
}

void checkEditGuaranteedOrderReadAccessorsRequest(
  api.EditGuaranteedOrderReadAccessorsRequest o,
) {
  buildCounterEditGuaranteedOrderReadAccessorsRequest++;
  if (buildCounterEditGuaranteedOrderReadAccessorsRequest < 3) {
    checkUnnamed61(o.addedAdvertisers!);
    unittest.expect(o.partnerId!, unittest.equals('foo'));
    unittest.expect(o.readAccessInherited!, unittest.isTrue);
    checkUnnamed62(o.removedAdvertisers!);
  }
  buildCounterEditGuaranteedOrderReadAccessorsRequest--;
}

core.List<core.String> buildUnnamed63() => ['foo', 'foo'];

void checkUnnamed63(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEditGuaranteedOrderReadAccessorsResponse = 0;
api.EditGuaranteedOrderReadAccessorsResponse
buildEditGuaranteedOrderReadAccessorsResponse() {
  final o = api.EditGuaranteedOrderReadAccessorsResponse();
  buildCounterEditGuaranteedOrderReadAccessorsResponse++;
  if (buildCounterEditGuaranteedOrderReadAccessorsResponse < 3) {
    o.readAccessInherited = true;
    o.readAdvertiserIds = buildUnnamed63();
  }
  buildCounterEditGuaranteedOrderReadAccessorsResponse--;
  return o;
}

void checkEditGuaranteedOrderReadAccessorsResponse(
  api.EditGuaranteedOrderReadAccessorsResponse o,
) {
  buildCounterEditGuaranteedOrderReadAccessorsResponse++;
  if (buildCounterEditGuaranteedOrderReadAccessorsResponse < 3) {
    unittest.expect(o.readAccessInherited!, unittest.isTrue);
    checkUnnamed63(o.readAdvertiserIds!);
  }
  buildCounterEditGuaranteedOrderReadAccessorsResponse--;
}

core.int buildCounterEditInventorySourceReadWriteAccessorsRequest = 0;
api.EditInventorySourceReadWriteAccessorsRequest
buildEditInventorySourceReadWriteAccessorsRequest() {
  final o = api.EditInventorySourceReadWriteAccessorsRequest();
  buildCounterEditInventorySourceReadWriteAccessorsRequest++;
  if (buildCounterEditInventorySourceReadWriteAccessorsRequest < 3) {
    o.advertisersUpdate =
        buildEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate();
    o.assignPartner = true;
    o.partnerId = 'foo';
  }
  buildCounterEditInventorySourceReadWriteAccessorsRequest--;
  return o;
}

void checkEditInventorySourceReadWriteAccessorsRequest(
  api.EditInventorySourceReadWriteAccessorsRequest o,
) {
  buildCounterEditInventorySourceReadWriteAccessorsRequest++;
  if (buildCounterEditInventorySourceReadWriteAccessorsRequest < 3) {
    checkEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate(
      o.advertisersUpdate!,
    );
    unittest.expect(o.assignPartner!, unittest.isTrue);
    unittest.expect(o.partnerId!, unittest.equals('foo'));
  }
  buildCounterEditInventorySourceReadWriteAccessorsRequest--;
}

core.List<core.String> buildUnnamed64() => ['foo', 'foo'];

void checkUnnamed64(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed65() => ['foo', 'foo'];

void checkUnnamed65(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate = 0;
api.EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate
buildEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate() {
  final o = api.EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate();
  buildCounterEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate++;
  if (buildCounterEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate <
      3) {
    o.addedAdvertisers = buildUnnamed64();
    o.removedAdvertisers = buildUnnamed65();
  }
  buildCounterEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate--;
  return o;
}

void checkEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate(
  api.EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate o,
) {
  buildCounterEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate++;
  if (buildCounterEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate <
      3) {
    checkUnnamed64(o.addedAdvertisers!);
    checkUnnamed65(o.removedAdvertisers!);
  }
  buildCounterEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterEnvironmentAssignedTargetingOptionDetails = 0;
api.EnvironmentAssignedTargetingOptionDetails
buildEnvironmentAssignedTargetingOptionDetails() {
  final o = api.EnvironmentAssignedTargetingOptionDetails();
  buildCounterEnvironmentAssignedTargetingOptionDetails++;
  if (buildCounterEnvironmentAssignedTargetingOptionDetails < 3) {
    o.environment = 'foo';
  }
  buildCounterEnvironmentAssignedTargetingOptionDetails--;
  return o;
}

void checkEnvironmentAssignedTargetingOptionDetails(
  api.EnvironmentAssignedTargetingOptionDetails o,
) {
  buildCounterEnvironmentAssignedTargetingOptionDetails++;
  if (buildCounterEnvironmentAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.environment!, unittest.equals('foo'));
  }
  buildCounterEnvironmentAssignedTargetingOptionDetails--;
}

core.int buildCounterEnvironmentTargetingOptionDetails = 0;
api.EnvironmentTargetingOptionDetails buildEnvironmentTargetingOptionDetails() {
  final o = api.EnvironmentTargetingOptionDetails();
  buildCounterEnvironmentTargetingOptionDetails++;
  if (buildCounterEnvironmentTargetingOptionDetails < 3) {
    o.environment = 'foo';
  }
  buildCounterEnvironmentTargetingOptionDetails--;
  return o;
}

void checkEnvironmentTargetingOptionDetails(
  api.EnvironmentTargetingOptionDetails o,
) {
  buildCounterEnvironmentTargetingOptionDetails++;
  if (buildCounterEnvironmentTargetingOptionDetails < 3) {
    unittest.expect(o.environment!, unittest.equals('foo'));
  }
  buildCounterEnvironmentTargetingOptionDetails--;
}

core.int buildCounterExchangeAssignedTargetingOptionDetails = 0;
api.ExchangeAssignedTargetingOptionDetails
buildExchangeAssignedTargetingOptionDetails() {
  final o = api.ExchangeAssignedTargetingOptionDetails();
  buildCounterExchangeAssignedTargetingOptionDetails++;
  if (buildCounterExchangeAssignedTargetingOptionDetails < 3) {
    o.exchange = 'foo';
  }
  buildCounterExchangeAssignedTargetingOptionDetails--;
  return o;
}

void checkExchangeAssignedTargetingOptionDetails(
  api.ExchangeAssignedTargetingOptionDetails o,
) {
  buildCounterExchangeAssignedTargetingOptionDetails++;
  if (buildCounterExchangeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.exchange!, unittest.equals('foo'));
  }
  buildCounterExchangeAssignedTargetingOptionDetails--;
}

core.List<api.ExchangeConfigEnabledExchange> buildUnnamed66() => [
  buildExchangeConfigEnabledExchange(),
  buildExchangeConfigEnabledExchange(),
];

void checkUnnamed66(core.List<api.ExchangeConfigEnabledExchange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExchangeConfigEnabledExchange(o[0]);
  checkExchangeConfigEnabledExchange(o[1]);
}

core.int buildCounterExchangeConfig = 0;
api.ExchangeConfig buildExchangeConfig() {
  final o = api.ExchangeConfig();
  buildCounterExchangeConfig++;
  if (buildCounterExchangeConfig < 3) {
    o.enabledExchanges = buildUnnamed66();
  }
  buildCounterExchangeConfig--;
  return o;
}

void checkExchangeConfig(api.ExchangeConfig o) {
  buildCounterExchangeConfig++;
  if (buildCounterExchangeConfig < 3) {
    checkUnnamed66(o.enabledExchanges!);
  }
  buildCounterExchangeConfig--;
}

core.int buildCounterExchangeConfigEnabledExchange = 0;
api.ExchangeConfigEnabledExchange buildExchangeConfigEnabledExchange() {
  final o = api.ExchangeConfigEnabledExchange();
  buildCounterExchangeConfigEnabledExchange++;
  if (buildCounterExchangeConfigEnabledExchange < 3) {
    o.exchange = 'foo';
    o.googleAdManagerAgencyId = 'foo';
    o.googleAdManagerBuyerNetworkId = 'foo';
    o.seatId = 'foo';
  }
  buildCounterExchangeConfigEnabledExchange--;
  return o;
}

void checkExchangeConfigEnabledExchange(api.ExchangeConfigEnabledExchange o) {
  buildCounterExchangeConfigEnabledExchange++;
  if (buildCounterExchangeConfigEnabledExchange < 3) {
    unittest.expect(o.exchange!, unittest.equals('foo'));
    unittest.expect(o.googleAdManagerAgencyId!, unittest.equals('foo'));
    unittest.expect(o.googleAdManagerBuyerNetworkId!, unittest.equals('foo'));
    unittest.expect(o.seatId!, unittest.equals('foo'));
  }
  buildCounterExchangeConfigEnabledExchange--;
}

core.int buildCounterExchangeReviewStatus = 0;
api.ExchangeReviewStatus buildExchangeReviewStatus() {
  final o = api.ExchangeReviewStatus();
  buildCounterExchangeReviewStatus++;
  if (buildCounterExchangeReviewStatus < 3) {
    o.exchange = 'foo';
    o.status = 'foo';
  }
  buildCounterExchangeReviewStatus--;
  return o;
}

void checkExchangeReviewStatus(api.ExchangeReviewStatus o) {
  buildCounterExchangeReviewStatus++;
  if (buildCounterExchangeReviewStatus < 3) {
    unittest.expect(o.exchange!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterExchangeReviewStatus--;
}

core.int buildCounterExchangeTargetingOptionDetails = 0;
api.ExchangeTargetingOptionDetails buildExchangeTargetingOptionDetails() {
  final o = api.ExchangeTargetingOptionDetails();
  buildCounterExchangeTargetingOptionDetails++;
  if (buildCounterExchangeTargetingOptionDetails < 3) {
    o.exchange = 'foo';
  }
  buildCounterExchangeTargetingOptionDetails--;
  return o;
}

void checkExchangeTargetingOptionDetails(api.ExchangeTargetingOptionDetails o) {
  buildCounterExchangeTargetingOptionDetails++;
  if (buildCounterExchangeTargetingOptionDetails < 3) {
    unittest.expect(o.exchange!, unittest.equals('foo'));
  }
  buildCounterExchangeTargetingOptionDetails--;
}

core.int buildCounterExitEvent = 0;
api.ExitEvent buildExitEvent() {
  final o = api.ExitEvent();
  buildCounterExitEvent++;
  if (buildCounterExitEvent < 3) {
    o.name = 'foo';
    o.reportingName = 'foo';
    o.type = 'foo';
    o.url = 'foo';
  }
  buildCounterExitEvent--;
  return o;
}

void checkExitEvent(api.ExitEvent o) {
  buildCounterExitEvent++;
  if (buildCounterExitEvent < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reportingName!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterExitEvent--;
}

core.int buildCounterFixedBidStrategy = 0;
api.FixedBidStrategy buildFixedBidStrategy() {
  final o = api.FixedBidStrategy();
  buildCounterFixedBidStrategy++;
  if (buildCounterFixedBidStrategy < 3) {
    o.bidAmountMicros = 'foo';
  }
  buildCounterFixedBidStrategy--;
  return o;
}

void checkFixedBidStrategy(api.FixedBidStrategy o) {
  buildCounterFixedBidStrategy++;
  if (buildCounterFixedBidStrategy < 3) {
    unittest.expect(o.bidAmountMicros!, unittest.equals('foo'));
  }
  buildCounterFixedBidStrategy--;
}

core.List<core.String> buildUnnamed67() => ['foo', 'foo'];

void checkUnnamed67(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.RemarketingConfig> buildUnnamed68() => [
  buildRemarketingConfig(),
  buildRemarketingConfig(),
];

void checkUnnamed68(core.List<api.RemarketingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemarketingConfig(o[0]);
  checkRemarketingConfig(o[1]);
}

core.int buildCounterFloodlightActivity = 0;
api.FloodlightActivity buildFloodlightActivity() {
  final o = api.FloodlightActivity();
  buildCounterFloodlightActivity++;
  if (buildCounterFloodlightActivity < 3) {
    o.advertiserIds = buildUnnamed67();
    o.displayName = 'foo';
    o.floodlightActivityId = 'foo';
    o.floodlightGroupId = 'foo';
    o.name = 'foo';
    o.remarketingConfigs = buildUnnamed68();
    o.servingStatus = 'foo';
    o.sslRequired = true;
  }
  buildCounterFloodlightActivity--;
  return o;
}

void checkFloodlightActivity(api.FloodlightActivity o) {
  buildCounterFloodlightActivity++;
  if (buildCounterFloodlightActivity < 3) {
    checkUnnamed67(o.advertiserIds!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.floodlightActivityId!, unittest.equals('foo'));
    unittest.expect(o.floodlightGroupId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed68(o.remarketingConfigs!);
    unittest.expect(o.servingStatus!, unittest.equals('foo'));
    unittest.expect(o.sslRequired!, unittest.isTrue);
  }
  buildCounterFloodlightActivity--;
}

core.Map<core.String, core.Object?> buildUnnamed69() => {
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

void checkUnnamed69(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterFloodlightGroup = 0;
api.FloodlightGroup buildFloodlightGroup() {
  final o = api.FloodlightGroup();
  buildCounterFloodlightGroup++;
  if (buildCounterFloodlightGroup < 3) {
    o.activeViewConfig = buildActiveViewVideoViewabilityMetricConfig();
    o.customVariables = buildUnnamed69();
    o.displayName = 'foo';
    o.floodlightGroupId = 'foo';
    o.lookbackWindow = buildLookbackWindow();
    o.name = 'foo';
    o.webTagType = 'foo';
  }
  buildCounterFloodlightGroup--;
  return o;
}

void checkFloodlightGroup(api.FloodlightGroup o) {
  buildCounterFloodlightGroup++;
  if (buildCounterFloodlightGroup < 3) {
    checkActiveViewVideoViewabilityMetricConfig(o.activeViewConfig!);
    checkUnnamed69(o.customVariables!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.floodlightGroupId!, unittest.equals('foo'));
    checkLookbackWindow(o.lookbackWindow!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.webTagType!, unittest.equals('foo'));
  }
  buildCounterFloodlightGroup--;
}

core.int buildCounterFrequencyCap = 0;
api.FrequencyCap buildFrequencyCap() {
  final o = api.FrequencyCap();
  buildCounterFrequencyCap++;
  if (buildCounterFrequencyCap < 3) {
    o.maxImpressions = 42;
    o.maxViews = 42;
    o.timeUnit = 'foo';
    o.timeUnitCount = 42;
    o.unlimited = true;
  }
  buildCounterFrequencyCap--;
  return o;
}

void checkFrequencyCap(api.FrequencyCap o) {
  buildCounterFrequencyCap++;
  if (buildCounterFrequencyCap < 3) {
    unittest.expect(o.maxImpressions!, unittest.equals(42));
    unittest.expect(o.maxViews!, unittest.equals(42));
    unittest.expect(o.timeUnit!, unittest.equals('foo'));
    unittest.expect(o.timeUnitCount!, unittest.equals(42));
    unittest.expect(o.unlimited!, unittest.isTrue);
  }
  buildCounterFrequencyCap--;
}

core.int buildCounterGenderAssignedTargetingOptionDetails = 0;
api.GenderAssignedTargetingOptionDetails
buildGenderAssignedTargetingOptionDetails() {
  final o = api.GenderAssignedTargetingOptionDetails();
  buildCounterGenderAssignedTargetingOptionDetails++;
  if (buildCounterGenderAssignedTargetingOptionDetails < 3) {
    o.gender = 'foo';
  }
  buildCounterGenderAssignedTargetingOptionDetails--;
  return o;
}

void checkGenderAssignedTargetingOptionDetails(
  api.GenderAssignedTargetingOptionDetails o,
) {
  buildCounterGenderAssignedTargetingOptionDetails++;
  if (buildCounterGenderAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.gender!, unittest.equals('foo'));
  }
  buildCounterGenderAssignedTargetingOptionDetails--;
}

core.int buildCounterGenderTargetingOptionDetails = 0;
api.GenderTargetingOptionDetails buildGenderTargetingOptionDetails() {
  final o = api.GenderTargetingOptionDetails();
  buildCounterGenderTargetingOptionDetails++;
  if (buildCounterGenderTargetingOptionDetails < 3) {
    o.gender = 'foo';
  }
  buildCounterGenderTargetingOptionDetails--;
  return o;
}

void checkGenderTargetingOptionDetails(api.GenderTargetingOptionDetails o) {
  buildCounterGenderTargetingOptionDetails++;
  if (buildCounterGenderTargetingOptionDetails < 3) {
    unittest.expect(o.gender!, unittest.equals('foo'));
  }
  buildCounterGenderTargetingOptionDetails--;
}

core.int buildCounterGeoRegionAssignedTargetingOptionDetails = 0;
api.GeoRegionAssignedTargetingOptionDetails
buildGeoRegionAssignedTargetingOptionDetails() {
  final o = api.GeoRegionAssignedTargetingOptionDetails();
  buildCounterGeoRegionAssignedTargetingOptionDetails++;
  if (buildCounterGeoRegionAssignedTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.geoRegionType = 'foo';
    o.negative = true;
    o.targetingOptionId = 'foo';
  }
  buildCounterGeoRegionAssignedTargetingOptionDetails--;
  return o;
}

void checkGeoRegionAssignedTargetingOptionDetails(
  api.GeoRegionAssignedTargetingOptionDetails o,
) {
  buildCounterGeoRegionAssignedTargetingOptionDetails++;
  if (buildCounterGeoRegionAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.geoRegionType!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterGeoRegionAssignedTargetingOptionDetails--;
}

core.int buildCounterGeoRegionSearchTerms = 0;
api.GeoRegionSearchTerms buildGeoRegionSearchTerms() {
  final o = api.GeoRegionSearchTerms();
  buildCounterGeoRegionSearchTerms++;
  if (buildCounterGeoRegionSearchTerms < 3) {
    o.geoRegionQuery = 'foo';
  }
  buildCounterGeoRegionSearchTerms--;
  return o;
}

void checkGeoRegionSearchTerms(api.GeoRegionSearchTerms o) {
  buildCounterGeoRegionSearchTerms++;
  if (buildCounterGeoRegionSearchTerms < 3) {
    unittest.expect(o.geoRegionQuery!, unittest.equals('foo'));
  }
  buildCounterGeoRegionSearchTerms--;
}

core.int buildCounterGeoRegionTargetingOptionDetails = 0;
api.GeoRegionTargetingOptionDetails buildGeoRegionTargetingOptionDetails() {
  final o = api.GeoRegionTargetingOptionDetails();
  buildCounterGeoRegionTargetingOptionDetails++;
  if (buildCounterGeoRegionTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.geoRegionType = 'foo';
  }
  buildCounterGeoRegionTargetingOptionDetails--;
  return o;
}

void checkGeoRegionTargetingOptionDetails(
  api.GeoRegionTargetingOptionDetails o,
) {
  buildCounterGeoRegionTargetingOptionDetails++;
  if (buildCounterGeoRegionTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.geoRegionType!, unittest.equals('foo'));
  }
  buildCounterGeoRegionTargetingOptionDetails--;
}

core.int buildCounterGoogleAudience = 0;
api.GoogleAudience buildGoogleAudience() {
  final o = api.GoogleAudience();
  buildCounterGoogleAudience++;
  if (buildCounterGoogleAudience < 3) {
    o.displayName = 'foo';
    o.googleAudienceId = 'foo';
    o.googleAudienceType = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAudience--;
  return o;
}

void checkGoogleAudience(api.GoogleAudience o) {
  buildCounterGoogleAudience++;
  if (buildCounterGoogleAudience < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.googleAudienceId!, unittest.equals('foo'));
    unittest.expect(o.googleAudienceType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleAudience--;
}

core.List<api.GoogleAudienceTargetingSetting> buildUnnamed70() => [
  buildGoogleAudienceTargetingSetting(),
  buildGoogleAudienceTargetingSetting(),
];

void checkUnnamed70(core.List<api.GoogleAudienceTargetingSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAudienceTargetingSetting(o[0]);
  checkGoogleAudienceTargetingSetting(o[1]);
}

core.int buildCounterGoogleAudienceGroup = 0;
api.GoogleAudienceGroup buildGoogleAudienceGroup() {
  final o = api.GoogleAudienceGroup();
  buildCounterGoogleAudienceGroup++;
  if (buildCounterGoogleAudienceGroup < 3) {
    o.settings = buildUnnamed70();
  }
  buildCounterGoogleAudienceGroup--;
  return o;
}

void checkGoogleAudienceGroup(api.GoogleAudienceGroup o) {
  buildCounterGoogleAudienceGroup++;
  if (buildCounterGoogleAudienceGroup < 3) {
    checkUnnamed70(o.settings!);
  }
  buildCounterGoogleAudienceGroup--;
}

core.int buildCounterGoogleAudienceTargetingSetting = 0;
api.GoogleAudienceTargetingSetting buildGoogleAudienceTargetingSetting() {
  final o = api.GoogleAudienceTargetingSetting();
  buildCounterGoogleAudienceTargetingSetting++;
  if (buildCounterGoogleAudienceTargetingSetting < 3) {
    o.googleAudienceId = 'foo';
  }
  buildCounterGoogleAudienceTargetingSetting--;
  return o;
}

void checkGoogleAudienceTargetingSetting(api.GoogleAudienceTargetingSetting o) {
  buildCounterGoogleAudienceTargetingSetting++;
  if (buildCounterGoogleAudienceTargetingSetting < 3) {
    unittest.expect(o.googleAudienceId!, unittest.equals('foo'));
  }
  buildCounterGoogleAudienceTargetingSetting--;
}

core.int buildCounterGoogleBytestreamMedia = 0;
api.GoogleBytestreamMedia buildGoogleBytestreamMedia() {
  final o = api.GoogleBytestreamMedia();
  buildCounterGoogleBytestreamMedia++;
  if (buildCounterGoogleBytestreamMedia < 3) {
    o.resourceName = 'foo';
  }
  buildCounterGoogleBytestreamMedia--;
  return o;
}

void checkGoogleBytestreamMedia(api.GoogleBytestreamMedia o) {
  buildCounterGoogleBytestreamMedia++;
  if (buildCounterGoogleBytestreamMedia < 3) {
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleBytestreamMedia--;
}

core.List<core.String> buildUnnamed71() => ['foo', 'foo'];

void checkUnnamed71(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGuaranteedOrder = 0;
api.GuaranteedOrder buildGuaranteedOrder() {
  final o = api.GuaranteedOrder();
  buildCounterGuaranteedOrder++;
  if (buildCounterGuaranteedOrder < 3) {
    o.defaultAdvertiserId = 'foo';
    o.defaultCampaignId = 'foo';
    o.displayName = 'foo';
    o.exchange = 'foo';
    o.guaranteedOrderId = 'foo';
    o.legacyGuaranteedOrderId = 'foo';
    o.name = 'foo';
    o.publisherName = 'foo';
    o.readAccessInherited = true;
    o.readAdvertiserIds = buildUnnamed71();
    o.readWriteAdvertiserId = 'foo';
    o.readWritePartnerId = 'foo';
    o.status = buildGuaranteedOrderStatus();
    o.updateTime = 'foo';
  }
  buildCounterGuaranteedOrder--;
  return o;
}

void checkGuaranteedOrder(api.GuaranteedOrder o) {
  buildCounterGuaranteedOrder++;
  if (buildCounterGuaranteedOrder < 3) {
    unittest.expect(o.defaultAdvertiserId!, unittest.equals('foo'));
    unittest.expect(o.defaultCampaignId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.exchange!, unittest.equals('foo'));
    unittest.expect(o.guaranteedOrderId!, unittest.equals('foo'));
    unittest.expect(o.legacyGuaranteedOrderId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.publisherName!, unittest.equals('foo'));
    unittest.expect(o.readAccessInherited!, unittest.isTrue);
    checkUnnamed71(o.readAdvertiserIds!);
    unittest.expect(o.readWriteAdvertiserId!, unittest.equals('foo'));
    unittest.expect(o.readWritePartnerId!, unittest.equals('foo'));
    checkGuaranteedOrderStatus(o.status!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGuaranteedOrder--;
}

core.int buildCounterGuaranteedOrderStatus = 0;
api.GuaranteedOrderStatus buildGuaranteedOrderStatus() {
  final o = api.GuaranteedOrderStatus();
  buildCounterGuaranteedOrderStatus++;
  if (buildCounterGuaranteedOrderStatus < 3) {
    o.configStatus = 'foo';
    o.entityPauseReason = 'foo';
    o.entityStatus = 'foo';
  }
  buildCounterGuaranteedOrderStatus--;
  return o;
}

void checkGuaranteedOrderStatus(api.GuaranteedOrderStatus o) {
  buildCounterGuaranteedOrderStatus++;
  if (buildCounterGuaranteedOrderStatus < 3) {
    unittest.expect(o.configStatus!, unittest.equals('foo'));
    unittest.expect(o.entityPauseReason!, unittest.equals('foo'));
    unittest.expect(o.entityStatus!, unittest.equals('foo'));
  }
  buildCounterGuaranteedOrderStatus--;
}

core.int buildCounterHouseholdIncomeAssignedTargetingOptionDetails = 0;
api.HouseholdIncomeAssignedTargetingOptionDetails
buildHouseholdIncomeAssignedTargetingOptionDetails() {
  final o = api.HouseholdIncomeAssignedTargetingOptionDetails();
  buildCounterHouseholdIncomeAssignedTargetingOptionDetails++;
  if (buildCounterHouseholdIncomeAssignedTargetingOptionDetails < 3) {
    o.householdIncome = 'foo';
  }
  buildCounterHouseholdIncomeAssignedTargetingOptionDetails--;
  return o;
}

void checkHouseholdIncomeAssignedTargetingOptionDetails(
  api.HouseholdIncomeAssignedTargetingOptionDetails o,
) {
  buildCounterHouseholdIncomeAssignedTargetingOptionDetails++;
  if (buildCounterHouseholdIncomeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.householdIncome!, unittest.equals('foo'));
  }
  buildCounterHouseholdIncomeAssignedTargetingOptionDetails--;
}

core.int buildCounterHouseholdIncomeTargetingOptionDetails = 0;
api.HouseholdIncomeTargetingOptionDetails
buildHouseholdIncomeTargetingOptionDetails() {
  final o = api.HouseholdIncomeTargetingOptionDetails();
  buildCounterHouseholdIncomeTargetingOptionDetails++;
  if (buildCounterHouseholdIncomeTargetingOptionDetails < 3) {
    o.householdIncome = 'foo';
  }
  buildCounterHouseholdIncomeTargetingOptionDetails--;
  return o;
}

void checkHouseholdIncomeTargetingOptionDetails(
  api.HouseholdIncomeTargetingOptionDetails o,
) {
  buildCounterHouseholdIncomeTargetingOptionDetails++;
  if (buildCounterHouseholdIncomeTargetingOptionDetails < 3) {
    unittest.expect(o.householdIncome!, unittest.equals('foo'));
  }
  buildCounterHouseholdIncomeTargetingOptionDetails--;
}

core.List<core.String> buildUnnamed72() => ['foo', 'foo'];

void checkUnnamed72(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed73() => ['foo', 'foo'];

void checkUnnamed73(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed74() => ['foo', 'foo'];

void checkUnnamed74(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed75() => ['foo', 'foo'];

void checkUnnamed75(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed76() => ['foo', 'foo'];

void checkUnnamed76(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed77() => ['foo', 'foo'];

void checkUnnamed77(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIdFilter = 0;
api.IdFilter buildIdFilter() {
  final o = api.IdFilter();
  buildCounterIdFilter++;
  if (buildCounterIdFilter < 3) {
    o.adGroupAdIds = buildUnnamed72();
    o.adGroupIds = buildUnnamed73();
    o.campaignIds = buildUnnamed74();
    o.insertionOrderIds = buildUnnamed75();
    o.lineItemIds = buildUnnamed76();
    o.mediaProductIds = buildUnnamed77();
  }
  buildCounterIdFilter--;
  return o;
}

void checkIdFilter(api.IdFilter o) {
  buildCounterIdFilter++;
  if (buildCounterIdFilter < 3) {
    checkUnnamed72(o.adGroupAdIds!);
    checkUnnamed73(o.adGroupIds!);
    checkUnnamed74(o.campaignIds!);
    checkUnnamed75(o.insertionOrderIds!);
    checkUnnamed76(o.lineItemIds!);
    checkUnnamed77(o.mediaProductIds!);
  }
  buildCounterIdFilter--;
}

core.int buildCounterImageAsset = 0;
api.ImageAsset buildImageAsset() {
  final o = api.ImageAsset();
  buildCounterImageAsset++;
  if (buildCounterImageAsset < 3) {
    o.fileSize = 'foo';
    o.fullSize = buildDimensions();
    o.mimeType = 'foo';
  }
  buildCounterImageAsset--;
  return o;
}

void checkImageAsset(api.ImageAsset o) {
  buildCounterImageAsset++;
  if (buildCounterImageAsset < 3) {
    unittest.expect(o.fileSize!, unittest.equals('foo'));
    checkDimensions(o.fullSize!);
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterImageAsset--;
}

core.Map<core.String, core.String> buildUnnamed78() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed78(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterInStreamAd = 0;
api.InStreamAd buildInStreamAd() {
  final o = api.InStreamAd();
  buildCounterInStreamAd++;
  if (buildCounterInStreamAd < 3) {
    o.commonInStreamAttribute = buildCommonInStreamAttribute();
    o.customParameters = buildUnnamed78();
  }
  buildCounterInStreamAd--;
  return o;
}

void checkInStreamAd(api.InStreamAd o) {
  buildCounterInStreamAd++;
  if (buildCounterInStreamAd < 3) {
    checkCommonInStreamAttribute(o.commonInStreamAttribute!);
    checkUnnamed78(o.customParameters!);
  }
  buildCounterInStreamAd--;
}

core.List<api.PartnerCost> buildUnnamed79() => [
  buildPartnerCost(),
  buildPartnerCost(),
];

void checkUnnamed79(core.List<api.PartnerCost> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerCost(o[0]);
  checkPartnerCost(o[1]);
}

core.int buildCounterInsertionOrder = 0;
api.InsertionOrder buildInsertionOrder() {
  final o = api.InsertionOrder();
  buildCounterInsertionOrder++;
  if (buildCounterInsertionOrder < 3) {
    o.advertiserId = 'foo';
    o.bidStrategy = buildBiddingStrategy();
    o.billableOutcome = 'foo';
    o.budget = buildInsertionOrderBudget();
    o.campaignId = 'foo';
    o.displayName = 'foo';
    o.entityStatus = 'foo';
    o.frequencyCap = buildFrequencyCap();
    o.insertionOrderId = 'foo';
    o.insertionOrderType = 'foo';
    o.integrationDetails = buildIntegrationDetails();
    o.name = 'foo';
    o.pacing = buildPacing();
    o.partnerCosts = buildUnnamed79();
    o.performanceGoal = buildPerformanceGoal();
    o.reservationType = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterInsertionOrder--;
  return o;
}

void checkInsertionOrder(api.InsertionOrder o) {
  buildCounterInsertionOrder++;
  if (buildCounterInsertionOrder < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    checkBiddingStrategy(o.bidStrategy!);
    unittest.expect(o.billableOutcome!, unittest.equals('foo'));
    checkInsertionOrderBudget(o.budget!);
    unittest.expect(o.campaignId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entityStatus!, unittest.equals('foo'));
    checkFrequencyCap(o.frequencyCap!);
    unittest.expect(o.insertionOrderId!, unittest.equals('foo'));
    unittest.expect(o.insertionOrderType!, unittest.equals('foo'));
    checkIntegrationDetails(o.integrationDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPacing(o.pacing!);
    checkUnnamed79(o.partnerCosts!);
    checkPerformanceGoal(o.performanceGoal!);
    unittest.expect(o.reservationType!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterInsertionOrder--;
}

core.List<api.InsertionOrderBudgetSegment> buildUnnamed80() => [
  buildInsertionOrderBudgetSegment(),
  buildInsertionOrderBudgetSegment(),
];

void checkUnnamed80(core.List<api.InsertionOrderBudgetSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInsertionOrderBudgetSegment(o[0]);
  checkInsertionOrderBudgetSegment(o[1]);
}

core.int buildCounterInsertionOrderBudget = 0;
api.InsertionOrderBudget buildInsertionOrderBudget() {
  final o = api.InsertionOrderBudget();
  buildCounterInsertionOrderBudget++;
  if (buildCounterInsertionOrderBudget < 3) {
    o.automationType = 'foo';
    o.budgetSegments = buildUnnamed80();
    o.budgetUnit = 'foo';
  }
  buildCounterInsertionOrderBudget--;
  return o;
}

void checkInsertionOrderBudget(api.InsertionOrderBudget o) {
  buildCounterInsertionOrderBudget++;
  if (buildCounterInsertionOrderBudget < 3) {
    unittest.expect(o.automationType!, unittest.equals('foo'));
    checkUnnamed80(o.budgetSegments!);
    unittest.expect(o.budgetUnit!, unittest.equals('foo'));
  }
  buildCounterInsertionOrderBudget--;
}

core.int buildCounterInsertionOrderBudgetSegment = 0;
api.InsertionOrderBudgetSegment buildInsertionOrderBudgetSegment() {
  final o = api.InsertionOrderBudgetSegment();
  buildCounterInsertionOrderBudgetSegment++;
  if (buildCounterInsertionOrderBudgetSegment < 3) {
    o.budgetAmountMicros = 'foo';
    o.campaignBudgetId = 'foo';
    o.dateRange = buildDateRange();
    o.description = 'foo';
  }
  buildCounterInsertionOrderBudgetSegment--;
  return o;
}

void checkInsertionOrderBudgetSegment(api.InsertionOrderBudgetSegment o) {
  buildCounterInsertionOrderBudgetSegment++;
  if (buildCounterInsertionOrderBudgetSegment < 3) {
    unittest.expect(o.budgetAmountMicros!, unittest.equals('foo'));
    unittest.expect(o.campaignBudgetId!, unittest.equals('foo'));
    checkDateRange(o.dateRange!);
    unittest.expect(o.description!, unittest.equals('foo'));
  }
  buildCounterInsertionOrderBudgetSegment--;
}

core.List<core.String> buildUnnamed81() => ['foo', 'foo'];

void checkUnnamed81(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIntegralAdScience = 0;
api.IntegralAdScience buildIntegralAdScience() {
  final o = api.IntegralAdScience();
  buildCounterIntegralAdScience++;
  if (buildCounterIntegralAdScience < 3) {
    o.customSegmentId = buildUnnamed81();
    o.displayViewability = 'foo';
    o.excludeUnrateable = true;
    o.excludedAdFraudRisk = 'foo';
    o.excludedAdultRisk = 'foo';
    o.excludedAlcoholRisk = 'foo';
    o.excludedDrugsRisk = 'foo';
    o.excludedGamblingRisk = 'foo';
    o.excludedHateSpeechRisk = 'foo';
    o.excludedIllegalDownloadsRisk = 'foo';
    o.excludedOffensiveLanguageRisk = 'foo';
    o.excludedViolenceRisk = 'foo';
    o.traqScoreOption = 'foo';
    o.videoViewability = 'foo';
  }
  buildCounterIntegralAdScience--;
  return o;
}

void checkIntegralAdScience(api.IntegralAdScience o) {
  buildCounterIntegralAdScience++;
  if (buildCounterIntegralAdScience < 3) {
    checkUnnamed81(o.customSegmentId!);
    unittest.expect(o.displayViewability!, unittest.equals('foo'));
    unittest.expect(o.excludeUnrateable!, unittest.isTrue);
    unittest.expect(o.excludedAdFraudRisk!, unittest.equals('foo'));
    unittest.expect(o.excludedAdultRisk!, unittest.equals('foo'));
    unittest.expect(o.excludedAlcoholRisk!, unittest.equals('foo'));
    unittest.expect(o.excludedDrugsRisk!, unittest.equals('foo'));
    unittest.expect(o.excludedGamblingRisk!, unittest.equals('foo'));
    unittest.expect(o.excludedHateSpeechRisk!, unittest.equals('foo'));
    unittest.expect(o.excludedIllegalDownloadsRisk!, unittest.equals('foo'));
    unittest.expect(o.excludedOffensiveLanguageRisk!, unittest.equals('foo'));
    unittest.expect(o.excludedViolenceRisk!, unittest.equals('foo'));
    unittest.expect(o.traqScoreOption!, unittest.equals('foo'));
    unittest.expect(o.videoViewability!, unittest.equals('foo'));
  }
  buildCounterIntegralAdScience--;
}

core.int buildCounterIntegrationDetails = 0;
api.IntegrationDetails buildIntegrationDetails() {
  final o = api.IntegrationDetails();
  buildCounterIntegrationDetails++;
  if (buildCounterIntegrationDetails < 3) {
    o.details = 'foo';
    o.integrationCode = 'foo';
  }
  buildCounterIntegrationDetails--;
  return o;
}

void checkIntegrationDetails(api.IntegrationDetails o) {
  buildCounterIntegrationDetails++;
  if (buildCounterIntegrationDetails < 3) {
    unittest.expect(o.details!, unittest.equals('foo'));
    unittest.expect(o.integrationCode!, unittest.equals('foo'));
  }
  buildCounterIntegrationDetails--;
}

core.List<api.CreativeConfig> buildUnnamed82() => [
  buildCreativeConfig(),
  buildCreativeConfig(),
];

void checkUnnamed82(core.List<api.CreativeConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeConfig(o[0]);
  checkCreativeConfig(o[1]);
}

core.List<core.String> buildUnnamed83() => ['foo', 'foo'];

void checkUnnamed83(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed84() => ['foo', 'foo'];

void checkUnnamed84(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInventorySource = 0;
api.InventorySource buildInventorySource() {
  final o = api.InventorySource();
  buildCounterInventorySource++;
  if (buildCounterInventorySource < 3) {
    o.commitment = 'foo';
    o.creativeConfigs = buildUnnamed82();
    o.dealId = 'foo';
    o.deliveryMethod = 'foo';
    o.displayName = 'foo';
    o.exchange = 'foo';
    o.guaranteedOrderId = 'foo';
    o.inventorySourceId = 'foo';
    o.inventorySourceProductType = 'foo';
    o.inventorySourceType = 'foo';
    o.name = 'foo';
    o.publisherName = 'foo';
    o.rateDetails = buildRateDetails();
    o.readAdvertiserIds = buildUnnamed83();
    o.readPartnerIds = buildUnnamed84();
    o.readWriteAccessors = buildInventorySourceAccessors();
    o.status = buildInventorySourceStatus();
    o.timeRange = buildTimeRange();
    o.updateTime = 'foo';
  }
  buildCounterInventorySource--;
  return o;
}

void checkInventorySource(api.InventorySource o) {
  buildCounterInventorySource++;
  if (buildCounterInventorySource < 3) {
    unittest.expect(o.commitment!, unittest.equals('foo'));
    checkUnnamed82(o.creativeConfigs!);
    unittest.expect(o.dealId!, unittest.equals('foo'));
    unittest.expect(o.deliveryMethod!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.exchange!, unittest.equals('foo'));
    unittest.expect(o.guaranteedOrderId!, unittest.equals('foo'));
    unittest.expect(o.inventorySourceId!, unittest.equals('foo'));
    unittest.expect(o.inventorySourceProductType!, unittest.equals('foo'));
    unittest.expect(o.inventorySourceType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.publisherName!, unittest.equals('foo'));
    checkRateDetails(o.rateDetails!);
    checkUnnamed83(o.readAdvertiserIds!);
    checkUnnamed84(o.readPartnerIds!);
    checkInventorySourceAccessors(o.readWriteAccessors!);
    checkInventorySourceStatus(o.status!);
    checkTimeRange(o.timeRange!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterInventorySource--;
}

core.int buildCounterInventorySourceAccessors = 0;
api.InventorySourceAccessors buildInventorySourceAccessors() {
  final o = api.InventorySourceAccessors();
  buildCounterInventorySourceAccessors++;
  if (buildCounterInventorySourceAccessors < 3) {
    o.advertisers = buildInventorySourceAccessorsAdvertiserAccessors();
    o.partner = buildInventorySourceAccessorsPartnerAccessor();
  }
  buildCounterInventorySourceAccessors--;
  return o;
}

void checkInventorySourceAccessors(api.InventorySourceAccessors o) {
  buildCounterInventorySourceAccessors++;
  if (buildCounterInventorySourceAccessors < 3) {
    checkInventorySourceAccessorsAdvertiserAccessors(o.advertisers!);
    checkInventorySourceAccessorsPartnerAccessor(o.partner!);
  }
  buildCounterInventorySourceAccessors--;
}

core.List<core.String> buildUnnamed85() => ['foo', 'foo'];

void checkUnnamed85(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInventorySourceAccessorsAdvertiserAccessors = 0;
api.InventorySourceAccessorsAdvertiserAccessors
buildInventorySourceAccessorsAdvertiserAccessors() {
  final o = api.InventorySourceAccessorsAdvertiserAccessors();
  buildCounterInventorySourceAccessorsAdvertiserAccessors++;
  if (buildCounterInventorySourceAccessorsAdvertiserAccessors < 3) {
    o.advertiserIds = buildUnnamed85();
  }
  buildCounterInventorySourceAccessorsAdvertiserAccessors--;
  return o;
}

void checkInventorySourceAccessorsAdvertiserAccessors(
  api.InventorySourceAccessorsAdvertiserAccessors o,
) {
  buildCounterInventorySourceAccessorsAdvertiserAccessors++;
  if (buildCounterInventorySourceAccessorsAdvertiserAccessors < 3) {
    checkUnnamed85(o.advertiserIds!);
  }
  buildCounterInventorySourceAccessorsAdvertiserAccessors--;
}

core.int buildCounterInventorySourceAccessorsPartnerAccessor = 0;
api.InventorySourceAccessorsPartnerAccessor
buildInventorySourceAccessorsPartnerAccessor() {
  final o = api.InventorySourceAccessorsPartnerAccessor();
  buildCounterInventorySourceAccessorsPartnerAccessor++;
  if (buildCounterInventorySourceAccessorsPartnerAccessor < 3) {
    o.partnerId = 'foo';
  }
  buildCounterInventorySourceAccessorsPartnerAccessor--;
  return o;
}

void checkInventorySourceAccessorsPartnerAccessor(
  api.InventorySourceAccessorsPartnerAccessor o,
) {
  buildCounterInventorySourceAccessorsPartnerAccessor++;
  if (buildCounterInventorySourceAccessorsPartnerAccessor < 3) {
    unittest.expect(o.partnerId!, unittest.equals('foo'));
  }
  buildCounterInventorySourceAccessorsPartnerAccessor--;
}

core.int buildCounterInventorySourceAssignedTargetingOptionDetails = 0;
api.InventorySourceAssignedTargetingOptionDetails
buildInventorySourceAssignedTargetingOptionDetails() {
  final o = api.InventorySourceAssignedTargetingOptionDetails();
  buildCounterInventorySourceAssignedTargetingOptionDetails++;
  if (buildCounterInventorySourceAssignedTargetingOptionDetails < 3) {
    o.inventorySourceId = 'foo';
  }
  buildCounterInventorySourceAssignedTargetingOptionDetails--;
  return o;
}

void checkInventorySourceAssignedTargetingOptionDetails(
  api.InventorySourceAssignedTargetingOptionDetails o,
) {
  buildCounterInventorySourceAssignedTargetingOptionDetails++;
  if (buildCounterInventorySourceAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.inventorySourceId!, unittest.equals('foo'));
  }
  buildCounterInventorySourceAssignedTargetingOptionDetails--;
}

core.int buildCounterInventorySourceDisplayCreativeConfig = 0;
api.InventorySourceDisplayCreativeConfig
buildInventorySourceDisplayCreativeConfig() {
  final o = api.InventorySourceDisplayCreativeConfig();
  buildCounterInventorySourceDisplayCreativeConfig++;
  if (buildCounterInventorySourceDisplayCreativeConfig < 3) {
    o.creativeSize = buildDimensions();
  }
  buildCounterInventorySourceDisplayCreativeConfig--;
  return o;
}

void checkInventorySourceDisplayCreativeConfig(
  api.InventorySourceDisplayCreativeConfig o,
) {
  buildCounterInventorySourceDisplayCreativeConfig++;
  if (buildCounterInventorySourceDisplayCreativeConfig < 3) {
    checkDimensions(o.creativeSize!);
  }
  buildCounterInventorySourceDisplayCreativeConfig--;
}

core.List<core.String> buildUnnamed86() => ['foo', 'foo'];

void checkUnnamed86(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInventorySourceFilter = 0;
api.InventorySourceFilter buildInventorySourceFilter() {
  final o = api.InventorySourceFilter();
  buildCounterInventorySourceFilter++;
  if (buildCounterInventorySourceFilter < 3) {
    o.inventorySourceIds = buildUnnamed86();
  }
  buildCounterInventorySourceFilter--;
  return o;
}

void checkInventorySourceFilter(api.InventorySourceFilter o) {
  buildCounterInventorySourceFilter++;
  if (buildCounterInventorySourceFilter < 3) {
    checkUnnamed86(o.inventorySourceIds!);
  }
  buildCounterInventorySourceFilter--;
}

core.int buildCounterInventorySourceGroup = 0;
api.InventorySourceGroup buildInventorySourceGroup() {
  final o = api.InventorySourceGroup();
  buildCounterInventorySourceGroup++;
  if (buildCounterInventorySourceGroup < 3) {
    o.displayName = 'foo';
    o.inventorySourceGroupId = 'foo';
    o.name = 'foo';
  }
  buildCounterInventorySourceGroup--;
  return o;
}

void checkInventorySourceGroup(api.InventorySourceGroup o) {
  buildCounterInventorySourceGroup++;
  if (buildCounterInventorySourceGroup < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.inventorySourceGroupId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterInventorySourceGroup--;
}

core.int buildCounterInventorySourceGroupAssignedTargetingOptionDetails = 0;
api.InventorySourceGroupAssignedTargetingOptionDetails
buildInventorySourceGroupAssignedTargetingOptionDetails() {
  final o = api.InventorySourceGroupAssignedTargetingOptionDetails();
  buildCounterInventorySourceGroupAssignedTargetingOptionDetails++;
  if (buildCounterInventorySourceGroupAssignedTargetingOptionDetails < 3) {
    o.inventorySourceGroupId = 'foo';
  }
  buildCounterInventorySourceGroupAssignedTargetingOptionDetails--;
  return o;
}

void checkInventorySourceGroupAssignedTargetingOptionDetails(
  api.InventorySourceGroupAssignedTargetingOptionDetails o,
) {
  buildCounterInventorySourceGroupAssignedTargetingOptionDetails++;
  if (buildCounterInventorySourceGroupAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.inventorySourceGroupId!, unittest.equals('foo'));
  }
  buildCounterInventorySourceGroupAssignedTargetingOptionDetails--;
}

core.int buildCounterInventorySourceStatus = 0;
api.InventorySourceStatus buildInventorySourceStatus() {
  final o = api.InventorySourceStatus();
  buildCounterInventorySourceStatus++;
  if (buildCounterInventorySourceStatus < 3) {
    o.configStatus = 'foo';
    o.entityPauseReason = 'foo';
    o.entityStatus = 'foo';
    o.sellerPauseReason = 'foo';
    o.sellerStatus = 'foo';
  }
  buildCounterInventorySourceStatus--;
  return o;
}

void checkInventorySourceStatus(api.InventorySourceStatus o) {
  buildCounterInventorySourceStatus++;
  if (buildCounterInventorySourceStatus < 3) {
    unittest.expect(o.configStatus!, unittest.equals('foo'));
    unittest.expect(o.entityPauseReason!, unittest.equals('foo'));
    unittest.expect(o.entityStatus!, unittest.equals('foo'));
    unittest.expect(o.sellerPauseReason!, unittest.equals('foo'));
    unittest.expect(o.sellerStatus!, unittest.equals('foo'));
  }
  buildCounterInventorySourceStatus--;
}

core.int buildCounterInventorySourceVideoCreativeConfig = 0;
api.InventorySourceVideoCreativeConfig
buildInventorySourceVideoCreativeConfig() {
  final o = api.InventorySourceVideoCreativeConfig();
  buildCounterInventorySourceVideoCreativeConfig++;
  if (buildCounterInventorySourceVideoCreativeConfig < 3) {
    o.duration = 'foo';
  }
  buildCounterInventorySourceVideoCreativeConfig--;
  return o;
}

void checkInventorySourceVideoCreativeConfig(
  api.InventorySourceVideoCreativeConfig o,
) {
  buildCounterInventorySourceVideoCreativeConfig++;
  if (buildCounterInventorySourceVideoCreativeConfig < 3) {
    unittest.expect(o.duration!, unittest.equals('foo'));
  }
  buildCounterInventorySourceVideoCreativeConfig--;
}

core.List<api.BudgetSummary> buildUnnamed87() => [
  buildBudgetSummary(),
  buildBudgetSummary(),
];

void checkUnnamed87(core.List<api.BudgetSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBudgetSummary(o[0]);
  checkBudgetSummary(o[1]);
}

core.List<core.String> buildUnnamed88() => ['foo', 'foo'];

void checkUnnamed88(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInvoice = 0;
api.Invoice buildInvoice() {
  final o = api.Invoice();
  buildCounterInvoice++;
  if (buildCounterInvoice < 3) {
    o.budgetInvoiceGroupingId = 'foo';
    o.budgetSummaries = buildUnnamed87();
    o.correctedInvoiceId = 'foo';
    o.currencyCode = 'foo';
    o.displayName = 'foo';
    o.dueDate = buildDate();
    o.invoiceId = 'foo';
    o.invoiceType = 'foo';
    o.issueDate = buildDate();
    o.name = 'foo';
    o.nonBudgetMicros = 'foo';
    o.paymentsAccountId = 'foo';
    o.paymentsProfileId = 'foo';
    o.pdfUrl = 'foo';
    o.purchaseOrderNumber = 'foo';
    o.replacedInvoiceIds = buildUnnamed88();
    o.serviceDateRange = buildDateRange();
    o.subtotalAmountMicros = 'foo';
    o.totalAmountMicros = 'foo';
    o.totalTaxAmountMicros = 'foo';
  }
  buildCounterInvoice--;
  return o;
}

void checkInvoice(api.Invoice o) {
  buildCounterInvoice++;
  if (buildCounterInvoice < 3) {
    unittest.expect(o.budgetInvoiceGroupingId!, unittest.equals('foo'));
    checkUnnamed87(o.budgetSummaries!);
    unittest.expect(o.correctedInvoiceId!, unittest.equals('foo'));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkDate(o.dueDate!);
    unittest.expect(o.invoiceId!, unittest.equals('foo'));
    unittest.expect(o.invoiceType!, unittest.equals('foo'));
    checkDate(o.issueDate!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nonBudgetMicros!, unittest.equals('foo'));
    unittest.expect(o.paymentsAccountId!, unittest.equals('foo'));
    unittest.expect(o.paymentsProfileId!, unittest.equals('foo'));
    unittest.expect(o.pdfUrl!, unittest.equals('foo'));
    unittest.expect(o.purchaseOrderNumber!, unittest.equals('foo'));
    checkUnnamed88(o.replacedInvoiceIds!);
    checkDateRange(o.serviceDateRange!);
    unittest.expect(o.subtotalAmountMicros!, unittest.equals('foo'));
    unittest.expect(o.totalAmountMicros!, unittest.equals('foo'));
    unittest.expect(o.totalTaxAmountMicros!, unittest.equals('foo'));
  }
  buildCounterInvoice--;
}

core.int buildCounterKeywordAssignedTargetingOptionDetails = 0;
api.KeywordAssignedTargetingOptionDetails
buildKeywordAssignedTargetingOptionDetails() {
  final o = api.KeywordAssignedTargetingOptionDetails();
  buildCounterKeywordAssignedTargetingOptionDetails++;
  if (buildCounterKeywordAssignedTargetingOptionDetails < 3) {
    o.keyword = 'foo';
    o.negative = true;
  }
  buildCounterKeywordAssignedTargetingOptionDetails--;
  return o;
}

void checkKeywordAssignedTargetingOptionDetails(
  api.KeywordAssignedTargetingOptionDetails o,
) {
  buildCounterKeywordAssignedTargetingOptionDetails++;
  if (buildCounterKeywordAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.keyword!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
  }
  buildCounterKeywordAssignedTargetingOptionDetails--;
}

core.int buildCounterLanguageAssignedTargetingOptionDetails = 0;
api.LanguageAssignedTargetingOptionDetails
buildLanguageAssignedTargetingOptionDetails() {
  final o = api.LanguageAssignedTargetingOptionDetails();
  buildCounterLanguageAssignedTargetingOptionDetails++;
  if (buildCounterLanguageAssignedTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.negative = true;
    o.targetingOptionId = 'foo';
  }
  buildCounterLanguageAssignedTargetingOptionDetails--;
  return o;
}

void checkLanguageAssignedTargetingOptionDetails(
  api.LanguageAssignedTargetingOptionDetails o,
) {
  buildCounterLanguageAssignedTargetingOptionDetails++;
  if (buildCounterLanguageAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterLanguageAssignedTargetingOptionDetails--;
}

core.int buildCounterLanguageTargetingOptionDetails = 0;
api.LanguageTargetingOptionDetails buildLanguageTargetingOptionDetails() {
  final o = api.LanguageTargetingOptionDetails();
  buildCounterLanguageTargetingOptionDetails++;
  if (buildCounterLanguageTargetingOptionDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterLanguageTargetingOptionDetails--;
  return o;
}

void checkLanguageTargetingOptionDetails(api.LanguageTargetingOptionDetails o) {
  buildCounterLanguageTargetingOptionDetails++;
  if (buildCounterLanguageTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterLanguageTargetingOptionDetails--;
}

core.List<core.String> buildUnnamed89() => ['foo', 'foo'];

void checkUnnamed89(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.PartnerCost> buildUnnamed90() => [
  buildPartnerCost(),
  buildPartnerCost(),
];

void checkUnnamed90(core.List<api.PartnerCost> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerCost(o[0]);
  checkPartnerCost(o[1]);
}

core.List<core.String> buildUnnamed91() => ['foo', 'foo'];

void checkUnnamed91(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLineItem = 0;
api.LineItem buildLineItem() {
  final o = api.LineItem();
  buildCounterLineItem++;
  if (buildCounterLineItem < 3) {
    o.advertiserId = 'foo';
    o.bidStrategy = buildBiddingStrategy();
    o.budget = buildLineItemBudget();
    o.campaignId = 'foo';
    o.containsEuPoliticalAds = 'foo';
    o.conversionCounting = buildConversionCountingConfig();
    o.creativeIds = buildUnnamed89();
    o.displayName = 'foo';
    o.entityStatus = 'foo';
    o.excludeNewExchanges = true;
    o.flight = buildLineItemFlight();
    o.frequencyCap = buildFrequencyCap();
    o.insertionOrderId = 'foo';
    o.integrationDetails = buildIntegrationDetails();
    o.lineItemId = 'foo';
    o.lineItemType = 'foo';
    o.mobileApp = buildMobileApp();
    o.name = 'foo';
    o.pacing = buildPacing();
    o.partnerCosts = buildUnnamed90();
    o.partnerRevenueModel = buildPartnerRevenueModel();
    o.reservationType = 'foo';
    o.targetingExpansion = buildTargetingExpansionConfig();
    o.updateTime = 'foo';
    o.warningMessages = buildUnnamed91();
    o.youtubeAndPartnersSettings = buildYoutubeAndPartnersSettings();
  }
  buildCounterLineItem--;
  return o;
}

void checkLineItem(api.LineItem o) {
  buildCounterLineItem++;
  if (buildCounterLineItem < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    checkBiddingStrategy(o.bidStrategy!);
    checkLineItemBudget(o.budget!);
    unittest.expect(o.campaignId!, unittest.equals('foo'));
    unittest.expect(o.containsEuPoliticalAds!, unittest.equals('foo'));
    checkConversionCountingConfig(o.conversionCounting!);
    checkUnnamed89(o.creativeIds!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entityStatus!, unittest.equals('foo'));
    unittest.expect(o.excludeNewExchanges!, unittest.isTrue);
    checkLineItemFlight(o.flight!);
    checkFrequencyCap(o.frequencyCap!);
    unittest.expect(o.insertionOrderId!, unittest.equals('foo'));
    checkIntegrationDetails(o.integrationDetails!);
    unittest.expect(o.lineItemId!, unittest.equals('foo'));
    unittest.expect(o.lineItemType!, unittest.equals('foo'));
    checkMobileApp(o.mobileApp!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPacing(o.pacing!);
    checkUnnamed90(o.partnerCosts!);
    checkPartnerRevenueModel(o.partnerRevenueModel!);
    unittest.expect(o.reservationType!, unittest.equals('foo'));
    checkTargetingExpansionConfig(o.targetingExpansion!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed91(o.warningMessages!);
    checkYoutubeAndPartnersSettings(o.youtubeAndPartnersSettings!);
  }
  buildCounterLineItem--;
}

core.int buildCounterLineItemAssignedTargetingOption = 0;
api.LineItemAssignedTargetingOption buildLineItemAssignedTargetingOption() {
  final o = api.LineItemAssignedTargetingOption();
  buildCounterLineItemAssignedTargetingOption++;
  if (buildCounterLineItemAssignedTargetingOption < 3) {
    o.assignedTargetingOption = buildAssignedTargetingOption();
    o.lineItemId = 'foo';
  }
  buildCounterLineItemAssignedTargetingOption--;
  return o;
}

void checkLineItemAssignedTargetingOption(
  api.LineItemAssignedTargetingOption o,
) {
  buildCounterLineItemAssignedTargetingOption++;
  if (buildCounterLineItemAssignedTargetingOption < 3) {
    checkAssignedTargetingOption(o.assignedTargetingOption!);
    unittest.expect(o.lineItemId!, unittest.equals('foo'));
  }
  buildCounterLineItemAssignedTargetingOption--;
}

core.int buildCounterLineItemBudget = 0;
api.LineItemBudget buildLineItemBudget() {
  final o = api.LineItemBudget();
  buildCounterLineItemBudget++;
  if (buildCounterLineItemBudget < 3) {
    o.budgetAllocationType = 'foo';
    o.budgetUnit = 'foo';
    o.maxAmount = 'foo';
  }
  buildCounterLineItemBudget--;
  return o;
}

void checkLineItemBudget(api.LineItemBudget o) {
  buildCounterLineItemBudget++;
  if (buildCounterLineItemBudget < 3) {
    unittest.expect(o.budgetAllocationType!, unittest.equals('foo'));
    unittest.expect(o.budgetUnit!, unittest.equals('foo'));
    unittest.expect(o.maxAmount!, unittest.equals('foo'));
  }
  buildCounterLineItemBudget--;
}

core.int buildCounterLineItemFlight = 0;
api.LineItemFlight buildLineItemFlight() {
  final o = api.LineItemFlight();
  buildCounterLineItemFlight++;
  if (buildCounterLineItemFlight < 3) {
    o.dateRange = buildDateRange();
    o.flightDateType = 'foo';
  }
  buildCounterLineItemFlight--;
  return o;
}

void checkLineItemFlight(api.LineItemFlight o) {
  buildCounterLineItemFlight++;
  if (buildCounterLineItemFlight < 3) {
    checkDateRange(o.dateRange!);
    unittest.expect(o.flightDateType!, unittest.equals('foo'));
  }
  buildCounterLineItemFlight--;
}

core.List<api.AssignedTargetingOption> buildUnnamed92() => [
  buildAssignedTargetingOption(),
  buildAssignedTargetingOption(),
];

void checkUnnamed92(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterListAdvertiserAssignedTargetingOptionsResponse = 0;
api.ListAdvertiserAssignedTargetingOptionsResponse
buildListAdvertiserAssignedTargetingOptionsResponse() {
  final o = api.ListAdvertiserAssignedTargetingOptionsResponse();
  buildCounterListAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterListAdvertiserAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed92();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdvertiserAssignedTargetingOptionsResponse--;
  return o;
}

void checkListAdvertiserAssignedTargetingOptionsResponse(
  api.ListAdvertiserAssignedTargetingOptionsResponse o,
) {
  buildCounterListAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterListAdvertiserAssignedTargetingOptionsResponse < 3) {
    checkUnnamed92(o.assignedTargetingOptions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAdvertiserAssignedTargetingOptionsResponse--;
}

core.List<api.Advertiser> buildUnnamed93() => [
  buildAdvertiser(),
  buildAdvertiser(),
];

void checkUnnamed93(core.List<api.Advertiser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdvertiser(o[0]);
  checkAdvertiser(o[1]);
}

core.int buildCounterListAdvertisersResponse = 0;
api.ListAdvertisersResponse buildListAdvertisersResponse() {
  final o = api.ListAdvertisersResponse();
  buildCounterListAdvertisersResponse++;
  if (buildCounterListAdvertisersResponse < 3) {
    o.advertisers = buildUnnamed93();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdvertisersResponse--;
  return o;
}

void checkListAdvertisersResponse(api.ListAdvertisersResponse o) {
  buildCounterListAdvertisersResponse++;
  if (buildCounterListAdvertisersResponse < 3) {
    checkUnnamed93(o.advertisers!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAdvertisersResponse--;
}

core.List<api.AssignedInventorySource> buildUnnamed94() => [
  buildAssignedInventorySource(),
  buildAssignedInventorySource(),
];

void checkUnnamed94(core.List<api.AssignedInventorySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedInventorySource(o[0]);
  checkAssignedInventorySource(o[1]);
}

core.int buildCounterListAssignedInventorySourcesResponse = 0;
api.ListAssignedInventorySourcesResponse
buildListAssignedInventorySourcesResponse() {
  final o = api.ListAssignedInventorySourcesResponse();
  buildCounterListAssignedInventorySourcesResponse++;
  if (buildCounterListAssignedInventorySourcesResponse < 3) {
    o.assignedInventorySources = buildUnnamed94();
    o.nextPageToken = 'foo';
  }
  buildCounterListAssignedInventorySourcesResponse--;
  return o;
}

void checkListAssignedInventorySourcesResponse(
  api.ListAssignedInventorySourcesResponse o,
) {
  buildCounterListAssignedInventorySourcesResponse++;
  if (buildCounterListAssignedInventorySourcesResponse < 3) {
    checkUnnamed94(o.assignedInventorySources!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAssignedInventorySourcesResponse--;
}

core.List<api.AssignedLocation> buildUnnamed95() => [
  buildAssignedLocation(),
  buildAssignedLocation(),
];

void checkUnnamed95(core.List<api.AssignedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedLocation(o[0]);
  checkAssignedLocation(o[1]);
}

core.int buildCounterListAssignedLocationsResponse = 0;
api.ListAssignedLocationsResponse buildListAssignedLocationsResponse() {
  final o = api.ListAssignedLocationsResponse();
  buildCounterListAssignedLocationsResponse++;
  if (buildCounterListAssignedLocationsResponse < 3) {
    o.assignedLocations = buildUnnamed95();
    o.nextPageToken = 'foo';
  }
  buildCounterListAssignedLocationsResponse--;
  return o;
}

void checkListAssignedLocationsResponse(api.ListAssignedLocationsResponse o) {
  buildCounterListAssignedLocationsResponse++;
  if (buildCounterListAssignedLocationsResponse < 3) {
    checkUnnamed95(o.assignedLocations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAssignedLocationsResponse--;
}

core.List<api.Campaign> buildUnnamed96() => [buildCampaign(), buildCampaign()];

void checkUnnamed96(core.List<api.Campaign> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCampaign(o[0]);
  checkCampaign(o[1]);
}

core.int buildCounterListCampaignsResponse = 0;
api.ListCampaignsResponse buildListCampaignsResponse() {
  final o = api.ListCampaignsResponse();
  buildCounterListCampaignsResponse++;
  if (buildCounterListCampaignsResponse < 3) {
    o.campaigns = buildUnnamed96();
    o.nextPageToken = 'foo';
  }
  buildCounterListCampaignsResponse--;
  return o;
}

void checkListCampaignsResponse(api.ListCampaignsResponse o) {
  buildCounterListCampaignsResponse++;
  if (buildCounterListCampaignsResponse < 3) {
    checkUnnamed96(o.campaigns!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCampaignsResponse--;
}

core.List<api.Channel> buildUnnamed97() => [buildChannel(), buildChannel()];

void checkUnnamed97(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

core.int buildCounterListChannelsResponse = 0;
api.ListChannelsResponse buildListChannelsResponse() {
  final o = api.ListChannelsResponse();
  buildCounterListChannelsResponse++;
  if (buildCounterListChannelsResponse < 3) {
    o.channels = buildUnnamed97();
    o.nextPageToken = 'foo';
  }
  buildCounterListChannelsResponse--;
  return o;
}

void checkListChannelsResponse(api.ListChannelsResponse o) {
  buildCounterListChannelsResponse++;
  if (buildCounterListChannelsResponse < 3) {
    checkUnnamed97(o.channels!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListChannelsResponse--;
}

core.List<api.CombinedAudience> buildUnnamed98() => [
  buildCombinedAudience(),
  buildCombinedAudience(),
];

void checkUnnamed98(core.List<api.CombinedAudience> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCombinedAudience(o[0]);
  checkCombinedAudience(o[1]);
}

core.int buildCounterListCombinedAudiencesResponse = 0;
api.ListCombinedAudiencesResponse buildListCombinedAudiencesResponse() {
  final o = api.ListCombinedAudiencesResponse();
  buildCounterListCombinedAudiencesResponse++;
  if (buildCounterListCombinedAudiencesResponse < 3) {
    o.combinedAudiences = buildUnnamed98();
    o.nextPageToken = 'foo';
  }
  buildCounterListCombinedAudiencesResponse--;
  return o;
}

void checkListCombinedAudiencesResponse(api.ListCombinedAudiencesResponse o) {
  buildCounterListCombinedAudiencesResponse++;
  if (buildCounterListCombinedAudiencesResponse < 3) {
    checkUnnamed98(o.combinedAudiences!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCombinedAudiencesResponse--;
}

core.List<api.Creative> buildUnnamed99() => [buildCreative(), buildCreative()];

void checkUnnamed99(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterListCreativesResponse = 0;
api.ListCreativesResponse buildListCreativesResponse() {
  final o = api.ListCreativesResponse();
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    o.creatives = buildUnnamed99();
    o.nextPageToken = 'foo';
  }
  buildCounterListCreativesResponse--;
  return o;
}

void checkListCreativesResponse(api.ListCreativesResponse o) {
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    checkUnnamed99(o.creatives!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCreativesResponse--;
}

core.List<api.CustomBiddingAlgorithm> buildUnnamed100() => [
  buildCustomBiddingAlgorithm(),
  buildCustomBiddingAlgorithm(),
];

void checkUnnamed100(core.List<api.CustomBiddingAlgorithm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomBiddingAlgorithm(o[0]);
  checkCustomBiddingAlgorithm(o[1]);
}

core.int buildCounterListCustomBiddingAlgorithmsResponse = 0;
api.ListCustomBiddingAlgorithmsResponse
buildListCustomBiddingAlgorithmsResponse() {
  final o = api.ListCustomBiddingAlgorithmsResponse();
  buildCounterListCustomBiddingAlgorithmsResponse++;
  if (buildCounterListCustomBiddingAlgorithmsResponse < 3) {
    o.customBiddingAlgorithms = buildUnnamed100();
    o.nextPageToken = 'foo';
  }
  buildCounterListCustomBiddingAlgorithmsResponse--;
  return o;
}

void checkListCustomBiddingAlgorithmsResponse(
  api.ListCustomBiddingAlgorithmsResponse o,
) {
  buildCounterListCustomBiddingAlgorithmsResponse++;
  if (buildCounterListCustomBiddingAlgorithmsResponse < 3) {
    checkUnnamed100(o.customBiddingAlgorithms!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCustomBiddingAlgorithmsResponse--;
}

core.List<api.CustomBiddingScript> buildUnnamed101() => [
  buildCustomBiddingScript(),
  buildCustomBiddingScript(),
];

void checkUnnamed101(core.List<api.CustomBiddingScript> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomBiddingScript(o[0]);
  checkCustomBiddingScript(o[1]);
}

core.int buildCounterListCustomBiddingScriptsResponse = 0;
api.ListCustomBiddingScriptsResponse buildListCustomBiddingScriptsResponse() {
  final o = api.ListCustomBiddingScriptsResponse();
  buildCounterListCustomBiddingScriptsResponse++;
  if (buildCounterListCustomBiddingScriptsResponse < 3) {
    o.customBiddingScripts = buildUnnamed101();
    o.nextPageToken = 'foo';
  }
  buildCounterListCustomBiddingScriptsResponse--;
  return o;
}

void checkListCustomBiddingScriptsResponse(
  api.ListCustomBiddingScriptsResponse o,
) {
  buildCounterListCustomBiddingScriptsResponse++;
  if (buildCounterListCustomBiddingScriptsResponse < 3) {
    checkUnnamed101(o.customBiddingScripts!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCustomBiddingScriptsResponse--;
}

core.List<api.CustomList> buildUnnamed102() => [
  buildCustomList(),
  buildCustomList(),
];

void checkUnnamed102(core.List<api.CustomList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomList(o[0]);
  checkCustomList(o[1]);
}

core.int buildCounterListCustomListsResponse = 0;
api.ListCustomListsResponse buildListCustomListsResponse() {
  final o = api.ListCustomListsResponse();
  buildCounterListCustomListsResponse++;
  if (buildCounterListCustomListsResponse < 3) {
    o.customLists = buildUnnamed102();
    o.nextPageToken = 'foo';
  }
  buildCounterListCustomListsResponse--;
  return o;
}

void checkListCustomListsResponse(api.ListCustomListsResponse o) {
  buildCounterListCustomListsResponse++;
  if (buildCounterListCustomListsResponse < 3) {
    checkUnnamed102(o.customLists!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCustomListsResponse--;
}

core.List<api.FloodlightActivity> buildUnnamed103() => [
  buildFloodlightActivity(),
  buildFloodlightActivity(),
];

void checkUnnamed103(core.List<api.FloodlightActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFloodlightActivity(o[0]);
  checkFloodlightActivity(o[1]);
}

core.int buildCounterListFloodlightActivitiesResponse = 0;
api.ListFloodlightActivitiesResponse buildListFloodlightActivitiesResponse() {
  final o = api.ListFloodlightActivitiesResponse();
  buildCounterListFloodlightActivitiesResponse++;
  if (buildCounterListFloodlightActivitiesResponse < 3) {
    o.floodlightActivities = buildUnnamed103();
    o.nextPageToken = 'foo';
  }
  buildCounterListFloodlightActivitiesResponse--;
  return o;
}

void checkListFloodlightActivitiesResponse(
  api.ListFloodlightActivitiesResponse o,
) {
  buildCounterListFloodlightActivitiesResponse++;
  if (buildCounterListFloodlightActivitiesResponse < 3) {
    checkUnnamed103(o.floodlightActivities!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListFloodlightActivitiesResponse--;
}

core.List<api.GoogleAudience> buildUnnamed104() => [
  buildGoogleAudience(),
  buildGoogleAudience(),
];

void checkUnnamed104(core.List<api.GoogleAudience> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAudience(o[0]);
  checkGoogleAudience(o[1]);
}

core.int buildCounterListGoogleAudiencesResponse = 0;
api.ListGoogleAudiencesResponse buildListGoogleAudiencesResponse() {
  final o = api.ListGoogleAudiencesResponse();
  buildCounterListGoogleAudiencesResponse++;
  if (buildCounterListGoogleAudiencesResponse < 3) {
    o.googleAudiences = buildUnnamed104();
    o.nextPageToken = 'foo';
  }
  buildCounterListGoogleAudiencesResponse--;
  return o;
}

void checkListGoogleAudiencesResponse(api.ListGoogleAudiencesResponse o) {
  buildCounterListGoogleAudiencesResponse++;
  if (buildCounterListGoogleAudiencesResponse < 3) {
    checkUnnamed104(o.googleAudiences!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListGoogleAudiencesResponse--;
}

core.List<api.GuaranteedOrder> buildUnnamed105() => [
  buildGuaranteedOrder(),
  buildGuaranteedOrder(),
];

void checkUnnamed105(core.List<api.GuaranteedOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuaranteedOrder(o[0]);
  checkGuaranteedOrder(o[1]);
}

core.int buildCounterListGuaranteedOrdersResponse = 0;
api.ListGuaranteedOrdersResponse buildListGuaranteedOrdersResponse() {
  final o = api.ListGuaranteedOrdersResponse();
  buildCounterListGuaranteedOrdersResponse++;
  if (buildCounterListGuaranteedOrdersResponse < 3) {
    o.guaranteedOrders = buildUnnamed105();
    o.nextPageToken = 'foo';
  }
  buildCounterListGuaranteedOrdersResponse--;
  return o;
}

void checkListGuaranteedOrdersResponse(api.ListGuaranteedOrdersResponse o) {
  buildCounterListGuaranteedOrdersResponse++;
  if (buildCounterListGuaranteedOrdersResponse < 3) {
    checkUnnamed105(o.guaranteedOrders!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListGuaranteedOrdersResponse--;
}

core.List<api.InsertionOrder> buildUnnamed106() => [
  buildInsertionOrder(),
  buildInsertionOrder(),
];

void checkUnnamed106(core.List<api.InsertionOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInsertionOrder(o[0]);
  checkInsertionOrder(o[1]);
}

core.int buildCounterListInsertionOrdersResponse = 0;
api.ListInsertionOrdersResponse buildListInsertionOrdersResponse() {
  final o = api.ListInsertionOrdersResponse();
  buildCounterListInsertionOrdersResponse++;
  if (buildCounterListInsertionOrdersResponse < 3) {
    o.insertionOrders = buildUnnamed106();
    o.nextPageToken = 'foo';
  }
  buildCounterListInsertionOrdersResponse--;
  return o;
}

void checkListInsertionOrdersResponse(api.ListInsertionOrdersResponse o) {
  buildCounterListInsertionOrdersResponse++;
  if (buildCounterListInsertionOrdersResponse < 3) {
    checkUnnamed106(o.insertionOrders!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListInsertionOrdersResponse--;
}

core.List<api.InventorySourceGroup> buildUnnamed107() => [
  buildInventorySourceGroup(),
  buildInventorySourceGroup(),
];

void checkUnnamed107(core.List<api.InventorySourceGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventorySourceGroup(o[0]);
  checkInventorySourceGroup(o[1]);
}

core.int buildCounterListInventorySourceGroupsResponse = 0;
api.ListInventorySourceGroupsResponse buildListInventorySourceGroupsResponse() {
  final o = api.ListInventorySourceGroupsResponse();
  buildCounterListInventorySourceGroupsResponse++;
  if (buildCounterListInventorySourceGroupsResponse < 3) {
    o.inventorySourceGroups = buildUnnamed107();
    o.nextPageToken = 'foo';
  }
  buildCounterListInventorySourceGroupsResponse--;
  return o;
}

void checkListInventorySourceGroupsResponse(
  api.ListInventorySourceGroupsResponse o,
) {
  buildCounterListInventorySourceGroupsResponse++;
  if (buildCounterListInventorySourceGroupsResponse < 3) {
    checkUnnamed107(o.inventorySourceGroups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListInventorySourceGroupsResponse--;
}

core.List<api.InventorySource> buildUnnamed108() => [
  buildInventorySource(),
  buildInventorySource(),
];

void checkUnnamed108(core.List<api.InventorySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventorySource(o[0]);
  checkInventorySource(o[1]);
}

core.int buildCounterListInventorySourcesResponse = 0;
api.ListInventorySourcesResponse buildListInventorySourcesResponse() {
  final o = api.ListInventorySourcesResponse();
  buildCounterListInventorySourcesResponse++;
  if (buildCounterListInventorySourcesResponse < 3) {
    o.inventorySources = buildUnnamed108();
    o.nextPageToken = 'foo';
  }
  buildCounterListInventorySourcesResponse--;
  return o;
}

void checkListInventorySourcesResponse(api.ListInventorySourcesResponse o) {
  buildCounterListInventorySourcesResponse++;
  if (buildCounterListInventorySourcesResponse < 3) {
    checkUnnamed108(o.inventorySources!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListInventorySourcesResponse--;
}

core.List<api.Invoice> buildUnnamed109() => [buildInvoice(), buildInvoice()];

void checkUnnamed109(core.List<api.Invoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoice(o[0]);
  checkInvoice(o[1]);
}

core.int buildCounterListInvoicesResponse = 0;
api.ListInvoicesResponse buildListInvoicesResponse() {
  final o = api.ListInvoicesResponse();
  buildCounterListInvoicesResponse++;
  if (buildCounterListInvoicesResponse < 3) {
    o.invoices = buildUnnamed109();
    o.nextPageToken = 'foo';
  }
  buildCounterListInvoicesResponse--;
  return o;
}

void checkListInvoicesResponse(api.ListInvoicesResponse o) {
  buildCounterListInvoicesResponse++;
  if (buildCounterListInvoicesResponse < 3) {
    checkUnnamed109(o.invoices!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListInvoicesResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed110() => [
  buildAssignedTargetingOption(),
  buildAssignedTargetingOption(),
];

void checkUnnamed110(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterListLineItemAssignedTargetingOptionsResponse = 0;
api.ListLineItemAssignedTargetingOptionsResponse
buildListLineItemAssignedTargetingOptionsResponse() {
  final o = api.ListLineItemAssignedTargetingOptionsResponse();
  buildCounterListLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterListLineItemAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed110();
    o.nextPageToken = 'foo';
  }
  buildCounterListLineItemAssignedTargetingOptionsResponse--;
  return o;
}

void checkListLineItemAssignedTargetingOptionsResponse(
  api.ListLineItemAssignedTargetingOptionsResponse o,
) {
  buildCounterListLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterListLineItemAssignedTargetingOptionsResponse < 3) {
    checkUnnamed110(o.assignedTargetingOptions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLineItemAssignedTargetingOptionsResponse--;
}

core.List<api.LineItem> buildUnnamed111() => [buildLineItem(), buildLineItem()];

void checkUnnamed111(core.List<api.LineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLineItem(o[0]);
  checkLineItem(o[1]);
}

core.int buildCounterListLineItemsResponse = 0;
api.ListLineItemsResponse buildListLineItemsResponse() {
  final o = api.ListLineItemsResponse();
  buildCounterListLineItemsResponse++;
  if (buildCounterListLineItemsResponse < 3) {
    o.lineItems = buildUnnamed111();
    o.nextPageToken = 'foo';
  }
  buildCounterListLineItemsResponse--;
  return o;
}

void checkListLineItemsResponse(api.ListLineItemsResponse o) {
  buildCounterListLineItemsResponse++;
  if (buildCounterListLineItemsResponse < 3) {
    checkUnnamed111(o.lineItems!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLineItemsResponse--;
}

core.List<api.LocationList> buildUnnamed112() => [
  buildLocationList(),
  buildLocationList(),
];

void checkUnnamed112(core.List<api.LocationList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationList(o[0]);
  checkLocationList(o[1]);
}

core.int buildCounterListLocationListsResponse = 0;
api.ListLocationListsResponse buildListLocationListsResponse() {
  final o = api.ListLocationListsResponse();
  buildCounterListLocationListsResponse++;
  if (buildCounterListLocationListsResponse < 3) {
    o.locationLists = buildUnnamed112();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationListsResponse--;
  return o;
}

void checkListLocationListsResponse(api.ListLocationListsResponse o) {
  buildCounterListLocationListsResponse++;
  if (buildCounterListLocationListsResponse < 3) {
    checkUnnamed112(o.locationLists!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationListsResponse--;
}

core.List<api.ManualTrigger> buildUnnamed113() => [
  buildManualTrigger(),
  buildManualTrigger(),
];

void checkUnnamed113(core.List<api.ManualTrigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManualTrigger(o[0]);
  checkManualTrigger(o[1]);
}

core.int buildCounterListManualTriggersResponse = 0;
api.ListManualTriggersResponse buildListManualTriggersResponse() {
  final o = api.ListManualTriggersResponse();
  buildCounterListManualTriggersResponse++;
  if (buildCounterListManualTriggersResponse < 3) {
    o.manualTriggers = buildUnnamed113();
    o.nextPageToken = 'foo';
  }
  buildCounterListManualTriggersResponse--;
  return o;
}

void checkListManualTriggersResponse(api.ListManualTriggersResponse o) {
  buildCounterListManualTriggersResponse++;
  if (buildCounterListManualTriggersResponse < 3) {
    checkUnnamed113(o.manualTriggers!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListManualTriggersResponse--;
}

core.List<api.NegativeKeywordList> buildUnnamed114() => [
  buildNegativeKeywordList(),
  buildNegativeKeywordList(),
];

void checkUnnamed114(core.List<api.NegativeKeywordList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeywordList(o[0]);
  checkNegativeKeywordList(o[1]);
}

core.int buildCounterListNegativeKeywordListsResponse = 0;
api.ListNegativeKeywordListsResponse buildListNegativeKeywordListsResponse() {
  final o = api.ListNegativeKeywordListsResponse();
  buildCounterListNegativeKeywordListsResponse++;
  if (buildCounterListNegativeKeywordListsResponse < 3) {
    o.negativeKeywordLists = buildUnnamed114();
    o.nextPageToken = 'foo';
  }
  buildCounterListNegativeKeywordListsResponse--;
  return o;
}

void checkListNegativeKeywordListsResponse(
  api.ListNegativeKeywordListsResponse o,
) {
  buildCounterListNegativeKeywordListsResponse++;
  if (buildCounterListNegativeKeywordListsResponse < 3) {
    checkUnnamed114(o.negativeKeywordLists!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListNegativeKeywordListsResponse--;
}

core.List<api.NegativeKeyword> buildUnnamed115() => [
  buildNegativeKeyword(),
  buildNegativeKeyword(),
];

void checkUnnamed115(core.List<api.NegativeKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeyword(o[0]);
  checkNegativeKeyword(o[1]);
}

core.int buildCounterListNegativeKeywordsResponse = 0;
api.ListNegativeKeywordsResponse buildListNegativeKeywordsResponse() {
  final o = api.ListNegativeKeywordsResponse();
  buildCounterListNegativeKeywordsResponse++;
  if (buildCounterListNegativeKeywordsResponse < 3) {
    o.negativeKeywords = buildUnnamed115();
    o.nextPageToken = 'foo';
  }
  buildCounterListNegativeKeywordsResponse--;
  return o;
}

void checkListNegativeKeywordsResponse(api.ListNegativeKeywordsResponse o) {
  buildCounterListNegativeKeywordsResponse++;
  if (buildCounterListNegativeKeywordsResponse < 3) {
    checkUnnamed115(o.negativeKeywords!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListNegativeKeywordsResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed116() => [
  buildAssignedTargetingOption(),
  buildAssignedTargetingOption(),
];

void checkUnnamed116(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterListPartnerAssignedTargetingOptionsResponse = 0;
api.ListPartnerAssignedTargetingOptionsResponse
buildListPartnerAssignedTargetingOptionsResponse() {
  final o = api.ListPartnerAssignedTargetingOptionsResponse();
  buildCounterListPartnerAssignedTargetingOptionsResponse++;
  if (buildCounterListPartnerAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed116();
    o.nextPageToken = 'foo';
  }
  buildCounterListPartnerAssignedTargetingOptionsResponse--;
  return o;
}

void checkListPartnerAssignedTargetingOptionsResponse(
  api.ListPartnerAssignedTargetingOptionsResponse o,
) {
  buildCounterListPartnerAssignedTargetingOptionsResponse++;
  if (buildCounterListPartnerAssignedTargetingOptionsResponse < 3) {
    checkUnnamed116(o.assignedTargetingOptions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListPartnerAssignedTargetingOptionsResponse--;
}

core.List<api.Partner> buildUnnamed117() => [buildPartner(), buildPartner()];

void checkUnnamed117(core.List<api.Partner> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartner(o[0]);
  checkPartner(o[1]);
}

core.int buildCounterListPartnersResponse = 0;
api.ListPartnersResponse buildListPartnersResponse() {
  final o = api.ListPartnersResponse();
  buildCounterListPartnersResponse++;
  if (buildCounterListPartnersResponse < 3) {
    o.nextPageToken = 'foo';
    o.partners = buildUnnamed117();
  }
  buildCounterListPartnersResponse--;
  return o;
}

void checkListPartnersResponse(api.ListPartnersResponse o) {
  buildCounterListPartnersResponse++;
  if (buildCounterListPartnersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed117(o.partners!);
  }
  buildCounterListPartnersResponse--;
}

core.List<api.Site> buildUnnamed118() => [buildSite(), buildSite()];

void checkUnnamed118(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0]);
  checkSite(o[1]);
}

core.int buildCounterListSitesResponse = 0;
api.ListSitesResponse buildListSitesResponse() {
  final o = api.ListSitesResponse();
  buildCounterListSitesResponse++;
  if (buildCounterListSitesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sites = buildUnnamed118();
  }
  buildCounterListSitesResponse--;
  return o;
}

void checkListSitesResponse(api.ListSitesResponse o) {
  buildCounterListSitesResponse++;
  if (buildCounterListSitesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed118(o.sites!);
  }
  buildCounterListSitesResponse--;
}

core.List<api.TargetingOption> buildUnnamed119() => [
  buildTargetingOption(),
  buildTargetingOption(),
];

void checkUnnamed119(core.List<api.TargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingOption(o[0]);
  checkTargetingOption(o[1]);
}

core.int buildCounterListTargetingOptionsResponse = 0;
api.ListTargetingOptionsResponse buildListTargetingOptionsResponse() {
  final o = api.ListTargetingOptionsResponse();
  buildCounterListTargetingOptionsResponse++;
  if (buildCounterListTargetingOptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.targetingOptions = buildUnnamed119();
  }
  buildCounterListTargetingOptionsResponse--;
  return o;
}

void checkListTargetingOptionsResponse(api.ListTargetingOptionsResponse o) {
  buildCounterListTargetingOptionsResponse++;
  if (buildCounterListTargetingOptionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed119(o.targetingOptions!);
  }
  buildCounterListTargetingOptionsResponse--;
}

core.List<api.User> buildUnnamed120() => [buildUser(), buildUser()];

void checkUnnamed120(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterListUsersResponse = 0;
api.ListUsersResponse buildListUsersResponse() {
  final o = api.ListUsersResponse();
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    o.nextPageToken = 'foo';
    o.users = buildUnnamed120();
  }
  buildCounterListUsersResponse--;
  return o;
}

void checkListUsersResponse(api.ListUsersResponse o) {
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed120(o.users!);
  }
  buildCounterListUsersResponse--;
}

core.List<api.YoutubeAdGroupAd> buildUnnamed121() => [
  buildYoutubeAdGroupAd(),
  buildYoutubeAdGroupAd(),
];

void checkUnnamed121(core.List<api.YoutubeAdGroupAd> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYoutubeAdGroupAd(o[0]);
  checkYoutubeAdGroupAd(o[1]);
}

core.int buildCounterListYoutubeAdGroupAdsResponse = 0;
api.ListYoutubeAdGroupAdsResponse buildListYoutubeAdGroupAdsResponse() {
  final o = api.ListYoutubeAdGroupAdsResponse();
  buildCounterListYoutubeAdGroupAdsResponse++;
  if (buildCounterListYoutubeAdGroupAdsResponse < 3) {
    o.nextPageToken = 'foo';
    o.youtubeAdGroupAds = buildUnnamed121();
  }
  buildCounterListYoutubeAdGroupAdsResponse--;
  return o;
}

void checkListYoutubeAdGroupAdsResponse(api.ListYoutubeAdGroupAdsResponse o) {
  buildCounterListYoutubeAdGroupAdsResponse++;
  if (buildCounterListYoutubeAdGroupAdsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed121(o.youtubeAdGroupAds!);
  }
  buildCounterListYoutubeAdGroupAdsResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed122() => [
  buildAssignedTargetingOption(),
  buildAssignedTargetingOption(),
];

void checkUnnamed122(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterListYoutubeAdGroupAssignedTargetingOptionsResponse = 0;
api.ListYoutubeAdGroupAssignedTargetingOptionsResponse
buildListYoutubeAdGroupAssignedTargetingOptionsResponse() {
  final o = api.ListYoutubeAdGroupAssignedTargetingOptionsResponse();
  buildCounterListYoutubeAdGroupAssignedTargetingOptionsResponse++;
  if (buildCounterListYoutubeAdGroupAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed122();
    o.nextPageToken = 'foo';
  }
  buildCounterListYoutubeAdGroupAssignedTargetingOptionsResponse--;
  return o;
}

void checkListYoutubeAdGroupAssignedTargetingOptionsResponse(
  api.ListYoutubeAdGroupAssignedTargetingOptionsResponse o,
) {
  buildCounterListYoutubeAdGroupAssignedTargetingOptionsResponse++;
  if (buildCounterListYoutubeAdGroupAssignedTargetingOptionsResponse < 3) {
    checkUnnamed122(o.assignedTargetingOptions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListYoutubeAdGroupAssignedTargetingOptionsResponse--;
}

core.List<api.YoutubeAdGroup> buildUnnamed123() => [
  buildYoutubeAdGroup(),
  buildYoutubeAdGroup(),
];

void checkUnnamed123(core.List<api.YoutubeAdGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYoutubeAdGroup(o[0]);
  checkYoutubeAdGroup(o[1]);
}

core.int buildCounterListYoutubeAdGroupsResponse = 0;
api.ListYoutubeAdGroupsResponse buildListYoutubeAdGroupsResponse() {
  final o = api.ListYoutubeAdGroupsResponse();
  buildCounterListYoutubeAdGroupsResponse++;
  if (buildCounterListYoutubeAdGroupsResponse < 3) {
    o.nextPageToken = 'foo';
    o.youtubeAdGroups = buildUnnamed123();
  }
  buildCounterListYoutubeAdGroupsResponse--;
  return o;
}

void checkListYoutubeAdGroupsResponse(api.ListYoutubeAdGroupsResponse o) {
  buildCounterListYoutubeAdGroupsResponse++;
  if (buildCounterListYoutubeAdGroupsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed123(o.youtubeAdGroups!);
  }
  buildCounterListYoutubeAdGroupsResponse--;
}

core.int buildCounterLocationList = 0;
api.LocationList buildLocationList() {
  final o = api.LocationList();
  buildCounterLocationList++;
  if (buildCounterLocationList < 3) {
    o.advertiserId = 'foo';
    o.displayName = 'foo';
    o.locationListId = 'foo';
    o.locationType = 'foo';
    o.name = 'foo';
  }
  buildCounterLocationList--;
  return o;
}

void checkLocationList(api.LocationList o) {
  buildCounterLocationList++;
  if (buildCounterLocationList < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.locationListId!, unittest.equals('foo'));
    unittest.expect(o.locationType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocationList--;
}

core.int buildCounterLookbackWindow = 0;
api.LookbackWindow buildLookbackWindow() {
  final o = api.LookbackWindow();
  buildCounterLookbackWindow++;
  if (buildCounterLookbackWindow < 3) {
    o.clickDays = 42;
    o.impressionDays = 42;
  }
  buildCounterLookbackWindow--;
  return o;
}

void checkLookbackWindow(api.LookbackWindow o) {
  buildCounterLookbackWindow++;
  if (buildCounterLookbackWindow < 3) {
    unittest.expect(o.clickDays!, unittest.equals(42));
    unittest.expect(o.impressionDays!, unittest.equals(42));
  }
  buildCounterLookbackWindow--;
}

core.int buildCounterLookupInvoiceCurrencyResponse = 0;
api.LookupInvoiceCurrencyResponse buildLookupInvoiceCurrencyResponse() {
  final o = api.LookupInvoiceCurrencyResponse();
  buildCounterLookupInvoiceCurrencyResponse++;
  if (buildCounterLookupInvoiceCurrencyResponse < 3) {
    o.currencyCode = 'foo';
  }
  buildCounterLookupInvoiceCurrencyResponse--;
  return o;
}

void checkLookupInvoiceCurrencyResponse(api.LookupInvoiceCurrencyResponse o) {
  buildCounterLookupInvoiceCurrencyResponse++;
  if (buildCounterLookupInvoiceCurrencyResponse < 3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
  }
  buildCounterLookupInvoiceCurrencyResponse--;
}

core.int buildCounterManualTrigger = 0;
api.ManualTrigger buildManualTrigger() {
  final o = api.ManualTrigger();
  buildCounterManualTrigger++;
  if (buildCounterManualTrigger < 3) {
    o.activationDurationMinutes = 'foo';
    o.advertiserId = 'foo';
    o.displayName = 'foo';
    o.latestActivationTime = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.triggerId = 'foo';
  }
  buildCounterManualTrigger--;
  return o;
}

void checkManualTrigger(api.ManualTrigger o) {
  buildCounterManualTrigger++;
  if (buildCounterManualTrigger < 3) {
    unittest.expect(o.activationDurationMinutes!, unittest.equals('foo'));
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.latestActivationTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.triggerId!, unittest.equals('foo'));
  }
  buildCounterManualTrigger--;
}

core.List<api.YoutubeVideoDetails> buildUnnamed124() => [
  buildYoutubeVideoDetails(),
  buildYoutubeVideoDetails(),
];

void checkUnnamed124(core.List<api.YoutubeVideoDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYoutubeVideoDetails(o[0]);
  checkYoutubeVideoDetails(o[1]);
}

core.int buildCounterMastheadAd = 0;
api.MastheadAd buildMastheadAd() {
  final o = api.MastheadAd();
  buildCounterMastheadAd++;
  if (buildCounterMastheadAd < 3) {
    o.autoplayVideoDuration = 'foo';
    o.autoplayVideoStartMillisecond = 'foo';
    o.callToActionButtonLabel = 'foo';
    o.callToActionFinalUrl = 'foo';
    o.callToActionTrackingUrl = 'foo';
    o.companionYoutubeVideos = buildUnnamed124();
    o.description = 'foo';
    o.headline = 'foo';
    o.showChannelArt = true;
    o.video = buildYoutubeVideoDetails();
    o.videoAspectRatio = 'foo';
  }
  buildCounterMastheadAd--;
  return o;
}

void checkMastheadAd(api.MastheadAd o) {
  buildCounterMastheadAd++;
  if (buildCounterMastheadAd < 3) {
    unittest.expect(o.autoplayVideoDuration!, unittest.equals('foo'));
    unittest.expect(o.autoplayVideoStartMillisecond!, unittest.equals('foo'));
    unittest.expect(o.callToActionButtonLabel!, unittest.equals('foo'));
    unittest.expect(o.callToActionFinalUrl!, unittest.equals('foo'));
    unittest.expect(o.callToActionTrackingUrl!, unittest.equals('foo'));
    checkUnnamed124(o.companionYoutubeVideos!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.headline!, unittest.equals('foo'));
    unittest.expect(o.showChannelArt!, unittest.isTrue);
    checkYoutubeVideoDetails(o.video!);
    unittest.expect(o.videoAspectRatio!, unittest.equals('foo'));
  }
  buildCounterMastheadAd--;
}

core.int buildCounterMaximizeSpendBidStrategy = 0;
api.MaximizeSpendBidStrategy buildMaximizeSpendBidStrategy() {
  final o = api.MaximizeSpendBidStrategy();
  buildCounterMaximizeSpendBidStrategy++;
  if (buildCounterMaximizeSpendBidStrategy < 3) {
    o.customBiddingAlgorithmId = 'foo';
    o.maxAverageCpmBidAmountMicros = 'foo';
    o.performanceGoalType = 'foo';
    o.raiseBidForDeals = true;
  }
  buildCounterMaximizeSpendBidStrategy--;
  return o;
}

void checkMaximizeSpendBidStrategy(api.MaximizeSpendBidStrategy o) {
  buildCounterMaximizeSpendBidStrategy++;
  if (buildCounterMaximizeSpendBidStrategy < 3) {
    unittest.expect(o.customBiddingAlgorithmId!, unittest.equals('foo'));
    unittest.expect(o.maxAverageCpmBidAmountMicros!, unittest.equals('foo'));
    unittest.expect(o.performanceGoalType!, unittest.equals('foo'));
    unittest.expect(o.raiseBidForDeals!, unittest.isTrue);
  }
  buildCounterMaximizeSpendBidStrategy--;
}

core.int buildCounterMeasurementConfig = 0;
api.MeasurementConfig buildMeasurementConfig() {
  final o = api.MeasurementConfig();
  buildCounterMeasurementConfig++;
  if (buildCounterMeasurementConfig < 3) {
    o.dv360ToCmCostReportingEnabled = true;
    o.dv360ToCmDataSharingEnabled = true;
  }
  buildCounterMeasurementConfig--;
  return o;
}

void checkMeasurementConfig(api.MeasurementConfig o) {
  buildCounterMeasurementConfig++;
  if (buildCounterMeasurementConfig < 3) {
    unittest.expect(o.dv360ToCmCostReportingEnabled!, unittest.isTrue);
    unittest.expect(o.dv360ToCmDataSharingEnabled!, unittest.isTrue);
  }
  buildCounterMeasurementConfig--;
}

core.int buildCounterMobileApp = 0;
api.MobileApp buildMobileApp() {
  final o = api.MobileApp();
  buildCounterMobileApp++;
  if (buildCounterMobileApp < 3) {
    o.appId = 'foo';
    o.displayName = 'foo';
    o.platform = 'foo';
    o.publisher = 'foo';
  }
  buildCounterMobileApp--;
  return o;
}

void checkMobileApp(api.MobileApp o) {
  buildCounterMobileApp++;
  if (buildCounterMobileApp < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.platform!, unittest.equals('foo'));
    unittest.expect(o.publisher!, unittest.equals('foo'));
  }
  buildCounterMobileApp--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  final o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.units!, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

core.int buildCounterNativeContentPositionAssignedTargetingOptionDetails = 0;
api.NativeContentPositionAssignedTargetingOptionDetails
buildNativeContentPositionAssignedTargetingOptionDetails() {
  final o = api.NativeContentPositionAssignedTargetingOptionDetails();
  buildCounterNativeContentPositionAssignedTargetingOptionDetails++;
  if (buildCounterNativeContentPositionAssignedTargetingOptionDetails < 3) {
    o.contentPosition = 'foo';
  }
  buildCounterNativeContentPositionAssignedTargetingOptionDetails--;
  return o;
}

void checkNativeContentPositionAssignedTargetingOptionDetails(
  api.NativeContentPositionAssignedTargetingOptionDetails o,
) {
  buildCounterNativeContentPositionAssignedTargetingOptionDetails++;
  if (buildCounterNativeContentPositionAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.contentPosition!, unittest.equals('foo'));
  }
  buildCounterNativeContentPositionAssignedTargetingOptionDetails--;
}

core.int buildCounterNativeContentPositionTargetingOptionDetails = 0;
api.NativeContentPositionTargetingOptionDetails
buildNativeContentPositionTargetingOptionDetails() {
  final o = api.NativeContentPositionTargetingOptionDetails();
  buildCounterNativeContentPositionTargetingOptionDetails++;
  if (buildCounterNativeContentPositionTargetingOptionDetails < 3) {
    o.contentPosition = 'foo';
  }
  buildCounterNativeContentPositionTargetingOptionDetails--;
  return o;
}

void checkNativeContentPositionTargetingOptionDetails(
  api.NativeContentPositionTargetingOptionDetails o,
) {
  buildCounterNativeContentPositionTargetingOptionDetails++;
  if (buildCounterNativeContentPositionTargetingOptionDetails < 3) {
    unittest.expect(o.contentPosition!, unittest.equals('foo'));
  }
  buildCounterNativeContentPositionTargetingOptionDetails--;
}

core.int buildCounterNegativeKeyword = 0;
api.NegativeKeyword buildNegativeKeyword() {
  final o = api.NegativeKeyword();
  buildCounterNegativeKeyword++;
  if (buildCounterNegativeKeyword < 3) {
    o.keywordValue = 'foo';
    o.name = 'foo';
  }
  buildCounterNegativeKeyword--;
  return o;
}

void checkNegativeKeyword(api.NegativeKeyword o) {
  buildCounterNegativeKeyword++;
  if (buildCounterNegativeKeyword < 3) {
    unittest.expect(o.keywordValue!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterNegativeKeyword--;
}

core.int buildCounterNegativeKeywordList = 0;
api.NegativeKeywordList buildNegativeKeywordList() {
  final o = api.NegativeKeywordList();
  buildCounterNegativeKeywordList++;
  if (buildCounterNegativeKeywordList < 3) {
    o.advertiserId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.negativeKeywordListId = 'foo';
    o.targetedLineItemCount = 'foo';
  }
  buildCounterNegativeKeywordList--;
  return o;
}

void checkNegativeKeywordList(api.NegativeKeywordList o) {
  buildCounterNegativeKeywordList++;
  if (buildCounterNegativeKeywordList < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.negativeKeywordListId!, unittest.equals('foo'));
    unittest.expect(o.targetedLineItemCount!, unittest.equals('foo'));
  }
  buildCounterNegativeKeywordList--;
}

core.int buildCounterNegativeKeywordListAssignedTargetingOptionDetails = 0;
api.NegativeKeywordListAssignedTargetingOptionDetails
buildNegativeKeywordListAssignedTargetingOptionDetails() {
  final o = api.NegativeKeywordListAssignedTargetingOptionDetails();
  buildCounterNegativeKeywordListAssignedTargetingOptionDetails++;
  if (buildCounterNegativeKeywordListAssignedTargetingOptionDetails < 3) {
    o.negativeKeywordListId = 'foo';
  }
  buildCounterNegativeKeywordListAssignedTargetingOptionDetails--;
  return o;
}

void checkNegativeKeywordListAssignedTargetingOptionDetails(
  api.NegativeKeywordListAssignedTargetingOptionDetails o,
) {
  buildCounterNegativeKeywordListAssignedTargetingOptionDetails++;
  if (buildCounterNegativeKeywordListAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.negativeKeywordListId!, unittest.equals('foo'));
  }
  buildCounterNegativeKeywordListAssignedTargetingOptionDetails--;
}

core.Map<core.String, core.String> buildUnnamed125() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed125(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterNonSkippableAd = 0;
api.NonSkippableAd buildNonSkippableAd() {
  final o = api.NonSkippableAd();
  buildCounterNonSkippableAd++;
  if (buildCounterNonSkippableAd < 3) {
    o.commonInStreamAttribute = buildCommonInStreamAttribute();
    o.customParameters = buildUnnamed125();
  }
  buildCounterNonSkippableAd--;
  return o;
}

void checkNonSkippableAd(api.NonSkippableAd o) {
  buildCounterNonSkippableAd++;
  if (buildCounterNonSkippableAd < 3) {
    checkCommonInStreamAttribute(o.commonInStreamAttribute!);
    checkUnnamed125(o.customParameters!);
  }
  buildCounterNonSkippableAd--;
}

core.int buildCounterObaIcon = 0;
api.ObaIcon buildObaIcon() {
  final o = api.ObaIcon();
  buildCounterObaIcon++;
  if (buildCounterObaIcon < 3) {
    o.clickTrackingUrl = 'foo';
    o.dimensions = buildDimensions();
    o.landingPageUrl = 'foo';
    o.position = 'foo';
    o.program = 'foo';
    o.resourceMimeType = 'foo';
    o.resourceUrl = 'foo';
    o.viewTrackingUrl = 'foo';
  }
  buildCounterObaIcon--;
  return o;
}

void checkObaIcon(api.ObaIcon o) {
  buildCounterObaIcon++;
  if (buildCounterObaIcon < 3) {
    unittest.expect(o.clickTrackingUrl!, unittest.equals('foo'));
    checkDimensions(o.dimensions!);
    unittest.expect(o.landingPageUrl!, unittest.equals('foo'));
    unittest.expect(o.position!, unittest.equals('foo'));
    unittest.expect(o.program!, unittest.equals('foo'));
    unittest.expect(o.resourceMimeType!, unittest.equals('foo'));
    unittest.expect(o.resourceUrl!, unittest.equals('foo'));
    unittest.expect(o.viewTrackingUrl!, unittest.equals('foo'));
  }
  buildCounterObaIcon--;
}

core.int buildCounterOmidAssignedTargetingOptionDetails = 0;
api.OmidAssignedTargetingOptionDetails
buildOmidAssignedTargetingOptionDetails() {
  final o = api.OmidAssignedTargetingOptionDetails();
  buildCounterOmidAssignedTargetingOptionDetails++;
  if (buildCounterOmidAssignedTargetingOptionDetails < 3) {
    o.omid = 'foo';
  }
  buildCounterOmidAssignedTargetingOptionDetails--;
  return o;
}

void checkOmidAssignedTargetingOptionDetails(
  api.OmidAssignedTargetingOptionDetails o,
) {
  buildCounterOmidAssignedTargetingOptionDetails++;
  if (buildCounterOmidAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.omid!, unittest.equals('foo'));
  }
  buildCounterOmidAssignedTargetingOptionDetails--;
}

core.int buildCounterOmidTargetingOptionDetails = 0;
api.OmidTargetingOptionDetails buildOmidTargetingOptionDetails() {
  final o = api.OmidTargetingOptionDetails();
  buildCounterOmidTargetingOptionDetails++;
  if (buildCounterOmidTargetingOptionDetails < 3) {
    o.omid = 'foo';
  }
  buildCounterOmidTargetingOptionDetails--;
  return o;
}

void checkOmidTargetingOptionDetails(api.OmidTargetingOptionDetails o) {
  buildCounterOmidTargetingOptionDetails++;
  if (buildCounterOmidTargetingOptionDetails < 3) {
    unittest.expect(o.omid!, unittest.equals('foo'));
  }
  buildCounterOmidTargetingOptionDetails--;
}

core.int buildCounterOnScreenPositionAssignedTargetingOptionDetails = 0;
api.OnScreenPositionAssignedTargetingOptionDetails
buildOnScreenPositionAssignedTargetingOptionDetails() {
  final o = api.OnScreenPositionAssignedTargetingOptionDetails();
  buildCounterOnScreenPositionAssignedTargetingOptionDetails++;
  if (buildCounterOnScreenPositionAssignedTargetingOptionDetails < 3) {
    o.adType = 'foo';
    o.onScreenPosition = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterOnScreenPositionAssignedTargetingOptionDetails--;
  return o;
}

void checkOnScreenPositionAssignedTargetingOptionDetails(
  api.OnScreenPositionAssignedTargetingOptionDetails o,
) {
  buildCounterOnScreenPositionAssignedTargetingOptionDetails++;
  if (buildCounterOnScreenPositionAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.adType!, unittest.equals('foo'));
    unittest.expect(o.onScreenPosition!, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterOnScreenPositionAssignedTargetingOptionDetails--;
}

core.int buildCounterOnScreenPositionTargetingOptionDetails = 0;
api.OnScreenPositionTargetingOptionDetails
buildOnScreenPositionTargetingOptionDetails() {
  final o = api.OnScreenPositionTargetingOptionDetails();
  buildCounterOnScreenPositionTargetingOptionDetails++;
  if (buildCounterOnScreenPositionTargetingOptionDetails < 3) {
    o.onScreenPosition = 'foo';
  }
  buildCounterOnScreenPositionTargetingOptionDetails--;
  return o;
}

void checkOnScreenPositionTargetingOptionDetails(
  api.OnScreenPositionTargetingOptionDetails o,
) {
  buildCounterOnScreenPositionTargetingOptionDetails++;
  if (buildCounterOnScreenPositionTargetingOptionDetails < 3) {
    unittest.expect(o.onScreenPosition!, unittest.equals('foo'));
  }
  buildCounterOnScreenPositionTargetingOptionDetails--;
}

core.int buildCounterOperatingSystemAssignedTargetingOptionDetails = 0;
api.OperatingSystemAssignedTargetingOptionDetails
buildOperatingSystemAssignedTargetingOptionDetails() {
  final o = api.OperatingSystemAssignedTargetingOptionDetails();
  buildCounterOperatingSystemAssignedTargetingOptionDetails++;
  if (buildCounterOperatingSystemAssignedTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.negative = true;
    o.targetingOptionId = 'foo';
  }
  buildCounterOperatingSystemAssignedTargetingOptionDetails--;
  return o;
}

void checkOperatingSystemAssignedTargetingOptionDetails(
  api.OperatingSystemAssignedTargetingOptionDetails o,
) {
  buildCounterOperatingSystemAssignedTargetingOptionDetails++;
  if (buildCounterOperatingSystemAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterOperatingSystemAssignedTargetingOptionDetails--;
}

core.int buildCounterOperatingSystemTargetingOptionDetails = 0;
api.OperatingSystemTargetingOptionDetails
buildOperatingSystemTargetingOptionDetails() {
  final o = api.OperatingSystemTargetingOptionDetails();
  buildCounterOperatingSystemTargetingOptionDetails++;
  if (buildCounterOperatingSystemTargetingOptionDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterOperatingSystemTargetingOptionDetails--;
  return o;
}

void checkOperatingSystemTargetingOptionDetails(
  api.OperatingSystemTargetingOptionDetails o,
) {
  buildCounterOperatingSystemTargetingOptionDetails++;
  if (buildCounterOperatingSystemTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterOperatingSystemTargetingOptionDetails--;
}

core.Map<core.String, core.Object?> buildUnnamed126() => {
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

void checkUnnamed126(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed127() => {
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

void checkUnnamed127(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed126();
    o.name = 'foo';
    o.response = buildUnnamed127();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed126(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed127(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPacing = 0;
api.Pacing buildPacing() {
  final o = api.Pacing();
  buildCounterPacing++;
  if (buildCounterPacing < 3) {
    o.dailyMaxImpressions = 'foo';
    o.dailyMaxMicros = 'foo';
    o.pacingPeriod = 'foo';
    o.pacingType = 'foo';
  }
  buildCounterPacing--;
  return o;
}

void checkPacing(api.Pacing o) {
  buildCounterPacing++;
  if (buildCounterPacing < 3) {
    unittest.expect(o.dailyMaxImpressions!, unittest.equals('foo'));
    unittest.expect(o.dailyMaxMicros!, unittest.equals('foo'));
    unittest.expect(o.pacingPeriod!, unittest.equals('foo'));
    unittest.expect(o.pacingType!, unittest.equals('foo'));
  }
  buildCounterPacing--;
}

core.List<core.String> buildUnnamed128() => ['foo', 'foo'];

void checkUnnamed128(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed129() => ['foo', 'foo'];

void checkUnnamed129(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterParentEntityFilter = 0;
api.ParentEntityFilter buildParentEntityFilter() {
  final o = api.ParentEntityFilter();
  buildCounterParentEntityFilter++;
  if (buildCounterParentEntityFilter < 3) {
    o.fileType = buildUnnamed128();
    o.filterIds = buildUnnamed129();
    o.filterType = 'foo';
  }
  buildCounterParentEntityFilter--;
  return o;
}

void checkParentEntityFilter(api.ParentEntityFilter o) {
  buildCounterParentEntityFilter++;
  if (buildCounterParentEntityFilter < 3) {
    checkUnnamed128(o.fileType!);
    checkUnnamed129(o.filterIds!);
    unittest.expect(o.filterType!, unittest.equals('foo'));
  }
  buildCounterParentEntityFilter--;
}

core.int buildCounterParentalStatusAssignedTargetingOptionDetails = 0;
api.ParentalStatusAssignedTargetingOptionDetails
buildParentalStatusAssignedTargetingOptionDetails() {
  final o = api.ParentalStatusAssignedTargetingOptionDetails();
  buildCounterParentalStatusAssignedTargetingOptionDetails++;
  if (buildCounterParentalStatusAssignedTargetingOptionDetails < 3) {
    o.parentalStatus = 'foo';
  }
  buildCounterParentalStatusAssignedTargetingOptionDetails--;
  return o;
}

void checkParentalStatusAssignedTargetingOptionDetails(
  api.ParentalStatusAssignedTargetingOptionDetails o,
) {
  buildCounterParentalStatusAssignedTargetingOptionDetails++;
  if (buildCounterParentalStatusAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.parentalStatus!, unittest.equals('foo'));
  }
  buildCounterParentalStatusAssignedTargetingOptionDetails--;
}

core.int buildCounterParentalStatusTargetingOptionDetails = 0;
api.ParentalStatusTargetingOptionDetails
buildParentalStatusTargetingOptionDetails() {
  final o = api.ParentalStatusTargetingOptionDetails();
  buildCounterParentalStatusTargetingOptionDetails++;
  if (buildCounterParentalStatusTargetingOptionDetails < 3) {
    o.parentalStatus = 'foo';
  }
  buildCounterParentalStatusTargetingOptionDetails--;
  return o;
}

void checkParentalStatusTargetingOptionDetails(
  api.ParentalStatusTargetingOptionDetails o,
) {
  buildCounterParentalStatusTargetingOptionDetails++;
  if (buildCounterParentalStatusTargetingOptionDetails < 3) {
    unittest.expect(o.parentalStatus!, unittest.equals('foo'));
  }
  buildCounterParentalStatusTargetingOptionDetails--;
}

core.int buildCounterPartner = 0;
api.Partner buildPartner() {
  final o = api.Partner();
  buildCounterPartner++;
  if (buildCounterPartner < 3) {
    o.adServerConfig = buildPartnerAdServerConfig();
    o.dataAccessConfig = buildPartnerDataAccessConfig();
    o.displayName = 'foo';
    o.entityStatus = 'foo';
    o.exchangeConfig = buildExchangeConfig();
    o.generalConfig = buildPartnerGeneralConfig();
    o.name = 'foo';
    o.partnerId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPartner--;
  return o;
}

void checkPartner(api.Partner o) {
  buildCounterPartner++;
  if (buildCounterPartner < 3) {
    checkPartnerAdServerConfig(o.adServerConfig!);
    checkPartnerDataAccessConfig(o.dataAccessConfig!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entityStatus!, unittest.equals('foo'));
    checkExchangeConfig(o.exchangeConfig!);
    checkPartnerGeneralConfig(o.generalConfig!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.partnerId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPartner--;
}

core.int buildCounterPartnerAdServerConfig = 0;
api.PartnerAdServerConfig buildPartnerAdServerConfig() {
  final o = api.PartnerAdServerConfig();
  buildCounterPartnerAdServerConfig++;
  if (buildCounterPartnerAdServerConfig < 3) {
    o.measurementConfig = buildMeasurementConfig();
  }
  buildCounterPartnerAdServerConfig--;
  return o;
}

void checkPartnerAdServerConfig(api.PartnerAdServerConfig o) {
  buildCounterPartnerAdServerConfig++;
  if (buildCounterPartnerAdServerConfig < 3) {
    checkMeasurementConfig(o.measurementConfig!);
  }
  buildCounterPartnerAdServerConfig--;
}

core.int buildCounterPartnerCost = 0;
api.PartnerCost buildPartnerCost() {
  final o = api.PartnerCost();
  buildCounterPartnerCost++;
  if (buildCounterPartnerCost < 3) {
    o.costType = 'foo';
    o.feeAmount = 'foo';
    o.feePercentageMillis = 'foo';
    o.feeType = 'foo';
    o.invoiceType = 'foo';
  }
  buildCounterPartnerCost--;
  return o;
}

void checkPartnerCost(api.PartnerCost o) {
  buildCounterPartnerCost++;
  if (buildCounterPartnerCost < 3) {
    unittest.expect(o.costType!, unittest.equals('foo'));
    unittest.expect(o.feeAmount!, unittest.equals('foo'));
    unittest.expect(o.feePercentageMillis!, unittest.equals('foo'));
    unittest.expect(o.feeType!, unittest.equals('foo'));
    unittest.expect(o.invoiceType!, unittest.equals('foo'));
  }
  buildCounterPartnerCost--;
}

core.int buildCounterPartnerDataAccessConfig = 0;
api.PartnerDataAccessConfig buildPartnerDataAccessConfig() {
  final o = api.PartnerDataAccessConfig();
  buildCounterPartnerDataAccessConfig++;
  if (buildCounterPartnerDataAccessConfig < 3) {
    o.sdfConfig = buildSdfConfig();
  }
  buildCounterPartnerDataAccessConfig--;
  return o;
}

void checkPartnerDataAccessConfig(api.PartnerDataAccessConfig o) {
  buildCounterPartnerDataAccessConfig++;
  if (buildCounterPartnerDataAccessConfig < 3) {
    checkSdfConfig(o.sdfConfig!);
  }
  buildCounterPartnerDataAccessConfig--;
}

core.int buildCounterPartnerGeneralConfig = 0;
api.PartnerGeneralConfig buildPartnerGeneralConfig() {
  final o = api.PartnerGeneralConfig();
  buildCounterPartnerGeneralConfig++;
  if (buildCounterPartnerGeneralConfig < 3) {
    o.currencyCode = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterPartnerGeneralConfig--;
  return o;
}

void checkPartnerGeneralConfig(api.PartnerGeneralConfig o) {
  buildCounterPartnerGeneralConfig++;
  if (buildCounterPartnerGeneralConfig < 3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterPartnerGeneralConfig--;
}

core.int buildCounterPartnerRevenueModel = 0;
api.PartnerRevenueModel buildPartnerRevenueModel() {
  final o = api.PartnerRevenueModel();
  buildCounterPartnerRevenueModel++;
  if (buildCounterPartnerRevenueModel < 3) {
    o.markupAmount = 'foo';
    o.markupType = 'foo';
  }
  buildCounterPartnerRevenueModel--;
  return o;
}

void checkPartnerRevenueModel(api.PartnerRevenueModel o) {
  buildCounterPartnerRevenueModel++;
  if (buildCounterPartnerRevenueModel < 3) {
    unittest.expect(o.markupAmount!, unittest.equals('foo'));
    unittest.expect(o.markupType!, unittest.equals('foo'));
  }
  buildCounterPartnerRevenueModel--;
}

core.int buildCounterPerformanceGoal = 0;
api.PerformanceGoal buildPerformanceGoal() {
  final o = api.PerformanceGoal();
  buildCounterPerformanceGoal++;
  if (buildCounterPerformanceGoal < 3) {
    o.performanceGoalAmountMicros = 'foo';
    o.performanceGoalPercentageMicros = 'foo';
    o.performanceGoalString = 'foo';
    o.performanceGoalType = 'foo';
  }
  buildCounterPerformanceGoal--;
  return o;
}

void checkPerformanceGoal(api.PerformanceGoal o) {
  buildCounterPerformanceGoal++;
  if (buildCounterPerformanceGoal < 3) {
    unittest.expect(o.performanceGoalAmountMicros!, unittest.equals('foo'));
    unittest.expect(o.performanceGoalPercentageMicros!, unittest.equals('foo'));
    unittest.expect(o.performanceGoalString!, unittest.equals('foo'));
    unittest.expect(o.performanceGoalType!, unittest.equals('foo'));
  }
  buildCounterPerformanceGoal--;
}

core.int buildCounterPerformanceGoalBidStrategy = 0;
api.PerformanceGoalBidStrategy buildPerformanceGoalBidStrategy() {
  final o = api.PerformanceGoalBidStrategy();
  buildCounterPerformanceGoalBidStrategy++;
  if (buildCounterPerformanceGoalBidStrategy < 3) {
    o.customBiddingAlgorithmId = 'foo';
    o.maxAverageCpmBidAmountMicros = 'foo';
    o.performanceGoalAmountMicros = 'foo';
    o.performanceGoalType = 'foo';
  }
  buildCounterPerformanceGoalBidStrategy--;
  return o;
}

void checkPerformanceGoalBidStrategy(api.PerformanceGoalBidStrategy o) {
  buildCounterPerformanceGoalBidStrategy++;
  if (buildCounterPerformanceGoalBidStrategy < 3) {
    unittest.expect(o.customBiddingAlgorithmId!, unittest.equals('foo'));
    unittest.expect(o.maxAverageCpmBidAmountMicros!, unittest.equals('foo'));
    unittest.expect(o.performanceGoalAmountMicros!, unittest.equals('foo'));
    unittest.expect(o.performanceGoalType!, unittest.equals('foo'));
  }
  buildCounterPerformanceGoalBidStrategy--;
}

core.int buildCounterPoiAssignedTargetingOptionDetails = 0;
api.PoiAssignedTargetingOptionDetails buildPoiAssignedTargetingOptionDetails() {
  final o = api.PoiAssignedTargetingOptionDetails();
  buildCounterPoiAssignedTargetingOptionDetails++;
  if (buildCounterPoiAssignedTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.latitude = 42.0;
    o.longitude = 42.0;
    o.proximityRadiusAmount = 42.0;
    o.proximityRadiusUnit = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterPoiAssignedTargetingOptionDetails--;
  return o;
}

void checkPoiAssignedTargetingOptionDetails(
  api.PoiAssignedTargetingOptionDetails o,
) {
  buildCounterPoiAssignedTargetingOptionDetails++;
  if (buildCounterPoiAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.latitude!, unittest.equals(42.0));
    unittest.expect(o.longitude!, unittest.equals(42.0));
    unittest.expect(o.proximityRadiusAmount!, unittest.equals(42.0));
    unittest.expect(o.proximityRadiusUnit!, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterPoiAssignedTargetingOptionDetails--;
}

core.int buildCounterPoiSearchTerms = 0;
api.PoiSearchTerms buildPoiSearchTerms() {
  final o = api.PoiSearchTerms();
  buildCounterPoiSearchTerms++;
  if (buildCounterPoiSearchTerms < 3) {
    o.poiQuery = 'foo';
  }
  buildCounterPoiSearchTerms--;
  return o;
}

void checkPoiSearchTerms(api.PoiSearchTerms o) {
  buildCounterPoiSearchTerms++;
  if (buildCounterPoiSearchTerms < 3) {
    unittest.expect(o.poiQuery!, unittest.equals('foo'));
  }
  buildCounterPoiSearchTerms--;
}

core.int buildCounterPoiTargetingOptionDetails = 0;
api.PoiTargetingOptionDetails buildPoiTargetingOptionDetails() {
  final o = api.PoiTargetingOptionDetails();
  buildCounterPoiTargetingOptionDetails++;
  if (buildCounterPoiTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterPoiTargetingOptionDetails--;
  return o;
}

void checkPoiTargetingOptionDetails(api.PoiTargetingOptionDetails o) {
  buildCounterPoiTargetingOptionDetails++;
  if (buildCounterPoiTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.latitude!, unittest.equals(42.0));
    unittest.expect(o.longitude!, unittest.equals(42.0));
  }
  buildCounterPoiTargetingOptionDetails--;
}

core.int buildCounterPrismaConfig = 0;
api.PrismaConfig buildPrismaConfig() {
  final o = api.PrismaConfig();
  buildCounterPrismaConfig++;
  if (buildCounterPrismaConfig < 3) {
    o.prismaCpeCode = buildPrismaCpeCode();
    o.prismaType = 'foo';
    o.supplier = 'foo';
  }
  buildCounterPrismaConfig--;
  return o;
}

void checkPrismaConfig(api.PrismaConfig o) {
  buildCounterPrismaConfig++;
  if (buildCounterPrismaConfig < 3) {
    checkPrismaCpeCode(o.prismaCpeCode!);
    unittest.expect(o.prismaType!, unittest.equals('foo'));
    unittest.expect(o.supplier!, unittest.equals('foo'));
  }
  buildCounterPrismaConfig--;
}

core.int buildCounterPrismaCpeCode = 0;
api.PrismaCpeCode buildPrismaCpeCode() {
  final o = api.PrismaCpeCode();
  buildCounterPrismaCpeCode++;
  if (buildCounterPrismaCpeCode < 3) {
    o.prismaClientCode = 'foo';
    o.prismaEstimateCode = 'foo';
    o.prismaProductCode = 'foo';
  }
  buildCounterPrismaCpeCode--;
  return o;
}

void checkPrismaCpeCode(api.PrismaCpeCode o) {
  buildCounterPrismaCpeCode++;
  if (buildCounterPrismaCpeCode < 3) {
    unittest.expect(o.prismaClientCode!, unittest.equals('foo'));
    unittest.expect(o.prismaEstimateCode!, unittest.equals('foo'));
    unittest.expect(o.prismaProductCode!, unittest.equals('foo'));
  }
  buildCounterPrismaCpeCode--;
}

core.List<api.ProductMatchDimension> buildUnnamed130() => [
  buildProductMatchDimension(),
  buildProductMatchDimension(),
];

void checkUnnamed130(core.List<api.ProductMatchDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductMatchDimension(o[0]);
  checkProductMatchDimension(o[1]);
}

core.int buildCounterProductFeedData = 0;
api.ProductFeedData buildProductFeedData() {
  final o = api.ProductFeedData();
  buildCounterProductFeedData++;
  if (buildCounterProductFeedData < 3) {
    o.isFeedDisabled = true;
    o.productMatchDimensions = buildUnnamed130();
    o.productMatchType = 'foo';
  }
  buildCounterProductFeedData--;
  return o;
}

void checkProductFeedData(api.ProductFeedData o) {
  buildCounterProductFeedData++;
  if (buildCounterProductFeedData < 3) {
    unittest.expect(o.isFeedDisabled!, unittest.isTrue);
    checkUnnamed130(o.productMatchDimensions!);
    unittest.expect(o.productMatchType!, unittest.equals('foo'));
  }
  buildCounterProductFeedData--;
}

core.int buildCounterProductMatchDimension = 0;
api.ProductMatchDimension buildProductMatchDimension() {
  final o = api.ProductMatchDimension();
  buildCounterProductMatchDimension++;
  if (buildCounterProductMatchDimension < 3) {
    o.customLabel = buildCustomLabel();
    o.productOfferId = 'foo';
  }
  buildCounterProductMatchDimension--;
  return o;
}

void checkProductMatchDimension(api.ProductMatchDimension o) {
  buildCounterProductMatchDimension++;
  if (buildCounterProductMatchDimension < 3) {
    checkCustomLabel(o.customLabel!);
    unittest.expect(o.productOfferId!, unittest.equals('foo'));
  }
  buildCounterProductMatchDimension--;
}

core.int buildCounterProximityLocationListAssignedTargetingOptionDetails = 0;
api.ProximityLocationListAssignedTargetingOptionDetails
buildProximityLocationListAssignedTargetingOptionDetails() {
  final o = api.ProximityLocationListAssignedTargetingOptionDetails();
  buildCounterProximityLocationListAssignedTargetingOptionDetails++;
  if (buildCounterProximityLocationListAssignedTargetingOptionDetails < 3) {
    o.proximityLocationListId = 'foo';
    o.proximityRadius = 42.0;
    o.proximityRadiusUnit = 'foo';
  }
  buildCounterProximityLocationListAssignedTargetingOptionDetails--;
  return o;
}

void checkProximityLocationListAssignedTargetingOptionDetails(
  api.ProximityLocationListAssignedTargetingOptionDetails o,
) {
  buildCounterProximityLocationListAssignedTargetingOptionDetails++;
  if (buildCounterProximityLocationListAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.proximityLocationListId!, unittest.equals('foo'));
    unittest.expect(o.proximityRadius!, unittest.equals(42.0));
    unittest.expect(o.proximityRadiusUnit!, unittest.equals('foo'));
  }
  buildCounterProximityLocationListAssignedTargetingOptionDetails--;
}

core.int buildCounterPublisherReviewStatus = 0;
api.PublisherReviewStatus buildPublisherReviewStatus() {
  final o = api.PublisherReviewStatus();
  buildCounterPublisherReviewStatus++;
  if (buildCounterPublisherReviewStatus < 3) {
    o.publisherName = 'foo';
    o.status = 'foo';
  }
  buildCounterPublisherReviewStatus--;
  return o;
}

void checkPublisherReviewStatus(api.PublisherReviewStatus o) {
  buildCounterPublisherReviewStatus++;
  if (buildCounterPublisherReviewStatus < 3) {
    unittest.expect(o.publisherName!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterPublisherReviewStatus--;
}

core.int buildCounterRateDetails = 0;
api.RateDetails buildRateDetails() {
  final o = api.RateDetails();
  buildCounterRateDetails++;
  if (buildCounterRateDetails < 3) {
    o.inventorySourceRateType = 'foo';
    o.minimumSpend = buildMoney();
    o.rate = buildMoney();
    o.unitsPurchased = 'foo';
  }
  buildCounterRateDetails--;
  return o;
}

void checkRateDetails(api.RateDetails o) {
  buildCounterRateDetails++;
  if (buildCounterRateDetails < 3) {
    unittest.expect(o.inventorySourceRateType!, unittest.equals('foo'));
    checkMoney(o.minimumSpend!);
    checkMoney(o.rate!);
    unittest.expect(o.unitsPurchased!, unittest.equals('foo'));
  }
  buildCounterRateDetails--;
}

core.int buildCounterRegionalLocationListAssignedTargetingOptionDetails = 0;
api.RegionalLocationListAssignedTargetingOptionDetails
buildRegionalLocationListAssignedTargetingOptionDetails() {
  final o = api.RegionalLocationListAssignedTargetingOptionDetails();
  buildCounterRegionalLocationListAssignedTargetingOptionDetails++;
  if (buildCounterRegionalLocationListAssignedTargetingOptionDetails < 3) {
    o.negative = true;
    o.regionalLocationListId = 'foo';
  }
  buildCounterRegionalLocationListAssignedTargetingOptionDetails--;
  return o;
}

void checkRegionalLocationListAssignedTargetingOptionDetails(
  api.RegionalLocationListAssignedTargetingOptionDetails o,
) {
  buildCounterRegionalLocationListAssignedTargetingOptionDetails++;
  if (buildCounterRegionalLocationListAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.regionalLocationListId!, unittest.equals('foo'));
  }
  buildCounterRegionalLocationListAssignedTargetingOptionDetails--;
}

core.int buildCounterRemarketingConfig = 0;
api.RemarketingConfig buildRemarketingConfig() {
  final o = api.RemarketingConfig();
  buildCounterRemarketingConfig++;
  if (buildCounterRemarketingConfig < 3) {
    o.advertiserId = 'foo';
    o.remarketingEnabled = true;
  }
  buildCounterRemarketingConfig--;
  return o;
}

void checkRemarketingConfig(api.RemarketingConfig o) {
  buildCounterRemarketingConfig++;
  if (buildCounterRemarketingConfig < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    unittest.expect(o.remarketingEnabled!, unittest.isTrue);
  }
  buildCounterRemarketingConfig--;
}

core.List<api.NegativeKeyword> buildUnnamed131() => [
  buildNegativeKeyword(),
  buildNegativeKeyword(),
];

void checkUnnamed131(core.List<api.NegativeKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeyword(o[0]);
  checkNegativeKeyword(o[1]);
}

core.int buildCounterReplaceNegativeKeywordsRequest = 0;
api.ReplaceNegativeKeywordsRequest buildReplaceNegativeKeywordsRequest() {
  final o = api.ReplaceNegativeKeywordsRequest();
  buildCounterReplaceNegativeKeywordsRequest++;
  if (buildCounterReplaceNegativeKeywordsRequest < 3) {
    o.newNegativeKeywords = buildUnnamed131();
  }
  buildCounterReplaceNegativeKeywordsRequest--;
  return o;
}

void checkReplaceNegativeKeywordsRequest(api.ReplaceNegativeKeywordsRequest o) {
  buildCounterReplaceNegativeKeywordsRequest++;
  if (buildCounterReplaceNegativeKeywordsRequest < 3) {
    checkUnnamed131(o.newNegativeKeywords!);
  }
  buildCounterReplaceNegativeKeywordsRequest--;
}

core.List<api.NegativeKeyword> buildUnnamed132() => [
  buildNegativeKeyword(),
  buildNegativeKeyword(),
];

void checkUnnamed132(core.List<api.NegativeKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeyword(o[0]);
  checkNegativeKeyword(o[1]);
}

core.int buildCounterReplaceNegativeKeywordsResponse = 0;
api.ReplaceNegativeKeywordsResponse buildReplaceNegativeKeywordsResponse() {
  final o = api.ReplaceNegativeKeywordsResponse();
  buildCounterReplaceNegativeKeywordsResponse++;
  if (buildCounterReplaceNegativeKeywordsResponse < 3) {
    o.negativeKeywords = buildUnnamed132();
  }
  buildCounterReplaceNegativeKeywordsResponse--;
  return o;
}

void checkReplaceNegativeKeywordsResponse(
  api.ReplaceNegativeKeywordsResponse o,
) {
  buildCounterReplaceNegativeKeywordsResponse++;
  if (buildCounterReplaceNegativeKeywordsResponse < 3) {
    checkUnnamed132(o.negativeKeywords!);
  }
  buildCounterReplaceNegativeKeywordsResponse--;
}

core.List<api.Site> buildUnnamed133() => [buildSite(), buildSite()];

void checkUnnamed133(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0]);
  checkSite(o[1]);
}

core.int buildCounterReplaceSitesRequest = 0;
api.ReplaceSitesRequest buildReplaceSitesRequest() {
  final o = api.ReplaceSitesRequest();
  buildCounterReplaceSitesRequest++;
  if (buildCounterReplaceSitesRequest < 3) {
    o.advertiserId = 'foo';
    o.newSites = buildUnnamed133();
    o.partnerId = 'foo';
  }
  buildCounterReplaceSitesRequest--;
  return o;
}

void checkReplaceSitesRequest(api.ReplaceSitesRequest o) {
  buildCounterReplaceSitesRequest++;
  if (buildCounterReplaceSitesRequest < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    checkUnnamed133(o.newSites!);
    unittest.expect(o.partnerId!, unittest.equals('foo'));
  }
  buildCounterReplaceSitesRequest--;
}

core.List<api.Site> buildUnnamed134() => [buildSite(), buildSite()];

void checkUnnamed134(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0]);
  checkSite(o[1]);
}

core.int buildCounterReplaceSitesResponse = 0;
api.ReplaceSitesResponse buildReplaceSitesResponse() {
  final o = api.ReplaceSitesResponse();
  buildCounterReplaceSitesResponse++;
  if (buildCounterReplaceSitesResponse < 3) {
    o.sites = buildUnnamed134();
  }
  buildCounterReplaceSitesResponse--;
  return o;
}

void checkReplaceSitesResponse(api.ReplaceSitesResponse o) {
  buildCounterReplaceSitesResponse++;
  if (buildCounterReplaceSitesResponse < 3) {
    checkUnnamed134(o.sites!);
  }
  buildCounterReplaceSitesResponse--;
}

core.List<api.ExchangeReviewStatus> buildUnnamed135() => [
  buildExchangeReviewStatus(),
  buildExchangeReviewStatus(),
];

void checkUnnamed135(core.List<api.ExchangeReviewStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExchangeReviewStatus(o[0]);
  checkExchangeReviewStatus(o[1]);
}

core.List<api.PublisherReviewStatus> buildUnnamed136() => [
  buildPublisherReviewStatus(),
  buildPublisherReviewStatus(),
];

void checkUnnamed136(core.List<api.PublisherReviewStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherReviewStatus(o[0]);
  checkPublisherReviewStatus(o[1]);
}

core.int buildCounterReviewStatusInfo = 0;
api.ReviewStatusInfo buildReviewStatusInfo() {
  final o = api.ReviewStatusInfo();
  buildCounterReviewStatusInfo++;
  if (buildCounterReviewStatusInfo < 3) {
    o.approvalStatus = 'foo';
    o.contentAndPolicyReviewStatus = 'foo';
    o.creativeAndLandingPageReviewStatus = 'foo';
    o.exchangeReviewStatuses = buildUnnamed135();
    o.publisherReviewStatuses = buildUnnamed136();
  }
  buildCounterReviewStatusInfo--;
  return o;
}

void checkReviewStatusInfo(api.ReviewStatusInfo o) {
  buildCounterReviewStatusInfo++;
  if (buildCounterReviewStatusInfo < 3) {
    unittest.expect(o.approvalStatus!, unittest.equals('foo'));
    unittest.expect(o.contentAndPolicyReviewStatus!, unittest.equals('foo'));
    unittest.expect(
      o.creativeAndLandingPageReviewStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed135(o.exchangeReviewStatuses!);
    checkUnnamed136(o.publisherReviewStatuses!);
  }
  buildCounterReviewStatusInfo--;
}

core.int buildCounterScriptError = 0;
api.ScriptError buildScriptError() {
  final o = api.ScriptError();
  buildCounterScriptError++;
  if (buildCounterScriptError < 3) {
    o.column = 'foo';
    o.errorCode = 'foo';
    o.errorMessage = 'foo';
    o.line = 'foo';
  }
  buildCounterScriptError--;
  return o;
}

void checkScriptError(api.ScriptError o) {
  buildCounterScriptError++;
  if (buildCounterScriptError < 3) {
    unittest.expect(o.column!, unittest.equals('foo'));
    unittest.expect(o.errorCode!, unittest.equals('foo'));
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.line!, unittest.equals('foo'));
  }
  buildCounterScriptError--;
}

core.int buildCounterSdfConfig = 0;
api.SdfConfig buildSdfConfig() {
  final o = api.SdfConfig();
  buildCounterSdfConfig++;
  if (buildCounterSdfConfig < 3) {
    o.adminEmail = 'foo';
    o.version = 'foo';
  }
  buildCounterSdfConfig--;
  return o;
}

void checkSdfConfig(api.SdfConfig o) {
  buildCounterSdfConfig++;
  if (buildCounterSdfConfig < 3) {
    unittest.expect(o.adminEmail!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterSdfConfig--;
}

core.int buildCounterSearchTargetingOptionsRequest = 0;
api.SearchTargetingOptionsRequest buildSearchTargetingOptionsRequest() {
  final o = api.SearchTargetingOptionsRequest();
  buildCounterSearchTargetingOptionsRequest++;
  if (buildCounterSearchTargetingOptionsRequest < 3) {
    o.advertiserId = 'foo';
    o.businessChainSearchTerms = buildBusinessChainSearchTerms();
    o.geoRegionSearchTerms = buildGeoRegionSearchTerms();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.poiSearchTerms = buildPoiSearchTerms();
  }
  buildCounterSearchTargetingOptionsRequest--;
  return o;
}

void checkSearchTargetingOptionsRequest(api.SearchTargetingOptionsRequest o) {
  buildCounterSearchTargetingOptionsRequest++;
  if (buildCounterSearchTargetingOptionsRequest < 3) {
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    checkBusinessChainSearchTerms(o.businessChainSearchTerms!);
    checkGeoRegionSearchTerms(o.geoRegionSearchTerms!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkPoiSearchTerms(o.poiSearchTerms!);
  }
  buildCounterSearchTargetingOptionsRequest--;
}

core.List<api.TargetingOption> buildUnnamed137() => [
  buildTargetingOption(),
  buildTargetingOption(),
];

void checkUnnamed137(core.List<api.TargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingOption(o[0]);
  checkTargetingOption(o[1]);
}

core.int buildCounterSearchTargetingOptionsResponse = 0;
api.SearchTargetingOptionsResponse buildSearchTargetingOptionsResponse() {
  final o = api.SearchTargetingOptionsResponse();
  buildCounterSearchTargetingOptionsResponse++;
  if (buildCounterSearchTargetingOptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.targetingOptions = buildUnnamed137();
  }
  buildCounterSearchTargetingOptionsResponse--;
  return o;
}

void checkSearchTargetingOptionsResponse(api.SearchTargetingOptionsResponse o) {
  buildCounterSearchTargetingOptionsResponse++;
  if (buildCounterSearchTargetingOptionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed137(o.targetingOptions!);
  }
  buildCounterSearchTargetingOptionsResponse--;
}

core.int buildCounterSensitiveCategoryAssignedTargetingOptionDetails = 0;
api.SensitiveCategoryAssignedTargetingOptionDetails
buildSensitiveCategoryAssignedTargetingOptionDetails() {
  final o = api.SensitiveCategoryAssignedTargetingOptionDetails();
  buildCounterSensitiveCategoryAssignedTargetingOptionDetails++;
  if (buildCounterSensitiveCategoryAssignedTargetingOptionDetails < 3) {
    o.excludedSensitiveCategory = 'foo';
  }
  buildCounterSensitiveCategoryAssignedTargetingOptionDetails--;
  return o;
}

void checkSensitiveCategoryAssignedTargetingOptionDetails(
  api.SensitiveCategoryAssignedTargetingOptionDetails o,
) {
  buildCounterSensitiveCategoryAssignedTargetingOptionDetails++;
  if (buildCounterSensitiveCategoryAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.excludedSensitiveCategory!, unittest.equals('foo'));
  }
  buildCounterSensitiveCategoryAssignedTargetingOptionDetails--;
}

core.int buildCounterSensitiveCategoryTargetingOptionDetails = 0;
api.SensitiveCategoryTargetingOptionDetails
buildSensitiveCategoryTargetingOptionDetails() {
  final o = api.SensitiveCategoryTargetingOptionDetails();
  buildCounterSensitiveCategoryTargetingOptionDetails++;
  if (buildCounterSensitiveCategoryTargetingOptionDetails < 3) {
    o.sensitiveCategory = 'foo';
  }
  buildCounterSensitiveCategoryTargetingOptionDetails--;
  return o;
}

void checkSensitiveCategoryTargetingOptionDetails(
  api.SensitiveCategoryTargetingOptionDetails o,
) {
  buildCounterSensitiveCategoryTargetingOptionDetails++;
  if (buildCounterSensitiveCategoryTargetingOptionDetails < 3) {
    unittest.expect(o.sensitiveCategory!, unittest.equals('foo'));
  }
  buildCounterSensitiveCategoryTargetingOptionDetails--;
}

core.int buildCounterSessionPositionAssignedTargetingOptionDetails = 0;
api.SessionPositionAssignedTargetingOptionDetails
buildSessionPositionAssignedTargetingOptionDetails() {
  final o = api.SessionPositionAssignedTargetingOptionDetails();
  buildCounterSessionPositionAssignedTargetingOptionDetails++;
  if (buildCounterSessionPositionAssignedTargetingOptionDetails < 3) {
    o.sessionPosition = 'foo';
  }
  buildCounterSessionPositionAssignedTargetingOptionDetails--;
  return o;
}

void checkSessionPositionAssignedTargetingOptionDetails(
  api.SessionPositionAssignedTargetingOptionDetails o,
) {
  buildCounterSessionPositionAssignedTargetingOptionDetails++;
  if (buildCounterSessionPositionAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.sessionPosition!, unittest.equals('foo'));
  }
  buildCounterSessionPositionAssignedTargetingOptionDetails--;
}

core.int buildCounterSite = 0;
api.Site buildSite() {
  final o = api.Site();
  buildCounterSite++;
  if (buildCounterSite < 3) {
    o.name = 'foo';
    o.urlOrAppId = 'foo';
  }
  buildCounterSite--;
  return o;
}

void checkSite(api.Site o) {
  buildCounterSite++;
  if (buildCounterSite < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.urlOrAppId!, unittest.equals('foo'));
  }
  buildCounterSite--;
}

core.Map<core.String, core.Object?> buildUnnamed138() => {
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

void checkUnnamed138(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed139() => [
  buildUnnamed138(),
  buildUnnamed138(),
];

void checkUnnamed139(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed138(o[0]);
  checkUnnamed138(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed139();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed139(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSubExchangeAssignedTargetingOptionDetails = 0;
api.SubExchangeAssignedTargetingOptionDetails
buildSubExchangeAssignedTargetingOptionDetails() {
  final o = api.SubExchangeAssignedTargetingOptionDetails();
  buildCounterSubExchangeAssignedTargetingOptionDetails++;
  if (buildCounterSubExchangeAssignedTargetingOptionDetails < 3) {
    o.targetingOptionId = 'foo';
  }
  buildCounterSubExchangeAssignedTargetingOptionDetails--;
  return o;
}

void checkSubExchangeAssignedTargetingOptionDetails(
  api.SubExchangeAssignedTargetingOptionDetails o,
) {
  buildCounterSubExchangeAssignedTargetingOptionDetails++;
  if (buildCounterSubExchangeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
  }
  buildCounterSubExchangeAssignedTargetingOptionDetails--;
}

core.int buildCounterSubExchangeTargetingOptionDetails = 0;
api.SubExchangeTargetingOptionDetails buildSubExchangeTargetingOptionDetails() {
  final o = api.SubExchangeTargetingOptionDetails();
  buildCounterSubExchangeTargetingOptionDetails++;
  if (buildCounterSubExchangeTargetingOptionDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterSubExchangeTargetingOptionDetails--;
  return o;
}

void checkSubExchangeTargetingOptionDetails(
  api.SubExchangeTargetingOptionDetails o,
) {
  buildCounterSubExchangeTargetingOptionDetails++;
  if (buildCounterSubExchangeTargetingOptionDetails < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterSubExchangeTargetingOptionDetails--;
}

core.int buildCounterTargetFrequency = 0;
api.TargetFrequency buildTargetFrequency() {
  final o = api.TargetFrequency();
  buildCounterTargetFrequency++;
  if (buildCounterTargetFrequency < 3) {
    o.targetCount = 'foo';
    o.timeUnit = 'foo';
    o.timeUnitCount = 42;
  }
  buildCounterTargetFrequency--;
  return o;
}

void checkTargetFrequency(api.TargetFrequency o) {
  buildCounterTargetFrequency++;
  if (buildCounterTargetFrequency < 3) {
    unittest.expect(o.targetCount!, unittest.equals('foo'));
    unittest.expect(o.timeUnit!, unittest.equals('foo'));
    unittest.expect(o.timeUnitCount!, unittest.equals(42));
  }
  buildCounterTargetFrequency--;
}

core.int buildCounterTargetingExpansionConfig = 0;
api.TargetingExpansionConfig buildTargetingExpansionConfig() {
  final o = api.TargetingExpansionConfig();
  buildCounterTargetingExpansionConfig++;
  if (buildCounterTargetingExpansionConfig < 3) {
    o.excludeFirstPartyAudience = true;
    o.targetingExpansionLevel = 'foo';
  }
  buildCounterTargetingExpansionConfig--;
  return o;
}

void checkTargetingExpansionConfig(api.TargetingExpansionConfig o) {
  buildCounterTargetingExpansionConfig++;
  if (buildCounterTargetingExpansionConfig < 3) {
    unittest.expect(o.excludeFirstPartyAudience!, unittest.isTrue);
    unittest.expect(o.targetingExpansionLevel!, unittest.equals('foo'));
  }
  buildCounterTargetingExpansionConfig--;
}

core.int buildCounterTargetingOption = 0;
api.TargetingOption buildTargetingOption() {
  final o = api.TargetingOption();
  buildCounterTargetingOption++;
  if (buildCounterTargetingOption < 3) {
    o.ageRangeDetails = buildAgeRangeTargetingOptionDetails();
    o.appCategoryDetails = buildAppCategoryTargetingOptionDetails();
    o.audioContentTypeDetails = buildAudioContentTypeTargetingOptionDetails();
    o.authorizedSellerStatusDetails =
        buildAuthorizedSellerStatusTargetingOptionDetails();
    o.browserDetails = buildBrowserTargetingOptionDetails();
    o.businessChainDetails = buildBusinessChainTargetingOptionDetails();
    o.carrierAndIspDetails = buildCarrierAndIspTargetingOptionDetails();
    o.categoryDetails = buildCategoryTargetingOptionDetails();
    o.contentDurationDetails = buildContentDurationTargetingOptionDetails();
    o.contentGenreDetails = buildContentGenreTargetingOptionDetails();
    o.contentInstreamPositionDetails =
        buildContentInstreamPositionTargetingOptionDetails();
    o.contentOutstreamPositionDetails =
        buildContentOutstreamPositionTargetingOptionDetails();
    o.contentStreamTypeDetails = buildContentStreamTypeTargetingOptionDetails();
    o.deviceMakeModelDetails = buildDeviceMakeModelTargetingOptionDetails();
    o.deviceTypeDetails = buildDeviceTypeTargetingOptionDetails();
    o.digitalContentLabelDetails =
        buildDigitalContentLabelTargetingOptionDetails();
    o.environmentDetails = buildEnvironmentTargetingOptionDetails();
    o.exchangeDetails = buildExchangeTargetingOptionDetails();
    o.genderDetails = buildGenderTargetingOptionDetails();
    o.geoRegionDetails = buildGeoRegionTargetingOptionDetails();
    o.householdIncomeDetails = buildHouseholdIncomeTargetingOptionDetails();
    o.languageDetails = buildLanguageTargetingOptionDetails();
    o.name = 'foo';
    o.nativeContentPositionDetails =
        buildNativeContentPositionTargetingOptionDetails();
    o.omidDetails = buildOmidTargetingOptionDetails();
    o.onScreenPositionDetails = buildOnScreenPositionTargetingOptionDetails();
    o.operatingSystemDetails = buildOperatingSystemTargetingOptionDetails();
    o.parentalStatusDetails = buildParentalStatusTargetingOptionDetails();
    o.poiDetails = buildPoiTargetingOptionDetails();
    o.sensitiveCategoryDetails = buildSensitiveCategoryTargetingOptionDetails();
    o.subExchangeDetails = buildSubExchangeTargetingOptionDetails();
    o.targetingOptionId = 'foo';
    o.targetingType = 'foo';
    o.userRewardedContentDetails =
        buildUserRewardedContentTargetingOptionDetails();
    o.videoPlayerSizeDetails = buildVideoPlayerSizeTargetingOptionDetails();
    o.viewabilityDetails = buildViewabilityTargetingOptionDetails();
  }
  buildCounterTargetingOption--;
  return o;
}

void checkTargetingOption(api.TargetingOption o) {
  buildCounterTargetingOption++;
  if (buildCounterTargetingOption < 3) {
    checkAgeRangeTargetingOptionDetails(o.ageRangeDetails!);
    checkAppCategoryTargetingOptionDetails(o.appCategoryDetails!);
    checkAudioContentTypeTargetingOptionDetails(o.audioContentTypeDetails!);
    checkAuthorizedSellerStatusTargetingOptionDetails(
      o.authorizedSellerStatusDetails!,
    );
    checkBrowserTargetingOptionDetails(o.browserDetails!);
    checkBusinessChainTargetingOptionDetails(o.businessChainDetails!);
    checkCarrierAndIspTargetingOptionDetails(o.carrierAndIspDetails!);
    checkCategoryTargetingOptionDetails(o.categoryDetails!);
    checkContentDurationTargetingOptionDetails(o.contentDurationDetails!);
    checkContentGenreTargetingOptionDetails(o.contentGenreDetails!);
    checkContentInstreamPositionTargetingOptionDetails(
      o.contentInstreamPositionDetails!,
    );
    checkContentOutstreamPositionTargetingOptionDetails(
      o.contentOutstreamPositionDetails!,
    );
    checkContentStreamTypeTargetingOptionDetails(o.contentStreamTypeDetails!);
    checkDeviceMakeModelTargetingOptionDetails(o.deviceMakeModelDetails!);
    checkDeviceTypeTargetingOptionDetails(o.deviceTypeDetails!);
    checkDigitalContentLabelTargetingOptionDetails(
      o.digitalContentLabelDetails!,
    );
    checkEnvironmentTargetingOptionDetails(o.environmentDetails!);
    checkExchangeTargetingOptionDetails(o.exchangeDetails!);
    checkGenderTargetingOptionDetails(o.genderDetails!);
    checkGeoRegionTargetingOptionDetails(o.geoRegionDetails!);
    checkHouseholdIncomeTargetingOptionDetails(o.householdIncomeDetails!);
    checkLanguageTargetingOptionDetails(o.languageDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNativeContentPositionTargetingOptionDetails(
      o.nativeContentPositionDetails!,
    );
    checkOmidTargetingOptionDetails(o.omidDetails!);
    checkOnScreenPositionTargetingOptionDetails(o.onScreenPositionDetails!);
    checkOperatingSystemTargetingOptionDetails(o.operatingSystemDetails!);
    checkParentalStatusTargetingOptionDetails(o.parentalStatusDetails!);
    checkPoiTargetingOptionDetails(o.poiDetails!);
    checkSensitiveCategoryTargetingOptionDetails(o.sensitiveCategoryDetails!);
    checkSubExchangeTargetingOptionDetails(o.subExchangeDetails!);
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
    unittest.expect(o.targetingType!, unittest.equals('foo'));
    checkUserRewardedContentTargetingOptionDetails(
      o.userRewardedContentDetails!,
    );
    checkVideoPlayerSizeTargetingOptionDetails(o.videoPlayerSizeDetails!);
    checkViewabilityTargetingOptionDetails(o.viewabilityDetails!);
  }
  buildCounterTargetingOption--;
}

core.int buildCounterThirdPartyOnlyConfig = 0;
api.ThirdPartyOnlyConfig buildThirdPartyOnlyConfig() {
  final o = api.ThirdPartyOnlyConfig();
  buildCounterThirdPartyOnlyConfig++;
  if (buildCounterThirdPartyOnlyConfig < 3) {
    o.pixelOrderIdReportingEnabled = true;
  }
  buildCounterThirdPartyOnlyConfig--;
  return o;
}

void checkThirdPartyOnlyConfig(api.ThirdPartyOnlyConfig o) {
  buildCounterThirdPartyOnlyConfig++;
  if (buildCounterThirdPartyOnlyConfig < 3) {
    unittest.expect(o.pixelOrderIdReportingEnabled!, unittest.isTrue);
  }
  buildCounterThirdPartyOnlyConfig--;
}

core.int buildCounterThirdPartyUrl = 0;
api.ThirdPartyUrl buildThirdPartyUrl() {
  final o = api.ThirdPartyUrl();
  buildCounterThirdPartyUrl++;
  if (buildCounterThirdPartyUrl < 3) {
    o.type = 'foo';
    o.url = 'foo';
  }
  buildCounterThirdPartyUrl--;
  return o;
}

void checkThirdPartyUrl(api.ThirdPartyUrl o) {
  buildCounterThirdPartyUrl++;
  if (buildCounterThirdPartyUrl < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterThirdPartyUrl--;
}

core.int buildCounterThirdPartyVendorConfig = 0;
api.ThirdPartyVendorConfig buildThirdPartyVendorConfig() {
  final o = api.ThirdPartyVendorConfig();
  buildCounterThirdPartyVendorConfig++;
  if (buildCounterThirdPartyVendorConfig < 3) {
    o.placementId = 'foo';
    o.vendor = 'foo';
  }
  buildCounterThirdPartyVendorConfig--;
  return o;
}

void checkThirdPartyVendorConfig(api.ThirdPartyVendorConfig o) {
  buildCounterThirdPartyVendorConfig++;
  if (buildCounterThirdPartyVendorConfig < 3) {
    unittest.expect(o.placementId!, unittest.equals('foo'));
    unittest.expect(o.vendor!, unittest.equals('foo'));
  }
  buildCounterThirdPartyVendorConfig--;
}

core.int buildCounterThirdPartyVerifierAssignedTargetingOptionDetails = 0;
api.ThirdPartyVerifierAssignedTargetingOptionDetails
buildThirdPartyVerifierAssignedTargetingOptionDetails() {
  final o = api.ThirdPartyVerifierAssignedTargetingOptionDetails();
  buildCounterThirdPartyVerifierAssignedTargetingOptionDetails++;
  if (buildCounterThirdPartyVerifierAssignedTargetingOptionDetails < 3) {
    o.adloox = buildAdloox();
    o.doubleVerify = buildDoubleVerify();
    o.integralAdScience = buildIntegralAdScience();
  }
  buildCounterThirdPartyVerifierAssignedTargetingOptionDetails--;
  return o;
}

void checkThirdPartyVerifierAssignedTargetingOptionDetails(
  api.ThirdPartyVerifierAssignedTargetingOptionDetails o,
) {
  buildCounterThirdPartyVerifierAssignedTargetingOptionDetails++;
  if (buildCounterThirdPartyVerifierAssignedTargetingOptionDetails < 3) {
    checkAdloox(o.adloox!);
    checkDoubleVerify(o.doubleVerify!);
    checkIntegralAdScience(o.integralAdScience!);
  }
  buildCounterThirdPartyVerifierAssignedTargetingOptionDetails--;
}

core.int buildCounterTimeRange = 0;
api.TimeRange buildTimeRange() {
  final o = api.TimeRange();
  buildCounterTimeRange++;
  if (buildCounterTimeRange < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTimeRange--;
  return o;
}

void checkTimeRange(api.TimeRange o) {
  buildCounterTimeRange++;
  if (buildCounterTimeRange < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterTimeRange--;
}

core.int buildCounterTimerEvent = 0;
api.TimerEvent buildTimerEvent() {
  final o = api.TimerEvent();
  buildCounterTimerEvent++;
  if (buildCounterTimerEvent < 3) {
    o.name = 'foo';
    o.reportingName = 'foo';
  }
  buildCounterTimerEvent--;
  return o;
}

void checkTimerEvent(api.TimerEvent o) {
  buildCounterTimerEvent++;
  if (buildCounterTimerEvent < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reportingName!, unittest.equals('foo'));
  }
  buildCounterTimerEvent--;
}

core.int buildCounterTrackingFloodlightActivityConfig = 0;
api.TrackingFloodlightActivityConfig buildTrackingFloodlightActivityConfig() {
  final o = api.TrackingFloodlightActivityConfig();
  buildCounterTrackingFloodlightActivityConfig++;
  if (buildCounterTrackingFloodlightActivityConfig < 3) {
    o.floodlightActivityId = 'foo';
    o.postClickLookbackWindowDays = 42;
    o.postViewLookbackWindowDays = 42;
  }
  buildCounterTrackingFloodlightActivityConfig--;
  return o;
}

void checkTrackingFloodlightActivityConfig(
  api.TrackingFloodlightActivityConfig o,
) {
  buildCounterTrackingFloodlightActivityConfig++;
  if (buildCounterTrackingFloodlightActivityConfig < 3) {
    unittest.expect(o.floodlightActivityId!, unittest.equals('foo'));
    unittest.expect(o.postClickLookbackWindowDays!, unittest.equals(42));
    unittest.expect(o.postViewLookbackWindowDays!, unittest.equals(42));
  }
  buildCounterTrackingFloodlightActivityConfig--;
}

core.int buildCounterTranscode = 0;
api.Transcode buildTranscode() {
  final o = api.Transcode();
  buildCounterTranscode++;
  if (buildCounterTranscode < 3) {
    o.audioBitRateKbps = 'foo';
    o.audioSampleRateHz = 'foo';
    o.bitRateKbps = 'foo';
    o.dimensions = buildDimensions();
    o.fileSizeBytes = 'foo';
    o.frameRate = 42.0;
    o.mimeType = 'foo';
    o.name = 'foo';
    o.transcoded = true;
  }
  buildCounterTranscode--;
  return o;
}

void checkTranscode(api.Transcode o) {
  buildCounterTranscode++;
  if (buildCounterTranscode < 3) {
    unittest.expect(o.audioBitRateKbps!, unittest.equals('foo'));
    unittest.expect(o.audioSampleRateHz!, unittest.equals('foo'));
    unittest.expect(o.bitRateKbps!, unittest.equals('foo'));
    checkDimensions(o.dimensions!);
    unittest.expect(o.fileSizeBytes!, unittest.equals('foo'));
    unittest.expect(o.frameRate!, unittest.equals(42.0));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.transcoded!, unittest.isTrue);
  }
  buildCounterTranscode--;
}

core.int buildCounterUniversalAdId = 0;
api.UniversalAdId buildUniversalAdId() {
  final o = api.UniversalAdId();
  buildCounterUniversalAdId++;
  if (buildCounterUniversalAdId < 3) {
    o.id = 'foo';
    o.registry = 'foo';
  }
  buildCounterUniversalAdId--;
  return o;
}

void checkUniversalAdId(api.UniversalAdId o) {
  buildCounterUniversalAdId++;
  if (buildCounterUniversalAdId < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.registry!, unittest.equals('foo'));
  }
  buildCounterUniversalAdId--;
}

core.int buildCounterUrlAssignedTargetingOptionDetails = 0;
api.UrlAssignedTargetingOptionDetails buildUrlAssignedTargetingOptionDetails() {
  final o = api.UrlAssignedTargetingOptionDetails();
  buildCounterUrlAssignedTargetingOptionDetails++;
  if (buildCounterUrlAssignedTargetingOptionDetails < 3) {
    o.negative = true;
    o.url = 'foo';
  }
  buildCounterUrlAssignedTargetingOptionDetails--;
  return o;
}

void checkUrlAssignedTargetingOptionDetails(
  api.UrlAssignedTargetingOptionDetails o,
) {
  buildCounterUrlAssignedTargetingOptionDetails++;
  if (buildCounterUrlAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterUrlAssignedTargetingOptionDetails--;
}

core.List<api.AssignedUserRole> buildUnnamed140() => [
  buildAssignedUserRole(),
  buildAssignedUserRole(),
];

void checkUnnamed140(core.List<api.AssignedUserRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedUserRole(o[0]);
  checkAssignedUserRole(o[1]);
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.assignedUserRoles = buildUnnamed140();
    o.displayName = 'foo';
    o.email = 'foo';
    o.lastLoginTime = 'foo';
    o.name = 'foo';
    o.userId = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    checkUnnamed140(o.assignedUserRoles!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.lastLoginTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.int buildCounterUserRewardedContentAssignedTargetingOptionDetails = 0;
api.UserRewardedContentAssignedTargetingOptionDetails
buildUserRewardedContentAssignedTargetingOptionDetails() {
  final o = api.UserRewardedContentAssignedTargetingOptionDetails();
  buildCounterUserRewardedContentAssignedTargetingOptionDetails++;
  if (buildCounterUserRewardedContentAssignedTargetingOptionDetails < 3) {
    o.targetingOptionId = 'foo';
    o.userRewardedContent = 'foo';
  }
  buildCounterUserRewardedContentAssignedTargetingOptionDetails--;
  return o;
}

void checkUserRewardedContentAssignedTargetingOptionDetails(
  api.UserRewardedContentAssignedTargetingOptionDetails o,
) {
  buildCounterUserRewardedContentAssignedTargetingOptionDetails++;
  if (buildCounterUserRewardedContentAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.targetingOptionId!, unittest.equals('foo'));
    unittest.expect(o.userRewardedContent!, unittest.equals('foo'));
  }
  buildCounterUserRewardedContentAssignedTargetingOptionDetails--;
}

core.int buildCounterUserRewardedContentTargetingOptionDetails = 0;
api.UserRewardedContentTargetingOptionDetails
buildUserRewardedContentTargetingOptionDetails() {
  final o = api.UserRewardedContentTargetingOptionDetails();
  buildCounterUserRewardedContentTargetingOptionDetails++;
  if (buildCounterUserRewardedContentTargetingOptionDetails < 3) {
    o.userRewardedContent = 'foo';
  }
  buildCounterUserRewardedContentTargetingOptionDetails--;
  return o;
}

void checkUserRewardedContentTargetingOptionDetails(
  api.UserRewardedContentTargetingOptionDetails o,
) {
  buildCounterUserRewardedContentTargetingOptionDetails++;
  if (buildCounterUserRewardedContentTargetingOptionDetails < 3) {
    unittest.expect(o.userRewardedContent!, unittest.equals('foo'));
  }
  buildCounterUserRewardedContentTargetingOptionDetails--;
}

core.int buildCounterVideoAdInventoryControl = 0;
api.VideoAdInventoryControl buildVideoAdInventoryControl() {
  final o = api.VideoAdInventoryControl();
  buildCounterVideoAdInventoryControl++;
  if (buildCounterVideoAdInventoryControl < 3) {
    o.allowInFeed = true;
    o.allowInStream = true;
    o.allowShorts = true;
  }
  buildCounterVideoAdInventoryControl--;
  return o;
}

void checkVideoAdInventoryControl(api.VideoAdInventoryControl o) {
  buildCounterVideoAdInventoryControl++;
  if (buildCounterVideoAdInventoryControl < 3) {
    unittest.expect(o.allowInFeed!, unittest.isTrue);
    unittest.expect(o.allowInStream!, unittest.isTrue);
    unittest.expect(o.allowShorts!, unittest.isTrue);
  }
  buildCounterVideoAdInventoryControl--;
}

core.List<api.VideoAdSequenceStep> buildUnnamed141() => [
  buildVideoAdSequenceStep(),
  buildVideoAdSequenceStep(),
];

void checkUnnamed141(core.List<api.VideoAdSequenceStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoAdSequenceStep(o[0]);
  checkVideoAdSequenceStep(o[1]);
}

core.int buildCounterVideoAdSequenceSettings = 0;
api.VideoAdSequenceSettings buildVideoAdSequenceSettings() {
  final o = api.VideoAdSequenceSettings();
  buildCounterVideoAdSequenceSettings++;
  if (buildCounterVideoAdSequenceSettings < 3) {
    o.minimumDuration = 'foo';
    o.steps = buildUnnamed141();
  }
  buildCounterVideoAdSequenceSettings--;
  return o;
}

void checkVideoAdSequenceSettings(api.VideoAdSequenceSettings o) {
  buildCounterVideoAdSequenceSettings++;
  if (buildCounterVideoAdSequenceSettings < 3) {
    unittest.expect(o.minimumDuration!, unittest.equals('foo'));
    checkUnnamed141(o.steps!);
  }
  buildCounterVideoAdSequenceSettings--;
}

core.int buildCounterVideoAdSequenceStep = 0;
api.VideoAdSequenceStep buildVideoAdSequenceStep() {
  final o = api.VideoAdSequenceStep();
  buildCounterVideoAdSequenceStep++;
  if (buildCounterVideoAdSequenceStep < 3) {
    o.adGroupId = 'foo';
    o.interactionType = 'foo';
    o.previousStepId = 'foo';
    o.stepId = 'foo';
  }
  buildCounterVideoAdSequenceStep--;
  return o;
}

void checkVideoAdSequenceStep(api.VideoAdSequenceStep o) {
  buildCounterVideoAdSequenceStep++;
  if (buildCounterVideoAdSequenceStep < 3) {
    unittest.expect(o.adGroupId!, unittest.equals('foo'));
    unittest.expect(o.interactionType!, unittest.equals('foo'));
    unittest.expect(o.previousStepId!, unittest.equals('foo'));
    unittest.expect(o.stepId!, unittest.equals('foo'));
  }
  buildCounterVideoAdSequenceStep--;
}

core.int buildCounterVideoDiscoveryAd = 0;
api.VideoDiscoveryAd buildVideoDiscoveryAd() {
  final o = api.VideoDiscoveryAd();
  buildCounterVideoDiscoveryAd++;
  if (buildCounterVideoDiscoveryAd < 3) {
    o.description1 = 'foo';
    o.description2 = 'foo';
    o.headline = 'foo';
    o.thumbnail = 'foo';
    o.video = buildYoutubeVideoDetails();
  }
  buildCounterVideoDiscoveryAd--;
  return o;
}

void checkVideoDiscoveryAd(api.VideoDiscoveryAd o) {
  buildCounterVideoDiscoveryAd++;
  if (buildCounterVideoDiscoveryAd < 3) {
    unittest.expect(o.description1!, unittest.equals('foo'));
    unittest.expect(o.description2!, unittest.equals('foo'));
    unittest.expect(o.headline!, unittest.equals('foo'));
    unittest.expect(o.thumbnail!, unittest.equals('foo'));
    checkYoutubeVideoDetails(o.video!);
  }
  buildCounterVideoDiscoveryAd--;
}

core.List<core.String> buildUnnamed142() => ['foo', 'foo'];

void checkUnnamed142(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ImageAsset> buildUnnamed143() => [
  buildImageAsset(),
  buildImageAsset(),
];

void checkUnnamed143(core.List<api.ImageAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageAsset(o[0]);
  checkImageAsset(o[1]);
}

core.Map<core.String, core.String> buildUnnamed144() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed144(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed145() => ['foo', 'foo'];

void checkUnnamed145(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed146() => ['foo', 'foo'];

void checkUnnamed146(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed147() => ['foo', 'foo'];

void checkUnnamed147(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.YoutubeVideoDetails> buildUnnamed148() => [
  buildYoutubeVideoDetails(),
  buildYoutubeVideoDetails(),
];

void checkUnnamed148(core.List<api.YoutubeVideoDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYoutubeVideoDetails(o[0]);
  checkYoutubeVideoDetails(o[1]);
}

core.int buildCounterVideoPerformanceAd = 0;
api.VideoPerformanceAd buildVideoPerformanceAd() {
  final o = api.VideoPerformanceAd();
  buildCounterVideoPerformanceAd++;
  if (buildCounterVideoPerformanceAd < 3) {
    o.actionButtonLabels = buildUnnamed142();
    o.companionBanners = buildUnnamed143();
    o.customParameters = buildUnnamed144();
    o.descriptions = buildUnnamed145();
    o.displayUrlBreadcrumb1 = 'foo';
    o.displayUrlBreadcrumb2 = 'foo';
    o.domain = 'foo';
    o.finalUrl = 'foo';
    o.headlines = buildUnnamed146();
    o.longHeadlines = buildUnnamed147();
    o.trackingUrl = 'foo';
    o.videos = buildUnnamed148();
  }
  buildCounterVideoPerformanceAd--;
  return o;
}

void checkVideoPerformanceAd(api.VideoPerformanceAd o) {
  buildCounterVideoPerformanceAd++;
  if (buildCounterVideoPerformanceAd < 3) {
    checkUnnamed142(o.actionButtonLabels!);
    checkUnnamed143(o.companionBanners!);
    checkUnnamed144(o.customParameters!);
    checkUnnamed145(o.descriptions!);
    unittest.expect(o.displayUrlBreadcrumb1!, unittest.equals('foo'));
    unittest.expect(o.displayUrlBreadcrumb2!, unittest.equals('foo'));
    unittest.expect(o.domain!, unittest.equals('foo'));
    unittest.expect(o.finalUrl!, unittest.equals('foo'));
    checkUnnamed146(o.headlines!);
    checkUnnamed147(o.longHeadlines!);
    unittest.expect(o.trackingUrl!, unittest.equals('foo'));
    checkUnnamed148(o.videos!);
  }
  buildCounterVideoPerformanceAd--;
}

core.int buildCounterVideoPlayerSizeAssignedTargetingOptionDetails = 0;
api.VideoPlayerSizeAssignedTargetingOptionDetails
buildVideoPlayerSizeAssignedTargetingOptionDetails() {
  final o = api.VideoPlayerSizeAssignedTargetingOptionDetails();
  buildCounterVideoPlayerSizeAssignedTargetingOptionDetails++;
  if (buildCounterVideoPlayerSizeAssignedTargetingOptionDetails < 3) {
    o.videoPlayerSize = 'foo';
  }
  buildCounterVideoPlayerSizeAssignedTargetingOptionDetails--;
  return o;
}

void checkVideoPlayerSizeAssignedTargetingOptionDetails(
  api.VideoPlayerSizeAssignedTargetingOptionDetails o,
) {
  buildCounterVideoPlayerSizeAssignedTargetingOptionDetails++;
  if (buildCounterVideoPlayerSizeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.videoPlayerSize!, unittest.equals('foo'));
  }
  buildCounterVideoPlayerSizeAssignedTargetingOptionDetails--;
}

core.int buildCounterVideoPlayerSizeTargetingOptionDetails = 0;
api.VideoPlayerSizeTargetingOptionDetails
buildVideoPlayerSizeTargetingOptionDetails() {
  final o = api.VideoPlayerSizeTargetingOptionDetails();
  buildCounterVideoPlayerSizeTargetingOptionDetails++;
  if (buildCounterVideoPlayerSizeTargetingOptionDetails < 3) {
    o.videoPlayerSize = 'foo';
  }
  buildCounterVideoPlayerSizeTargetingOptionDetails--;
  return o;
}

void checkVideoPlayerSizeTargetingOptionDetails(
  api.VideoPlayerSizeTargetingOptionDetails o,
) {
  buildCounterVideoPlayerSizeTargetingOptionDetails++;
  if (buildCounterVideoPlayerSizeTargetingOptionDetails < 3) {
    unittest.expect(o.videoPlayerSize!, unittest.equals('foo'));
  }
  buildCounterVideoPlayerSizeTargetingOptionDetails--;
}

core.int buildCounterViewabilityAssignedTargetingOptionDetails = 0;
api.ViewabilityAssignedTargetingOptionDetails
buildViewabilityAssignedTargetingOptionDetails() {
  final o = api.ViewabilityAssignedTargetingOptionDetails();
  buildCounterViewabilityAssignedTargetingOptionDetails++;
  if (buildCounterViewabilityAssignedTargetingOptionDetails < 3) {
    o.viewability = 'foo';
  }
  buildCounterViewabilityAssignedTargetingOptionDetails--;
  return o;
}

void checkViewabilityAssignedTargetingOptionDetails(
  api.ViewabilityAssignedTargetingOptionDetails o,
) {
  buildCounterViewabilityAssignedTargetingOptionDetails++;
  if (buildCounterViewabilityAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.viewability!, unittest.equals('foo'));
  }
  buildCounterViewabilityAssignedTargetingOptionDetails--;
}

core.int buildCounterViewabilityTargetingOptionDetails = 0;
api.ViewabilityTargetingOptionDetails buildViewabilityTargetingOptionDetails() {
  final o = api.ViewabilityTargetingOptionDetails();
  buildCounterViewabilityTargetingOptionDetails++;
  if (buildCounterViewabilityTargetingOptionDetails < 3) {
    o.viewability = 'foo';
  }
  buildCounterViewabilityTargetingOptionDetails--;
  return o;
}

void checkViewabilityTargetingOptionDetails(
  api.ViewabilityTargetingOptionDetails o,
) {
  buildCounterViewabilityTargetingOptionDetails++;
  if (buildCounterViewabilityTargetingOptionDetails < 3) {
    unittest.expect(o.viewability!, unittest.equals('foo'));
  }
  buildCounterViewabilityTargetingOptionDetails--;
}

core.List<core.String> buildUnnamed149() => ['foo', 'foo'];

void checkUnnamed149(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterYoutubeAdGroup = 0;
api.YoutubeAdGroup buildYoutubeAdGroup() {
  final o = api.YoutubeAdGroup();
  buildCounterYoutubeAdGroup++;
  if (buildCounterYoutubeAdGroup < 3) {
    o.adGroupFormat = 'foo';
    o.adGroupId = 'foo';
    o.advertiserId = 'foo';
    o.biddingStrategy = buildYoutubeAndPartnersBiddingStrategy();
    o.displayName = 'foo';
    o.entityStatus = 'foo';
    o.lineItemId = 'foo';
    o.name = 'foo';
    o.productFeedData = buildProductFeedData();
    o.targetingExpansion = buildTargetingExpansionConfig();
    o.youtubeAdIds = buildUnnamed149();
  }
  buildCounterYoutubeAdGroup--;
  return o;
}

void checkYoutubeAdGroup(api.YoutubeAdGroup o) {
  buildCounterYoutubeAdGroup++;
  if (buildCounterYoutubeAdGroup < 3) {
    unittest.expect(o.adGroupFormat!, unittest.equals('foo'));
    unittest.expect(o.adGroupId!, unittest.equals('foo'));
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    checkYoutubeAndPartnersBiddingStrategy(o.biddingStrategy!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entityStatus!, unittest.equals('foo'));
    unittest.expect(o.lineItemId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkProductFeedData(o.productFeedData!);
    checkTargetingExpansionConfig(o.targetingExpansion!);
    checkUnnamed149(o.youtubeAdIds!);
  }
  buildCounterYoutubeAdGroup--;
}

core.List<api.AdUrl> buildUnnamed150() => [buildAdUrl(), buildAdUrl()];

void checkUnnamed150(core.List<api.AdUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdUrl(o[0]);
  checkAdUrl(o[1]);
}

core.int buildCounterYoutubeAdGroupAd = 0;
api.YoutubeAdGroupAd buildYoutubeAdGroupAd() {
  final o = api.YoutubeAdGroupAd();
  buildCounterYoutubeAdGroupAd++;
  if (buildCounterYoutubeAdGroupAd < 3) {
    o.adGroupAdId = 'foo';
    o.adGroupId = 'foo';
    o.adUrls = buildUnnamed150();
    o.advertiserId = 'foo';
    o.audioAd = buildAudioAd();
    o.bumperAd = buildBumperAd();
    o.displayName = 'foo';
    o.displayVideoSourceAd = buildDisplayVideoSourceAd();
    o.entityStatus = 'foo';
    o.inStreamAd = buildInStreamAd();
    o.mastheadAd = buildMastheadAd();
    o.name = 'foo';
    o.nonSkippableAd = buildNonSkippableAd();
    o.videoDiscoverAd = buildVideoDiscoveryAd();
    o.videoPerformanceAd = buildVideoPerformanceAd();
  }
  buildCounterYoutubeAdGroupAd--;
  return o;
}

void checkYoutubeAdGroupAd(api.YoutubeAdGroupAd o) {
  buildCounterYoutubeAdGroupAd++;
  if (buildCounterYoutubeAdGroupAd < 3) {
    unittest.expect(o.adGroupAdId!, unittest.equals('foo'));
    unittest.expect(o.adGroupId!, unittest.equals('foo'));
    checkUnnamed150(o.adUrls!);
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    checkAudioAd(o.audioAd!);
    checkBumperAd(o.bumperAd!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkDisplayVideoSourceAd(o.displayVideoSourceAd!);
    unittest.expect(o.entityStatus!, unittest.equals('foo'));
    checkInStreamAd(o.inStreamAd!);
    checkMastheadAd(o.mastheadAd!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNonSkippableAd(o.nonSkippableAd!);
    checkVideoDiscoveryAd(o.videoDiscoverAd!);
    checkVideoPerformanceAd(o.videoPerformanceAd!);
  }
  buildCounterYoutubeAdGroupAd--;
}

core.int buildCounterYoutubeAdGroupAssignedTargetingOption = 0;
api.YoutubeAdGroupAssignedTargetingOption
buildYoutubeAdGroupAssignedTargetingOption() {
  final o = api.YoutubeAdGroupAssignedTargetingOption();
  buildCounterYoutubeAdGroupAssignedTargetingOption++;
  if (buildCounterYoutubeAdGroupAssignedTargetingOption < 3) {
    o.assignedTargetingOption = buildAssignedTargetingOption();
    o.youtubeAdGroupId = 'foo';
  }
  buildCounterYoutubeAdGroupAssignedTargetingOption--;
  return o;
}

void checkYoutubeAdGroupAssignedTargetingOption(
  api.YoutubeAdGroupAssignedTargetingOption o,
) {
  buildCounterYoutubeAdGroupAssignedTargetingOption++;
  if (buildCounterYoutubeAdGroupAssignedTargetingOption < 3) {
    checkAssignedTargetingOption(o.assignedTargetingOption!);
    unittest.expect(o.youtubeAdGroupId!, unittest.equals('foo'));
  }
  buildCounterYoutubeAdGroupAssignedTargetingOption--;
}

core.int buildCounterYoutubeAndPartnersBiddingStrategy = 0;
api.YoutubeAndPartnersBiddingStrategy buildYoutubeAndPartnersBiddingStrategy() {
  final o = api.YoutubeAndPartnersBiddingStrategy();
  buildCounterYoutubeAndPartnersBiddingStrategy++;
  if (buildCounterYoutubeAndPartnersBiddingStrategy < 3) {
    o.adGroupEffectiveTargetCpaSource = 'foo';
    o.adGroupEffectiveTargetCpaValue = 'foo';
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterYoutubeAndPartnersBiddingStrategy--;
  return o;
}

void checkYoutubeAndPartnersBiddingStrategy(
  api.YoutubeAndPartnersBiddingStrategy o,
) {
  buildCounterYoutubeAndPartnersBiddingStrategy++;
  if (buildCounterYoutubeAndPartnersBiddingStrategy < 3) {
    unittest.expect(o.adGroupEffectiveTargetCpaSource!, unittest.equals('foo'));
    unittest.expect(o.adGroupEffectiveTargetCpaValue!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterYoutubeAndPartnersBiddingStrategy--;
}

core.int buildCounterYoutubeAndPartnersInventorySourceConfig = 0;
api.YoutubeAndPartnersInventorySourceConfig
buildYoutubeAndPartnersInventorySourceConfig() {
  final o = api.YoutubeAndPartnersInventorySourceConfig();
  buildCounterYoutubeAndPartnersInventorySourceConfig++;
  if (buildCounterYoutubeAndPartnersInventorySourceConfig < 3) {
    o.includeGoogleTv = true;
    o.includeYoutubeSearch = true;
    o.includeYoutubeVideoPartners = true;
    o.includeYoutubeVideos = true;
  }
  buildCounterYoutubeAndPartnersInventorySourceConfig--;
  return o;
}

void checkYoutubeAndPartnersInventorySourceConfig(
  api.YoutubeAndPartnersInventorySourceConfig o,
) {
  buildCounterYoutubeAndPartnersInventorySourceConfig++;
  if (buildCounterYoutubeAndPartnersInventorySourceConfig < 3) {
    unittest.expect(o.includeGoogleTv!, unittest.isTrue);
    unittest.expect(o.includeYoutubeSearch!, unittest.isTrue);
    unittest.expect(o.includeYoutubeVideoPartners!, unittest.isTrue);
    unittest.expect(o.includeYoutubeVideos!, unittest.isTrue);
  }
  buildCounterYoutubeAndPartnersInventorySourceConfig--;
}

core.List<core.String> buildUnnamed151() => ['foo', 'foo'];

void checkUnnamed151(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterYoutubeAndPartnersSettings = 0;
api.YoutubeAndPartnersSettings buildYoutubeAndPartnersSettings() {
  final o = api.YoutubeAndPartnersSettings();
  buildCounterYoutubeAndPartnersSettings++;
  if (buildCounterYoutubeAndPartnersSettings < 3) {
    o.biddingStrategy = buildYoutubeAndPartnersBiddingStrategy();
    o.contentCategory = 'foo';
    o.effectiveContentCategory = 'foo';
    o.inventorySourceSettings = buildYoutubeAndPartnersInventorySourceConfig();
    o.leadFormId = 'foo';
    o.linkedMerchantId = 'foo';
    o.relatedVideoIds = buildUnnamed151();
    o.targetFrequency = buildTargetFrequency();
    o.thirdPartyMeasurementSettings =
        buildYoutubeAndPartnersThirdPartyMeasurementSettings();
    o.videoAdInventoryControl = buildVideoAdInventoryControl();
    o.videoAdSequenceSettings = buildVideoAdSequenceSettings();
    o.viewFrequencyCap = buildFrequencyCap();
  }
  buildCounterYoutubeAndPartnersSettings--;
  return o;
}

void checkYoutubeAndPartnersSettings(api.YoutubeAndPartnersSettings o) {
  buildCounterYoutubeAndPartnersSettings++;
  if (buildCounterYoutubeAndPartnersSettings < 3) {
    checkYoutubeAndPartnersBiddingStrategy(o.biddingStrategy!);
    unittest.expect(o.contentCategory!, unittest.equals('foo'));
    unittest.expect(o.effectiveContentCategory!, unittest.equals('foo'));
    checkYoutubeAndPartnersInventorySourceConfig(o.inventorySourceSettings!);
    unittest.expect(o.leadFormId!, unittest.equals('foo'));
    unittest.expect(o.linkedMerchantId!, unittest.equals('foo'));
    checkUnnamed151(o.relatedVideoIds!);
    checkTargetFrequency(o.targetFrequency!);
    checkYoutubeAndPartnersThirdPartyMeasurementSettings(
      o.thirdPartyMeasurementSettings!,
    );
    checkVideoAdInventoryControl(o.videoAdInventoryControl!);
    checkVideoAdSequenceSettings(o.videoAdSequenceSettings!);
    checkFrequencyCap(o.viewFrequencyCap!);
  }
  buildCounterYoutubeAndPartnersSettings--;
}

core.List<api.ThirdPartyVendorConfig> buildUnnamed152() => [
  buildThirdPartyVendorConfig(),
  buildThirdPartyVendorConfig(),
];

void checkUnnamed152(core.List<api.ThirdPartyVendorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThirdPartyVendorConfig(o[0]);
  checkThirdPartyVendorConfig(o[1]);
}

core.List<api.ThirdPartyVendorConfig> buildUnnamed153() => [
  buildThirdPartyVendorConfig(),
  buildThirdPartyVendorConfig(),
];

void checkUnnamed153(core.List<api.ThirdPartyVendorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThirdPartyVendorConfig(o[0]);
  checkThirdPartyVendorConfig(o[1]);
}

core.List<api.ThirdPartyVendorConfig> buildUnnamed154() => [
  buildThirdPartyVendorConfig(),
  buildThirdPartyVendorConfig(),
];

void checkUnnamed154(core.List<api.ThirdPartyVendorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThirdPartyVendorConfig(o[0]);
  checkThirdPartyVendorConfig(o[1]);
}

core.List<api.ThirdPartyVendorConfig> buildUnnamed155() => [
  buildThirdPartyVendorConfig(),
  buildThirdPartyVendorConfig(),
];

void checkUnnamed155(core.List<api.ThirdPartyVendorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThirdPartyVendorConfig(o[0]);
  checkThirdPartyVendorConfig(o[1]);
}

core.int buildCounterYoutubeAndPartnersThirdPartyMeasurementSettings = 0;
api.YoutubeAndPartnersThirdPartyMeasurementSettings
buildYoutubeAndPartnersThirdPartyMeasurementSettings() {
  final o = api.YoutubeAndPartnersThirdPartyMeasurementSettings();
  buildCounterYoutubeAndPartnersThirdPartyMeasurementSettings++;
  if (buildCounterYoutubeAndPartnersThirdPartyMeasurementSettings < 3) {
    o.brandLiftVendorConfigs = buildUnnamed152();
    o.brandSafetyVendorConfigs = buildUnnamed153();
    o.reachVendorConfigs = buildUnnamed154();
    o.viewabilityVendorConfigs = buildUnnamed155();
  }
  buildCounterYoutubeAndPartnersThirdPartyMeasurementSettings--;
  return o;
}

void checkYoutubeAndPartnersThirdPartyMeasurementSettings(
  api.YoutubeAndPartnersThirdPartyMeasurementSettings o,
) {
  buildCounterYoutubeAndPartnersThirdPartyMeasurementSettings++;
  if (buildCounterYoutubeAndPartnersThirdPartyMeasurementSettings < 3) {
    checkUnnamed152(o.brandLiftVendorConfigs!);
    checkUnnamed153(o.brandSafetyVendorConfigs!);
    checkUnnamed154(o.reachVendorConfigs!);
    checkUnnamed155(o.viewabilityVendorConfigs!);
  }
  buildCounterYoutubeAndPartnersThirdPartyMeasurementSettings--;
}

core.int buildCounterYoutubeChannelAssignedTargetingOptionDetails = 0;
api.YoutubeChannelAssignedTargetingOptionDetails
buildYoutubeChannelAssignedTargetingOptionDetails() {
  final o = api.YoutubeChannelAssignedTargetingOptionDetails();
  buildCounterYoutubeChannelAssignedTargetingOptionDetails++;
  if (buildCounterYoutubeChannelAssignedTargetingOptionDetails < 3) {
    o.channelId = 'foo';
    o.negative = true;
  }
  buildCounterYoutubeChannelAssignedTargetingOptionDetails--;
  return o;
}

void checkYoutubeChannelAssignedTargetingOptionDetails(
  api.YoutubeChannelAssignedTargetingOptionDetails o,
) {
  buildCounterYoutubeChannelAssignedTargetingOptionDetails++;
  if (buildCounterYoutubeChannelAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.channelId!, unittest.equals('foo'));
    unittest.expect(o.negative!, unittest.isTrue);
  }
  buildCounterYoutubeChannelAssignedTargetingOptionDetails--;
}

core.int buildCounterYoutubeVideoAssignedTargetingOptionDetails = 0;
api.YoutubeVideoAssignedTargetingOptionDetails
buildYoutubeVideoAssignedTargetingOptionDetails() {
  final o = api.YoutubeVideoAssignedTargetingOptionDetails();
  buildCounterYoutubeVideoAssignedTargetingOptionDetails++;
  if (buildCounterYoutubeVideoAssignedTargetingOptionDetails < 3) {
    o.negative = true;
    o.videoId = 'foo';
  }
  buildCounterYoutubeVideoAssignedTargetingOptionDetails--;
  return o;
}

void checkYoutubeVideoAssignedTargetingOptionDetails(
  api.YoutubeVideoAssignedTargetingOptionDetails o,
) {
  buildCounterYoutubeVideoAssignedTargetingOptionDetails++;
  if (buildCounterYoutubeVideoAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.negative!, unittest.isTrue);
    unittest.expect(o.videoId!, unittest.equals('foo'));
  }
  buildCounterYoutubeVideoAssignedTargetingOptionDetails--;
}

core.int buildCounterYoutubeVideoDetails = 0;
api.YoutubeVideoDetails buildYoutubeVideoDetails() {
  final o = api.YoutubeVideoDetails();
  buildCounterYoutubeVideoDetails++;
  if (buildCounterYoutubeVideoDetails < 3) {
    o.id = 'foo';
    o.unavailableReason = 'foo';
  }
  buildCounterYoutubeVideoDetails--;
  return o;
}

void checkYoutubeVideoDetails(api.YoutubeVideoDetails o) {
  buildCounterYoutubeVideoDetails++;
  if (buildCounterYoutubeVideoDetails < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.unavailableReason!, unittest.equals('foo'));
  }
  buildCounterYoutubeVideoDetails--;
}

core.List<core.String> buildUnnamed156() => ['foo', 'foo'];

void checkUnnamed156(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed157() => ['foo', 'foo'];

void checkUnnamed157(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-ActivateManualTriggerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivateManualTriggerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivateManualTriggerRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivateManualTriggerRequest(od);
    });
  });

  unittest.group('obj-schema-ActiveViewVideoViewabilityMetricConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActiveViewVideoViewabilityMetricConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActiveViewVideoViewabilityMetricConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActiveViewVideoViewabilityMetricConfig(od);
    });
  });

  unittest.group('obj-schema-AdUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdUrl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdUrl(od);
    });
  });

  unittest.group('obj-schema-Adloox', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdloox();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Adloox.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdloox(od);
    });
  });

  unittest.group('obj-schema-Advertiser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertiser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Advertiser.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvertiser(od);
    });
  });

  unittest.group('obj-schema-AdvertiserAdServerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertiserAdServerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvertiserAdServerConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvertiserAdServerConfig(od);
    });
  });

  unittest.group('obj-schema-AdvertiserCreativeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertiserCreativeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvertiserCreativeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvertiserCreativeConfig(od);
    });
  });

  unittest.group('obj-schema-AdvertiserDataAccessConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertiserDataAccessConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvertiserDataAccessConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvertiserDataAccessConfig(od);
    });
  });

  unittest.group('obj-schema-AdvertiserGeneralConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertiserGeneralConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvertiserGeneralConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvertiserGeneralConfig(od);
    });
  });

  unittest.group('obj-schema-AdvertiserSdfConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertiserSdfConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvertiserSdfConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvertiserSdfConfig(od);
    });
  });

  unittest.group('obj-schema-AdvertiserTargetingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertiserTargetingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvertiserTargetingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvertiserTargetingConfig(od);
    });
  });

  unittest.group('obj-schema-AgeRangeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgeRangeAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgeRangeAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgeRangeAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-AgeRangeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgeRangeTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgeRangeTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgeRangeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-AppAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-AppCategoryAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppCategoryAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppCategoryAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppCategoryAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-AppCategoryTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppCategoryTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppCategoryTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppCategoryTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-Asset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Asset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAsset(od);
    });
  });

  unittest.group('obj-schema-AssetAssociation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetAssociation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetAssociation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetAssociation(od);
    });
  });

  unittest.group('obj-schema-AssignedInventorySource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignedInventorySource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssignedInventorySource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssignedInventorySource(od);
    });
  });

  unittest.group('obj-schema-AssignedLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignedLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssignedLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssignedLocation(od);
    });
  });

  unittest.group('obj-schema-AssignedTargetingOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignedTargetingOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssignedTargetingOption.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssignedTargetingOption(od);
    });
  });

  unittest.group('obj-schema-AssignedUserRole', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignedUserRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssignedUserRole.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssignedUserRole(od);
    });
  });

  unittest.group('obj-schema-AudienceGroupAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudienceGroupAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudienceGroupAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAudienceGroupAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-AudioAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudioAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudioAd.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAudioAd(od);
    });
  });

  unittest.group(
    'obj-schema-AudioContentTypeAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAudioContentTypeAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.AudioContentTypeAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAudioContentTypeAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-AudioContentTypeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudioContentTypeTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudioContentTypeTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAudioContentTypeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-AudioVideoOffset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudioVideoOffset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudioVideoOffset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAudioVideoOffset(od);
    });
  });

  unittest.group('obj-schema-AuditAdvertiserResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditAdvertiserResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditAdvertiserResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditAdvertiserResponse(od);
    });
  });

  unittest.group(
    'obj-schema-AuthorizedSellerStatusAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAuthorizedSellerStatusAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .AuthorizedSellerStatusAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAuthorizedSellerStatusAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-AuthorizedSellerStatusTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizedSellerStatusTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizedSellerStatusTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthorizedSellerStatusTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-BiddingStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBiddingStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BiddingStrategy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBiddingStrategy(od);
    });
  });

  unittest.group('obj-schema-BrowserAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBrowserAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BrowserAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBrowserAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-BrowserTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBrowserTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BrowserTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBrowserTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-BudgetSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBudgetSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BudgetSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBudgetSummary(od);
    });
  });

  unittest.group(
    'obj-schema-BulkEditAdvertiserAssignedTargetingOptionsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildBulkEditAdvertiserAssignedTargetingOptionsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .BulkEditAdvertiserAssignedTargetingOptionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkBulkEditAdvertiserAssignedTargetingOptionsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-BulkEditAdvertiserAssignedTargetingOptionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildBulkEditAdvertiserAssignedTargetingOptionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .BulkEditAdvertiserAssignedTargetingOptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkBulkEditAdvertiserAssignedTargetingOptionsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-BulkEditAssignedInventorySourcesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkEditAssignedInventorySourcesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkEditAssignedInventorySourcesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkEditAssignedInventorySourcesRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedInventorySourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkEditAssignedInventorySourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkEditAssignedInventorySourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkEditAssignedInventorySourcesResponse(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedLocationsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkEditAssignedLocationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkEditAssignedLocationsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkEditAssignedLocationsRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkEditAssignedLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkEditAssignedLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkEditAssignedLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedTargetingOptionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkEditAssignedTargetingOptionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkEditAssignedTargetingOptionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkEditAssignedTargetingOptionsRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkEditAssignedTargetingOptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkEditAssignedTargetingOptionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkEditAssignedTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedUserRolesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkEditAssignedUserRolesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkEditAssignedUserRolesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkEditAssignedUserRolesRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedUserRolesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkEditAssignedUserRolesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkEditAssignedUserRolesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkEditAssignedUserRolesResponse(od);
    });
  });

  unittest.group('obj-schema-BulkEditNegativeKeywordsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkEditNegativeKeywordsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkEditNegativeKeywordsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkEditNegativeKeywordsRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditNegativeKeywordsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkEditNegativeKeywordsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkEditNegativeKeywordsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkEditNegativeKeywordsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-BulkEditPartnerAssignedTargetingOptionsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildBulkEditPartnerAssignedTargetingOptionsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.BulkEditPartnerAssignedTargetingOptionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkBulkEditPartnerAssignedTargetingOptionsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-BulkEditPartnerAssignedTargetingOptionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildBulkEditPartnerAssignedTargetingOptionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.BulkEditPartnerAssignedTargetingOptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkBulkEditPartnerAssignedTargetingOptionsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-BulkEditSitesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkEditSitesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkEditSitesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkEditSitesRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditSitesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkEditSitesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkEditSitesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkEditSitesResponse(od);
    });
  });

  unittest.group(
    'obj-schema-BulkListAdGroupAssignedTargetingOptionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildBulkListAdGroupAssignedTargetingOptionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.BulkListAdGroupAssignedTargetingOptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkBulkListAdGroupAssignedTargetingOptionsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-BulkListAdvertiserAssignedTargetingOptionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildBulkListAdvertiserAssignedTargetingOptionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .BulkListAdvertiserAssignedTargetingOptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkBulkListAdvertiserAssignedTargetingOptionsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-BulkListAssignedTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkListAssignedTargetingOptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkListAssignedTargetingOptionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkListAssignedTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-BulkUpdateLineItemsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkUpdateLineItemsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkUpdateLineItemsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkUpdateLineItemsRequest(od);
    });
  });

  unittest.group('obj-schema-BulkUpdateLineItemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulkUpdateLineItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulkUpdateLineItemsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulkUpdateLineItemsResponse(od);
    });
  });

  unittest.group('obj-schema-BumperAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBumperAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BumperAd.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBumperAd(od);
    });
  });

  unittest.group('obj-schema-BusinessChainAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBusinessChainAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BusinessChainAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBusinessChainAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-BusinessChainSearchTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBusinessChainSearchTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BusinessChainSearchTerms.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBusinessChainSearchTerms(od);
    });
  });

  unittest.group('obj-schema-BusinessChainTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBusinessChainTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BusinessChainTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBusinessChainTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-Campaign', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCampaign();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Campaign.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCampaign(od);
    });
  });

  unittest.group('obj-schema-CampaignBudget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCampaignBudget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CampaignBudget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCampaignBudget(od);
    });
  });

  unittest.group('obj-schema-CampaignFlight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCampaignFlight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CampaignFlight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCampaignFlight(od);
    });
  });

  unittest.group('obj-schema-CampaignGoal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCampaignGoal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CampaignGoal.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCampaignGoal(od);
    });
  });

  unittest.group('obj-schema-CarrierAndIspAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCarrierAndIspAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CarrierAndIspAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCarrierAndIspAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-CarrierAndIspTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCarrierAndIspTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CarrierAndIspTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCarrierAndIspTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-CategoryAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategoryAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CategoryAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCategoryAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-CategoryTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategoryTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CategoryTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCategoryTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Channel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-ChannelAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChannelAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-CmHybridConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCmHybridConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CmHybridConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCmHybridConfig(od);
    });
  });

  unittest.group('obj-schema-CmTrackingAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCmTrackingAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CmTrackingAd.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCmTrackingAd(od);
    });
  });

  unittest.group('obj-schema-CombinedAudience', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCombinedAudience();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CombinedAudience.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCombinedAudience(od);
    });
  });

  unittest.group('obj-schema-CombinedAudienceGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCombinedAudienceGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CombinedAudienceGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCombinedAudienceGroup(od);
    });
  });

  unittest.group('obj-schema-CombinedAudienceTargetingSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCombinedAudienceTargetingSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CombinedAudienceTargetingSetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCombinedAudienceTargetingSetting(od);
    });
  });

  unittest.group('obj-schema-CommonInStreamAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommonInStreamAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommonInStreamAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommonInStreamAttribute(od);
    });
  });

  unittest.group(
    'obj-schema-ContentDurationAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildContentDurationAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ContentDurationAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkContentDurationAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-ContentDurationTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentDurationTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentDurationTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContentDurationTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ContentGenreAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentGenreAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentGenreAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContentGenreAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ContentGenreTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentGenreTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentGenreTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContentGenreTargetingOptionDetails(od);
    });
  });

  unittest.group(
    'obj-schema-ContentInstreamPositionAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildContentInstreamPositionAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .ContentInstreamPositionAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkContentInstreamPositionAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group(
    'obj-schema-ContentInstreamPositionTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildContentInstreamPositionTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ContentInstreamPositionTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkContentInstreamPositionTargetingOptionDetails(od);
      });
    },
  );

  unittest.group(
    'obj-schema-ContentOutstreamPositionAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildContentOutstreamPositionAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .ContentOutstreamPositionAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkContentOutstreamPositionAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group(
    'obj-schema-ContentOutstreamPositionTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildContentOutstreamPositionTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ContentOutstreamPositionTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkContentOutstreamPositionTargetingOptionDetails(od);
      });
    },
  );

  unittest.group(
    'obj-schema-ContentStreamTypeAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildContentStreamTypeAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ContentStreamTypeAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkContentStreamTypeAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-ContentStreamTypeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentStreamTypeTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentStreamTypeTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContentStreamTypeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ConversionCountingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionCountingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionCountingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConversionCountingConfig(od);
    });
  });

  unittest.group('obj-schema-CounterEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCounterEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CounterEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCounterEvent(od);
    });
  });

  unittest.group('obj-schema-CreateAssetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateAssetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateAssetRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateAssetRequest(od);
    });
  });

  unittest.group('obj-schema-CreateAssetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateAssetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateAssetResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateAssetResponse(od);
    });
  });

  unittest.group('obj-schema-CreateAssignedTargetingOptionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateAssignedTargetingOptionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateAssignedTargetingOptionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateAssignedTargetingOptionsRequest(od);
    });
  });

  unittest.group('obj-schema-CreateSdfDownloadTaskRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateSdfDownloadTaskRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateSdfDownloadTaskRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateSdfDownloadTaskRequest(od);
    });
  });

  unittest.group('obj-schema-Creative', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreative();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Creative.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreative(od);
    });
  });

  unittest.group('obj-schema-CreativeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreativeConfig(od);
    });
  });

  unittest.group('obj-schema-CustomBiddingAlgorithm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomBiddingAlgorithm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomBiddingAlgorithm.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomBiddingAlgorithm(od);
    });
  });

  unittest.group('obj-schema-CustomBiddingModelDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomBiddingModelDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomBiddingModelDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomBiddingModelDetails(od);
    });
  });

  unittest.group('obj-schema-CustomBiddingScript', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomBiddingScript();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomBiddingScript.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomBiddingScript(od);
    });
  });

  unittest.group('obj-schema-CustomBiddingScriptRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomBiddingScriptRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomBiddingScriptRef.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomBiddingScriptRef(od);
    });
  });

  unittest.group('obj-schema-CustomLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomLabel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomLabel(od);
    });
  });

  unittest.group('obj-schema-CustomList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomList(od);
    });
  });

  unittest.group('obj-schema-CustomListGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomListGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomListGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomListGroup(od);
    });
  });

  unittest.group('obj-schema-CustomListTargetingSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomListTargetingSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomListTargetingSetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomListTargetingSetting(od);
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

  unittest.group('obj-schema-DateRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDateRange(od);
    });
  });

  unittest.group('obj-schema-DayAndTimeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDayAndTimeAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DayAndTimeAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDayAndTimeAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-DeactivateManualTriggerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeactivateManualTriggerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeactivateManualTriggerRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeactivateManualTriggerRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteAssignedTargetingOptionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteAssignedTargetingOptionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteAssignedTargetingOptionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteAssignedTargetingOptionsRequest(od);
    });
  });

  unittest.group(
    'obj-schema-DeviceMakeModelAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildDeviceMakeModelAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.DeviceMakeModelAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkDeviceMakeModelAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-DeviceMakeModelTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceMakeModelTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceMakeModelTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceMakeModelTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-DeviceTypeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceTypeAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceTypeAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceTypeAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-DeviceTypeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceTypeTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceTypeTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceTypeTargetingOptionDetails(od);
    });
  });

  unittest.group(
    'obj-schema-DigitalContentLabelAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildDigitalContentLabelAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .DigitalContentLabelAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkDigitalContentLabelAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-DigitalContentLabelTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDigitalContentLabelTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DigitalContentLabelTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDigitalContentLabelTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-Dimensions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Dimensions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDimensions(od);
    });
  });

  unittest.group('obj-schema-DisplayVideoSourceAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisplayVideoSourceAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisplayVideoSourceAd.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDisplayVideoSourceAd(od);
    });
  });

  unittest.group('obj-schema-DoubleVerify', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleVerify();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleVerify.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDoubleVerify(od);
    });
  });

  unittest.group('obj-schema-DoubleVerifyAppStarRating', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleVerifyAppStarRating();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleVerifyAppStarRating.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDoubleVerifyAppStarRating(od);
    });
  });

  unittest.group('obj-schema-DoubleVerifyBrandSafetyCategories', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleVerifyBrandSafetyCategories();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleVerifyBrandSafetyCategories.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDoubleVerifyBrandSafetyCategories(od);
    });
  });

  unittest.group('obj-schema-DoubleVerifyDisplayViewability', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleVerifyDisplayViewability();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleVerifyDisplayViewability.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDoubleVerifyDisplayViewability(od);
    });
  });

  unittest.group('obj-schema-DoubleVerifyFraudInvalidTraffic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleVerifyFraudInvalidTraffic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleVerifyFraudInvalidTraffic.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDoubleVerifyFraudInvalidTraffic(od);
    });
  });

  unittest.group('obj-schema-DoubleVerifyVideoViewability', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleVerifyVideoViewability();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleVerifyVideoViewability.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDoubleVerifyVideoViewability(od);
    });
  });

  unittest.group('obj-schema-DuplicateLineItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDuplicateLineItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DuplicateLineItemRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDuplicateLineItemRequest(od);
    });
  });

  unittest.group('obj-schema-DuplicateLineItemResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDuplicateLineItemResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DuplicateLineItemResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDuplicateLineItemResponse(od);
    });
  });

  unittest.group('obj-schema-EditGuaranteedOrderReadAccessorsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEditGuaranteedOrderReadAccessorsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EditGuaranteedOrderReadAccessorsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEditGuaranteedOrderReadAccessorsRequest(od);
    });
  });

  unittest.group('obj-schema-EditGuaranteedOrderReadAccessorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEditGuaranteedOrderReadAccessorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EditGuaranteedOrderReadAccessorsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEditGuaranteedOrderReadAccessorsResponse(od);
    });
  });

  unittest.group('obj-schema-EditInventorySourceReadWriteAccessorsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEditInventorySourceReadWriteAccessorsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EditInventorySourceReadWriteAccessorsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEditInventorySourceReadWriteAccessorsRequest(od);
    });
  });

  unittest.group(
    'obj-schema-EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkEditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate(od);
      });
    },
  );

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-EnvironmentAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironmentAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvironmentAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvironmentAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-EnvironmentTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironmentTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvironmentTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvironmentTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ExchangeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExchangeAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ExchangeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExchangeConfig(od);
    });
  });

  unittest.group('obj-schema-ExchangeConfigEnabledExchange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeConfigEnabledExchange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeConfigEnabledExchange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExchangeConfigEnabledExchange(od);
    });
  });

  unittest.group('obj-schema-ExchangeReviewStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeReviewStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeReviewStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExchangeReviewStatus(od);
    });
  });

  unittest.group('obj-schema-ExchangeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExchangeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ExitEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExitEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExitEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExitEvent(od);
    });
  });

  unittest.group('obj-schema-FixedBidStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFixedBidStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FixedBidStrategy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFixedBidStrategy(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloodlightActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloodlightActivity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFloodlightActivity(od);
    });
  });

  unittest.group('obj-schema-FloodlightGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloodlightGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloodlightGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFloodlightGroup(od);
    });
  });

  unittest.group('obj-schema-FrequencyCap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFrequencyCap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FrequencyCap.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFrequencyCap(od);
    });
  });

  unittest.group('obj-schema-GenderAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenderAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenderAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenderAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-GenderTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenderTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenderTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenderTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-GeoRegionAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeoRegionAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeoRegionAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGeoRegionAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-GeoRegionSearchTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeoRegionSearchTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeoRegionSearchTerms.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGeoRegionSearchTerms(od);
    });
  });

  unittest.group('obj-schema-GeoRegionTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeoRegionTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeoRegionTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGeoRegionTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleAudience', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAudience();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAudience.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAudience(od);
    });
  });

  unittest.group('obj-schema-GoogleAudienceGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAudienceGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAudienceGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAudienceGroup(od);
    });
  });

  unittest.group('obj-schema-GoogleAudienceTargetingSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAudienceTargetingSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAudienceTargetingSetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAudienceTargetingSetting(od);
    });
  });

  unittest.group('obj-schema-GoogleBytestreamMedia', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBytestreamMedia();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBytestreamMedia.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBytestreamMedia(od);
    });
  });

  unittest.group('obj-schema-GuaranteedOrder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuaranteedOrder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuaranteedOrder.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuaranteedOrder(od);
    });
  });

  unittest.group('obj-schema-GuaranteedOrderStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuaranteedOrderStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuaranteedOrderStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuaranteedOrderStatus(od);
    });
  });

  unittest.group(
    'obj-schema-HouseholdIncomeAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildHouseholdIncomeAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.HouseholdIncomeAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkHouseholdIncomeAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-HouseholdIncomeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHouseholdIncomeTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HouseholdIncomeTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHouseholdIncomeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-IdFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIdFilter(od);
    });
  });

  unittest.group('obj-schema-ImageAsset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageAsset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImageAsset(od);
    });
  });

  unittest.group('obj-schema-InStreamAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInStreamAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InStreamAd.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInStreamAd(od);
    });
  });

  unittest.group('obj-schema-InsertionOrder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertionOrder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertionOrder.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertionOrder(od);
    });
  });

  unittest.group('obj-schema-InsertionOrderBudget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertionOrderBudget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertionOrderBudget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertionOrderBudget(od);
    });
  });

  unittest.group('obj-schema-InsertionOrderBudgetSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertionOrderBudgetSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertionOrderBudgetSegment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertionOrderBudgetSegment(od);
    });
  });

  unittest.group('obj-schema-IntegralAdScience', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntegralAdScience();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntegralAdScience.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIntegralAdScience(od);
    });
  });

  unittest.group('obj-schema-IntegrationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntegrationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntegrationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIntegrationDetails(od);
    });
  });

  unittest.group('obj-schema-InventorySource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventorySource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventorySource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInventorySource(od);
    });
  });

  unittest.group('obj-schema-InventorySourceAccessors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventorySourceAccessors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventorySourceAccessors.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInventorySourceAccessors(od);
    });
  });

  unittest.group('obj-schema-InventorySourceAccessorsAdvertiserAccessors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventorySourceAccessorsAdvertiserAccessors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventorySourceAccessorsAdvertiserAccessors.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInventorySourceAccessorsAdvertiserAccessors(od);
    });
  });

  unittest.group('obj-schema-InventorySourceAccessorsPartnerAccessor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventorySourceAccessorsPartnerAccessor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventorySourceAccessorsPartnerAccessor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInventorySourceAccessorsPartnerAccessor(od);
    });
  });

  unittest.group(
    'obj-schema-InventorySourceAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildInventorySourceAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.InventorySourceAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkInventorySourceAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-InventorySourceDisplayCreativeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventorySourceDisplayCreativeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventorySourceDisplayCreativeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInventorySourceDisplayCreativeConfig(od);
    });
  });

  unittest.group('obj-schema-InventorySourceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventorySourceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventorySourceFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInventorySourceFilter(od);
    });
  });

  unittest.group('obj-schema-InventorySourceGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventorySourceGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventorySourceGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInventorySourceGroup(od);
    });
  });

  unittest.group(
    'obj-schema-InventorySourceGroupAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildInventorySourceGroupAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .InventorySourceGroupAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkInventorySourceGroupAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-InventorySourceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventorySourceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventorySourceStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInventorySourceStatus(od);
    });
  });

  unittest.group('obj-schema-InventorySourceVideoCreativeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventorySourceVideoCreativeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventorySourceVideoCreativeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInventorySourceVideoCreativeConfig(od);
    });
  });

  unittest.group('obj-schema-Invoice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInvoice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Invoice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInvoice(od);
    });
  });

  unittest.group('obj-schema-KeywordAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeywordAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeywordAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKeywordAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-LanguageAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguageAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LanguageAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLanguageAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-LanguageTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguageTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LanguageTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLanguageTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-LineItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLineItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LineItem.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLineItem(od);
    });
  });

  unittest.group('obj-schema-LineItemAssignedTargetingOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLineItemAssignedTargetingOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LineItemAssignedTargetingOption.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLineItemAssignedTargetingOption(od);
    });
  });

  unittest.group('obj-schema-LineItemBudget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLineItemBudget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LineItemBudget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLineItemBudget(od);
    });
  });

  unittest.group('obj-schema-LineItemFlight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLineItemFlight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LineItemFlight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLineItemFlight(od);
    });
  });

  unittest.group(
    'obj-schema-ListAdvertiserAssignedTargetingOptionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildListAdvertiserAssignedTargetingOptionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ListAdvertiserAssignedTargetingOptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListAdvertiserAssignedTargetingOptionsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-ListAdvertisersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAdvertisersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAdvertisersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAdvertisersResponse(od);
    });
  });

  unittest.group('obj-schema-ListAssignedInventorySourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAssignedInventorySourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAssignedInventorySourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAssignedInventorySourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAssignedLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAssignedLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAssignedLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAssignedLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCampaignsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCampaignsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCampaignsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCampaignsResponse(od);
    });
  });

  unittest.group('obj-schema-ListChannelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListChannelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListChannelsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListChannelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCombinedAudiencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCombinedAudiencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCombinedAudiencesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCombinedAudiencesResponse(od);
    });
  });

  unittest.group('obj-schema-ListCreativesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCreativesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCreativesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCreativesResponse(od);
    });
  });

  unittest.group('obj-schema-ListCustomBiddingAlgorithmsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCustomBiddingAlgorithmsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCustomBiddingAlgorithmsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCustomBiddingAlgorithmsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCustomBiddingScriptsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCustomBiddingScriptsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCustomBiddingScriptsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCustomBiddingScriptsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCustomListsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCustomListsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCustomListsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCustomListsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFloodlightActivitiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFloodlightActivitiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFloodlightActivitiesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListFloodlightActivitiesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGoogleAudiencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGoogleAudiencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGoogleAudiencesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGoogleAudiencesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGuaranteedOrdersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGuaranteedOrdersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGuaranteedOrdersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGuaranteedOrdersResponse(od);
    });
  });

  unittest.group('obj-schema-ListInsertionOrdersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInsertionOrdersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInsertionOrdersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListInsertionOrdersResponse(od);
    });
  });

  unittest.group('obj-schema-ListInventorySourceGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInventorySourceGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInventorySourceGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListInventorySourceGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListInventorySourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInventorySourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInventorySourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListInventorySourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListInvoicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInvoicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInvoicesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListInvoicesResponse(od);
    });
  });

  unittest.group('obj-schema-ListLineItemAssignedTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLineItemAssignedTargetingOptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLineItemAssignedTargetingOptionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLineItemAssignedTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLineItemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLineItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLineItemsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLineItemsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationListsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationListsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationListsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationListsResponse(od);
    });
  });

  unittest.group('obj-schema-ListManualTriggersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListManualTriggersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListManualTriggersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListManualTriggersResponse(od);
    });
  });

  unittest.group('obj-schema-ListNegativeKeywordListsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNegativeKeywordListsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNegativeKeywordListsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListNegativeKeywordListsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNegativeKeywordsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNegativeKeywordsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNegativeKeywordsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListNegativeKeywordsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPartnerAssignedTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPartnerAssignedTargetingOptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPartnerAssignedTargetingOptionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPartnerAssignedTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPartnersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPartnersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPartnersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPartnersResponse(od);
    });
  });

  unittest.group('obj-schema-ListSitesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSitesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSitesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSitesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTargetingOptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTargetingOptionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUsersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUsersResponse(od);
    });
  });

  unittest.group('obj-schema-ListYoutubeAdGroupAdsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListYoutubeAdGroupAdsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListYoutubeAdGroupAdsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListYoutubeAdGroupAdsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-ListYoutubeAdGroupAssignedTargetingOptionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildListYoutubeAdGroupAssignedTargetingOptionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .ListYoutubeAdGroupAssignedTargetingOptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListYoutubeAdGroupAssignedTargetingOptionsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-ListYoutubeAdGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListYoutubeAdGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListYoutubeAdGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListYoutubeAdGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-LocationList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocationList(od);
    });
  });

  unittest.group('obj-schema-LookbackWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookbackWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookbackWindow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLookbackWindow(od);
    });
  });

  unittest.group('obj-schema-LookupInvoiceCurrencyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupInvoiceCurrencyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupInvoiceCurrencyResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLookupInvoiceCurrencyResponse(od);
    });
  });

  unittest.group('obj-schema-ManualTrigger', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManualTrigger();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManualTrigger.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManualTrigger(od);
    });
  });

  unittest.group('obj-schema-MastheadAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMastheadAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MastheadAd.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMastheadAd(od);
    });
  });

  unittest.group('obj-schema-MaximizeSpendBidStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaximizeSpendBidStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaximizeSpendBidStrategy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMaximizeSpendBidStrategy(od);
    });
  });

  unittest.group('obj-schema-MeasurementConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMeasurementConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MeasurementConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMeasurementConfig(od);
    });
  });

  unittest.group('obj-schema-MobileApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileApp.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMobileApp(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Money.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoney(od);
    });
  });

  unittest.group(
    'obj-schema-NativeContentPositionAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildNativeContentPositionAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .NativeContentPositionAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkNativeContentPositionAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-NativeContentPositionTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNativeContentPositionTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NativeContentPositionTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNativeContentPositionTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-NegativeKeyword', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNegativeKeyword();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NegativeKeyword.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNegativeKeyword(od);
    });
  });

  unittest.group('obj-schema-NegativeKeywordList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNegativeKeywordList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NegativeKeywordList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNegativeKeywordList(od);
    });
  });

  unittest.group(
    'obj-schema-NegativeKeywordListAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildNegativeKeywordListAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .NegativeKeywordListAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkNegativeKeywordListAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-NonSkippableAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonSkippableAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonSkippableAd.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNonSkippableAd(od);
    });
  });

  unittest.group('obj-schema-ObaIcon', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObaIcon();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObaIcon.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObaIcon(od);
    });
  });

  unittest.group('obj-schema-OmidAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOmidAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OmidAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOmidAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-OmidTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOmidTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OmidTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOmidTargetingOptionDetails(od);
    });
  });

  unittest.group(
    'obj-schema-OnScreenPositionAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildOnScreenPositionAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.OnScreenPositionAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkOnScreenPositionAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-OnScreenPositionTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOnScreenPositionTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OnScreenPositionTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOnScreenPositionTargetingOptionDetails(od);
    });
  });

  unittest.group(
    'obj-schema-OperatingSystemAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildOperatingSystemAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.OperatingSystemAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkOperatingSystemAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-OperatingSystemTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperatingSystemTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperatingSystemTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperatingSystemTargetingOptionDetails(od);
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

  unittest.group('obj-schema-Pacing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPacing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Pacing.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPacing(od);
    });
  });

  unittest.group('obj-schema-ParentEntityFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParentEntityFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParentEntityFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParentEntityFilter(od);
    });
  });

  unittest.group('obj-schema-ParentalStatusAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParentalStatusAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParentalStatusAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParentalStatusAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ParentalStatusTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParentalStatusTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParentalStatusTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParentalStatusTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-Partner', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartner();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Partner.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartner(od);
    });
  });

  unittest.group('obj-schema-PartnerAdServerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerAdServerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerAdServerConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartnerAdServerConfig(od);
    });
  });

  unittest.group('obj-schema-PartnerCost', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerCost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerCost.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartnerCost(od);
    });
  });

  unittest.group('obj-schema-PartnerDataAccessConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerDataAccessConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerDataAccessConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartnerDataAccessConfig(od);
    });
  });

  unittest.group('obj-schema-PartnerGeneralConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerGeneralConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerGeneralConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartnerGeneralConfig(od);
    });
  });

  unittest.group('obj-schema-PartnerRevenueModel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerRevenueModel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerRevenueModel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartnerRevenueModel(od);
    });
  });

  unittest.group('obj-schema-PerformanceGoal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerformanceGoal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerformanceGoal.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPerformanceGoal(od);
    });
  });

  unittest.group('obj-schema-PerformanceGoalBidStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerformanceGoalBidStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerformanceGoalBidStrategy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPerformanceGoalBidStrategy(od);
    });
  });

  unittest.group('obj-schema-PoiAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPoiAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PoiAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPoiAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-PoiSearchTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPoiSearchTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PoiSearchTerms.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPoiSearchTerms(od);
    });
  });

  unittest.group('obj-schema-PoiTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPoiTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PoiTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPoiTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-PrismaConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrismaConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrismaConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrismaConfig(od);
    });
  });

  unittest.group('obj-schema-PrismaCpeCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrismaCpeCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrismaCpeCode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrismaCpeCode(od);
    });
  });

  unittest.group('obj-schema-ProductFeedData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductFeedData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductFeedData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductFeedData(od);
    });
  });

  unittest.group('obj-schema-ProductMatchDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductMatchDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductMatchDimension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductMatchDimension(od);
    });
  });

  unittest.group(
    'obj-schema-ProximityLocationListAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildProximityLocationListAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .ProximityLocationListAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkProximityLocationListAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-PublisherReviewStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublisherReviewStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublisherReviewStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPublisherReviewStatus(od);
    });
  });

  unittest.group('obj-schema-RateDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRateDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RateDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRateDetails(od);
    });
  });

  unittest.group(
    'obj-schema-RegionalLocationListAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildRegionalLocationListAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .RegionalLocationListAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkRegionalLocationListAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-RemarketingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemarketingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemarketingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemarketingConfig(od);
    });
  });

  unittest.group('obj-schema-ReplaceNegativeKeywordsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceNegativeKeywordsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceNegativeKeywordsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReplaceNegativeKeywordsRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceNegativeKeywordsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceNegativeKeywordsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceNegativeKeywordsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReplaceNegativeKeywordsResponse(od);
    });
  });

  unittest.group('obj-schema-ReplaceSitesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceSitesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceSitesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReplaceSitesRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceSitesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceSitesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceSitesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReplaceSitesResponse(od);
    });
  });

  unittest.group('obj-schema-ReviewStatusInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewStatusInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewStatusInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReviewStatusInfo(od);
    });
  });

  unittest.group('obj-schema-ScriptError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScriptError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScriptError.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScriptError(od);
    });
  });

  unittest.group('obj-schema-SdfConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSdfConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SdfConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSdfConfig(od);
    });
  });

  unittest.group('obj-schema-SearchTargetingOptionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchTargetingOptionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchTargetingOptionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchTargetingOptionsRequest(od);
    });
  });

  unittest.group('obj-schema-SearchTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchTargetingOptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchTargetingOptionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchTargetingOptionsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-SensitiveCategoryAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSensitiveCategoryAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.SensitiveCategoryAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSensitiveCategoryAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-SensitiveCategoryTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSensitiveCategoryTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SensitiveCategoryTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSensitiveCategoryTargetingOptionDetails(od);
    });
  });

  unittest.group(
    'obj-schema-SessionPositionAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSessionPositionAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.SessionPositionAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSessionPositionAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-Site', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Site.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSite(od);
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

  unittest.group('obj-schema-SubExchangeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubExchangeAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubExchangeAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubExchangeAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-SubExchangeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubExchangeTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubExchangeTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubExchangeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-TargetFrequency', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetFrequency();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetFrequency.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargetFrequency(od);
    });
  });

  unittest.group('obj-schema-TargetingExpansionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingExpansionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingExpansionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargetingExpansionConfig(od);
    });
  });

  unittest.group('obj-schema-TargetingOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingOption.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargetingOption(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyOnlyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThirdPartyOnlyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThirdPartyOnlyConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkThirdPartyOnlyConfig(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThirdPartyUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThirdPartyUrl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkThirdPartyUrl(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyVendorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThirdPartyVendorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThirdPartyVendorConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkThirdPartyVendorConfig(od);
    });
  });

  unittest.group(
    'obj-schema-ThirdPartyVerifierAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildThirdPartyVerifierAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .ThirdPartyVerifierAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkThirdPartyVerifierAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-TimeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeRange(od);
    });
  });

  unittest.group('obj-schema-TimerEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimerEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimerEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimerEvent(od);
    });
  });

  unittest.group('obj-schema-TrackingFloodlightActivityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrackingFloodlightActivityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrackingFloodlightActivityConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTrackingFloodlightActivityConfig(od);
    });
  });

  unittest.group('obj-schema-Transcode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranscode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Transcode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTranscode(od);
    });
  });

  unittest.group('obj-schema-UniversalAdId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUniversalAdId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UniversalAdId.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUniversalAdId(od);
    });
  });

  unittest.group('obj-schema-UrlAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUrlAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UrlAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUrlAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.User.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUser(od);
    });
  });

  unittest.group(
    'obj-schema-UserRewardedContentAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildUserRewardedContentAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .UserRewardedContentAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkUserRewardedContentAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-UserRewardedContentTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserRewardedContentTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserRewardedContentTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserRewardedContentTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-VideoAdInventoryControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoAdInventoryControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoAdInventoryControl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVideoAdInventoryControl(od);
    });
  });

  unittest.group('obj-schema-VideoAdSequenceSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoAdSequenceSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoAdSequenceSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVideoAdSequenceSettings(od);
    });
  });

  unittest.group('obj-schema-VideoAdSequenceStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoAdSequenceStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoAdSequenceStep.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVideoAdSequenceStep(od);
    });
  });

  unittest.group('obj-schema-VideoDiscoveryAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoDiscoveryAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoDiscoveryAd.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVideoDiscoveryAd(od);
    });
  });

  unittest.group('obj-schema-VideoPerformanceAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoPerformanceAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoPerformanceAd.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVideoPerformanceAd(od);
    });
  });

  unittest.group(
    'obj-schema-VideoPlayerSizeAssignedTargetingOptionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildVideoPlayerSizeAssignedTargetingOptionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.VideoPlayerSizeAssignedTargetingOptionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkVideoPlayerSizeAssignedTargetingOptionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-VideoPlayerSizeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoPlayerSizeTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoPlayerSizeTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVideoPlayerSizeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ViewabilityAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildViewabilityAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ViewabilityAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkViewabilityAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ViewabilityTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildViewabilityTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ViewabilityTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkViewabilityTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-YoutubeAdGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYoutubeAdGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YoutubeAdGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYoutubeAdGroup(od);
    });
  });

  unittest.group('obj-schema-YoutubeAdGroupAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYoutubeAdGroupAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YoutubeAdGroupAd.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYoutubeAdGroupAd(od);
    });
  });

  unittest.group('obj-schema-YoutubeAdGroupAssignedTargetingOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYoutubeAdGroupAssignedTargetingOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YoutubeAdGroupAssignedTargetingOption.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYoutubeAdGroupAssignedTargetingOption(od);
    });
  });

  unittest.group('obj-schema-YoutubeAndPartnersBiddingStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYoutubeAndPartnersBiddingStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YoutubeAndPartnersBiddingStrategy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYoutubeAndPartnersBiddingStrategy(od);
    });
  });

  unittest.group('obj-schema-YoutubeAndPartnersInventorySourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYoutubeAndPartnersInventorySourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YoutubeAndPartnersInventorySourceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYoutubeAndPartnersInventorySourceConfig(od);
    });
  });

  unittest.group('obj-schema-YoutubeAndPartnersSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYoutubeAndPartnersSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YoutubeAndPartnersSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYoutubeAndPartnersSettings(od);
    });
  });

  unittest.group(
    'obj-schema-YoutubeAndPartnersThirdPartyMeasurementSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildYoutubeAndPartnersThirdPartyMeasurementSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.YoutubeAndPartnersThirdPartyMeasurementSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkYoutubeAndPartnersThirdPartyMeasurementSettings(od);
      });
    },
  );

  unittest.group('obj-schema-YoutubeChannelAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYoutubeChannelAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YoutubeChannelAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYoutubeChannelAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-YoutubeVideoAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYoutubeVideoAssignedTargetingOptionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YoutubeVideoAssignedTargetingOptionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYoutubeVideoAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-YoutubeVideoDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYoutubeVideoDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YoutubeVideoDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYoutubeVideoDetails(od);
    });
  });

  unittest.group('resource-AdvertisersResource', () {
    unittest.test('method--audit', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers;
      final arg_advertiserId = 'foo';
      final arg_readMask = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['readMask']!.first,
            unittest.equals(arg_readMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuditAdvertiserResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.audit(
        arg_advertiserId,
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkAuditAdvertiserResponse(response as api.AuditAdvertiserResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers;
      final arg_request = buildAdvertiser();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Advertiser.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAdvertiser(obj);

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
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('v2/advertisers'),
          );
          pathOffset += 14;

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
          final resp = convert.json.encode(buildAdvertiser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkAdvertiser(response as api.Advertiser);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers;
      final arg_advertiserId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_advertiserId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--editAssignedTargetingOptions', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers;
      final arg_request =
          buildBulkEditAdvertiserAssignedTargetingOptionsRequest();
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .BulkEditAdvertiserAssignedTargetingOptionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkEditAdvertiserAssignedTargetingOptionsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            buildBulkEditAdvertiserAssignedTargetingOptionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.editAssignedTargetingOptions(
        arg_request,
        arg_advertiserId,
        $fields: arg_$fields,
      );
      checkBulkEditAdvertiserAssignedTargetingOptionsResponse(
        response as api.BulkEditAdvertiserAssignedTargetingOptionsResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers;
      final arg_advertiserId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildAdvertiser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_advertiserId, $fields: arg_$fields);
      checkAdvertiser(response as api.Advertiser);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers;
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('v2/advertisers'),
          );
          pathOffset += 14;

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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAdvertisersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkListAdvertisersResponse(response as api.ListAdvertisersResponse);
    });

    unittest.test('method--listAssignedTargetingOptions', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildBulkListAdvertiserAssignedTargetingOptionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listAssignedTargetingOptions(
        arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkBulkListAdvertiserAssignedTargetingOptionsResponse(
        response as api.BulkListAdvertiserAssignedTargetingOptionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers;
      final arg_request = buildAdvertiser();
      final arg_advertiserId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Advertiser.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAdvertiser(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildAdvertiser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_advertiserId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkAdvertiser(response as api.Advertiser);
    });
  });

  unittest.group('resource-AdvertisersAssetsResource', () {
    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.assets;
      final arg_request = buildCreateAssetRequest();
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateAssetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateAssetRequest(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildCreateAssetResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.upload(
        arg_request,
        arg_advertiserId,
        $fields: arg_$fields,
      );
      checkCreateAssetResponse(response as api.CreateAssetResponse);
    });
  });

  unittest.group('resource-AdvertisersCampaignsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.campaigns;
      final arg_request = buildCampaign();
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Campaign.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCampaign(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildCampaign());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_advertiserId,
        $fields: arg_$fields,
      );
      checkCampaign(response as api.Campaign);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.campaigns;
      final arg_advertiserId = 'foo';
      final arg_campaignId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_advertiserId,
        arg_campaignId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.campaigns;
      final arg_advertiserId = 'foo';
      final arg_campaignId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildCampaign());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_advertiserId,
        arg_campaignId,
        $fields: arg_$fields,
      );
      checkCampaign(response as api.Campaign);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.campaigns;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListCampaignsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListCampaignsResponse(response as api.ListCampaignsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.campaigns;
      final arg_request = buildCampaign();
      final arg_advertiserId = 'foo';
      final arg_campaignId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Campaign.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCampaign(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildCampaign());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_advertiserId,
        arg_campaignId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkCampaign(response as api.Campaign);
    });
  });

  unittest.group('resource-AdvertisersChannelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.channels;
      final arg_request = buildChannel();
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Channel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkChannel(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildChannel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkChannel(response as api.Channel);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.channels;
      final arg_advertiserId = 'foo';
      final arg_channelId = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildChannel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_advertiserId,
        arg_channelId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkChannel(response as api.Channel);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.channels;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListChannelsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkListChannelsResponse(response as api.ListChannelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.channels;
      final arg_request = buildChannel();
      final arg_advertiserId = 'foo';
      final arg_channelId = 'foo';
      final arg_partnerId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Channel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkChannel(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildChannel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_advertiserId,
        arg_channelId,
        partnerId: arg_partnerId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkChannel(response as api.Channel);
    });
  });

  unittest.group('resource-AdvertisersChannelsSitesResource', () {
    unittest.test('method--bulkEdit', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.channels.sites;
      final arg_request = buildBulkEditSitesRequest();
      final arg_advertiserId = 'foo';
      final arg_channelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BulkEditSitesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkEditSitesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
          index = path.indexOf('/channels/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/channels/'),
          );
          pathOffset += 10;
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
          final resp = convert.json.encode(buildBulkEditSitesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkEdit(
        arg_request,
        arg_advertiserId,
        arg_channelId,
        $fields: arg_$fields,
      );
      checkBulkEditSitesResponse(response as api.BulkEditSitesResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.channels.sites;
      final arg_request = buildSite();
      final arg_advertiserId = 'foo';
      final arg_channelId = 'foo';
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Site.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSite(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
          index = path.indexOf('/channels/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/channels/'),
          );
          pathOffset += 10;
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSite());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_advertiserId,
        arg_channelId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkSite(response as api.Site);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.channels.sites;
      final arg_advertiserId = 'foo';
      final arg_channelId = 'foo';
      final arg_urlOrAppId = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
          index = path.indexOf('/channels/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/channels/'),
          );
          pathOffset += 10;
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_advertiserId,
        arg_channelId,
        arg_urlOrAppId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.channels.sites;
      final arg_advertiserId = 'foo';
      final arg_channelId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListSitesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        arg_channelId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkListSitesResponse(response as api.ListSitesResponse);
    });

    unittest.test('method--replace', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.channels.sites;
      final arg_request = buildReplaceSitesRequest();
      final arg_advertiserId = 'foo';
      final arg_channelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ReplaceSitesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReplaceSitesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
          index = path.indexOf('/channels/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/channels/'),
          );
          pathOffset += 10;
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
          final resp = convert.json.encode(buildReplaceSitesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.replace(
        arg_request,
        arg_advertiserId,
        arg_channelId,
        $fields: arg_$fields,
      );
      checkReplaceSitesResponse(response as api.ReplaceSitesResponse);
    });
  });

  unittest.group('resource-AdvertisersCreativesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.creatives;
      final arg_request = buildCreative();
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Creative.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreative(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildCreative());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_advertiserId,
        $fields: arg_$fields,
      );
      checkCreative(response as api.Creative);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.creatives;
      final arg_advertiserId = 'foo';
      final arg_creativeId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_advertiserId,
        arg_creativeId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.creatives;
      final arg_advertiserId = 'foo';
      final arg_creativeId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildCreative());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_advertiserId,
        arg_creativeId,
        $fields: arg_$fields,
      );
      checkCreative(response as api.Creative);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.creatives;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListCreativesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListCreativesResponse(response as api.ListCreativesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.creatives;
      final arg_request = buildCreative();
      final arg_advertiserId = 'foo';
      final arg_creativeId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Creative.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreative(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildCreative());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_advertiserId,
        arg_creativeId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkCreative(response as api.Creative);
    });
  });

  unittest.group('resource-AdvertisersInsertionOrdersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.insertionOrders;
      final arg_request = buildInsertionOrder();
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InsertionOrder.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInsertionOrder(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildInsertionOrder());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_advertiserId,
        $fields: arg_$fields,
      );
      checkInsertionOrder(response as api.InsertionOrder);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.insertionOrders;
      final arg_advertiserId = 'foo';
      final arg_insertionOrderId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_advertiserId,
        arg_insertionOrderId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.insertionOrders;
      final arg_advertiserId = 'foo';
      final arg_insertionOrderId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildInsertionOrder());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_advertiserId,
        arg_insertionOrderId,
        $fields: arg_$fields,
      );
      checkInsertionOrder(response as api.InsertionOrder);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.insertionOrders;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListInsertionOrdersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListInsertionOrdersResponse(
        response as api.ListInsertionOrdersResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.insertionOrders;
      final arg_request = buildInsertionOrder();
      final arg_advertiserId = 'foo';
      final arg_insertionOrderId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InsertionOrder.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInsertionOrder(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildInsertionOrder());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_advertiserId,
        arg_insertionOrderId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkInsertionOrder(response as api.InsertionOrder);
    });
  });

  unittest.group('resource-AdvertisersInvoicesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.invoices;
      final arg_advertiserId = 'foo';
      final arg_issueMonth = 'foo';
      final arg_loiSapinInvoiceType = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['issueMonth']!.first,
            unittest.equals(arg_issueMonth),
          );
          unittest.expect(
            queryMap['loiSapinInvoiceType']!.first,
            unittest.equals(arg_loiSapinInvoiceType),
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
          final resp = convert.json.encode(buildListInvoicesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        issueMonth: arg_issueMonth,
        loiSapinInvoiceType: arg_loiSapinInvoiceType,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListInvoicesResponse(response as api.ListInvoicesResponse);
    });

    unittest.test('method--lookupInvoiceCurrency', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.invoices;
      final arg_advertiserId = 'foo';
      final arg_invoiceMonth = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['invoiceMonth']!.first,
            unittest.equals(arg_invoiceMonth),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildLookupInvoiceCurrencyResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookupInvoiceCurrency(
        arg_advertiserId,
        invoiceMonth: arg_invoiceMonth,
        $fields: arg_$fields,
      );
      checkLookupInvoiceCurrencyResponse(
        response as api.LookupInvoiceCurrencyResponse,
      );
    });
  });

  unittest.group('resource-AdvertisersLineItemsResource', () {
    unittest.test('method--bulkEditAssignedTargetingOptions', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.lineItems;
      final arg_request = buildBulkEditAssignedTargetingOptionsRequest();
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BulkEditAssignedTargetingOptionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkEditAssignedTargetingOptionsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            buildBulkEditAssignedTargetingOptionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkEditAssignedTargetingOptions(
        arg_request,
        arg_advertiserId,
        $fields: arg_$fields,
      );
      checkBulkEditAssignedTargetingOptionsResponse(
        response as api.BulkEditAssignedTargetingOptionsResponse,
      );
    });

    unittest.test('method--bulkListAssignedTargetingOptions', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.lineItems;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_lineItemIds = buildUnnamed156();
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['lineItemIds']!,
            unittest.equals(arg_lineItemIds),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildBulkListAssignedTargetingOptionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkListAssignedTargetingOptions(
        arg_advertiserId,
        filter: arg_filter,
        lineItemIds: arg_lineItemIds,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkBulkListAssignedTargetingOptionsResponse(
        response as api.BulkListAssignedTargetingOptionsResponse,
      );
    });

    unittest.test('method--bulkUpdate', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.lineItems;
      final arg_request = buildBulkUpdateLineItemsRequest();
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BulkUpdateLineItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkUpdateLineItemsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildBulkUpdateLineItemsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkUpdate(
        arg_request,
        arg_advertiserId,
        $fields: arg_$fields,
      );
      checkBulkUpdateLineItemsResponse(
        response as api.BulkUpdateLineItemsResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.lineItems;
      final arg_request = buildLineItem();
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LineItem.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLineItem(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildLineItem());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_advertiserId,
        $fields: arg_$fields,
      );
      checkLineItem(response as api.LineItem);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.lineItems;
      final arg_advertiserId = 'foo';
      final arg_lineItemId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_advertiserId,
        arg_lineItemId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--duplicate', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.lineItems;
      final arg_request = buildDuplicateLineItemRequest();
      final arg_advertiserId = 'foo';
      final arg_lineItemId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DuplicateLineItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDuplicateLineItemRequest(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildDuplicateLineItemResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.duplicate(
        arg_request,
        arg_advertiserId,
        arg_lineItemId,
        $fields: arg_$fields,
      );
      checkDuplicateLineItemResponse(response as api.DuplicateLineItemResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.lineItems;
      final arg_advertiserId = 'foo';
      final arg_lineItemId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildLineItem());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_advertiserId,
        arg_lineItemId,
        $fields: arg_$fields,
      );
      checkLineItem(response as api.LineItem);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.lineItems;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLineItemsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLineItemsResponse(response as api.ListLineItemsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.lineItems;
      final arg_request = buildLineItem();
      final arg_advertiserId = 'foo';
      final arg_lineItemId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LineItem.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLineItem(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildLineItem());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_advertiserId,
        arg_lineItemId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkLineItem(response as api.LineItem);
    });
  });

  unittest.group(
    'resource-AdvertisersLineItemsTargetingTypesAssignedTargetingOptionsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.DisplayVideoApi(
              mock,
            ).advertisers.lineItems.targetingTypes.assignedTargetingOptions;
        final arg_request = buildAssignedTargetingOption();
        final arg_advertiserId = 'foo';
        final arg_lineItemId = 'foo';
        final arg_targetingType = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.AssignedTargetingOption.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkAssignedTargetingOption(obj);

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
              path.substring(pathOffset, pathOffset + 15),
              unittest.equals('v2/advertisers/'),
            );
            pathOffset += 15;
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
            final resp = convert.json.encode(buildAssignedTargetingOption());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_advertiserId,
          arg_lineItemId,
          arg_targetingType,
          $fields: arg_$fields,
        );
        checkAssignedTargetingOption(response as api.AssignedTargetingOption);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.DisplayVideoApi(
              mock,
            ).advertisers.lineItems.targetingTypes.assignedTargetingOptions;
        final arg_advertiserId = 'foo';
        final arg_lineItemId = 'foo';
        final arg_targetingType = 'foo';
        final arg_assignedTargetingOptionId = 'foo';
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
              path.substring(pathOffset, pathOffset + 15),
              unittest.equals('v2/advertisers/'),
            );
            pathOffset += 15;
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
            final resp = convert.json.encode(buildEmpty());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(
          arg_advertiserId,
          arg_lineItemId,
          arg_targetingType,
          arg_assignedTargetingOptionId,
          $fields: arg_$fields,
        );
        checkEmpty(response as api.Empty);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.DisplayVideoApi(
              mock,
            ).advertisers.lineItems.targetingTypes.assignedTargetingOptions;
        final arg_advertiserId = 'foo';
        final arg_lineItemId = 'foo';
        final arg_targetingType = 'foo';
        final arg_assignedTargetingOptionId = 'foo';
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
              path.substring(pathOffset, pathOffset + 15),
              unittest.equals('v2/advertisers/'),
            );
            pathOffset += 15;
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
            final resp = convert.json.encode(buildAssignedTargetingOption());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(
          arg_advertiserId,
          arg_lineItemId,
          arg_targetingType,
          arg_assignedTargetingOptionId,
          $fields: arg_$fields,
        );
        checkAssignedTargetingOption(response as api.AssignedTargetingOption);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.DisplayVideoApi(
              mock,
            ).advertisers.lineItems.targetingTypes.assignedTargetingOptions;
        final arg_advertiserId = 'foo';
        final arg_lineItemId = 'foo';
        final arg_targetingType = 'foo';
        final arg_filter = 'foo';
        final arg_orderBy = 'foo';
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
              path.substring(pathOffset, pathOffset + 15),
              unittest.equals('v2/advertisers/'),
            );
            pathOffset += 15;
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
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildListLineItemAssignedTargetingOptionsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_advertiserId,
          arg_lineItemId,
          arg_targetingType,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListLineItemAssignedTargetingOptionsResponse(
          response as api.ListLineItemAssignedTargetingOptionsResponse,
        );
      });
    },
  );

  unittest.group('resource-AdvertisersLocationListsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.locationLists;
      final arg_request = buildLocationList();
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LocationList.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLocationList(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildLocationList());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_advertiserId,
        $fields: arg_$fields,
      );
      checkLocationList(response as api.LocationList);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.locationLists;
      final arg_advertiserId = 'foo';
      final arg_locationListId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildLocationList());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_advertiserId,
        arg_locationListId,
        $fields: arg_$fields,
      );
      checkLocationList(response as api.LocationList);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.locationLists;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLocationListsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationListsResponse(response as api.ListLocationListsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.locationLists;
      final arg_request = buildLocationList();
      final arg_advertiserId = 'foo';
      final arg_locationListId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LocationList.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLocationList(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildLocationList());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_advertiserId,
        arg_locationListId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkLocationList(response as api.LocationList);
    });
  });

  unittest.group('resource-AdvertisersLocationListsAssignedLocationsResource', () {
    unittest.test('method--bulkEdit', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(mock).advertisers.locationLists.assignedLocations;
      final arg_request = buildBulkEditAssignedLocationsRequest();
      final arg_advertiserId = 'foo';
      final arg_locationListId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BulkEditAssignedLocationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkEditAssignedLocationsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
          index = path.indexOf('/locationLists/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('/locationLists/'),
          );
          pathOffset += 15;
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
            buildBulkEditAssignedLocationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkEdit(
        arg_request,
        arg_advertiserId,
        arg_locationListId,
        $fields: arg_$fields,
      );
      checkBulkEditAssignedLocationsResponse(
        response as api.BulkEditAssignedLocationsResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(mock).advertisers.locationLists.assignedLocations;
      final arg_request = buildAssignedLocation();
      final arg_advertiserId = 'foo';
      final arg_locationListId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AssignedLocation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAssignedLocation(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
          index = path.indexOf('/locationLists/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('/locationLists/'),
          );
          pathOffset += 15;
          index = path.indexOf('/assignedLocations', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_locationListId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('/assignedLocations'),
          );
          pathOffset += 18;

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
          final resp = convert.json.encode(buildAssignedLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_advertiserId,
        arg_locationListId,
        $fields: arg_$fields,
      );
      checkAssignedLocation(response as api.AssignedLocation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(mock).advertisers.locationLists.assignedLocations;
      final arg_advertiserId = 'foo';
      final arg_locationListId = 'foo';
      final arg_assignedLocationId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
          index = path.indexOf('/locationLists/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('/locationLists/'),
          );
          pathOffset += 15;
          index = path.indexOf('/assignedLocations/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_locationListId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('/assignedLocations/'),
          );
          pathOffset += 19;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_advertiserId,
        arg_locationListId,
        arg_assignedLocationId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(mock).advertisers.locationLists.assignedLocations;
      final arg_advertiserId = 'foo';
      final arg_locationListId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
          index = path.indexOf('/locationLists/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('/locationLists/'),
          );
          pathOffset += 15;
          index = path.indexOf('/assignedLocations', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_locationListId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('/assignedLocations'),
          );
          pathOffset += 18;

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListAssignedLocationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        arg_locationListId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAssignedLocationsResponse(
        response as api.ListAssignedLocationsResponse,
      );
    });
  });

  unittest.group('resource-AdvertisersManualTriggersResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.manualTriggers;
      final arg_request = buildActivateManualTriggerRequest();
      final arg_advertiserId = 'foo';
      final arg_triggerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ActivateManualTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkActivateManualTriggerRequest(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildManualTrigger());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.activate(
        arg_request,
        arg_advertiserId,
        arg_triggerId,
        $fields: arg_$fields,
      );
      checkManualTrigger(response as api.ManualTrigger);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.manualTriggers;
      final arg_request = buildManualTrigger();
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ManualTrigger.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkManualTrigger(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildManualTrigger());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_advertiserId,
        $fields: arg_$fields,
      );
      checkManualTrigger(response as api.ManualTrigger);
    });

    unittest.test('method--deactivate', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.manualTriggers;
      final arg_request = buildDeactivateManualTriggerRequest();
      final arg_advertiserId = 'foo';
      final arg_triggerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeactivateManualTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeactivateManualTriggerRequest(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildManualTrigger());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.deactivate(
        arg_request,
        arg_advertiserId,
        arg_triggerId,
        $fields: arg_$fields,
      );
      checkManualTrigger(response as api.ManualTrigger);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.manualTriggers;
      final arg_advertiserId = 'foo';
      final arg_triggerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildManualTrigger());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_advertiserId,
        arg_triggerId,
        $fields: arg_$fields,
      );
      checkManualTrigger(response as api.ManualTrigger);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.manualTriggers;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListManualTriggersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListManualTriggersResponse(
        response as api.ListManualTriggersResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.manualTriggers;
      final arg_request = buildManualTrigger();
      final arg_advertiserId = 'foo';
      final arg_triggerId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ManualTrigger.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkManualTrigger(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildManualTrigger());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_advertiserId,
        arg_triggerId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkManualTrigger(response as api.ManualTrigger);
    });
  });

  unittest.group('resource-AdvertisersNegativeKeywordListsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.negativeKeywordLists;
      final arg_request = buildNegativeKeywordList();
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NegativeKeywordList.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNegativeKeywordList(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildNegativeKeywordList());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_advertiserId,
        $fields: arg_$fields,
      );
      checkNegativeKeywordList(response as api.NegativeKeywordList);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.negativeKeywordLists;
      final arg_advertiserId = 'foo';
      final arg_negativeKeywordListId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_advertiserId,
        arg_negativeKeywordListId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.negativeKeywordLists;
      final arg_advertiserId = 'foo';
      final arg_negativeKeywordListId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildNegativeKeywordList());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_advertiserId,
        arg_negativeKeywordListId,
        $fields: arg_$fields,
      );
      checkNegativeKeywordList(response as api.NegativeKeywordList);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.negativeKeywordLists;
      final arg_advertiserId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(
            buildListNegativeKeywordListsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListNegativeKeywordListsResponse(
        response as api.ListNegativeKeywordListsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.negativeKeywordLists;
      final arg_request = buildNegativeKeywordList();
      final arg_advertiserId = 'foo';
      final arg_negativeKeywordListId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NegativeKeywordList.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNegativeKeywordList(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildNegativeKeywordList());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_advertiserId,
        arg_negativeKeywordListId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkNegativeKeywordList(response as api.NegativeKeywordList);
    });
  });

  unittest.group('resource-AdvertisersNegativeKeywordListsNegativeKeywordsResource', () {
    unittest.test('method--bulkEdit', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).advertisers.negativeKeywordLists.negativeKeywords;
      final arg_request = buildBulkEditNegativeKeywordsRequest();
      final arg_advertiserId = 'foo';
      final arg_negativeKeywordListId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BulkEditNegativeKeywordsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkEditNegativeKeywordsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
          index = path.indexOf('/negativeKeywordLists/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('/negativeKeywordLists/'),
          );
          pathOffset += 22;
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
            buildBulkEditNegativeKeywordsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkEdit(
        arg_request,
        arg_advertiserId,
        arg_negativeKeywordListId,
        $fields: arg_$fields,
      );
      checkBulkEditNegativeKeywordsResponse(
        response as api.BulkEditNegativeKeywordsResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).advertisers.negativeKeywordLists.negativeKeywords;
      final arg_request = buildNegativeKeyword();
      final arg_advertiserId = 'foo';
      final arg_negativeKeywordListId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NegativeKeyword.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNegativeKeyword(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
          index = path.indexOf('/negativeKeywordLists/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('/negativeKeywordLists/'),
          );
          pathOffset += 22;
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
          final resp = convert.json.encode(buildNegativeKeyword());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_advertiserId,
        arg_negativeKeywordListId,
        $fields: arg_$fields,
      );
      checkNegativeKeyword(response as api.NegativeKeyword);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).advertisers.negativeKeywordLists.negativeKeywords;
      final arg_advertiserId = 'foo';
      final arg_negativeKeywordListId = 'foo';
      final arg_keywordValue = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
          index = path.indexOf('/negativeKeywordLists/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('/negativeKeywordLists/'),
          );
          pathOffset += 22;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_advertiserId,
        arg_negativeKeywordListId,
        arg_keywordValue,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).advertisers.negativeKeywordLists.negativeKeywords;
      final arg_advertiserId = 'foo';
      final arg_negativeKeywordListId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListNegativeKeywordsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        arg_negativeKeywordListId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListNegativeKeywordsResponse(
        response as api.ListNegativeKeywordsResponse,
      );
    });

    unittest.test('method--replace', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).advertisers.negativeKeywordLists.negativeKeywords;
      final arg_request = buildReplaceNegativeKeywordsRequest();
      final arg_advertiserId = 'foo';
      final arg_negativeKeywordListId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ReplaceNegativeKeywordsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReplaceNegativeKeywordsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
          index = path.indexOf('/negativeKeywordLists/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('/negativeKeywordLists/'),
          );
          pathOffset += 22;
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
            buildReplaceNegativeKeywordsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.replace(
        arg_request,
        arg_advertiserId,
        arg_negativeKeywordListId,
        $fields: arg_$fields,
      );
      checkReplaceNegativeKeywordsResponse(
        response as api.ReplaceNegativeKeywordsResponse,
      );
    });
  });

  unittest.group(
    'resource-AdvertisersTargetingTypesAssignedTargetingOptionsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.DisplayVideoApi(
              mock,
            ).advertisers.targetingTypes.assignedTargetingOptions;
        final arg_request = buildAssignedTargetingOption();
        final arg_advertiserId = 'foo';
        final arg_targetingType = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.AssignedTargetingOption.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkAssignedTargetingOption(obj);

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
              path.substring(pathOffset, pathOffset + 15),
              unittest.equals('v2/advertisers/'),
            );
            pathOffset += 15;
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
            final resp = convert.json.encode(buildAssignedTargetingOption());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_advertiserId,
          arg_targetingType,
          $fields: arg_$fields,
        );
        checkAssignedTargetingOption(response as api.AssignedTargetingOption);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.DisplayVideoApi(
              mock,
            ).advertisers.targetingTypes.assignedTargetingOptions;
        final arg_advertiserId = 'foo';
        final arg_targetingType = 'foo';
        final arg_assignedTargetingOptionId = 'foo';
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
              path.substring(pathOffset, pathOffset + 15),
              unittest.equals('v2/advertisers/'),
            );
            pathOffset += 15;
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
            final resp = convert.json.encode(buildEmpty());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(
          arg_advertiserId,
          arg_targetingType,
          arg_assignedTargetingOptionId,
          $fields: arg_$fields,
        );
        checkEmpty(response as api.Empty);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.DisplayVideoApi(
              mock,
            ).advertisers.targetingTypes.assignedTargetingOptions;
        final arg_advertiserId = 'foo';
        final arg_targetingType = 'foo';
        final arg_assignedTargetingOptionId = 'foo';
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
              path.substring(pathOffset, pathOffset + 15),
              unittest.equals('v2/advertisers/'),
            );
            pathOffset += 15;
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
            final resp = convert.json.encode(buildAssignedTargetingOption());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(
          arg_advertiserId,
          arg_targetingType,
          arg_assignedTargetingOptionId,
          $fields: arg_$fields,
        );
        checkAssignedTargetingOption(response as api.AssignedTargetingOption);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.DisplayVideoApi(
              mock,
            ).advertisers.targetingTypes.assignedTargetingOptions;
        final arg_advertiserId = 'foo';
        final arg_targetingType = 'foo';
        final arg_filter = 'foo';
        final arg_orderBy = 'foo';
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
              path.substring(pathOffset, pathOffset + 15),
              unittest.equals('v2/advertisers/'),
            );
            pathOffset += 15;
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
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildListAdvertiserAssignedTargetingOptionsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_advertiserId,
          arg_targetingType,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListAdvertiserAssignedTargetingOptionsResponse(
          response as api.ListAdvertiserAssignedTargetingOptionsResponse,
        );
      });
    },
  );

  unittest.group('resource-AdvertisersYoutubeAdGroupAdsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.youtubeAdGroupAds;
      final arg_advertiserId = 'foo';
      final arg_youtubeAdGroupAdId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildYoutubeAdGroupAd());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_advertiserId,
        arg_youtubeAdGroupAdId,
        $fields: arg_$fields,
      );
      checkYoutubeAdGroupAd(response as api.YoutubeAdGroupAd);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.youtubeAdGroupAds;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListYoutubeAdGroupAdsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListYoutubeAdGroupAdsResponse(
        response as api.ListYoutubeAdGroupAdsResponse,
      );
    });
  });

  unittest.group('resource-AdvertisersYoutubeAdGroupsResource', () {
    unittest.test('method--bulkListAdGroupAssignedTargetingOptions', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.youtubeAdGroups;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_youtubeAdGroupIds = buildUnnamed157();
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['youtubeAdGroupIds']!,
            unittest.equals(arg_youtubeAdGroupIds),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildBulkListAdGroupAssignedTargetingOptionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkListAdGroupAssignedTargetingOptions(
        arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        youtubeAdGroupIds: arg_youtubeAdGroupIds,
        $fields: arg_$fields,
      );
      checkBulkListAdGroupAssignedTargetingOptionsResponse(
        response as api.BulkListAdGroupAssignedTargetingOptionsResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.youtubeAdGroups;
      final arg_advertiserId = 'foo';
      final arg_youtubeAdGroupId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildYoutubeAdGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_advertiserId,
        arg_youtubeAdGroupId,
        $fields: arg_$fields,
      );
      checkYoutubeAdGroup(response as api.YoutubeAdGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).advertisers.youtubeAdGroups;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/advertisers/'),
          );
          pathOffset += 15;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListYoutubeAdGroupsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListYoutubeAdGroupsResponse(
        response as api.ListYoutubeAdGroupsResponse,
      );
    });
  });

  unittest.group(
    'resource-AdvertisersYoutubeAdGroupsTargetingTypesAssignedTargetingOptionsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.DisplayVideoApi(mock)
                .advertisers
                .youtubeAdGroups
                .targetingTypes
                .assignedTargetingOptions;
        final arg_advertiserId = 'foo';
        final arg_youtubeAdGroupId = 'foo';
        final arg_targetingType = 'foo';
        final arg_assignedTargetingOptionId = 'foo';
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
              path.substring(pathOffset, pathOffset + 15),
              unittest.equals('v2/advertisers/'),
            );
            pathOffset += 15;
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
            final resp = convert.json.encode(buildAssignedTargetingOption());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(
          arg_advertiserId,
          arg_youtubeAdGroupId,
          arg_targetingType,
          arg_assignedTargetingOptionId,
          $fields: arg_$fields,
        );
        checkAssignedTargetingOption(response as api.AssignedTargetingOption);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.DisplayVideoApi(mock)
                .advertisers
                .youtubeAdGroups
                .targetingTypes
                .assignedTargetingOptions;
        final arg_advertiserId = 'foo';
        final arg_youtubeAdGroupId = 'foo';
        final arg_targetingType = 'foo';
        final arg_filter = 'foo';
        final arg_orderBy = 'foo';
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
              path.substring(pathOffset, pathOffset + 15),
              unittest.equals('v2/advertisers/'),
            );
            pathOffset += 15;
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
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildListYoutubeAdGroupAssignedTargetingOptionsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_advertiserId,
          arg_youtubeAdGroupId,
          arg_targetingType,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListYoutubeAdGroupAssignedTargetingOptionsResponse(
          response as api.ListYoutubeAdGroupAssignedTargetingOptionsResponse,
        );
      });
    },
  );

  unittest.group('resource-CombinedAudiencesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).combinedAudiences;
      final arg_combinedAudienceId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 21),
            unittest.equals('v2/combinedAudiences/'),
          );
          pathOffset += 21;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCombinedAudience());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_combinedAudienceId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkCombinedAudience(response as api.CombinedAudience);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).combinedAudiences;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerId = 'foo';
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
            unittest.equals('v2/combinedAudiences'),
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListCombinedAudiencesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        advertiserId: arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkListCombinedAudiencesResponse(
        response as api.ListCombinedAudiencesResponse,
      );
    });
  });

  unittest.group('resource-CustomBiddingAlgorithmsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).customBiddingAlgorithms;
      final arg_request = buildCustomBiddingAlgorithm();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CustomBiddingAlgorithm.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCustomBiddingAlgorithm(obj);

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
            path.substring(pathOffset, pathOffset + 26),
            unittest.equals('v2/customBiddingAlgorithms'),
          );
          pathOffset += 26;

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
          final resp = convert.json.encode(buildCustomBiddingAlgorithm());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkCustomBiddingAlgorithm(response as api.CustomBiddingAlgorithm);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).customBiddingAlgorithms;
      final arg_customBiddingAlgorithmId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 27),
            unittest.equals('v2/customBiddingAlgorithms/'),
          );
          pathOffset += 27;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCustomBiddingAlgorithm());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_customBiddingAlgorithmId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkCustomBiddingAlgorithm(response as api.CustomBiddingAlgorithm);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).customBiddingAlgorithms;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 26),
            unittest.equals('v2/customBiddingAlgorithms'),
          );
          pathOffset += 26;

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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListCustomBiddingAlgorithmsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        advertiserId: arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkListCustomBiddingAlgorithmsResponse(
        response as api.ListCustomBiddingAlgorithmsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).customBiddingAlgorithms;
      final arg_request = buildCustomBiddingAlgorithm();
      final arg_customBiddingAlgorithmId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CustomBiddingAlgorithm.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCustomBiddingAlgorithm(obj);

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
            path.substring(pathOffset, pathOffset + 27),
            unittest.equals('v2/customBiddingAlgorithms/'),
          );
          pathOffset += 27;
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
          final resp = convert.json.encode(buildCustomBiddingAlgorithm());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_customBiddingAlgorithmId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkCustomBiddingAlgorithm(response as api.CustomBiddingAlgorithm);
    });

    unittest.test('method--uploadScript', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).customBiddingAlgorithms;
      final arg_customBiddingAlgorithmId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 27),
            unittest.equals('v2/customBiddingAlgorithms/'),
          );
          pathOffset += 27;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCustomBiddingScriptRef());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.uploadScript(
        arg_customBiddingAlgorithmId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkCustomBiddingScriptRef(response as api.CustomBiddingScriptRef);
    });
  });

  unittest.group('resource-CustomBiddingAlgorithmsScriptsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).customBiddingAlgorithms.scripts;
      final arg_request = buildCustomBiddingScript();
      final arg_customBiddingAlgorithmId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CustomBiddingScript.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCustomBiddingScript(obj);

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
            path.substring(pathOffset, pathOffset + 27),
            unittest.equals('v2/customBiddingAlgorithms/'),
          );
          pathOffset += 27;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCustomBiddingScript());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_customBiddingAlgorithmId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkCustomBiddingScript(response as api.CustomBiddingScript);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).customBiddingAlgorithms.scripts;
      final arg_customBiddingAlgorithmId = 'foo';
      final arg_customBiddingScriptId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 27),
            unittest.equals('v2/customBiddingAlgorithms/'),
          );
          pathOffset += 27;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCustomBiddingScript());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_customBiddingAlgorithmId,
        arg_customBiddingScriptId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkCustomBiddingScript(response as api.CustomBiddingScript);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).customBiddingAlgorithms.scripts;
      final arg_customBiddingAlgorithmId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 27),
            unittest.equals('v2/customBiddingAlgorithms/'),
          );
          pathOffset += 27;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListCustomBiddingScriptsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_customBiddingAlgorithmId,
        advertiserId: arg_advertiserId,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkListCustomBiddingScriptsResponse(
        response as api.ListCustomBiddingScriptsResponse,
      );
    });
  });

  unittest.group('resource-CustomListsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).customLists;
      final arg_customListId = 'foo';
      final arg_advertiserId = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/customLists/'),
          );
          pathOffset += 15;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCustomList());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_customListId,
        advertiserId: arg_advertiserId,
        $fields: arg_$fields,
      );
      checkCustomList(response as api.CustomList);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).customLists;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('v2/customLists'),
          );
          pathOffset += 14;

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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListCustomListsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        advertiserId: arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListCustomListsResponse(response as api.ListCustomListsResponse);
    });
  });

  unittest.group('resource-FloodlightGroupsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).floodlightGroups;
      final arg_floodlightGroupId = 'foo';
      final arg_partnerId = 'foo';
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
            unittest.equals('v2/floodlightGroups/'),
          );
          pathOffset += 20;
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFloodlightGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_floodlightGroupId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkFloodlightGroup(response as api.FloodlightGroup);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).floodlightGroups;
      final arg_request = buildFloodlightGroup();
      final arg_floodlightGroupId = 'foo';
      final arg_partnerId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FloodlightGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFloodlightGroup(obj);

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
            unittest.equals('v2/floodlightGroups/'),
          );
          pathOffset += 20;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_floodlightGroupId'));

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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFloodlightGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_floodlightGroupId,
        partnerId: arg_partnerId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkFloodlightGroup(response as api.FloodlightGroup);
    });
  });

  unittest.group('resource-FloodlightGroupsFloodlightActivitiesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(mock).floodlightGroups.floodlightActivities;
      final arg_floodlightGroupId = 'foo';
      final arg_floodlightActivityId = 'foo';
      final arg_partnerId = 'foo';
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
            unittest.equals('v2/floodlightGroups/'),
          );
          pathOffset += 20;
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFloodlightActivity());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_floodlightGroupId,
        arg_floodlightActivityId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkFloodlightActivity(response as api.FloodlightActivity);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(mock).floodlightGroups.floodlightActivities;
      final arg_floodlightGroupId = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerId = 'foo';
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
            unittest.equals('v2/floodlightGroups/'),
          );
          pathOffset += 20;
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListFloodlightActivitiesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_floodlightGroupId,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkListFloodlightActivitiesResponse(
        response as api.ListFloodlightActivitiesResponse,
      );
    });
  });

  unittest.group('resource-GoogleAudiencesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).googleAudiences;
      final arg_googleAudienceId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
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
            unittest.equals('v2/googleAudiences/'),
          );
          pathOffset += 19;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleAudience());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_googleAudienceId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkGoogleAudience(response as api.GoogleAudience);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).googleAudiences;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v2/googleAudiences'),
          );
          pathOffset += 18;

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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListGoogleAudiencesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        advertiserId: arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkListGoogleAudiencesResponse(
        response as api.ListGoogleAudiencesResponse,
      );
    });
  });

  unittest.group('resource-GuaranteedOrdersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).guaranteedOrders;
      final arg_request = buildGuaranteedOrder();
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GuaranteedOrder.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGuaranteedOrder(obj);

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
            unittest.equals('v2/guaranteedOrders'),
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGuaranteedOrder());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkGuaranteedOrder(response as api.GuaranteedOrder);
    });

    unittest.test('method--editGuaranteedOrderReadAccessors', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).guaranteedOrders;
      final arg_request = buildEditGuaranteedOrderReadAccessorsRequest();
      final arg_guaranteedOrderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EditGuaranteedOrderReadAccessorsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEditGuaranteedOrderReadAccessorsRequest(obj);

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
            unittest.equals('v2/guaranteedOrders/'),
          );
          pathOffset += 20;
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
            buildEditGuaranteedOrderReadAccessorsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.editGuaranteedOrderReadAccessors(
        arg_request,
        arg_guaranteedOrderId,
        $fields: arg_$fields,
      );
      checkEditGuaranteedOrderReadAccessorsResponse(
        response as api.EditGuaranteedOrderReadAccessorsResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).guaranteedOrders;
      final arg_guaranteedOrderId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
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
            unittest.equals('v2/guaranteedOrders/'),
          );
          pathOffset += 20;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGuaranteedOrder());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_guaranteedOrderId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkGuaranteedOrder(response as api.GuaranteedOrder);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).guaranteedOrders;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerId = 'foo';
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
            unittest.equals('v2/guaranteedOrders'),
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListGuaranteedOrdersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        advertiserId: arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkListGuaranteedOrdersResponse(
        response as api.ListGuaranteedOrdersResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).guaranteedOrders;
      final arg_request = buildGuaranteedOrder();
      final arg_guaranteedOrderId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GuaranteedOrder.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGuaranteedOrder(obj);

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
            unittest.equals('v2/guaranteedOrders/'),
          );
          pathOffset += 20;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGuaranteedOrder());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_guaranteedOrderId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGuaranteedOrder(response as api.GuaranteedOrder);
    });
  });

  unittest.group('resource-InventorySourceGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).inventorySourceGroups;
      final arg_request = buildInventorySourceGroup();
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InventorySourceGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInventorySourceGroup(obj);

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
            path.substring(pathOffset, pathOffset + 24),
            unittest.equals('v2/inventorySourceGroups'),
          );
          pathOffset += 24;

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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildInventorySourceGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkInventorySourceGroup(response as api.InventorySourceGroup);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).inventorySourceGroups;
      final arg_inventorySourceGroupId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v2/inventorySourceGroups/'),
          );
          pathOffset += 25;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_inventorySourceGroupId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).inventorySourceGroups;
      final arg_inventorySourceGroupId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v2/inventorySourceGroups/'),
          );
          pathOffset += 25;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildInventorySourceGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_inventorySourceGroupId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkInventorySourceGroup(response as api.InventorySourceGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).inventorySourceGroups;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 24),
            unittest.equals('v2/inventorySourceGroups'),
          );
          pathOffset += 24;

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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListInventorySourceGroupsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        advertiserId: arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkListInventorySourceGroupsResponse(
        response as api.ListInventorySourceGroupsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).inventorySourceGroups;
      final arg_request = buildInventorySourceGroup();
      final arg_inventorySourceGroupId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InventorySourceGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInventorySourceGroup(obj);

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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v2/inventorySourceGroups/'),
          );
          pathOffset += 25;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(
            subPart,
            unittest.equals('$arg_inventorySourceGroupId'),
          );

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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildInventorySourceGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_inventorySourceGroupId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkInventorySourceGroup(response as api.InventorySourceGroup);
    });
  });

  unittest.group('resource-InventorySourceGroupsAssignedInventorySourcesResource', () {
    unittest.test('method--bulkEdit', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).inventorySourceGroups.assignedInventorySources;
      final arg_request = buildBulkEditAssignedInventorySourcesRequest();
      final arg_inventorySourceGroupId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BulkEditAssignedInventorySourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkEditAssignedInventorySourcesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v2/inventorySourceGroups/'),
          );
          pathOffset += 25;
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
            buildBulkEditAssignedInventorySourcesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkEdit(
        arg_request,
        arg_inventorySourceGroupId,
        $fields: arg_$fields,
      );
      checkBulkEditAssignedInventorySourcesResponse(
        response as api.BulkEditAssignedInventorySourcesResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).inventorySourceGroups.assignedInventorySources;
      final arg_request = buildAssignedInventorySource();
      final arg_inventorySourceGroupId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AssignedInventorySource.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAssignedInventorySource(obj);

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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v2/inventorySourceGroups/'),
          );
          pathOffset += 25;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAssignedInventorySource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_inventorySourceGroupId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkAssignedInventorySource(response as api.AssignedInventorySource);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).inventorySourceGroups.assignedInventorySources;
      final arg_inventorySourceGroupId = 'foo';
      final arg_assignedInventorySourceId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v2/inventorySourceGroups/'),
          );
          pathOffset += 25;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_inventorySourceGroupId,
        arg_assignedInventorySourceId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).inventorySourceGroups.assignedInventorySources;
      final arg_inventorySourceGroupId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v2/inventorySourceGroups/'),
          );
          pathOffset += 25;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListAssignedInventorySourcesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_inventorySourceGroupId,
        advertiserId: arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkListAssignedInventorySourcesResponse(
        response as api.ListAssignedInventorySourcesResponse,
      );
    });
  });

  unittest.group('resource-InventorySourcesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).inventorySources;
      final arg_request = buildInventorySource();
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InventorySource.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInventorySource(obj);

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
            unittest.equals('v2/inventorySources'),
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildInventorySource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkInventorySource(response as api.InventorySource);
    });

    unittest.test('method--editInventorySourceReadWriteAccessors', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).inventorySources;
      final arg_request = buildEditInventorySourceReadWriteAccessorsRequest();
      final arg_inventorySourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EditInventorySourceReadWriteAccessorsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEditInventorySourceReadWriteAccessorsRequest(obj);

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
            unittest.equals('v2/inventorySources/'),
          );
          pathOffset += 20;
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
          final resp = convert.json.encode(buildInventorySourceAccessors());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.editInventorySourceReadWriteAccessors(
        arg_request,
        arg_inventorySourceId,
        $fields: arg_$fields,
      );
      checkInventorySourceAccessors(response as api.InventorySourceAccessors);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).inventorySources;
      final arg_inventorySourceId = 'foo';
      final arg_partnerId = 'foo';
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
            unittest.equals('v2/inventorySources/'),
          );
          pathOffset += 20;
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildInventorySource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_inventorySourceId,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkInventorySource(response as api.InventorySource);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).inventorySources;
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerId = 'foo';
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
            unittest.equals('v2/inventorySources'),
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListInventorySourcesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        advertiserId: arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        partnerId: arg_partnerId,
        $fields: arg_$fields,
      );
      checkListInventorySourcesResponse(
        response as api.ListInventorySourcesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).inventorySources;
      final arg_request = buildInventorySource();
      final arg_inventorySourceId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_partnerId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InventorySource.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInventorySource(obj);

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
            unittest.equals('v2/inventorySources/'),
          );
          pathOffset += 20;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['partnerId']!.first,
            unittest.equals(arg_partnerId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildInventorySource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_inventorySourceId,
        advertiserId: arg_advertiserId,
        partnerId: arg_partnerId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkInventorySource(response as api.InventorySource);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).media;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('download/'),
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
          final resp = convert.json.encode(buildGoogleBytestreamMedia());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.download(
        arg_resourceName,
        $fields: arg_$fields,
      );
      checkGoogleBytestreamMedia(response as api.GoogleBytestreamMedia);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).media;
      final arg_request = buildGoogleBytestreamMedia();
      final arg_resourceName = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleBytestreamMedia.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleBytestreamMedia(obj);

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
            path.substring(pathOffset, pathOffset + 6),
            unittest.equals('media/'),
          );
          pathOffset += 6;
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
          final resp = convert.json.encode(buildGoogleBytestreamMedia());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.upload(
        arg_request,
        arg_resourceName,
        $fields: arg_$fields,
      );
      checkGoogleBytestreamMedia(response as api.GoogleBytestreamMedia);
    });
  });

  unittest.group('resource-PartnersResource', () {
    unittest.test('method--editAssignedTargetingOptions', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).partners;
      final arg_request = buildBulkEditPartnerAssignedTargetingOptionsRequest();
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .BulkEditPartnerAssignedTargetingOptionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkEditPartnerAssignedTargetingOptionsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
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
            buildBulkEditPartnerAssignedTargetingOptionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.editAssignedTargetingOptions(
        arg_request,
        arg_partnerId,
        $fields: arg_$fields,
      );
      checkBulkEditPartnerAssignedTargetingOptionsResponse(
        response as api.BulkEditPartnerAssignedTargetingOptionsResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).partners;
      final arg_partnerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildPartner());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_partnerId, $fields: arg_$fields);
      checkPartner(response as api.Partner);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).partners;
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('v2/partners'),
          );
          pathOffset += 11;

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListPartnersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPartnersResponse(response as api.ListPartnersResponse);
    });
  });

  unittest.group('resource-PartnersChannelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).partners.channels;
      final arg_request = buildChannel();
      final arg_partnerId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Channel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkChannel(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildChannel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_partnerId,
        advertiserId: arg_advertiserId,
        $fields: arg_$fields,
      );
      checkChannel(response as api.Channel);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).partners.channels;
      final arg_partnerId = 'foo';
      final arg_channelId = 'foo';
      final arg_advertiserId = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildChannel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_partnerId,
        arg_channelId,
        advertiserId: arg_advertiserId,
        $fields: arg_$fields,
      );
      checkChannel(response as api.Channel);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).partners.channels;
      final arg_partnerId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListChannelsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_partnerId,
        advertiserId: arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListChannelsResponse(response as api.ListChannelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).partners.channels;
      final arg_request = buildChannel();
      final arg_partnerId = 'foo';
      final arg_channelId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Channel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkChannel(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildChannel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_partnerId,
        arg_channelId,
        advertiserId: arg_advertiserId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkChannel(response as api.Channel);
    });
  });

  unittest.group('resource-PartnersChannelsSitesResource', () {
    unittest.test('method--bulkEdit', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).partners.channels.sites;
      final arg_request = buildBulkEditSitesRequest();
      final arg_partnerId = 'foo';
      final arg_channelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BulkEditSitesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkEditSitesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
          index = path.indexOf('/channels/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_partnerId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/channels/'),
          );
          pathOffset += 10;
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
          final resp = convert.json.encode(buildBulkEditSitesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkEdit(
        arg_request,
        arg_partnerId,
        arg_channelId,
        $fields: arg_$fields,
      );
      checkBulkEditSitesResponse(response as api.BulkEditSitesResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).partners.channels.sites;
      final arg_request = buildSite();
      final arg_partnerId = 'foo';
      final arg_channelId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Site.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSite(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
          index = path.indexOf('/channels/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_partnerId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/channels/'),
          );
          pathOffset += 10;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSite());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_partnerId,
        arg_channelId,
        advertiserId: arg_advertiserId,
        $fields: arg_$fields,
      );
      checkSite(response as api.Site);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).partners.channels.sites;
      final arg_partnerId = 'foo';
      final arg_channelId = 'foo';
      final arg_urlOrAppId = 'foo';
      final arg_advertiserId = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
          index = path.indexOf('/channels/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_partnerId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/channels/'),
          );
          pathOffset += 10;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_partnerId,
        arg_channelId,
        arg_urlOrAppId,
        advertiserId: arg_advertiserId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).partners.channels.sites;
      final arg_partnerId = 'foo';
      final arg_channelId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListSitesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_partnerId,
        arg_channelId,
        advertiserId: arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSitesResponse(response as api.ListSitesResponse);
    });

    unittest.test('method--replace', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).partners.channels.sites;
      final arg_request = buildReplaceSitesRequest();
      final arg_partnerId = 'foo';
      final arg_channelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ReplaceSitesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReplaceSitesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
          index = path.indexOf('/channels/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_partnerId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/channels/'),
          );
          pathOffset += 10;
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
          final resp = convert.json.encode(buildReplaceSitesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.replace(
        arg_request,
        arg_partnerId,
        arg_channelId,
        $fields: arg_$fields,
      );
      checkReplaceSitesResponse(response as api.ReplaceSitesResponse);
    });
  });

  unittest.group('resource-PartnersTargetingTypesAssignedTargetingOptionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).partners.targetingTypes.assignedTargetingOptions;
      final arg_request = buildAssignedTargetingOption();
      final arg_partnerId = 'foo';
      final arg_targetingType = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AssignedTargetingOption.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAssignedTargetingOption(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildAssignedTargetingOption());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_partnerId,
        arg_targetingType,
        $fields: arg_$fields,
      );
      checkAssignedTargetingOption(response as api.AssignedTargetingOption);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).partners.targetingTypes.assignedTargetingOptions;
      final arg_partnerId = 'foo';
      final arg_targetingType = 'foo';
      final arg_assignedTargetingOptionId = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_partnerId,
        arg_targetingType,
        arg_assignedTargetingOptionId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).partners.targetingTypes.assignedTargetingOptions;
      final arg_partnerId = 'foo';
      final arg_targetingType = 'foo';
      final arg_assignedTargetingOptionId = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildAssignedTargetingOption());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_partnerId,
        arg_targetingType,
        arg_assignedTargetingOptionId,
        $fields: arg_$fields,
      );
      checkAssignedTargetingOption(response as api.AssignedTargetingOption);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DisplayVideoApi(
            mock,
          ).partners.targetingTypes.assignedTargetingOptions;
      final arg_partnerId = 'foo';
      final arg_targetingType = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/partners/'),
          );
          pathOffset += 12;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListPartnerAssignedTargetingOptionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_partnerId,
        arg_targetingType,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPartnerAssignedTargetingOptionsResponse(
        response as api.ListPartnerAssignedTargetingOptionsResponse,
      );
    });
  });

  unittest.group('resource-SdfdownloadtasksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).sdfdownloadtasks;
      final arg_request = buildCreateSdfDownloadTaskRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateSdfDownloadTaskRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateSdfDownloadTaskRequest(obj);

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
            unittest.equals('v2/sdfdownloadtasks'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-SdfdownloadtasksOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).sdfdownloadtasks.operations;
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
            unittest.equals('v2/'),
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
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-TargetingTypesTargetingOptionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).targetingTypes.targetingOptions;
      final arg_targetingType = 'foo';
      final arg_targetingOptionId = 'foo';
      final arg_advertiserId = 'foo';
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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v2/targetingTypes/'),
          );
          pathOffset += 18;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTargetingOption());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_targetingType,
        arg_targetingOptionId,
        advertiserId: arg_advertiserId,
        $fields: arg_$fields,
      );
      checkTargetingOption(response as api.TargetingOption);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).targetingTypes.targetingOptions;
      final arg_targetingType = 'foo';
      final arg_advertiserId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v2/targetingTypes/'),
          );
          pathOffset += 18;
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
            queryMap['advertiserId']!.first,
            unittest.equals(arg_advertiserId),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListTargetingOptionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_targetingType,
        advertiserId: arg_advertiserId,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListTargetingOptionsResponse(
        response as api.ListTargetingOptionsResponse,
      );
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).targetingTypes.targetingOptions;
      final arg_request = buildSearchTargetingOptionsRequest();
      final arg_targetingType = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SearchTargetingOptionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSearchTargetingOptionsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v2/targetingTypes/'),
          );
          pathOffset += 18;
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
            buildSearchTargetingOptionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_request,
        arg_targetingType,
        $fields: arg_$fields,
      );
      checkSearchTargetingOptionsResponse(
        response as api.SearchTargetingOptionsResponse,
      );
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--bulkEditAssignedUserRoles', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).users;
      final arg_request = buildBulkEditAssignedUserRolesRequest();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BulkEditAssignedUserRolesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBulkEditAssignedUserRolesRequest(obj);

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
            unittest.equals('v2/users/'),
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
            buildBulkEditAssignedUserRolesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.bulkEditAssignedUserRoles(
        arg_request,
        arg_userId,
        $fields: arg_$fields,
      );
      checkBulkEditAssignedUserRolesResponse(
        response as api.BulkEditAssignedUserRolesResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).users;
      final arg_request = buildUser();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.User.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUser(obj);

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
            unittest.equals('v2/users'),
          );
          pathOffset += 8;

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
          final resp = convert.json.encode(buildUser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).users;
      final arg_userId = 'foo';
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
            unittest.equals('v2/users/'),
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_userId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).users;
      final arg_userId = 'foo';
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
            unittest.equals('v2/users/'),
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
          final resp = convert.json.encode(buildUser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_userId, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).users;
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            unittest.equals('v2/users'),
          );
          pathOffset += 8;

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListUsersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListUsersResponse(response as api.ListUsersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DisplayVideoApi(mock).users;
      final arg_request = buildUser();
      final arg_userId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.User.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUser(obj);

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
            unittest.equals('v2/users/'),
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildUser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_userId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkUser(response as api.User);
    });
  });
}
