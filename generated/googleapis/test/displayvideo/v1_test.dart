// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/displayvideo/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterActivateManualTriggerRequest = 0;
api.ActivateManualTriggerRequest buildActivateManualTriggerRequest() {
  var o = api.ActivateManualTriggerRequest();
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
  var o = api.ActiveViewVideoViewabilityMetricConfig();
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
    api.ActiveViewVideoViewabilityMetricConfig o) {
  buildCounterActiveViewVideoViewabilityMetricConfig++;
  if (buildCounterActiveViewVideoViewabilityMetricConfig < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.minimumDuration, unittest.equals('foo'));
    unittest.expect(o.minimumQuartile, unittest.equals('foo'));
    unittest.expect(o.minimumViewability, unittest.equals('foo'));
    unittest.expect(o.minimumVolume, unittest.equals('foo'));
  }
  buildCounterActiveViewVideoViewabilityMetricConfig--;
}

core.List<core.String> buildUnnamed4963() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4963(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdloox = 0;
api.Adloox buildAdloox() {
  var o = api.Adloox();
  buildCounterAdloox++;
  if (buildCounterAdloox < 3) {
    o.excludedAdlooxCategories = buildUnnamed4963();
  }
  buildCounterAdloox--;
  return o;
}

void checkAdloox(api.Adloox o) {
  buildCounterAdloox++;
  if (buildCounterAdloox < 3) {
    checkUnnamed4963(o.excludedAdlooxCategories);
  }
  buildCounterAdloox--;
}

core.int buildCounterAdvertiser = 0;
api.Advertiser buildAdvertiser() {
  var o = api.Advertiser();
  buildCounterAdvertiser++;
  if (buildCounterAdvertiser < 3) {
    o.adServerConfig = buildAdvertiserAdServerConfig();
    o.advertiserId = 'foo';
    o.creativeConfig = buildAdvertiserCreativeConfig();
    o.dataAccessConfig = buildAdvertiserDataAccessConfig();
    o.displayName = 'foo';
    o.entityStatus = 'foo';
    o.generalConfig = buildAdvertiserGeneralConfig();
    o.integrationDetails = buildIntegrationDetails();
    o.name = 'foo';
    o.partnerId = 'foo';
    o.servingConfig = buildAdvertiserTargetingConfig();
    o.updateTime = 'foo';
  }
  buildCounterAdvertiser--;
  return o;
}

void checkAdvertiser(api.Advertiser o) {
  buildCounterAdvertiser++;
  if (buildCounterAdvertiser < 3) {
    checkAdvertiserAdServerConfig(
        o.adServerConfig as api.AdvertiserAdServerConfig);
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkAdvertiserCreativeConfig(
        o.creativeConfig as api.AdvertiserCreativeConfig);
    checkAdvertiserDataAccessConfig(
        o.dataAccessConfig as api.AdvertiserDataAccessConfig);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    checkAdvertiserGeneralConfig(
        o.generalConfig as api.AdvertiserGeneralConfig);
    checkIntegrationDetails(o.integrationDetails as api.IntegrationDetails);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.partnerId, unittest.equals('foo'));
    checkAdvertiserTargetingConfig(
        o.servingConfig as api.AdvertiserTargetingConfig);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterAdvertiser--;
}

core.int buildCounterAdvertiserAdServerConfig = 0;
api.AdvertiserAdServerConfig buildAdvertiserAdServerConfig() {
  var o = api.AdvertiserAdServerConfig();
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
    checkCmHybridConfig(o.cmHybridConfig as api.CmHybridConfig);
    checkThirdPartyOnlyConfig(
        o.thirdPartyOnlyConfig as api.ThirdPartyOnlyConfig);
  }
  buildCounterAdvertiserAdServerConfig--;
}

core.int buildCounterAdvertiserCreativeConfig = 0;
api.AdvertiserCreativeConfig buildAdvertiserCreativeConfig() {
  var o = api.AdvertiserCreativeConfig();
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
    unittest.expect(o.dynamicCreativeEnabled, unittest.isTrue);
    unittest.expect(o.iasClientId, unittest.equals('foo'));
    unittest.expect(o.obaComplianceDisabled, unittest.isTrue);
    unittest.expect(o.videoCreativeDataSharingAuthorized, unittest.isTrue);
  }
  buildCounterAdvertiserCreativeConfig--;
}

core.int buildCounterAdvertiserDataAccessConfig = 0;
api.AdvertiserDataAccessConfig buildAdvertiserDataAccessConfig() {
  var o = api.AdvertiserDataAccessConfig();
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
    checkAdvertiserSdfConfig(o.sdfConfig as api.AdvertiserSdfConfig);
  }
  buildCounterAdvertiserDataAccessConfig--;
}

core.int buildCounterAdvertiserGeneralConfig = 0;
api.AdvertiserGeneralConfig buildAdvertiserGeneralConfig() {
  var o = api.AdvertiserGeneralConfig();
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
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.domainUrl, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterAdvertiserGeneralConfig--;
}

core.int buildCounterAdvertiserSdfConfig = 0;
api.AdvertiserSdfConfig buildAdvertiserSdfConfig() {
  var o = api.AdvertiserSdfConfig();
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
    unittest.expect(o.overridePartnerSdfConfig, unittest.isTrue);
    checkSdfConfig(o.sdfConfig as api.SdfConfig);
  }
  buildCounterAdvertiserSdfConfig--;
}

core.int buildCounterAdvertiserTargetingConfig = 0;
api.AdvertiserTargetingConfig buildAdvertiserTargetingConfig() {
  var o = api.AdvertiserTargetingConfig();
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
    unittest.expect(o.exemptTvFromViewabilityTargeting, unittest.isTrue);
  }
  buildCounterAdvertiserTargetingConfig--;
}

core.int buildCounterAgeRangeAssignedTargetingOptionDetails = 0;
api.AgeRangeAssignedTargetingOptionDetails
    buildAgeRangeAssignedTargetingOptionDetails() {
  var o = api.AgeRangeAssignedTargetingOptionDetails();
  buildCounterAgeRangeAssignedTargetingOptionDetails++;
  if (buildCounterAgeRangeAssignedTargetingOptionDetails < 3) {
    o.ageRange = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterAgeRangeAssignedTargetingOptionDetails--;
  return o;
}

void checkAgeRangeAssignedTargetingOptionDetails(
    api.AgeRangeAssignedTargetingOptionDetails o) {
  buildCounterAgeRangeAssignedTargetingOptionDetails++;
  if (buildCounterAgeRangeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.ageRange, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterAgeRangeAssignedTargetingOptionDetails--;
}

core.int buildCounterAgeRangeTargetingOptionDetails = 0;
api.AgeRangeTargetingOptionDetails buildAgeRangeTargetingOptionDetails() {
  var o = api.AgeRangeTargetingOptionDetails();
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
    unittest.expect(o.ageRange, unittest.equals('foo'));
  }
  buildCounterAgeRangeTargetingOptionDetails--;
}

core.int buildCounterAppAssignedTargetingOptionDetails = 0;
api.AppAssignedTargetingOptionDetails buildAppAssignedTargetingOptionDetails() {
  var o = api.AppAssignedTargetingOptionDetails();
  buildCounterAppAssignedTargetingOptionDetails++;
  if (buildCounterAppAssignedTargetingOptionDetails < 3) {
    o.appId = 'foo';
    o.displayName = 'foo';
    o.negative = true;
  }
  buildCounterAppAssignedTargetingOptionDetails--;
  return o;
}

void checkAppAssignedTargetingOptionDetails(
    api.AppAssignedTargetingOptionDetails o) {
  buildCounterAppAssignedTargetingOptionDetails++;
  if (buildCounterAppAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.appId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.negative, unittest.isTrue);
  }
  buildCounterAppAssignedTargetingOptionDetails--;
}

core.int buildCounterAppCategoryAssignedTargetingOptionDetails = 0;
api.AppCategoryAssignedTargetingOptionDetails
    buildAppCategoryAssignedTargetingOptionDetails() {
  var o = api.AppCategoryAssignedTargetingOptionDetails();
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
    api.AppCategoryAssignedTargetingOptionDetails o) {
  buildCounterAppCategoryAssignedTargetingOptionDetails++;
  if (buildCounterAppCategoryAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.negative, unittest.isTrue);
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterAppCategoryAssignedTargetingOptionDetails--;
}

core.int buildCounterAppCategoryTargetingOptionDetails = 0;
api.AppCategoryTargetingOptionDetails buildAppCategoryTargetingOptionDetails() {
  var o = api.AppCategoryTargetingOptionDetails();
  buildCounterAppCategoryTargetingOptionDetails++;
  if (buildCounterAppCategoryTargetingOptionDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterAppCategoryTargetingOptionDetails--;
  return o;
}

void checkAppCategoryTargetingOptionDetails(
    api.AppCategoryTargetingOptionDetails o) {
  buildCounterAppCategoryTargetingOptionDetails++;
  if (buildCounterAppCategoryTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterAppCategoryTargetingOptionDetails--;
}

core.int buildCounterAsset = 0;
api.Asset buildAsset() {
  var o = api.Asset();
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
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.mediaId, unittest.equals('foo'));
  }
  buildCounterAsset--;
}

core.int buildCounterAssetAssociation = 0;
api.AssetAssociation buildAssetAssociation() {
  var o = api.AssetAssociation();
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
    checkAsset(o.asset as api.Asset);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterAssetAssociation--;
}

core.int buildCounterAssignedInventorySource = 0;
api.AssignedInventorySource buildAssignedInventorySource() {
  var o = api.AssignedInventorySource();
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
    unittest.expect(o.assignedInventorySourceId, unittest.equals('foo'));
    unittest.expect(o.inventorySourceId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAssignedInventorySource--;
}

core.int buildCounterAssignedLocation = 0;
api.AssignedLocation buildAssignedLocation() {
  var o = api.AssignedLocation();
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
    unittest.expect(o.assignedLocationId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterAssignedLocation--;
}

core.int buildCounterAssignedTargetingOption = 0;
api.AssignedTargetingOption buildAssignedTargetingOption() {
  var o = api.AssignedTargetingOption();
  buildCounterAssignedTargetingOption++;
  if (buildCounterAssignedTargetingOption < 3) {
    o.ageRangeDetails = buildAgeRangeAssignedTargetingOptionDetails();
    o.appCategoryDetails = buildAppCategoryAssignedTargetingOptionDetails();
    o.appDetails = buildAppAssignedTargetingOptionDetails();
    o.assignedTargetingOptionId = 'foo';
    o.audienceGroupDetails = buildAudienceGroupAssignedTargetingOptionDetails();
    o.authorizedSellerStatusDetails =
        buildAuthorizedSellerStatusAssignedTargetingOptionDetails();
    o.browserDetails = buildBrowserAssignedTargetingOptionDetails();
    o.carrierAndIspDetails = buildCarrierAndIspAssignedTargetingOptionDetails();
    o.categoryDetails = buildCategoryAssignedTargetingOptionDetails();
    o.channelDetails = buildChannelAssignedTargetingOptionDetails();
    o.contentInstreamPositionDetails =
        buildContentInstreamPositionAssignedTargetingOptionDetails();
    o.contentOutstreamPositionDetails =
        buildContentOutstreamPositionAssignedTargetingOptionDetails();
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
    o.negativeKeywordListDetails =
        buildNegativeKeywordListAssignedTargetingOptionDetails();
    o.onScreenPositionDetails =
        buildOnScreenPositionAssignedTargetingOptionDetails();
    o.operatingSystemDetails =
        buildOperatingSystemAssignedTargetingOptionDetails();
    o.parentalStatusDetails =
        buildParentalStatusAssignedTargetingOptionDetails();
    o.proximityLocationListDetails =
        buildProximityLocationListAssignedTargetingOptionDetails();
    o.regionalLocationListDetails =
        buildRegionalLocationListAssignedTargetingOptionDetails();
    o.sensitiveCategoryExclusionDetails =
        buildSensitiveCategoryAssignedTargetingOptionDetails();
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
  }
  buildCounterAssignedTargetingOption--;
  return o;
}

void checkAssignedTargetingOption(api.AssignedTargetingOption o) {
  buildCounterAssignedTargetingOption++;
  if (buildCounterAssignedTargetingOption < 3) {
    checkAgeRangeAssignedTargetingOptionDetails(
        o.ageRangeDetails as api.AgeRangeAssignedTargetingOptionDetails);
    checkAppCategoryAssignedTargetingOptionDetails(
        o.appCategoryDetails as api.AppCategoryAssignedTargetingOptionDetails);
    checkAppAssignedTargetingOptionDetails(
        o.appDetails as api.AppAssignedTargetingOptionDetails);
    unittest.expect(o.assignedTargetingOptionId, unittest.equals('foo'));
    checkAudienceGroupAssignedTargetingOptionDetails(o.audienceGroupDetails
        as api.AudienceGroupAssignedTargetingOptionDetails);
    checkAuthorizedSellerStatusAssignedTargetingOptionDetails(
        o.authorizedSellerStatusDetails
            as api.AuthorizedSellerStatusAssignedTargetingOptionDetails);
    checkBrowserAssignedTargetingOptionDetails(
        o.browserDetails as api.BrowserAssignedTargetingOptionDetails);
    checkCarrierAndIspAssignedTargetingOptionDetails(o.carrierAndIspDetails
        as api.CarrierAndIspAssignedTargetingOptionDetails);
    checkCategoryAssignedTargetingOptionDetails(
        o.categoryDetails as api.CategoryAssignedTargetingOptionDetails);
    checkChannelAssignedTargetingOptionDetails(
        o.channelDetails as api.ChannelAssignedTargetingOptionDetails);
    checkContentInstreamPositionAssignedTargetingOptionDetails(
        o.contentInstreamPositionDetails
            as api.ContentInstreamPositionAssignedTargetingOptionDetails);
    checkContentOutstreamPositionAssignedTargetingOptionDetails(
        o.contentOutstreamPositionDetails
            as api.ContentOutstreamPositionAssignedTargetingOptionDetails);
    checkDayAndTimeAssignedTargetingOptionDetails(
        o.dayAndTimeDetails as api.DayAndTimeAssignedTargetingOptionDetails);
    checkDeviceMakeModelAssignedTargetingOptionDetails(o.deviceMakeModelDetails
        as api.DeviceMakeModelAssignedTargetingOptionDetails);
    checkDeviceTypeAssignedTargetingOptionDetails(
        o.deviceTypeDetails as api.DeviceTypeAssignedTargetingOptionDetails);
    checkDigitalContentLabelAssignedTargetingOptionDetails(
        o.digitalContentLabelExclusionDetails
            as api.DigitalContentLabelAssignedTargetingOptionDetails);
    checkEnvironmentAssignedTargetingOptionDetails(
        o.environmentDetails as api.EnvironmentAssignedTargetingOptionDetails);
    checkExchangeAssignedTargetingOptionDetails(
        o.exchangeDetails as api.ExchangeAssignedTargetingOptionDetails);
    checkGenderAssignedTargetingOptionDetails(
        o.genderDetails as api.GenderAssignedTargetingOptionDetails);
    checkGeoRegionAssignedTargetingOptionDetails(
        o.geoRegionDetails as api.GeoRegionAssignedTargetingOptionDetails);
    checkHouseholdIncomeAssignedTargetingOptionDetails(o.householdIncomeDetails
        as api.HouseholdIncomeAssignedTargetingOptionDetails);
    unittest.expect(o.inheritance, unittest.equals('foo'));
    checkInventorySourceAssignedTargetingOptionDetails(o.inventorySourceDetails
        as api.InventorySourceAssignedTargetingOptionDetails);
    checkInventorySourceGroupAssignedTargetingOptionDetails(
        o.inventorySourceGroupDetails
            as api.InventorySourceGroupAssignedTargetingOptionDetails);
    checkKeywordAssignedTargetingOptionDetails(
        o.keywordDetails as api.KeywordAssignedTargetingOptionDetails);
    checkLanguageAssignedTargetingOptionDetails(
        o.languageDetails as api.LanguageAssignedTargetingOptionDetails);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNegativeKeywordListAssignedTargetingOptionDetails(
        o.negativeKeywordListDetails
            as api.NegativeKeywordListAssignedTargetingOptionDetails);
    checkOnScreenPositionAssignedTargetingOptionDetails(
        o.onScreenPositionDetails
            as api.OnScreenPositionAssignedTargetingOptionDetails);
    checkOperatingSystemAssignedTargetingOptionDetails(o.operatingSystemDetails
        as api.OperatingSystemAssignedTargetingOptionDetails);
    checkParentalStatusAssignedTargetingOptionDetails(o.parentalStatusDetails
        as api.ParentalStatusAssignedTargetingOptionDetails);
    checkProximityLocationListAssignedTargetingOptionDetails(
        o.proximityLocationListDetails
            as api.ProximityLocationListAssignedTargetingOptionDetails);
    checkRegionalLocationListAssignedTargetingOptionDetails(
        o.regionalLocationListDetails
            as api.RegionalLocationListAssignedTargetingOptionDetails);
    checkSensitiveCategoryAssignedTargetingOptionDetails(
        o.sensitiveCategoryExclusionDetails
            as api.SensitiveCategoryAssignedTargetingOptionDetails);
    checkSubExchangeAssignedTargetingOptionDetails(
        o.subExchangeDetails as api.SubExchangeAssignedTargetingOptionDetails);
    unittest.expect(o.targetingType, unittest.equals('foo'));
    checkThirdPartyVerifierAssignedTargetingOptionDetails(
        o.thirdPartyVerifierDetails
            as api.ThirdPartyVerifierAssignedTargetingOptionDetails);
    checkUrlAssignedTargetingOptionDetails(
        o.urlDetails as api.UrlAssignedTargetingOptionDetails);
    checkUserRewardedContentAssignedTargetingOptionDetails(
        o.userRewardedContentDetails
            as api.UserRewardedContentAssignedTargetingOptionDetails);
    checkVideoPlayerSizeAssignedTargetingOptionDetails(o.videoPlayerSizeDetails
        as api.VideoPlayerSizeAssignedTargetingOptionDetails);
    checkViewabilityAssignedTargetingOptionDetails(
        o.viewabilityDetails as api.ViewabilityAssignedTargetingOptionDetails);
  }
  buildCounterAssignedTargetingOption--;
}

core.int buildCounterAssignedUserRole = 0;
api.AssignedUserRole buildAssignedUserRole() {
  var o = api.AssignedUserRole();
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
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.assignedUserRoleId, unittest.equals('foo'));
    unittest.expect(o.partnerId, unittest.equals('foo'));
    unittest.expect(o.userRole, unittest.equals('foo'));
  }
  buildCounterAssignedUserRole--;
}

core.List<api.FirstAndThirdPartyAudienceGroup> buildUnnamed4964() {
  var o = <api.FirstAndThirdPartyAudienceGroup>[];
  o.add(buildFirstAndThirdPartyAudienceGroup());
  o.add(buildFirstAndThirdPartyAudienceGroup());
  return o;
}

void checkUnnamed4964(core.List<api.FirstAndThirdPartyAudienceGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirstAndThirdPartyAudienceGroup(
      o[0] as api.FirstAndThirdPartyAudienceGroup);
  checkFirstAndThirdPartyAudienceGroup(
      o[1] as api.FirstAndThirdPartyAudienceGroup);
}

core.int buildCounterAudienceGroupAssignedTargetingOptionDetails = 0;
api.AudienceGroupAssignedTargetingOptionDetails
    buildAudienceGroupAssignedTargetingOptionDetails() {
  var o = api.AudienceGroupAssignedTargetingOptionDetails();
  buildCounterAudienceGroupAssignedTargetingOptionDetails++;
  if (buildCounterAudienceGroupAssignedTargetingOptionDetails < 3) {
    o.excludedFirstAndThirdPartyAudienceGroup =
        buildFirstAndThirdPartyAudienceGroup();
    o.excludedGoogleAudienceGroup = buildGoogleAudienceGroup();
    o.includedCombinedAudienceGroup = buildCombinedAudienceGroup();
    o.includedCustomListGroup = buildCustomListGroup();
    o.includedFirstAndThirdPartyAudienceGroups = buildUnnamed4964();
    o.includedGoogleAudienceGroup = buildGoogleAudienceGroup();
  }
  buildCounterAudienceGroupAssignedTargetingOptionDetails--;
  return o;
}

void checkAudienceGroupAssignedTargetingOptionDetails(
    api.AudienceGroupAssignedTargetingOptionDetails o) {
  buildCounterAudienceGroupAssignedTargetingOptionDetails++;
  if (buildCounterAudienceGroupAssignedTargetingOptionDetails < 3) {
    checkFirstAndThirdPartyAudienceGroup(
        o.excludedFirstAndThirdPartyAudienceGroup
            as api.FirstAndThirdPartyAudienceGroup);
    checkGoogleAudienceGroup(
        o.excludedGoogleAudienceGroup as api.GoogleAudienceGroup);
    checkCombinedAudienceGroup(
        o.includedCombinedAudienceGroup as api.CombinedAudienceGroup);
    checkCustomListGroup(o.includedCustomListGroup as api.CustomListGroup);
    checkUnnamed4964(o.includedFirstAndThirdPartyAudienceGroups);
    checkGoogleAudienceGroup(
        o.includedGoogleAudienceGroup as api.GoogleAudienceGroup);
  }
  buildCounterAudienceGroupAssignedTargetingOptionDetails--;
}

core.int buildCounterAudioVideoOffset = 0;
api.AudioVideoOffset buildAudioVideoOffset() {
  var o = api.AudioVideoOffset();
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
    unittest.expect(o.percentage, unittest.equals('foo'));
    unittest.expect(o.seconds, unittest.equals('foo'));
  }
  buildCounterAudioVideoOffset--;
}

core.int buildCounterAuditAdvertiserResponse = 0;
api.AuditAdvertiserResponse buildAuditAdvertiserResponse() {
  var o = api.AuditAdvertiserResponse();
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
    unittest.expect(o.adGroupCriteriaCount, unittest.equals('foo'));
    unittest.expect(o.campaignCriteriaCount, unittest.equals('foo'));
    unittest.expect(o.channelsCount, unittest.equals('foo'));
    unittest.expect(o.negativeKeywordListsCount, unittest.equals('foo'));
    unittest.expect(o.negativelyTargetedChannelsCount, unittest.equals('foo'));
    unittest.expect(o.usedCampaignsCount, unittest.equals('foo'));
    unittest.expect(o.usedInsertionOrdersCount, unittest.equals('foo'));
    unittest.expect(o.usedLineItemsCount, unittest.equals('foo'));
  }
  buildCounterAuditAdvertiserResponse--;
}

core.int buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails = 0;
api.AuthorizedSellerStatusAssignedTargetingOptionDetails
    buildAuthorizedSellerStatusAssignedTargetingOptionDetails() {
  var o = api.AuthorizedSellerStatusAssignedTargetingOptionDetails();
  buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails++;
  if (buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails < 3) {
    o.authorizedSellerStatus = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails--;
  return o;
}

void checkAuthorizedSellerStatusAssignedTargetingOptionDetails(
    api.AuthorizedSellerStatusAssignedTargetingOptionDetails o) {
  buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails++;
  if (buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.authorizedSellerStatus, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterAuthorizedSellerStatusAssignedTargetingOptionDetails--;
}

core.int buildCounterAuthorizedSellerStatusTargetingOptionDetails = 0;
api.AuthorizedSellerStatusTargetingOptionDetails
    buildAuthorizedSellerStatusTargetingOptionDetails() {
  var o = api.AuthorizedSellerStatusTargetingOptionDetails();
  buildCounterAuthorizedSellerStatusTargetingOptionDetails++;
  if (buildCounterAuthorizedSellerStatusTargetingOptionDetails < 3) {
    o.authorizedSellerStatus = 'foo';
  }
  buildCounterAuthorizedSellerStatusTargetingOptionDetails--;
  return o;
}

void checkAuthorizedSellerStatusTargetingOptionDetails(
    api.AuthorizedSellerStatusTargetingOptionDetails o) {
  buildCounterAuthorizedSellerStatusTargetingOptionDetails++;
  if (buildCounterAuthorizedSellerStatusTargetingOptionDetails < 3) {
    unittest.expect(o.authorizedSellerStatus, unittest.equals('foo'));
  }
  buildCounterAuthorizedSellerStatusTargetingOptionDetails--;
}

core.int buildCounterBiddingStrategy = 0;
api.BiddingStrategy buildBiddingStrategy() {
  var o = api.BiddingStrategy();
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
    checkFixedBidStrategy(o.fixedBid as api.FixedBidStrategy);
    checkMaximizeSpendBidStrategy(
        o.maximizeSpendAutoBid as api.MaximizeSpendBidStrategy);
    checkPerformanceGoalBidStrategy(
        o.performanceGoalAutoBid as api.PerformanceGoalBidStrategy);
  }
  buildCounterBiddingStrategy--;
}

core.int buildCounterBrowserAssignedTargetingOptionDetails = 0;
api.BrowserAssignedTargetingOptionDetails
    buildBrowserAssignedTargetingOptionDetails() {
  var o = api.BrowserAssignedTargetingOptionDetails();
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
    api.BrowserAssignedTargetingOptionDetails o) {
  buildCounterBrowserAssignedTargetingOptionDetails++;
  if (buildCounterBrowserAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.negative, unittest.isTrue);
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterBrowserAssignedTargetingOptionDetails--;
}

core.int buildCounterBrowserTargetingOptionDetails = 0;
api.BrowserTargetingOptionDetails buildBrowserTargetingOptionDetails() {
  var o = api.BrowserTargetingOptionDetails();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterBrowserTargetingOptionDetails--;
}

core.List<api.CreateAssignedTargetingOptionsRequest> buildUnnamed4965() {
  var o = <api.CreateAssignedTargetingOptionsRequest>[];
  o.add(buildCreateAssignedTargetingOptionsRequest());
  o.add(buildCreateAssignedTargetingOptionsRequest());
  return o;
}

void checkUnnamed4965(core.List<api.CreateAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateAssignedTargetingOptionsRequest(
      o[0] as api.CreateAssignedTargetingOptionsRequest);
  checkCreateAssignedTargetingOptionsRequest(
      o[1] as api.CreateAssignedTargetingOptionsRequest);
}

core.List<api.DeleteAssignedTargetingOptionsRequest> buildUnnamed4966() {
  var o = <api.DeleteAssignedTargetingOptionsRequest>[];
  o.add(buildDeleteAssignedTargetingOptionsRequest());
  o.add(buildDeleteAssignedTargetingOptionsRequest());
  return o;
}

void checkUnnamed4966(core.List<api.DeleteAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeleteAssignedTargetingOptionsRequest(
      o[0] as api.DeleteAssignedTargetingOptionsRequest);
  checkDeleteAssignedTargetingOptionsRequest(
      o[1] as api.DeleteAssignedTargetingOptionsRequest);
}

core.int buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest = 0;
api.BulkEditAdvertiserAssignedTargetingOptionsRequest
    buildBulkEditAdvertiserAssignedTargetingOptionsRequest() {
  var o = api.BulkEditAdvertiserAssignedTargetingOptionsRequest();
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest < 3) {
    o.createRequests = buildUnnamed4965();
    o.deleteRequests = buildUnnamed4966();
  }
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest--;
  return o;
}

void checkBulkEditAdvertiserAssignedTargetingOptionsRequest(
    api.BulkEditAdvertiserAssignedTargetingOptionsRequest o) {
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest < 3) {
    checkUnnamed4965(o.createRequests);
    checkUnnamed4966(o.deleteRequests);
  }
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4967() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4967(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0] as api.AssignedTargetingOption);
  checkAssignedTargetingOption(o[1] as api.AssignedTargetingOption);
}

core.int buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse = 0;
api.BulkEditAdvertiserAssignedTargetingOptionsResponse
    buildBulkEditAdvertiserAssignedTargetingOptionsResponse() {
  var o = api.BulkEditAdvertiserAssignedTargetingOptionsResponse();
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse < 3) {
    o.createdAssignedTargetingOptions = buildUnnamed4967();
  }
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkEditAdvertiserAssignedTargetingOptionsResponse(
    api.BulkEditAdvertiserAssignedTargetingOptionsResponse o) {
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4967(o.createdAssignedTargetingOptions);
  }
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse--;
}

core.List<api.AssignedInventorySource> buildUnnamed4968() {
  var o = <api.AssignedInventorySource>[];
  o.add(buildAssignedInventorySource());
  o.add(buildAssignedInventorySource());
  return o;
}

void checkUnnamed4968(core.List<api.AssignedInventorySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedInventorySource(o[0] as api.AssignedInventorySource);
  checkAssignedInventorySource(o[1] as api.AssignedInventorySource);
}

core.List<core.String> buildUnnamed4969() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4969(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditAssignedInventorySourcesRequest = 0;
api.BulkEditAssignedInventorySourcesRequest
    buildBulkEditAssignedInventorySourcesRequest() {
  var o = api.BulkEditAssignedInventorySourcesRequest();
  buildCounterBulkEditAssignedInventorySourcesRequest++;
  if (buildCounterBulkEditAssignedInventorySourcesRequest < 3) {
    o.advertiserId = 'foo';
    o.createdAssignedInventorySources = buildUnnamed4968();
    o.deletedAssignedInventorySources = buildUnnamed4969();
    o.partnerId = 'foo';
  }
  buildCounterBulkEditAssignedInventorySourcesRequest--;
  return o;
}

void checkBulkEditAssignedInventorySourcesRequest(
    api.BulkEditAssignedInventorySourcesRequest o) {
  buildCounterBulkEditAssignedInventorySourcesRequest++;
  if (buildCounterBulkEditAssignedInventorySourcesRequest < 3) {
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkUnnamed4968(o.createdAssignedInventorySources);
    checkUnnamed4969(o.deletedAssignedInventorySources);
    unittest.expect(o.partnerId, unittest.equals('foo'));
  }
  buildCounterBulkEditAssignedInventorySourcesRequest--;
}

core.List<api.AssignedInventorySource> buildUnnamed4970() {
  var o = <api.AssignedInventorySource>[];
  o.add(buildAssignedInventorySource());
  o.add(buildAssignedInventorySource());
  return o;
}

void checkUnnamed4970(core.List<api.AssignedInventorySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedInventorySource(o[0] as api.AssignedInventorySource);
  checkAssignedInventorySource(o[1] as api.AssignedInventorySource);
}

core.int buildCounterBulkEditAssignedInventorySourcesResponse = 0;
api.BulkEditAssignedInventorySourcesResponse
    buildBulkEditAssignedInventorySourcesResponse() {
  var o = api.BulkEditAssignedInventorySourcesResponse();
  buildCounterBulkEditAssignedInventorySourcesResponse++;
  if (buildCounterBulkEditAssignedInventorySourcesResponse < 3) {
    o.assignedInventorySources = buildUnnamed4970();
  }
  buildCounterBulkEditAssignedInventorySourcesResponse--;
  return o;
}

void checkBulkEditAssignedInventorySourcesResponse(
    api.BulkEditAssignedInventorySourcesResponse o) {
  buildCounterBulkEditAssignedInventorySourcesResponse++;
  if (buildCounterBulkEditAssignedInventorySourcesResponse < 3) {
    checkUnnamed4970(o.assignedInventorySources);
  }
  buildCounterBulkEditAssignedInventorySourcesResponse--;
}

core.List<api.AssignedLocation> buildUnnamed4971() {
  var o = <api.AssignedLocation>[];
  o.add(buildAssignedLocation());
  o.add(buildAssignedLocation());
  return o;
}

void checkUnnamed4971(core.List<api.AssignedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedLocation(o[0] as api.AssignedLocation);
  checkAssignedLocation(o[1] as api.AssignedLocation);
}

core.List<core.String> buildUnnamed4972() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4972(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditAssignedLocationsRequest = 0;
api.BulkEditAssignedLocationsRequest buildBulkEditAssignedLocationsRequest() {
  var o = api.BulkEditAssignedLocationsRequest();
  buildCounterBulkEditAssignedLocationsRequest++;
  if (buildCounterBulkEditAssignedLocationsRequest < 3) {
    o.createdAssignedLocations = buildUnnamed4971();
    o.deletedAssignedLocations = buildUnnamed4972();
  }
  buildCounterBulkEditAssignedLocationsRequest--;
  return o;
}

void checkBulkEditAssignedLocationsRequest(
    api.BulkEditAssignedLocationsRequest o) {
  buildCounterBulkEditAssignedLocationsRequest++;
  if (buildCounterBulkEditAssignedLocationsRequest < 3) {
    checkUnnamed4971(o.createdAssignedLocations);
    checkUnnamed4972(o.deletedAssignedLocations);
  }
  buildCounterBulkEditAssignedLocationsRequest--;
}

core.List<api.AssignedLocation> buildUnnamed4973() {
  var o = <api.AssignedLocation>[];
  o.add(buildAssignedLocation());
  o.add(buildAssignedLocation());
  return o;
}

void checkUnnamed4973(core.List<api.AssignedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedLocation(o[0] as api.AssignedLocation);
  checkAssignedLocation(o[1] as api.AssignedLocation);
}

core.int buildCounterBulkEditAssignedLocationsResponse = 0;
api.BulkEditAssignedLocationsResponse buildBulkEditAssignedLocationsResponse() {
  var o = api.BulkEditAssignedLocationsResponse();
  buildCounterBulkEditAssignedLocationsResponse++;
  if (buildCounterBulkEditAssignedLocationsResponse < 3) {
    o.assignedLocations = buildUnnamed4973();
  }
  buildCounterBulkEditAssignedLocationsResponse--;
  return o;
}

void checkBulkEditAssignedLocationsResponse(
    api.BulkEditAssignedLocationsResponse o) {
  buildCounterBulkEditAssignedLocationsResponse++;
  if (buildCounterBulkEditAssignedLocationsResponse < 3) {
    checkUnnamed4973(o.assignedLocations);
  }
  buildCounterBulkEditAssignedLocationsResponse--;
}

core.List<api.AssignedUserRole> buildUnnamed4974() {
  var o = <api.AssignedUserRole>[];
  o.add(buildAssignedUserRole());
  o.add(buildAssignedUserRole());
  return o;
}

void checkUnnamed4974(core.List<api.AssignedUserRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedUserRole(o[0] as api.AssignedUserRole);
  checkAssignedUserRole(o[1] as api.AssignedUserRole);
}

core.List<core.String> buildUnnamed4975() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4975(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditAssignedUserRolesRequest = 0;
api.BulkEditAssignedUserRolesRequest buildBulkEditAssignedUserRolesRequest() {
  var o = api.BulkEditAssignedUserRolesRequest();
  buildCounterBulkEditAssignedUserRolesRequest++;
  if (buildCounterBulkEditAssignedUserRolesRequest < 3) {
    o.createdAssignedUserRoles = buildUnnamed4974();
    o.deletedAssignedUserRoles = buildUnnamed4975();
  }
  buildCounterBulkEditAssignedUserRolesRequest--;
  return o;
}

void checkBulkEditAssignedUserRolesRequest(
    api.BulkEditAssignedUserRolesRequest o) {
  buildCounterBulkEditAssignedUserRolesRequest++;
  if (buildCounterBulkEditAssignedUserRolesRequest < 3) {
    checkUnnamed4974(o.createdAssignedUserRoles);
    checkUnnamed4975(o.deletedAssignedUserRoles);
  }
  buildCounterBulkEditAssignedUserRolesRequest--;
}

core.List<api.AssignedUserRole> buildUnnamed4976() {
  var o = <api.AssignedUserRole>[];
  o.add(buildAssignedUserRole());
  o.add(buildAssignedUserRole());
  return o;
}

void checkUnnamed4976(core.List<api.AssignedUserRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedUserRole(o[0] as api.AssignedUserRole);
  checkAssignedUserRole(o[1] as api.AssignedUserRole);
}

core.int buildCounterBulkEditAssignedUserRolesResponse = 0;
api.BulkEditAssignedUserRolesResponse buildBulkEditAssignedUserRolesResponse() {
  var o = api.BulkEditAssignedUserRolesResponse();
  buildCounterBulkEditAssignedUserRolesResponse++;
  if (buildCounterBulkEditAssignedUserRolesResponse < 3) {
    o.createdAssignedUserRoles = buildUnnamed4976();
  }
  buildCounterBulkEditAssignedUserRolesResponse--;
  return o;
}

void checkBulkEditAssignedUserRolesResponse(
    api.BulkEditAssignedUserRolesResponse o) {
  buildCounterBulkEditAssignedUserRolesResponse++;
  if (buildCounterBulkEditAssignedUserRolesResponse < 3) {
    checkUnnamed4976(o.createdAssignedUserRoles);
  }
  buildCounterBulkEditAssignedUserRolesResponse--;
}

core.List<api.CreateAssignedTargetingOptionsRequest> buildUnnamed4977() {
  var o = <api.CreateAssignedTargetingOptionsRequest>[];
  o.add(buildCreateAssignedTargetingOptionsRequest());
  o.add(buildCreateAssignedTargetingOptionsRequest());
  return o;
}

void checkUnnamed4977(core.List<api.CreateAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateAssignedTargetingOptionsRequest(
      o[0] as api.CreateAssignedTargetingOptionsRequest);
  checkCreateAssignedTargetingOptionsRequest(
      o[1] as api.CreateAssignedTargetingOptionsRequest);
}

core.List<api.DeleteAssignedTargetingOptionsRequest> buildUnnamed4978() {
  var o = <api.DeleteAssignedTargetingOptionsRequest>[];
  o.add(buildDeleteAssignedTargetingOptionsRequest());
  o.add(buildDeleteAssignedTargetingOptionsRequest());
  return o;
}

void checkUnnamed4978(core.List<api.DeleteAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeleteAssignedTargetingOptionsRequest(
      o[0] as api.DeleteAssignedTargetingOptionsRequest);
  checkDeleteAssignedTargetingOptionsRequest(
      o[1] as api.DeleteAssignedTargetingOptionsRequest);
}

core.int buildCounterBulkEditLineItemAssignedTargetingOptionsRequest = 0;
api.BulkEditLineItemAssignedTargetingOptionsRequest
    buildBulkEditLineItemAssignedTargetingOptionsRequest() {
  var o = api.BulkEditLineItemAssignedTargetingOptionsRequest();
  buildCounterBulkEditLineItemAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditLineItemAssignedTargetingOptionsRequest < 3) {
    o.createRequests = buildUnnamed4977();
    o.deleteRequests = buildUnnamed4978();
  }
  buildCounterBulkEditLineItemAssignedTargetingOptionsRequest--;
  return o;
}

void checkBulkEditLineItemAssignedTargetingOptionsRequest(
    api.BulkEditLineItemAssignedTargetingOptionsRequest o) {
  buildCounterBulkEditLineItemAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditLineItemAssignedTargetingOptionsRequest < 3) {
    checkUnnamed4977(o.createRequests);
    checkUnnamed4978(o.deleteRequests);
  }
  buildCounterBulkEditLineItemAssignedTargetingOptionsRequest--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4979() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4979(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0] as api.AssignedTargetingOption);
  checkAssignedTargetingOption(o[1] as api.AssignedTargetingOption);
}

core.int buildCounterBulkEditLineItemAssignedTargetingOptionsResponse = 0;
api.BulkEditLineItemAssignedTargetingOptionsResponse
    buildBulkEditLineItemAssignedTargetingOptionsResponse() {
  var o = api.BulkEditLineItemAssignedTargetingOptionsResponse();
  buildCounterBulkEditLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditLineItemAssignedTargetingOptionsResponse < 3) {
    o.createdAssignedTargetingOptions = buildUnnamed4979();
  }
  buildCounterBulkEditLineItemAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkEditLineItemAssignedTargetingOptionsResponse(
    api.BulkEditLineItemAssignedTargetingOptionsResponse o) {
  buildCounterBulkEditLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditLineItemAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4979(o.createdAssignedTargetingOptions);
  }
  buildCounterBulkEditLineItemAssignedTargetingOptionsResponse--;
}

core.List<api.NegativeKeyword> buildUnnamed4980() {
  var o = <api.NegativeKeyword>[];
  o.add(buildNegativeKeyword());
  o.add(buildNegativeKeyword());
  return o;
}

void checkUnnamed4980(core.List<api.NegativeKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeyword(o[0] as api.NegativeKeyword);
  checkNegativeKeyword(o[1] as api.NegativeKeyword);
}

core.List<core.String> buildUnnamed4981() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4981(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditNegativeKeywordsRequest = 0;
api.BulkEditNegativeKeywordsRequest buildBulkEditNegativeKeywordsRequest() {
  var o = api.BulkEditNegativeKeywordsRequest();
  buildCounterBulkEditNegativeKeywordsRequest++;
  if (buildCounterBulkEditNegativeKeywordsRequest < 3) {
    o.createdNegativeKeywords = buildUnnamed4980();
    o.deletedNegativeKeywords = buildUnnamed4981();
  }
  buildCounterBulkEditNegativeKeywordsRequest--;
  return o;
}

void checkBulkEditNegativeKeywordsRequest(
    api.BulkEditNegativeKeywordsRequest o) {
  buildCounterBulkEditNegativeKeywordsRequest++;
  if (buildCounterBulkEditNegativeKeywordsRequest < 3) {
    checkUnnamed4980(o.createdNegativeKeywords);
    checkUnnamed4981(o.deletedNegativeKeywords);
  }
  buildCounterBulkEditNegativeKeywordsRequest--;
}

core.List<api.NegativeKeyword> buildUnnamed4982() {
  var o = <api.NegativeKeyword>[];
  o.add(buildNegativeKeyword());
  o.add(buildNegativeKeyword());
  return o;
}

void checkUnnamed4982(core.List<api.NegativeKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeyword(o[0] as api.NegativeKeyword);
  checkNegativeKeyword(o[1] as api.NegativeKeyword);
}

core.int buildCounterBulkEditNegativeKeywordsResponse = 0;
api.BulkEditNegativeKeywordsResponse buildBulkEditNegativeKeywordsResponse() {
  var o = api.BulkEditNegativeKeywordsResponse();
  buildCounterBulkEditNegativeKeywordsResponse++;
  if (buildCounterBulkEditNegativeKeywordsResponse < 3) {
    o.negativeKeywords = buildUnnamed4982();
  }
  buildCounterBulkEditNegativeKeywordsResponse--;
  return o;
}

void checkBulkEditNegativeKeywordsResponse(
    api.BulkEditNegativeKeywordsResponse o) {
  buildCounterBulkEditNegativeKeywordsResponse++;
  if (buildCounterBulkEditNegativeKeywordsResponse < 3) {
    checkUnnamed4982(o.negativeKeywords);
  }
  buildCounterBulkEditNegativeKeywordsResponse--;
}

core.List<api.CreateAssignedTargetingOptionsRequest> buildUnnamed4983() {
  var o = <api.CreateAssignedTargetingOptionsRequest>[];
  o.add(buildCreateAssignedTargetingOptionsRequest());
  o.add(buildCreateAssignedTargetingOptionsRequest());
  return o;
}

void checkUnnamed4983(core.List<api.CreateAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateAssignedTargetingOptionsRequest(
      o[0] as api.CreateAssignedTargetingOptionsRequest);
  checkCreateAssignedTargetingOptionsRequest(
      o[1] as api.CreateAssignedTargetingOptionsRequest);
}

core.List<api.DeleteAssignedTargetingOptionsRequest> buildUnnamed4984() {
  var o = <api.DeleteAssignedTargetingOptionsRequest>[];
  o.add(buildDeleteAssignedTargetingOptionsRequest());
  o.add(buildDeleteAssignedTargetingOptionsRequest());
  return o;
}

void checkUnnamed4984(core.List<api.DeleteAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeleteAssignedTargetingOptionsRequest(
      o[0] as api.DeleteAssignedTargetingOptionsRequest);
  checkDeleteAssignedTargetingOptionsRequest(
      o[1] as api.DeleteAssignedTargetingOptionsRequest);
}

core.int buildCounterBulkEditPartnerAssignedTargetingOptionsRequest = 0;
api.BulkEditPartnerAssignedTargetingOptionsRequest
    buildBulkEditPartnerAssignedTargetingOptionsRequest() {
  var o = api.BulkEditPartnerAssignedTargetingOptionsRequest();
  buildCounterBulkEditPartnerAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditPartnerAssignedTargetingOptionsRequest < 3) {
    o.createRequests = buildUnnamed4983();
    o.deleteRequests = buildUnnamed4984();
  }
  buildCounterBulkEditPartnerAssignedTargetingOptionsRequest--;
  return o;
}

void checkBulkEditPartnerAssignedTargetingOptionsRequest(
    api.BulkEditPartnerAssignedTargetingOptionsRequest o) {
  buildCounterBulkEditPartnerAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditPartnerAssignedTargetingOptionsRequest < 3) {
    checkUnnamed4983(o.createRequests);
    checkUnnamed4984(o.deleteRequests);
  }
  buildCounterBulkEditPartnerAssignedTargetingOptionsRequest--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4985() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4985(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0] as api.AssignedTargetingOption);
  checkAssignedTargetingOption(o[1] as api.AssignedTargetingOption);
}

core.int buildCounterBulkEditPartnerAssignedTargetingOptionsResponse = 0;
api.BulkEditPartnerAssignedTargetingOptionsResponse
    buildBulkEditPartnerAssignedTargetingOptionsResponse() {
  var o = api.BulkEditPartnerAssignedTargetingOptionsResponse();
  buildCounterBulkEditPartnerAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditPartnerAssignedTargetingOptionsResponse < 3) {
    o.createdAssignedTargetingOptions = buildUnnamed4985();
  }
  buildCounterBulkEditPartnerAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkEditPartnerAssignedTargetingOptionsResponse(
    api.BulkEditPartnerAssignedTargetingOptionsResponse o) {
  buildCounterBulkEditPartnerAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditPartnerAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4985(o.createdAssignedTargetingOptions);
  }
  buildCounterBulkEditPartnerAssignedTargetingOptionsResponse--;
}

core.List<api.Site> buildUnnamed4986() {
  var o = <api.Site>[];
  o.add(buildSite());
  o.add(buildSite());
  return o;
}

void checkUnnamed4986(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0] as api.Site);
  checkSite(o[1] as api.Site);
}

core.List<core.String> buildUnnamed4987() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4987(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditSitesRequest = 0;
api.BulkEditSitesRequest buildBulkEditSitesRequest() {
  var o = api.BulkEditSitesRequest();
  buildCounterBulkEditSitesRequest++;
  if (buildCounterBulkEditSitesRequest < 3) {
    o.advertiserId = 'foo';
    o.createdSites = buildUnnamed4986();
    o.deletedSites = buildUnnamed4987();
    o.partnerId = 'foo';
  }
  buildCounterBulkEditSitesRequest--;
  return o;
}

void checkBulkEditSitesRequest(api.BulkEditSitesRequest o) {
  buildCounterBulkEditSitesRequest++;
  if (buildCounterBulkEditSitesRequest < 3) {
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkUnnamed4986(o.createdSites);
    checkUnnamed4987(o.deletedSites);
    unittest.expect(o.partnerId, unittest.equals('foo'));
  }
  buildCounterBulkEditSitesRequest--;
}

core.List<api.Site> buildUnnamed4988() {
  var o = <api.Site>[];
  o.add(buildSite());
  o.add(buildSite());
  return o;
}

void checkUnnamed4988(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0] as api.Site);
  checkSite(o[1] as api.Site);
}

core.int buildCounterBulkEditSitesResponse = 0;
api.BulkEditSitesResponse buildBulkEditSitesResponse() {
  var o = api.BulkEditSitesResponse();
  buildCounterBulkEditSitesResponse++;
  if (buildCounterBulkEditSitesResponse < 3) {
    o.sites = buildUnnamed4988();
  }
  buildCounterBulkEditSitesResponse--;
  return o;
}

void checkBulkEditSitesResponse(api.BulkEditSitesResponse o) {
  buildCounterBulkEditSitesResponse++;
  if (buildCounterBulkEditSitesResponse < 3) {
    checkUnnamed4988(o.sites);
  }
  buildCounterBulkEditSitesResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4989() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4989(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0] as api.AssignedTargetingOption);
  checkAssignedTargetingOption(o[1] as api.AssignedTargetingOption);
}

core.int buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse = 0;
api.BulkListAdvertiserAssignedTargetingOptionsResponse
    buildBulkListAdvertiserAssignedTargetingOptionsResponse() {
  var o = api.BulkListAdvertiserAssignedTargetingOptionsResponse();
  buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed4989();
    o.nextPageToken = 'foo';
  }
  buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkListAdvertiserAssignedTargetingOptionsResponse(
    api.BulkListAdvertiserAssignedTargetingOptionsResponse o) {
  buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4989(o.assignedTargetingOptions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4990() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4990(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0] as api.AssignedTargetingOption);
  checkAssignedTargetingOption(o[1] as api.AssignedTargetingOption);
}

core.int buildCounterBulkListLineItemAssignedTargetingOptionsResponse = 0;
api.BulkListLineItemAssignedTargetingOptionsResponse
    buildBulkListLineItemAssignedTargetingOptionsResponse() {
  var o = api.BulkListLineItemAssignedTargetingOptionsResponse();
  buildCounterBulkListLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListLineItemAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed4990();
    o.nextPageToken = 'foo';
  }
  buildCounterBulkListLineItemAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkListLineItemAssignedTargetingOptionsResponse(
    api.BulkListLineItemAssignedTargetingOptionsResponse o) {
  buildCounterBulkListLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListLineItemAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4990(o.assignedTargetingOptions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterBulkListLineItemAssignedTargetingOptionsResponse--;
}

core.int buildCounterCampaign = 0;
api.Campaign buildCampaign() {
  var o = api.Campaign();
  buildCounterCampaign++;
  if (buildCounterCampaign < 3) {
    o.advertiserId = 'foo';
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
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkCampaignFlight(o.campaignFlight as api.CampaignFlight);
    checkCampaignGoal(o.campaignGoal as api.CampaignGoal);
    unittest.expect(o.campaignId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    checkFrequencyCap(o.frequencyCap as api.FrequencyCap);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterCampaign--;
}

core.int buildCounterCampaignFlight = 0;
api.CampaignFlight buildCampaignFlight() {
  var o = api.CampaignFlight();
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
    checkDateRange(o.plannedDates as api.DateRange);
    unittest.expect(o.plannedSpendAmountMicros, unittest.equals('foo'));
  }
  buildCounterCampaignFlight--;
}

core.int buildCounterCampaignGoal = 0;
api.CampaignGoal buildCampaignGoal() {
  var o = api.CampaignGoal();
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
    unittest.expect(o.campaignGoalType, unittest.equals('foo'));
    checkPerformanceGoal(o.performanceGoal as api.PerformanceGoal);
  }
  buildCounterCampaignGoal--;
}

core.int buildCounterCarrierAndIspAssignedTargetingOptionDetails = 0;
api.CarrierAndIspAssignedTargetingOptionDetails
    buildCarrierAndIspAssignedTargetingOptionDetails() {
  var o = api.CarrierAndIspAssignedTargetingOptionDetails();
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
    api.CarrierAndIspAssignedTargetingOptionDetails o) {
  buildCounterCarrierAndIspAssignedTargetingOptionDetails++;
  if (buildCounterCarrierAndIspAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.negative, unittest.isTrue);
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterCarrierAndIspAssignedTargetingOptionDetails--;
}

core.int buildCounterCarrierAndIspTargetingOptionDetails = 0;
api.CarrierAndIspTargetingOptionDetails
    buildCarrierAndIspTargetingOptionDetails() {
  var o = api.CarrierAndIspTargetingOptionDetails();
  buildCounterCarrierAndIspTargetingOptionDetails++;
  if (buildCounterCarrierAndIspTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.type = 'foo';
  }
  buildCounterCarrierAndIspTargetingOptionDetails--;
  return o;
}

void checkCarrierAndIspTargetingOptionDetails(
    api.CarrierAndIspTargetingOptionDetails o) {
  buildCounterCarrierAndIspTargetingOptionDetails++;
  if (buildCounterCarrierAndIspTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCarrierAndIspTargetingOptionDetails--;
}

core.int buildCounterCategoryAssignedTargetingOptionDetails = 0;
api.CategoryAssignedTargetingOptionDetails
    buildCategoryAssignedTargetingOptionDetails() {
  var o = api.CategoryAssignedTargetingOptionDetails();
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
    api.CategoryAssignedTargetingOptionDetails o) {
  buildCounterCategoryAssignedTargetingOptionDetails++;
  if (buildCounterCategoryAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.negative, unittest.isTrue);
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterCategoryAssignedTargetingOptionDetails--;
}

core.int buildCounterCategoryTargetingOptionDetails = 0;
api.CategoryTargetingOptionDetails buildCategoryTargetingOptionDetails() {
  var o = api.CategoryTargetingOptionDetails();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterCategoryTargetingOptionDetails--;
}

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  var o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.advertiserId = 'foo';
    o.channelId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.partnerId = 'foo';
  }
  buildCounterChannel--;
  return o;
}

void checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.partnerId, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.int buildCounterChannelAssignedTargetingOptionDetails = 0;
api.ChannelAssignedTargetingOptionDetails
    buildChannelAssignedTargetingOptionDetails() {
  var o = api.ChannelAssignedTargetingOptionDetails();
  buildCounterChannelAssignedTargetingOptionDetails++;
  if (buildCounterChannelAssignedTargetingOptionDetails < 3) {
    o.channelId = 'foo';
    o.negative = true;
  }
  buildCounterChannelAssignedTargetingOptionDetails--;
  return o;
}

void checkChannelAssignedTargetingOptionDetails(
    api.ChannelAssignedTargetingOptionDetails o) {
  buildCounterChannelAssignedTargetingOptionDetails++;
  if (buildCounterChannelAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.negative, unittest.isTrue);
  }
  buildCounterChannelAssignedTargetingOptionDetails--;
}

core.List<core.String> buildUnnamed4991() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4991(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCmHybridConfig = 0;
api.CmHybridConfig buildCmHybridConfig() {
  var o = api.CmHybridConfig();
  buildCounterCmHybridConfig++;
  if (buildCounterCmHybridConfig < 3) {
    o.cmAccountId = 'foo';
    o.cmFloodlightConfigId = 'foo';
    o.cmFloodlightLinkingAuthorized = true;
    o.cmSyncableSiteIds = buildUnnamed4991();
    o.dv360ToCmCostReportingEnabled = true;
    o.dv360ToCmDataSharingEnabled = true;
  }
  buildCounterCmHybridConfig--;
  return o;
}

void checkCmHybridConfig(api.CmHybridConfig o) {
  buildCounterCmHybridConfig++;
  if (buildCounterCmHybridConfig < 3) {
    unittest.expect(o.cmAccountId, unittest.equals('foo'));
    unittest.expect(o.cmFloodlightConfigId, unittest.equals('foo'));
    unittest.expect(o.cmFloodlightLinkingAuthorized, unittest.isTrue);
    checkUnnamed4991(o.cmSyncableSiteIds);
    unittest.expect(o.dv360ToCmCostReportingEnabled, unittest.isTrue);
    unittest.expect(o.dv360ToCmDataSharingEnabled, unittest.isTrue);
  }
  buildCounterCmHybridConfig--;
}

core.int buildCounterCmTrackingAd = 0;
api.CmTrackingAd buildCmTrackingAd() {
  var o = api.CmTrackingAd();
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
    unittest.expect(o.cmAdId, unittest.equals('foo'));
    unittest.expect(o.cmCreativeId, unittest.equals('foo'));
    unittest.expect(o.cmPlacementId, unittest.equals('foo'));
  }
  buildCounterCmTrackingAd--;
}

core.int buildCounterCombinedAudience = 0;
api.CombinedAudience buildCombinedAudience() {
  var o = api.CombinedAudience();
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
    unittest.expect(o.combinedAudienceId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterCombinedAudience--;
}

core.List<api.CombinedAudienceTargetingSetting> buildUnnamed4992() {
  var o = <api.CombinedAudienceTargetingSetting>[];
  o.add(buildCombinedAudienceTargetingSetting());
  o.add(buildCombinedAudienceTargetingSetting());
  return o;
}

void checkUnnamed4992(core.List<api.CombinedAudienceTargetingSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCombinedAudienceTargetingSetting(
      o[0] as api.CombinedAudienceTargetingSetting);
  checkCombinedAudienceTargetingSetting(
      o[1] as api.CombinedAudienceTargetingSetting);
}

core.int buildCounterCombinedAudienceGroup = 0;
api.CombinedAudienceGroup buildCombinedAudienceGroup() {
  var o = api.CombinedAudienceGroup();
  buildCounterCombinedAudienceGroup++;
  if (buildCounterCombinedAudienceGroup < 3) {
    o.settings = buildUnnamed4992();
  }
  buildCounterCombinedAudienceGroup--;
  return o;
}

void checkCombinedAudienceGroup(api.CombinedAudienceGroup o) {
  buildCounterCombinedAudienceGroup++;
  if (buildCounterCombinedAudienceGroup < 3) {
    checkUnnamed4992(o.settings);
  }
  buildCounterCombinedAudienceGroup--;
}

core.int buildCounterCombinedAudienceTargetingSetting = 0;
api.CombinedAudienceTargetingSetting buildCombinedAudienceTargetingSetting() {
  var o = api.CombinedAudienceTargetingSetting();
  buildCounterCombinedAudienceTargetingSetting++;
  if (buildCounterCombinedAudienceTargetingSetting < 3) {
    o.combinedAudienceId = 'foo';
  }
  buildCounterCombinedAudienceTargetingSetting--;
  return o;
}

void checkCombinedAudienceTargetingSetting(
    api.CombinedAudienceTargetingSetting o) {
  buildCounterCombinedAudienceTargetingSetting++;
  if (buildCounterCombinedAudienceTargetingSetting < 3) {
    unittest.expect(o.combinedAudienceId, unittest.equals('foo'));
  }
  buildCounterCombinedAudienceTargetingSetting--;
}

core.int buildCounterContentInstreamPositionAssignedTargetingOptionDetails = 0;
api.ContentInstreamPositionAssignedTargetingOptionDetails
    buildContentInstreamPositionAssignedTargetingOptionDetails() {
  var o = api.ContentInstreamPositionAssignedTargetingOptionDetails();
  buildCounterContentInstreamPositionAssignedTargetingOptionDetails++;
  if (buildCounterContentInstreamPositionAssignedTargetingOptionDetails < 3) {
    o.contentInstreamPosition = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterContentInstreamPositionAssignedTargetingOptionDetails--;
  return o;
}

void checkContentInstreamPositionAssignedTargetingOptionDetails(
    api.ContentInstreamPositionAssignedTargetingOptionDetails o) {
  buildCounterContentInstreamPositionAssignedTargetingOptionDetails++;
  if (buildCounterContentInstreamPositionAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.contentInstreamPosition, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterContentInstreamPositionAssignedTargetingOptionDetails--;
}

core.int buildCounterContentInstreamPositionTargetingOptionDetails = 0;
api.ContentInstreamPositionTargetingOptionDetails
    buildContentInstreamPositionTargetingOptionDetails() {
  var o = api.ContentInstreamPositionTargetingOptionDetails();
  buildCounterContentInstreamPositionTargetingOptionDetails++;
  if (buildCounterContentInstreamPositionTargetingOptionDetails < 3) {
    o.contentInstreamPosition = 'foo';
  }
  buildCounterContentInstreamPositionTargetingOptionDetails--;
  return o;
}

void checkContentInstreamPositionTargetingOptionDetails(
    api.ContentInstreamPositionTargetingOptionDetails o) {
  buildCounterContentInstreamPositionTargetingOptionDetails++;
  if (buildCounterContentInstreamPositionTargetingOptionDetails < 3) {
    unittest.expect(o.contentInstreamPosition, unittest.equals('foo'));
  }
  buildCounterContentInstreamPositionTargetingOptionDetails--;
}

core.int buildCounterContentOutstreamPositionAssignedTargetingOptionDetails = 0;
api.ContentOutstreamPositionAssignedTargetingOptionDetails
    buildContentOutstreamPositionAssignedTargetingOptionDetails() {
  var o = api.ContentOutstreamPositionAssignedTargetingOptionDetails();
  buildCounterContentOutstreamPositionAssignedTargetingOptionDetails++;
  if (buildCounterContentOutstreamPositionAssignedTargetingOptionDetails < 3) {
    o.contentOutstreamPosition = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterContentOutstreamPositionAssignedTargetingOptionDetails--;
  return o;
}

void checkContentOutstreamPositionAssignedTargetingOptionDetails(
    api.ContentOutstreamPositionAssignedTargetingOptionDetails o) {
  buildCounterContentOutstreamPositionAssignedTargetingOptionDetails++;
  if (buildCounterContentOutstreamPositionAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.contentOutstreamPosition, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterContentOutstreamPositionAssignedTargetingOptionDetails--;
}

core.int buildCounterContentOutstreamPositionTargetingOptionDetails = 0;
api.ContentOutstreamPositionTargetingOptionDetails
    buildContentOutstreamPositionTargetingOptionDetails() {
  var o = api.ContentOutstreamPositionTargetingOptionDetails();
  buildCounterContentOutstreamPositionTargetingOptionDetails++;
  if (buildCounterContentOutstreamPositionTargetingOptionDetails < 3) {
    o.contentOutstreamPosition = 'foo';
  }
  buildCounterContentOutstreamPositionTargetingOptionDetails--;
  return o;
}

void checkContentOutstreamPositionTargetingOptionDetails(
    api.ContentOutstreamPositionTargetingOptionDetails o) {
  buildCounterContentOutstreamPositionTargetingOptionDetails++;
  if (buildCounterContentOutstreamPositionTargetingOptionDetails < 3) {
    unittest.expect(o.contentOutstreamPosition, unittest.equals('foo'));
  }
  buildCounterContentOutstreamPositionTargetingOptionDetails--;
}

core.List<api.TrackingFloodlightActivityConfig> buildUnnamed4993() {
  var o = <api.TrackingFloodlightActivityConfig>[];
  o.add(buildTrackingFloodlightActivityConfig());
  o.add(buildTrackingFloodlightActivityConfig());
  return o;
}

void checkUnnamed4993(core.List<api.TrackingFloodlightActivityConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackingFloodlightActivityConfig(
      o[0] as api.TrackingFloodlightActivityConfig);
  checkTrackingFloodlightActivityConfig(
      o[1] as api.TrackingFloodlightActivityConfig);
}

core.int buildCounterConversionCountingConfig = 0;
api.ConversionCountingConfig buildConversionCountingConfig() {
  var o = api.ConversionCountingConfig();
  buildCounterConversionCountingConfig++;
  if (buildCounterConversionCountingConfig < 3) {
    o.floodlightActivityConfigs = buildUnnamed4993();
    o.postViewCountPercentageMillis = 'foo';
  }
  buildCounterConversionCountingConfig--;
  return o;
}

void checkConversionCountingConfig(api.ConversionCountingConfig o) {
  buildCounterConversionCountingConfig++;
  if (buildCounterConversionCountingConfig < 3) {
    checkUnnamed4993(o.floodlightActivityConfigs);
    unittest.expect(o.postViewCountPercentageMillis, unittest.equals('foo'));
  }
  buildCounterConversionCountingConfig--;
}

core.int buildCounterCounterEvent = 0;
api.CounterEvent buildCounterEvent() {
  var o = api.CounterEvent();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.reportingName, unittest.equals('foo'));
  }
  buildCounterCounterEvent--;
}

core.int buildCounterCreateAssetRequest = 0;
api.CreateAssetRequest buildCreateAssetRequest() {
  var o = api.CreateAssetRequest();
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
    unittest.expect(o.filename, unittest.equals('foo'));
  }
  buildCounterCreateAssetRequest--;
}

core.int buildCounterCreateAssetResponse = 0;
api.CreateAssetResponse buildCreateAssetResponse() {
  var o = api.CreateAssetResponse();
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
    checkAsset(o.asset as api.Asset);
  }
  buildCounterCreateAssetResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4994() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4994(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0] as api.AssignedTargetingOption);
  checkAssignedTargetingOption(o[1] as api.AssignedTargetingOption);
}

core.int buildCounterCreateAssignedTargetingOptionsRequest = 0;
api.CreateAssignedTargetingOptionsRequest
    buildCreateAssignedTargetingOptionsRequest() {
  var o = api.CreateAssignedTargetingOptionsRequest();
  buildCounterCreateAssignedTargetingOptionsRequest++;
  if (buildCounterCreateAssignedTargetingOptionsRequest < 3) {
    o.assignedTargetingOptions = buildUnnamed4994();
    o.targetingType = 'foo';
  }
  buildCounterCreateAssignedTargetingOptionsRequest--;
  return o;
}

void checkCreateAssignedTargetingOptionsRequest(
    api.CreateAssignedTargetingOptionsRequest o) {
  buildCounterCreateAssignedTargetingOptionsRequest++;
  if (buildCounterCreateAssignedTargetingOptionsRequest < 3) {
    checkUnnamed4994(o.assignedTargetingOptions);
    unittest.expect(o.targetingType, unittest.equals('foo'));
  }
  buildCounterCreateAssignedTargetingOptionsRequest--;
}

core.int buildCounterCreateSdfDownloadTaskRequest = 0;
api.CreateSdfDownloadTaskRequest buildCreateSdfDownloadTaskRequest() {
  var o = api.CreateSdfDownloadTaskRequest();
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
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkIdFilter(o.idFilter as api.IdFilter);
    checkInventorySourceFilter(
        o.inventorySourceFilter as api.InventorySourceFilter);
    checkParentEntityFilter(o.parentEntityFilter as api.ParentEntityFilter);
    unittest.expect(o.partnerId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterCreateSdfDownloadTaskRequest--;
}

core.List<api.Dimensions> buildUnnamed4995() {
  var o = <api.Dimensions>[];
  o.add(buildDimensions());
  o.add(buildDimensions());
  return o;
}

void checkUnnamed4995(core.List<api.Dimensions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensions(o[0] as api.Dimensions);
  checkDimensions(o[1] as api.Dimensions);
}

core.List<api.AssetAssociation> buildUnnamed4996() {
  var o = <api.AssetAssociation>[];
  o.add(buildAssetAssociation());
  o.add(buildAssetAssociation());
  return o;
}

void checkUnnamed4996(core.List<api.AssetAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssetAssociation(o[0] as api.AssetAssociation);
  checkAssetAssociation(o[1] as api.AssetAssociation);
}

core.List<core.String> buildUnnamed4997() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4997(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CounterEvent> buildUnnamed4998() {
  var o = <api.CounterEvent>[];
  o.add(buildCounterEvent());
  o.add(buildCounterEvent());
  return o;
}

void checkUnnamed4998(core.List<api.CounterEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCounterEvent(o[0] as api.CounterEvent);
  checkCounterEvent(o[1] as api.CounterEvent);
}

core.List<core.String> buildUnnamed4999() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4999(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ExitEvent> buildUnnamed5000() {
  var o = <api.ExitEvent>[];
  o.add(buildExitEvent());
  o.add(buildExitEvent());
  return o;
}

void checkUnnamed5000(core.List<api.ExitEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExitEvent(o[0] as api.ExitEvent);
  checkExitEvent(o[1] as api.ExitEvent);
}

core.List<core.String> buildUnnamed5001() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5001(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ThirdPartyUrl> buildUnnamed5002() {
  var o = <api.ThirdPartyUrl>[];
  o.add(buildThirdPartyUrl());
  o.add(buildThirdPartyUrl());
  return o;
}

void checkUnnamed5002(core.List<api.ThirdPartyUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThirdPartyUrl(o[0] as api.ThirdPartyUrl);
  checkThirdPartyUrl(o[1] as api.ThirdPartyUrl);
}

core.List<api.TimerEvent> buildUnnamed5003() {
  var o = <api.TimerEvent>[];
  o.add(buildTimerEvent());
  o.add(buildTimerEvent());
  return o;
}

void checkUnnamed5003(core.List<api.TimerEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimerEvent(o[0] as api.TimerEvent);
  checkTimerEvent(o[1] as api.TimerEvent);
}

core.List<core.String> buildUnnamed5004() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5004(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Transcode> buildUnnamed5005() {
  var o = <api.Transcode>[];
  o.add(buildTranscode());
  o.add(buildTranscode());
  return o;
}

void checkUnnamed5005(core.List<api.Transcode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranscode(o[0] as api.Transcode);
  checkTranscode(o[1] as api.Transcode);
}

core.int buildCounterCreative = 0;
api.Creative buildCreative() {
  var o = api.Creative();
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    o.additionalDimensions = buildUnnamed4995();
    o.advertiserId = 'foo';
    o.appendedTag = 'foo';
    o.assets = buildUnnamed4996();
    o.cmPlacementId = 'foo';
    o.cmTrackingAd = buildCmTrackingAd();
    o.companionCreativeIds = buildUnnamed4997();
    o.counterEvents = buildUnnamed4998();
    o.createTime = 'foo';
    o.creativeAttributes = buildUnnamed4999();
    o.creativeId = 'foo';
    o.creativeType = 'foo';
    o.dimensions = buildDimensions();
    o.displayName = 'foo';
    o.dynamic = true;
    o.entityStatus = 'foo';
    o.exitEvents = buildUnnamed5000();
    o.expandOnHover = true;
    o.expandingDirection = 'foo';
    o.hostingSource = 'foo';
    o.html5Video = true;
    o.iasCampaignMonitoring = true;
    o.integrationCode = 'foo';
    o.jsTrackerUrl = 'foo';
    o.lineItemIds = buildUnnamed5001();
    o.mediaDuration = 'foo';
    o.name = 'foo';
    o.notes = 'foo';
    o.obaIcon = buildObaIcon();
    o.progressOffset = buildAudioVideoOffset();
    o.requireHtml5 = true;
    o.requireMraid = true;
    o.requirePingForAttribution = true;
    o.reviewStatus = buildReviewStatusInfo();
    o.skipOffset = buildAudioVideoOffset();
    o.skippable = true;
    o.thirdPartyTag = 'foo';
    o.thirdPartyUrls = buildUnnamed5002();
    o.timerEvents = buildUnnamed5003();
    o.trackerUrls = buildUnnamed5004();
    o.transcodes = buildUnnamed5005();
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
    checkUnnamed4995(o.additionalDimensions);
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.appendedTag, unittest.equals('foo'));
    checkUnnamed4996(o.assets);
    unittest.expect(o.cmPlacementId, unittest.equals('foo'));
    checkCmTrackingAd(o.cmTrackingAd as api.CmTrackingAd);
    checkUnnamed4997(o.companionCreativeIds);
    checkUnnamed4998(o.counterEvents);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed4999(o.creativeAttributes);
    unittest.expect(o.creativeId, unittest.equals('foo'));
    unittest.expect(o.creativeType, unittest.equals('foo'));
    checkDimensions(o.dimensions as api.Dimensions);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.dynamic, unittest.isTrue);
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    checkUnnamed5000(o.exitEvents);
    unittest.expect(o.expandOnHover, unittest.isTrue);
    unittest.expect(o.expandingDirection, unittest.equals('foo'));
    unittest.expect(o.hostingSource, unittest.equals('foo'));
    unittest.expect(o.html5Video, unittest.isTrue);
    unittest.expect(o.iasCampaignMonitoring, unittest.isTrue);
    unittest.expect(o.integrationCode, unittest.equals('foo'));
    unittest.expect(o.jsTrackerUrl, unittest.equals('foo'));
    checkUnnamed5001(o.lineItemIds);
    unittest.expect(o.mediaDuration, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    checkObaIcon(o.obaIcon as api.ObaIcon);
    checkAudioVideoOffset(o.progressOffset as api.AudioVideoOffset);
    unittest.expect(o.requireHtml5, unittest.isTrue);
    unittest.expect(o.requireMraid, unittest.isTrue);
    unittest.expect(o.requirePingForAttribution, unittest.isTrue);
    checkReviewStatusInfo(o.reviewStatus as api.ReviewStatusInfo);
    checkAudioVideoOffset(o.skipOffset as api.AudioVideoOffset);
    unittest.expect(o.skippable, unittest.isTrue);
    unittest.expect(o.thirdPartyTag, unittest.equals('foo'));
    checkUnnamed5002(o.thirdPartyUrls);
    checkUnnamed5003(o.timerEvents);
    checkUnnamed5004(o.trackerUrls);
    checkUnnamed5005(o.transcodes);
    checkUniversalAdId(o.universalAdId as api.UniversalAdId);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.vastTagUrl, unittest.equals('foo'));
    unittest.expect(o.vpaid, unittest.isTrue);
  }
  buildCounterCreative--;
}

core.int buildCounterCreativeConfig = 0;
api.CreativeConfig buildCreativeConfig() {
  var o = api.CreativeConfig();
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
    unittest.expect(o.creativeType, unittest.equals('foo'));
    checkInventorySourceDisplayCreativeConfig(
        o.displayCreativeConfig as api.InventorySourceDisplayCreativeConfig);
    checkInventorySourceVideoCreativeConfig(
        o.videoCreativeConfig as api.InventorySourceVideoCreativeConfig);
  }
  buildCounterCreativeConfig--;
}

core.int buildCounterCustomBiddingAlgorithm = 0;
api.CustomBiddingAlgorithm buildCustomBiddingAlgorithm() {
  var o = api.CustomBiddingAlgorithm();
  buildCounterCustomBiddingAlgorithm++;
  if (buildCounterCustomBiddingAlgorithm < 3) {
    o.advertiserId = 'foo';
    o.customBiddingAlgorithmId = 'foo';
    o.customBiddingAlgorithmType = 'foo';
    o.displayName = 'foo';
    o.entityStatus = 'foo';
    o.name = 'foo';
    o.partnerId = 'foo';
  }
  buildCounterCustomBiddingAlgorithm--;
  return o;
}

void checkCustomBiddingAlgorithm(api.CustomBiddingAlgorithm o) {
  buildCounterCustomBiddingAlgorithm++;
  if (buildCounterCustomBiddingAlgorithm < 3) {
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.customBiddingAlgorithmId, unittest.equals('foo'));
    unittest.expect(o.customBiddingAlgorithmType, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.partnerId, unittest.equals('foo'));
  }
  buildCounterCustomBiddingAlgorithm--;
}

core.int buildCounterCustomList = 0;
api.CustomList buildCustomList() {
  var o = api.CustomList();
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
    unittest.expect(o.customListId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterCustomList--;
}

core.List<api.CustomListTargetingSetting> buildUnnamed5006() {
  var o = <api.CustomListTargetingSetting>[];
  o.add(buildCustomListTargetingSetting());
  o.add(buildCustomListTargetingSetting());
  return o;
}

void checkUnnamed5006(core.List<api.CustomListTargetingSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomListTargetingSetting(o[0] as api.CustomListTargetingSetting);
  checkCustomListTargetingSetting(o[1] as api.CustomListTargetingSetting);
}

core.int buildCounterCustomListGroup = 0;
api.CustomListGroup buildCustomListGroup() {
  var o = api.CustomListGroup();
  buildCounterCustomListGroup++;
  if (buildCounterCustomListGroup < 3) {
    o.settings = buildUnnamed5006();
  }
  buildCounterCustomListGroup--;
  return o;
}

void checkCustomListGroup(api.CustomListGroup o) {
  buildCounterCustomListGroup++;
  if (buildCounterCustomListGroup < 3) {
    checkUnnamed5006(o.settings);
  }
  buildCounterCustomListGroup--;
}

core.int buildCounterCustomListTargetingSetting = 0;
api.CustomListTargetingSetting buildCustomListTargetingSetting() {
  var o = api.CustomListTargetingSetting();
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
    unittest.expect(o.customListId, unittest.equals('foo'));
  }
  buildCounterCustomListTargetingSetting--;
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
    checkDate(o.endDate as api.Date);
    checkDate(o.startDate as api.Date);
  }
  buildCounterDateRange--;
}

core.int buildCounterDayAndTimeAssignedTargetingOptionDetails = 0;
api.DayAndTimeAssignedTargetingOptionDetails
    buildDayAndTimeAssignedTargetingOptionDetails() {
  var o = api.DayAndTimeAssignedTargetingOptionDetails();
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
    api.DayAndTimeAssignedTargetingOptionDetails o) {
  buildCounterDayAndTimeAssignedTargetingOptionDetails++;
  if (buildCounterDayAndTimeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.dayOfWeek, unittest.equals('foo'));
    unittest.expect(o.endHour, unittest.equals(42));
    unittest.expect(o.startHour, unittest.equals(42));
    unittest.expect(o.timeZoneResolution, unittest.equals('foo'));
  }
  buildCounterDayAndTimeAssignedTargetingOptionDetails--;
}

core.int buildCounterDeactivateManualTriggerRequest = 0;
api.DeactivateManualTriggerRequest buildDeactivateManualTriggerRequest() {
  var o = api.DeactivateManualTriggerRequest();
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

core.List<core.String> buildUnnamed5007() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5007(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeleteAssignedTargetingOptionsRequest = 0;
api.DeleteAssignedTargetingOptionsRequest
    buildDeleteAssignedTargetingOptionsRequest() {
  var o = api.DeleteAssignedTargetingOptionsRequest();
  buildCounterDeleteAssignedTargetingOptionsRequest++;
  if (buildCounterDeleteAssignedTargetingOptionsRequest < 3) {
    o.assignedTargetingOptionIds = buildUnnamed5007();
    o.targetingType = 'foo';
  }
  buildCounterDeleteAssignedTargetingOptionsRequest--;
  return o;
}

void checkDeleteAssignedTargetingOptionsRequest(
    api.DeleteAssignedTargetingOptionsRequest o) {
  buildCounterDeleteAssignedTargetingOptionsRequest++;
  if (buildCounterDeleteAssignedTargetingOptionsRequest < 3) {
    checkUnnamed5007(o.assignedTargetingOptionIds);
    unittest.expect(o.targetingType, unittest.equals('foo'));
  }
  buildCounterDeleteAssignedTargetingOptionsRequest--;
}

core.int buildCounterDeviceMakeModelAssignedTargetingOptionDetails = 0;
api.DeviceMakeModelAssignedTargetingOptionDetails
    buildDeviceMakeModelAssignedTargetingOptionDetails() {
  var o = api.DeviceMakeModelAssignedTargetingOptionDetails();
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
    api.DeviceMakeModelAssignedTargetingOptionDetails o) {
  buildCounterDeviceMakeModelAssignedTargetingOptionDetails++;
  if (buildCounterDeviceMakeModelAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.negative, unittest.isTrue);
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterDeviceMakeModelAssignedTargetingOptionDetails--;
}

core.int buildCounterDeviceMakeModelTargetingOptionDetails = 0;
api.DeviceMakeModelTargetingOptionDetails
    buildDeviceMakeModelTargetingOptionDetails() {
  var o = api.DeviceMakeModelTargetingOptionDetails();
  buildCounterDeviceMakeModelTargetingOptionDetails++;
  if (buildCounterDeviceMakeModelTargetingOptionDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterDeviceMakeModelTargetingOptionDetails--;
  return o;
}

void checkDeviceMakeModelTargetingOptionDetails(
    api.DeviceMakeModelTargetingOptionDetails o) {
  buildCounterDeviceMakeModelTargetingOptionDetails++;
  if (buildCounterDeviceMakeModelTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterDeviceMakeModelTargetingOptionDetails--;
}

core.int buildCounterDeviceTypeAssignedTargetingOptionDetails = 0;
api.DeviceTypeAssignedTargetingOptionDetails
    buildDeviceTypeAssignedTargetingOptionDetails() {
  var o = api.DeviceTypeAssignedTargetingOptionDetails();
  buildCounterDeviceTypeAssignedTargetingOptionDetails++;
  if (buildCounterDeviceTypeAssignedTargetingOptionDetails < 3) {
    o.deviceType = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterDeviceTypeAssignedTargetingOptionDetails--;
  return o;
}

void checkDeviceTypeAssignedTargetingOptionDetails(
    api.DeviceTypeAssignedTargetingOptionDetails o) {
  buildCounterDeviceTypeAssignedTargetingOptionDetails++;
  if (buildCounterDeviceTypeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.deviceType, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterDeviceTypeAssignedTargetingOptionDetails--;
}

core.int buildCounterDeviceTypeTargetingOptionDetails = 0;
api.DeviceTypeTargetingOptionDetails buildDeviceTypeTargetingOptionDetails() {
  var o = api.DeviceTypeTargetingOptionDetails();
  buildCounterDeviceTypeTargetingOptionDetails++;
  if (buildCounterDeviceTypeTargetingOptionDetails < 3) {
    o.deviceType = 'foo';
  }
  buildCounterDeviceTypeTargetingOptionDetails--;
  return o;
}

void checkDeviceTypeTargetingOptionDetails(
    api.DeviceTypeTargetingOptionDetails o) {
  buildCounterDeviceTypeTargetingOptionDetails++;
  if (buildCounterDeviceTypeTargetingOptionDetails < 3) {
    unittest.expect(o.deviceType, unittest.equals('foo'));
  }
  buildCounterDeviceTypeTargetingOptionDetails--;
}

core.int buildCounterDigitalContentLabelAssignedTargetingOptionDetails = 0;
api.DigitalContentLabelAssignedTargetingOptionDetails
    buildDigitalContentLabelAssignedTargetingOptionDetails() {
  var o = api.DigitalContentLabelAssignedTargetingOptionDetails();
  buildCounterDigitalContentLabelAssignedTargetingOptionDetails++;
  if (buildCounterDigitalContentLabelAssignedTargetingOptionDetails < 3) {
    o.contentRatingTier = 'foo';
    o.excludedTargetingOptionId = 'foo';
  }
  buildCounterDigitalContentLabelAssignedTargetingOptionDetails--;
  return o;
}

void checkDigitalContentLabelAssignedTargetingOptionDetails(
    api.DigitalContentLabelAssignedTargetingOptionDetails o) {
  buildCounterDigitalContentLabelAssignedTargetingOptionDetails++;
  if (buildCounterDigitalContentLabelAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.contentRatingTier, unittest.equals('foo'));
    unittest.expect(o.excludedTargetingOptionId, unittest.equals('foo'));
  }
  buildCounterDigitalContentLabelAssignedTargetingOptionDetails--;
}

core.int buildCounterDigitalContentLabelTargetingOptionDetails = 0;
api.DigitalContentLabelTargetingOptionDetails
    buildDigitalContentLabelTargetingOptionDetails() {
  var o = api.DigitalContentLabelTargetingOptionDetails();
  buildCounterDigitalContentLabelTargetingOptionDetails++;
  if (buildCounterDigitalContentLabelTargetingOptionDetails < 3) {
    o.contentRatingTier = 'foo';
  }
  buildCounterDigitalContentLabelTargetingOptionDetails--;
  return o;
}

void checkDigitalContentLabelTargetingOptionDetails(
    api.DigitalContentLabelTargetingOptionDetails o) {
  buildCounterDigitalContentLabelTargetingOptionDetails++;
  if (buildCounterDigitalContentLabelTargetingOptionDetails < 3) {
    unittest.expect(o.contentRatingTier, unittest.equals('foo'));
  }
  buildCounterDigitalContentLabelTargetingOptionDetails--;
}

core.int buildCounterDimensions = 0;
api.Dimensions buildDimensions() {
  var o = api.Dimensions();
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
    unittest.expect(o.heightPixels, unittest.equals(42));
    unittest.expect(o.widthPixels, unittest.equals(42));
  }
  buildCounterDimensions--;
}

core.List<core.String> buildUnnamed5008() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5008(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDoubleVerify = 0;
api.DoubleVerify buildDoubleVerify() {
  var o = api.DoubleVerify();
  buildCounterDoubleVerify++;
  if (buildCounterDoubleVerify < 3) {
    o.appStarRating = buildDoubleVerifyAppStarRating();
    o.avoidedAgeRatings = buildUnnamed5008();
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
    checkDoubleVerifyAppStarRating(
        o.appStarRating as api.DoubleVerifyAppStarRating);
    checkUnnamed5008(o.avoidedAgeRatings);
    checkDoubleVerifyBrandSafetyCategories(
        o.brandSafetyCategories as api.DoubleVerifyBrandSafetyCategories);
    unittest.expect(o.customSegmentId, unittest.equals('foo'));
    checkDoubleVerifyDisplayViewability(
        o.displayViewability as api.DoubleVerifyDisplayViewability);
    checkDoubleVerifyFraudInvalidTraffic(
        o.fraudInvalidTraffic as api.DoubleVerifyFraudInvalidTraffic);
    checkDoubleVerifyVideoViewability(
        o.videoViewability as api.DoubleVerifyVideoViewability);
  }
  buildCounterDoubleVerify--;
}

core.int buildCounterDoubleVerifyAppStarRating = 0;
api.DoubleVerifyAppStarRating buildDoubleVerifyAppStarRating() {
  var o = api.DoubleVerifyAppStarRating();
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
    unittest.expect(o.avoidInsufficientStarRating, unittest.isTrue);
    unittest.expect(o.avoidedStarRating, unittest.equals('foo'));
  }
  buildCounterDoubleVerifyAppStarRating--;
}

core.List<core.String> buildUnnamed5009() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5009(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5010() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5010(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDoubleVerifyBrandSafetyCategories = 0;
api.DoubleVerifyBrandSafetyCategories buildDoubleVerifyBrandSafetyCategories() {
  var o = api.DoubleVerifyBrandSafetyCategories();
  buildCounterDoubleVerifyBrandSafetyCategories++;
  if (buildCounterDoubleVerifyBrandSafetyCategories < 3) {
    o.avoidUnknownBrandSafetyCategory = true;
    o.avoidedHighSeverityCategories = buildUnnamed5009();
    o.avoidedMediumSeverityCategories = buildUnnamed5010();
  }
  buildCounterDoubleVerifyBrandSafetyCategories--;
  return o;
}

void checkDoubleVerifyBrandSafetyCategories(
    api.DoubleVerifyBrandSafetyCategories o) {
  buildCounterDoubleVerifyBrandSafetyCategories++;
  if (buildCounterDoubleVerifyBrandSafetyCategories < 3) {
    unittest.expect(o.avoidUnknownBrandSafetyCategory, unittest.isTrue);
    checkUnnamed5009(o.avoidedHighSeverityCategories);
    checkUnnamed5010(o.avoidedMediumSeverityCategories);
  }
  buildCounterDoubleVerifyBrandSafetyCategories--;
}

core.int buildCounterDoubleVerifyDisplayViewability = 0;
api.DoubleVerifyDisplayViewability buildDoubleVerifyDisplayViewability() {
  var o = api.DoubleVerifyDisplayViewability();
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
    unittest.expect(o.iab, unittest.equals('foo'));
    unittest.expect(o.viewableDuring, unittest.equals('foo'));
  }
  buildCounterDoubleVerifyDisplayViewability--;
}

core.int buildCounterDoubleVerifyFraudInvalidTraffic = 0;
api.DoubleVerifyFraudInvalidTraffic buildDoubleVerifyFraudInvalidTraffic() {
  var o = api.DoubleVerifyFraudInvalidTraffic();
  buildCounterDoubleVerifyFraudInvalidTraffic++;
  if (buildCounterDoubleVerifyFraudInvalidTraffic < 3) {
    o.avoidInsufficientOption = true;
    o.avoidedFraudOption = 'foo';
  }
  buildCounterDoubleVerifyFraudInvalidTraffic--;
  return o;
}

void checkDoubleVerifyFraudInvalidTraffic(
    api.DoubleVerifyFraudInvalidTraffic o) {
  buildCounterDoubleVerifyFraudInvalidTraffic++;
  if (buildCounterDoubleVerifyFraudInvalidTraffic < 3) {
    unittest.expect(o.avoidInsufficientOption, unittest.isTrue);
    unittest.expect(o.avoidedFraudOption, unittest.equals('foo'));
  }
  buildCounterDoubleVerifyFraudInvalidTraffic--;
}

core.int buildCounterDoubleVerifyVideoViewability = 0;
api.DoubleVerifyVideoViewability buildDoubleVerifyVideoViewability() {
  var o = api.DoubleVerifyVideoViewability();
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
    unittest.expect(o.playerImpressionRate, unittest.equals('foo'));
    unittest.expect(o.videoIab, unittest.equals('foo'));
    unittest.expect(o.videoViewableRate, unittest.equals('foo'));
  }
  buildCounterDoubleVerifyVideoViewability--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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
  var o = api.EnvironmentAssignedTargetingOptionDetails();
  buildCounterEnvironmentAssignedTargetingOptionDetails++;
  if (buildCounterEnvironmentAssignedTargetingOptionDetails < 3) {
    o.environment = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterEnvironmentAssignedTargetingOptionDetails--;
  return o;
}

void checkEnvironmentAssignedTargetingOptionDetails(
    api.EnvironmentAssignedTargetingOptionDetails o) {
  buildCounterEnvironmentAssignedTargetingOptionDetails++;
  if (buildCounterEnvironmentAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.environment, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterEnvironmentAssignedTargetingOptionDetails--;
}

core.int buildCounterEnvironmentTargetingOptionDetails = 0;
api.EnvironmentTargetingOptionDetails buildEnvironmentTargetingOptionDetails() {
  var o = api.EnvironmentTargetingOptionDetails();
  buildCounterEnvironmentTargetingOptionDetails++;
  if (buildCounterEnvironmentTargetingOptionDetails < 3) {
    o.environment = 'foo';
  }
  buildCounterEnvironmentTargetingOptionDetails--;
  return o;
}

void checkEnvironmentTargetingOptionDetails(
    api.EnvironmentTargetingOptionDetails o) {
  buildCounterEnvironmentTargetingOptionDetails++;
  if (buildCounterEnvironmentTargetingOptionDetails < 3) {
    unittest.expect(o.environment, unittest.equals('foo'));
  }
  buildCounterEnvironmentTargetingOptionDetails--;
}

core.int buildCounterExchangeAssignedTargetingOptionDetails = 0;
api.ExchangeAssignedTargetingOptionDetails
    buildExchangeAssignedTargetingOptionDetails() {
  var o = api.ExchangeAssignedTargetingOptionDetails();
  buildCounterExchangeAssignedTargetingOptionDetails++;
  if (buildCounterExchangeAssignedTargetingOptionDetails < 3) {
    o.targetingOptionId = 'foo';
  }
  buildCounterExchangeAssignedTargetingOptionDetails--;
  return o;
}

void checkExchangeAssignedTargetingOptionDetails(
    api.ExchangeAssignedTargetingOptionDetails o) {
  buildCounterExchangeAssignedTargetingOptionDetails++;
  if (buildCounterExchangeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterExchangeAssignedTargetingOptionDetails--;
}

core.List<api.ExchangeConfigEnabledExchange> buildUnnamed5011() {
  var o = <api.ExchangeConfigEnabledExchange>[];
  o.add(buildExchangeConfigEnabledExchange());
  o.add(buildExchangeConfigEnabledExchange());
  return o;
}

void checkUnnamed5011(core.List<api.ExchangeConfigEnabledExchange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExchangeConfigEnabledExchange(o[0] as api.ExchangeConfigEnabledExchange);
  checkExchangeConfigEnabledExchange(o[1] as api.ExchangeConfigEnabledExchange);
}

core.int buildCounterExchangeConfig = 0;
api.ExchangeConfig buildExchangeConfig() {
  var o = api.ExchangeConfig();
  buildCounterExchangeConfig++;
  if (buildCounterExchangeConfig < 3) {
    o.enabledExchanges = buildUnnamed5011();
  }
  buildCounterExchangeConfig--;
  return o;
}

void checkExchangeConfig(api.ExchangeConfig o) {
  buildCounterExchangeConfig++;
  if (buildCounterExchangeConfig < 3) {
    checkUnnamed5011(o.enabledExchanges);
  }
  buildCounterExchangeConfig--;
}

core.int buildCounterExchangeConfigEnabledExchange = 0;
api.ExchangeConfigEnabledExchange buildExchangeConfigEnabledExchange() {
  var o = api.ExchangeConfigEnabledExchange();
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
    unittest.expect(o.exchange, unittest.equals('foo'));
    unittest.expect(o.googleAdManagerAgencyId, unittest.equals('foo'));
    unittest.expect(o.googleAdManagerBuyerNetworkId, unittest.equals('foo'));
    unittest.expect(o.seatId, unittest.equals('foo'));
  }
  buildCounterExchangeConfigEnabledExchange--;
}

core.int buildCounterExchangeReviewStatus = 0;
api.ExchangeReviewStatus buildExchangeReviewStatus() {
  var o = api.ExchangeReviewStatus();
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
    unittest.expect(o.exchange, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterExchangeReviewStatus--;
}

core.int buildCounterExchangeTargetingOptionDetails = 0;
api.ExchangeTargetingOptionDetails buildExchangeTargetingOptionDetails() {
  var o = api.ExchangeTargetingOptionDetails();
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
    unittest.expect(o.exchange, unittest.equals('foo'));
  }
  buildCounterExchangeTargetingOptionDetails--;
}

core.int buildCounterExitEvent = 0;
api.ExitEvent buildExitEvent() {
  var o = api.ExitEvent();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.reportingName, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterExitEvent--;
}

core.int buildCounterFirstAndThirdPartyAudience = 0;
api.FirstAndThirdPartyAudience buildFirstAndThirdPartyAudience() {
  var o = api.FirstAndThirdPartyAudience();
  buildCounterFirstAndThirdPartyAudience++;
  if (buildCounterFirstAndThirdPartyAudience < 3) {
    o.activeDisplayAudienceSize = 'foo';
    o.audienceSource = 'foo';
    o.audienceType = 'foo';
    o.description = 'foo';
    o.displayAudienceSize = 'foo';
    o.displayDesktopAudienceSize = 'foo';
    o.displayMobileAppAudienceSize = 'foo';
    o.displayMobileWebAudienceSize = 'foo';
    o.displayName = 'foo';
    o.firstAndThirdPartyAudienceId = 'foo';
    o.firstAndThirdPartyAudienceType = 'foo';
    o.gmailAudienceSize = 'foo';
    o.membershipDurationDays = 'foo';
    o.name = 'foo';
    o.youtubeAudienceSize = 'foo';
  }
  buildCounterFirstAndThirdPartyAudience--;
  return o;
}

void checkFirstAndThirdPartyAudience(api.FirstAndThirdPartyAudience o) {
  buildCounterFirstAndThirdPartyAudience++;
  if (buildCounterFirstAndThirdPartyAudience < 3) {
    unittest.expect(o.activeDisplayAudienceSize, unittest.equals('foo'));
    unittest.expect(o.audienceSource, unittest.equals('foo'));
    unittest.expect(o.audienceType, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayAudienceSize, unittest.equals('foo'));
    unittest.expect(o.displayDesktopAudienceSize, unittest.equals('foo'));
    unittest.expect(o.displayMobileAppAudienceSize, unittest.equals('foo'));
    unittest.expect(o.displayMobileWebAudienceSize, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.firstAndThirdPartyAudienceId, unittest.equals('foo'));
    unittest.expect(o.firstAndThirdPartyAudienceType, unittest.equals('foo'));
    unittest.expect(o.gmailAudienceSize, unittest.equals('foo'));
    unittest.expect(o.membershipDurationDays, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.youtubeAudienceSize, unittest.equals('foo'));
  }
  buildCounterFirstAndThirdPartyAudience--;
}

core.List<api.FirstAndThirdPartyAudienceTargetingSetting> buildUnnamed5012() {
  var o = <api.FirstAndThirdPartyAudienceTargetingSetting>[];
  o.add(buildFirstAndThirdPartyAudienceTargetingSetting());
  o.add(buildFirstAndThirdPartyAudienceTargetingSetting());
  return o;
}

void checkUnnamed5012(
    core.List<api.FirstAndThirdPartyAudienceTargetingSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirstAndThirdPartyAudienceTargetingSetting(
      o[0] as api.FirstAndThirdPartyAudienceTargetingSetting);
  checkFirstAndThirdPartyAudienceTargetingSetting(
      o[1] as api.FirstAndThirdPartyAudienceTargetingSetting);
}

core.int buildCounterFirstAndThirdPartyAudienceGroup = 0;
api.FirstAndThirdPartyAudienceGroup buildFirstAndThirdPartyAudienceGroup() {
  var o = api.FirstAndThirdPartyAudienceGroup();
  buildCounterFirstAndThirdPartyAudienceGroup++;
  if (buildCounterFirstAndThirdPartyAudienceGroup < 3) {
    o.settings = buildUnnamed5012();
  }
  buildCounterFirstAndThirdPartyAudienceGroup--;
  return o;
}

void checkFirstAndThirdPartyAudienceGroup(
    api.FirstAndThirdPartyAudienceGroup o) {
  buildCounterFirstAndThirdPartyAudienceGroup++;
  if (buildCounterFirstAndThirdPartyAudienceGroup < 3) {
    checkUnnamed5012(o.settings);
  }
  buildCounterFirstAndThirdPartyAudienceGroup--;
}

core.int buildCounterFirstAndThirdPartyAudienceTargetingSetting = 0;
api.FirstAndThirdPartyAudienceTargetingSetting
    buildFirstAndThirdPartyAudienceTargetingSetting() {
  var o = api.FirstAndThirdPartyAudienceTargetingSetting();
  buildCounterFirstAndThirdPartyAudienceTargetingSetting++;
  if (buildCounterFirstAndThirdPartyAudienceTargetingSetting < 3) {
    o.firstAndThirdPartyAudienceId = 'foo';
    o.recency = 'foo';
  }
  buildCounterFirstAndThirdPartyAudienceTargetingSetting--;
  return o;
}

void checkFirstAndThirdPartyAudienceTargetingSetting(
    api.FirstAndThirdPartyAudienceTargetingSetting o) {
  buildCounterFirstAndThirdPartyAudienceTargetingSetting++;
  if (buildCounterFirstAndThirdPartyAudienceTargetingSetting < 3) {
    unittest.expect(o.firstAndThirdPartyAudienceId, unittest.equals('foo'));
    unittest.expect(o.recency, unittest.equals('foo'));
  }
  buildCounterFirstAndThirdPartyAudienceTargetingSetting--;
}

core.int buildCounterFixedBidStrategy = 0;
api.FixedBidStrategy buildFixedBidStrategy() {
  var o = api.FixedBidStrategy();
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
    unittest.expect(o.bidAmountMicros, unittest.equals('foo'));
  }
  buildCounterFixedBidStrategy--;
}

core.Map<core.String, core.Object> buildUnnamed5013() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5013(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterFloodlightGroup = 0;
api.FloodlightGroup buildFloodlightGroup() {
  var o = api.FloodlightGroup();
  buildCounterFloodlightGroup++;
  if (buildCounterFloodlightGroup < 3) {
    o.activeViewConfig = buildActiveViewVideoViewabilityMetricConfig();
    o.customVariables = buildUnnamed5013();
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
    checkActiveViewVideoViewabilityMetricConfig(
        o.activeViewConfig as api.ActiveViewVideoViewabilityMetricConfig);
    checkUnnamed5013(o.customVariables);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.floodlightGroupId, unittest.equals('foo'));
    checkLookbackWindow(o.lookbackWindow as api.LookbackWindow);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.webTagType, unittest.equals('foo'));
  }
  buildCounterFloodlightGroup--;
}

core.int buildCounterFrequencyCap = 0;
api.FrequencyCap buildFrequencyCap() {
  var o = api.FrequencyCap();
  buildCounterFrequencyCap++;
  if (buildCounterFrequencyCap < 3) {
    o.maxImpressions = 42;
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
    unittest.expect(o.maxImpressions, unittest.equals(42));
    unittest.expect(o.timeUnit, unittest.equals('foo'));
    unittest.expect(o.timeUnitCount, unittest.equals(42));
    unittest.expect(o.unlimited, unittest.isTrue);
  }
  buildCounterFrequencyCap--;
}

core.int buildCounterGenderAssignedTargetingOptionDetails = 0;
api.GenderAssignedTargetingOptionDetails
    buildGenderAssignedTargetingOptionDetails() {
  var o = api.GenderAssignedTargetingOptionDetails();
  buildCounterGenderAssignedTargetingOptionDetails++;
  if (buildCounterGenderAssignedTargetingOptionDetails < 3) {
    o.gender = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterGenderAssignedTargetingOptionDetails--;
  return o;
}

void checkGenderAssignedTargetingOptionDetails(
    api.GenderAssignedTargetingOptionDetails o) {
  buildCounterGenderAssignedTargetingOptionDetails++;
  if (buildCounterGenderAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.gender, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterGenderAssignedTargetingOptionDetails--;
}

core.int buildCounterGenderTargetingOptionDetails = 0;
api.GenderTargetingOptionDetails buildGenderTargetingOptionDetails() {
  var o = api.GenderTargetingOptionDetails();
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
    unittest.expect(o.gender, unittest.equals('foo'));
  }
  buildCounterGenderTargetingOptionDetails--;
}

core.int buildCounterGeoRegionAssignedTargetingOptionDetails = 0;
api.GeoRegionAssignedTargetingOptionDetails
    buildGeoRegionAssignedTargetingOptionDetails() {
  var o = api.GeoRegionAssignedTargetingOptionDetails();
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
    api.GeoRegionAssignedTargetingOptionDetails o) {
  buildCounterGeoRegionAssignedTargetingOptionDetails++;
  if (buildCounterGeoRegionAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.geoRegionType, unittest.equals('foo'));
    unittest.expect(o.negative, unittest.isTrue);
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterGeoRegionAssignedTargetingOptionDetails--;
}

core.int buildCounterGeoRegionSearchTerms = 0;
api.GeoRegionSearchTerms buildGeoRegionSearchTerms() {
  var o = api.GeoRegionSearchTerms();
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
    unittest.expect(o.geoRegionQuery, unittest.equals('foo'));
  }
  buildCounterGeoRegionSearchTerms--;
}

core.int buildCounterGeoRegionTargetingOptionDetails = 0;
api.GeoRegionTargetingOptionDetails buildGeoRegionTargetingOptionDetails() {
  var o = api.GeoRegionTargetingOptionDetails();
  buildCounterGeoRegionTargetingOptionDetails++;
  if (buildCounterGeoRegionTargetingOptionDetails < 3) {
    o.displayName = 'foo';
    o.geoRegionType = 'foo';
  }
  buildCounterGeoRegionTargetingOptionDetails--;
  return o;
}

void checkGeoRegionTargetingOptionDetails(
    api.GeoRegionTargetingOptionDetails o) {
  buildCounterGeoRegionTargetingOptionDetails++;
  if (buildCounterGeoRegionTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.geoRegionType, unittest.equals('foo'));
  }
  buildCounterGeoRegionTargetingOptionDetails--;
}

core.int buildCounterGoogleAudience = 0;
api.GoogleAudience buildGoogleAudience() {
  var o = api.GoogleAudience();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.googleAudienceId, unittest.equals('foo'));
    unittest.expect(o.googleAudienceType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleAudience--;
}

core.List<api.GoogleAudienceTargetingSetting> buildUnnamed5014() {
  var o = <api.GoogleAudienceTargetingSetting>[];
  o.add(buildGoogleAudienceTargetingSetting());
  o.add(buildGoogleAudienceTargetingSetting());
  return o;
}

void checkUnnamed5014(core.List<api.GoogleAudienceTargetingSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAudienceTargetingSetting(
      o[0] as api.GoogleAudienceTargetingSetting);
  checkGoogleAudienceTargetingSetting(
      o[1] as api.GoogleAudienceTargetingSetting);
}

core.int buildCounterGoogleAudienceGroup = 0;
api.GoogleAudienceGroup buildGoogleAudienceGroup() {
  var o = api.GoogleAudienceGroup();
  buildCounterGoogleAudienceGroup++;
  if (buildCounterGoogleAudienceGroup < 3) {
    o.settings = buildUnnamed5014();
  }
  buildCounterGoogleAudienceGroup--;
  return o;
}

void checkGoogleAudienceGroup(api.GoogleAudienceGroup o) {
  buildCounterGoogleAudienceGroup++;
  if (buildCounterGoogleAudienceGroup < 3) {
    checkUnnamed5014(o.settings);
  }
  buildCounterGoogleAudienceGroup--;
}

core.int buildCounterGoogleAudienceTargetingSetting = 0;
api.GoogleAudienceTargetingSetting buildGoogleAudienceTargetingSetting() {
  var o = api.GoogleAudienceTargetingSetting();
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
    unittest.expect(o.googleAudienceId, unittest.equals('foo'));
  }
  buildCounterGoogleAudienceTargetingSetting--;
}

core.int buildCounterGoogleBytestreamMedia = 0;
api.GoogleBytestreamMedia buildGoogleBytestreamMedia() {
  var o = api.GoogleBytestreamMedia();
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
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterGoogleBytestreamMedia--;
}

core.int buildCounterHouseholdIncomeAssignedTargetingOptionDetails = 0;
api.HouseholdIncomeAssignedTargetingOptionDetails
    buildHouseholdIncomeAssignedTargetingOptionDetails() {
  var o = api.HouseholdIncomeAssignedTargetingOptionDetails();
  buildCounterHouseholdIncomeAssignedTargetingOptionDetails++;
  if (buildCounterHouseholdIncomeAssignedTargetingOptionDetails < 3) {
    o.householdIncome = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterHouseholdIncomeAssignedTargetingOptionDetails--;
  return o;
}

void checkHouseholdIncomeAssignedTargetingOptionDetails(
    api.HouseholdIncomeAssignedTargetingOptionDetails o) {
  buildCounterHouseholdIncomeAssignedTargetingOptionDetails++;
  if (buildCounterHouseholdIncomeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.householdIncome, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterHouseholdIncomeAssignedTargetingOptionDetails--;
}

core.int buildCounterHouseholdIncomeTargetingOptionDetails = 0;
api.HouseholdIncomeTargetingOptionDetails
    buildHouseholdIncomeTargetingOptionDetails() {
  var o = api.HouseholdIncomeTargetingOptionDetails();
  buildCounterHouseholdIncomeTargetingOptionDetails++;
  if (buildCounterHouseholdIncomeTargetingOptionDetails < 3) {
    o.householdIncome = 'foo';
  }
  buildCounterHouseholdIncomeTargetingOptionDetails--;
  return o;
}

void checkHouseholdIncomeTargetingOptionDetails(
    api.HouseholdIncomeTargetingOptionDetails o) {
  buildCounterHouseholdIncomeTargetingOptionDetails++;
  if (buildCounterHouseholdIncomeTargetingOptionDetails < 3) {
    unittest.expect(o.householdIncome, unittest.equals('foo'));
  }
  buildCounterHouseholdIncomeTargetingOptionDetails--;
}

core.List<core.String> buildUnnamed5015() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5015(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5016() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5016(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5017() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5017(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5018() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5018(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5019() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5019(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5020() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5020(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIdFilter = 0;
api.IdFilter buildIdFilter() {
  var o = api.IdFilter();
  buildCounterIdFilter++;
  if (buildCounterIdFilter < 3) {
    o.adGroupAdIds = buildUnnamed5015();
    o.adGroupIds = buildUnnamed5016();
    o.campaignIds = buildUnnamed5017();
    o.insertionOrderIds = buildUnnamed5018();
    o.lineItemIds = buildUnnamed5019();
    o.mediaProductIds = buildUnnamed5020();
  }
  buildCounterIdFilter--;
  return o;
}

void checkIdFilter(api.IdFilter o) {
  buildCounterIdFilter++;
  if (buildCounterIdFilter < 3) {
    checkUnnamed5015(o.adGroupAdIds);
    checkUnnamed5016(o.adGroupIds);
    checkUnnamed5017(o.campaignIds);
    checkUnnamed5018(o.insertionOrderIds);
    checkUnnamed5019(o.lineItemIds);
    checkUnnamed5020(o.mediaProductIds);
  }
  buildCounterIdFilter--;
}

core.List<api.PartnerCost> buildUnnamed5021() {
  var o = <api.PartnerCost>[];
  o.add(buildPartnerCost());
  o.add(buildPartnerCost());
  return o;
}

void checkUnnamed5021(core.List<api.PartnerCost> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerCost(o[0] as api.PartnerCost);
  checkPartnerCost(o[1] as api.PartnerCost);
}

core.int buildCounterInsertionOrder = 0;
api.InsertionOrder buildInsertionOrder() {
  var o = api.InsertionOrder();
  buildCounterInsertionOrder++;
  if (buildCounterInsertionOrder < 3) {
    o.advertiserId = 'foo';
    o.bidStrategy = buildBiddingStrategy();
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
    o.partnerCosts = buildUnnamed5021();
    o.performanceGoal = buildPerformanceGoal();
    o.updateTime = 'foo';
  }
  buildCounterInsertionOrder--;
  return o;
}

void checkInsertionOrder(api.InsertionOrder o) {
  buildCounterInsertionOrder++;
  if (buildCounterInsertionOrder < 3) {
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkBiddingStrategy(o.bidStrategy as api.BiddingStrategy);
    checkInsertionOrderBudget(o.budget as api.InsertionOrderBudget);
    unittest.expect(o.campaignId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    checkFrequencyCap(o.frequencyCap as api.FrequencyCap);
    unittest.expect(o.insertionOrderId, unittest.equals('foo'));
    unittest.expect(o.insertionOrderType, unittest.equals('foo'));
    checkIntegrationDetails(o.integrationDetails as api.IntegrationDetails);
    unittest.expect(o.name, unittest.equals('foo'));
    checkPacing(o.pacing as api.Pacing);
    checkUnnamed5021(o.partnerCosts);
    checkPerformanceGoal(o.performanceGoal as api.PerformanceGoal);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterInsertionOrder--;
}

core.List<api.InsertionOrderBudgetSegment> buildUnnamed5022() {
  var o = <api.InsertionOrderBudgetSegment>[];
  o.add(buildInsertionOrderBudgetSegment());
  o.add(buildInsertionOrderBudgetSegment());
  return o;
}

void checkUnnamed5022(core.List<api.InsertionOrderBudgetSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInsertionOrderBudgetSegment(o[0] as api.InsertionOrderBudgetSegment);
  checkInsertionOrderBudgetSegment(o[1] as api.InsertionOrderBudgetSegment);
}

core.int buildCounterInsertionOrderBudget = 0;
api.InsertionOrderBudget buildInsertionOrderBudget() {
  var o = api.InsertionOrderBudget();
  buildCounterInsertionOrderBudget++;
  if (buildCounterInsertionOrderBudget < 3) {
    o.automationType = 'foo';
    o.budgetSegments = buildUnnamed5022();
    o.budgetUnit = 'foo';
  }
  buildCounterInsertionOrderBudget--;
  return o;
}

void checkInsertionOrderBudget(api.InsertionOrderBudget o) {
  buildCounterInsertionOrderBudget++;
  if (buildCounterInsertionOrderBudget < 3) {
    unittest.expect(o.automationType, unittest.equals('foo'));
    checkUnnamed5022(o.budgetSegments);
    unittest.expect(o.budgetUnit, unittest.equals('foo'));
  }
  buildCounterInsertionOrderBudget--;
}

core.int buildCounterInsertionOrderBudgetSegment = 0;
api.InsertionOrderBudgetSegment buildInsertionOrderBudgetSegment() {
  var o = api.InsertionOrderBudgetSegment();
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
    unittest.expect(o.budgetAmountMicros, unittest.equals('foo'));
    unittest.expect(o.campaignBudgetId, unittest.equals('foo'));
    checkDateRange(o.dateRange as api.DateRange);
    unittest.expect(o.description, unittest.equals('foo'));
  }
  buildCounterInsertionOrderBudgetSegment--;
}

core.List<core.String> buildUnnamed5023() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5023(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIntegralAdScience = 0;
api.IntegralAdScience buildIntegralAdScience() {
  var o = api.IntegralAdScience();
  buildCounterIntegralAdScience++;
  if (buildCounterIntegralAdScience < 3) {
    o.customSegmentId = buildUnnamed5023();
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
    checkUnnamed5023(o.customSegmentId);
    unittest.expect(o.displayViewability, unittest.equals('foo'));
    unittest.expect(o.excludeUnrateable, unittest.isTrue);
    unittest.expect(o.excludedAdFraudRisk, unittest.equals('foo'));
    unittest.expect(o.excludedAdultRisk, unittest.equals('foo'));
    unittest.expect(o.excludedAlcoholRisk, unittest.equals('foo'));
    unittest.expect(o.excludedDrugsRisk, unittest.equals('foo'));
    unittest.expect(o.excludedGamblingRisk, unittest.equals('foo'));
    unittest.expect(o.excludedHateSpeechRisk, unittest.equals('foo'));
    unittest.expect(o.excludedIllegalDownloadsRisk, unittest.equals('foo'));
    unittest.expect(o.excludedOffensiveLanguageRisk, unittest.equals('foo'));
    unittest.expect(o.excludedViolenceRisk, unittest.equals('foo'));
    unittest.expect(o.traqScoreOption, unittest.equals('foo'));
    unittest.expect(o.videoViewability, unittest.equals('foo'));
  }
  buildCounterIntegralAdScience--;
}

core.int buildCounterIntegrationDetails = 0;
api.IntegrationDetails buildIntegrationDetails() {
  var o = api.IntegrationDetails();
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
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.integrationCode, unittest.equals('foo'));
  }
  buildCounterIntegrationDetails--;
}

core.List<api.CreativeConfig> buildUnnamed5024() {
  var o = <api.CreativeConfig>[];
  o.add(buildCreativeConfig());
  o.add(buildCreativeConfig());
  return o;
}

void checkUnnamed5024(core.List<api.CreativeConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeConfig(o[0] as api.CreativeConfig);
  checkCreativeConfig(o[1] as api.CreativeConfig);
}

core.int buildCounterInventorySource = 0;
api.InventorySource buildInventorySource() {
  var o = api.InventorySource();
  buildCounterInventorySource++;
  if (buildCounterInventorySource < 3) {
    o.commitment = 'foo';
    o.creativeConfigs = buildUnnamed5024();
    o.dealId = 'foo';
    o.deliveryMethod = 'foo';
    o.displayName = 'foo';
    o.exchange = 'foo';
    o.inventorySourceId = 'foo';
    o.inventorySourceType = 'foo';
    o.name = 'foo';
    o.publisherName = 'foo';
    o.rateDetails = buildRateDetails();
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
    unittest.expect(o.commitment, unittest.equals('foo'));
    checkUnnamed5024(o.creativeConfigs);
    unittest.expect(o.dealId, unittest.equals('foo'));
    unittest.expect(o.deliveryMethod, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.exchange, unittest.equals('foo'));
    unittest.expect(o.inventorySourceId, unittest.equals('foo'));
    unittest.expect(o.inventorySourceType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.publisherName, unittest.equals('foo'));
    checkRateDetails(o.rateDetails as api.RateDetails);
    checkInventorySourceStatus(o.status as api.InventorySourceStatus);
    checkTimeRange(o.timeRange as api.TimeRange);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterInventorySource--;
}

core.int buildCounterInventorySourceAssignedTargetingOptionDetails = 0;
api.InventorySourceAssignedTargetingOptionDetails
    buildInventorySourceAssignedTargetingOptionDetails() {
  var o = api.InventorySourceAssignedTargetingOptionDetails();
  buildCounterInventorySourceAssignedTargetingOptionDetails++;
  if (buildCounterInventorySourceAssignedTargetingOptionDetails < 3) {
    o.inventorySourceId = 'foo';
  }
  buildCounterInventorySourceAssignedTargetingOptionDetails--;
  return o;
}

void checkInventorySourceAssignedTargetingOptionDetails(
    api.InventorySourceAssignedTargetingOptionDetails o) {
  buildCounterInventorySourceAssignedTargetingOptionDetails++;
  if (buildCounterInventorySourceAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.inventorySourceId, unittest.equals('foo'));
  }
  buildCounterInventorySourceAssignedTargetingOptionDetails--;
}

core.int buildCounterInventorySourceDisplayCreativeConfig = 0;
api.InventorySourceDisplayCreativeConfig
    buildInventorySourceDisplayCreativeConfig() {
  var o = api.InventorySourceDisplayCreativeConfig();
  buildCounterInventorySourceDisplayCreativeConfig++;
  if (buildCounterInventorySourceDisplayCreativeConfig < 3) {
    o.creativeSize = buildDimensions();
  }
  buildCounterInventorySourceDisplayCreativeConfig--;
  return o;
}

void checkInventorySourceDisplayCreativeConfig(
    api.InventorySourceDisplayCreativeConfig o) {
  buildCounterInventorySourceDisplayCreativeConfig++;
  if (buildCounterInventorySourceDisplayCreativeConfig < 3) {
    checkDimensions(o.creativeSize as api.Dimensions);
  }
  buildCounterInventorySourceDisplayCreativeConfig--;
}

core.List<core.String> buildUnnamed5025() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5025(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInventorySourceFilter = 0;
api.InventorySourceFilter buildInventorySourceFilter() {
  var o = api.InventorySourceFilter();
  buildCounterInventorySourceFilter++;
  if (buildCounterInventorySourceFilter < 3) {
    o.inventorySourceIds = buildUnnamed5025();
  }
  buildCounterInventorySourceFilter--;
  return o;
}

void checkInventorySourceFilter(api.InventorySourceFilter o) {
  buildCounterInventorySourceFilter++;
  if (buildCounterInventorySourceFilter < 3) {
    checkUnnamed5025(o.inventorySourceIds);
  }
  buildCounterInventorySourceFilter--;
}

core.int buildCounterInventorySourceGroup = 0;
api.InventorySourceGroup buildInventorySourceGroup() {
  var o = api.InventorySourceGroup();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.inventorySourceGroupId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterInventorySourceGroup--;
}

core.int buildCounterInventorySourceGroupAssignedTargetingOptionDetails = 0;
api.InventorySourceGroupAssignedTargetingOptionDetails
    buildInventorySourceGroupAssignedTargetingOptionDetails() {
  var o = api.InventorySourceGroupAssignedTargetingOptionDetails();
  buildCounterInventorySourceGroupAssignedTargetingOptionDetails++;
  if (buildCounterInventorySourceGroupAssignedTargetingOptionDetails < 3) {
    o.inventorySourceGroupId = 'foo';
  }
  buildCounterInventorySourceGroupAssignedTargetingOptionDetails--;
  return o;
}

void checkInventorySourceGroupAssignedTargetingOptionDetails(
    api.InventorySourceGroupAssignedTargetingOptionDetails o) {
  buildCounterInventorySourceGroupAssignedTargetingOptionDetails++;
  if (buildCounterInventorySourceGroupAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.inventorySourceGroupId, unittest.equals('foo'));
  }
  buildCounterInventorySourceGroupAssignedTargetingOptionDetails--;
}

core.int buildCounterInventorySourceStatus = 0;
api.InventorySourceStatus buildInventorySourceStatus() {
  var o = api.InventorySourceStatus();
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
    unittest.expect(o.configStatus, unittest.equals('foo'));
    unittest.expect(o.entityPauseReason, unittest.equals('foo'));
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    unittest.expect(o.sellerPauseReason, unittest.equals('foo'));
    unittest.expect(o.sellerStatus, unittest.equals('foo'));
  }
  buildCounterInventorySourceStatus--;
}

core.int buildCounterInventorySourceVideoCreativeConfig = 0;
api.InventorySourceVideoCreativeConfig
    buildInventorySourceVideoCreativeConfig() {
  var o = api.InventorySourceVideoCreativeConfig();
  buildCounterInventorySourceVideoCreativeConfig++;
  if (buildCounterInventorySourceVideoCreativeConfig < 3) {
    o.duration = 'foo';
  }
  buildCounterInventorySourceVideoCreativeConfig--;
  return o;
}

void checkInventorySourceVideoCreativeConfig(
    api.InventorySourceVideoCreativeConfig o) {
  buildCounterInventorySourceVideoCreativeConfig++;
  if (buildCounterInventorySourceVideoCreativeConfig < 3) {
    unittest.expect(o.duration, unittest.equals('foo'));
  }
  buildCounterInventorySourceVideoCreativeConfig--;
}

core.int buildCounterKeywordAssignedTargetingOptionDetails = 0;
api.KeywordAssignedTargetingOptionDetails
    buildKeywordAssignedTargetingOptionDetails() {
  var o = api.KeywordAssignedTargetingOptionDetails();
  buildCounterKeywordAssignedTargetingOptionDetails++;
  if (buildCounterKeywordAssignedTargetingOptionDetails < 3) {
    o.keyword = 'foo';
    o.negative = true;
  }
  buildCounterKeywordAssignedTargetingOptionDetails--;
  return o;
}

void checkKeywordAssignedTargetingOptionDetails(
    api.KeywordAssignedTargetingOptionDetails o) {
  buildCounterKeywordAssignedTargetingOptionDetails++;
  if (buildCounterKeywordAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.keyword, unittest.equals('foo'));
    unittest.expect(o.negative, unittest.isTrue);
  }
  buildCounterKeywordAssignedTargetingOptionDetails--;
}

core.int buildCounterLanguageAssignedTargetingOptionDetails = 0;
api.LanguageAssignedTargetingOptionDetails
    buildLanguageAssignedTargetingOptionDetails() {
  var o = api.LanguageAssignedTargetingOptionDetails();
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
    api.LanguageAssignedTargetingOptionDetails o) {
  buildCounterLanguageAssignedTargetingOptionDetails++;
  if (buildCounterLanguageAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.negative, unittest.isTrue);
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterLanguageAssignedTargetingOptionDetails--;
}

core.int buildCounterLanguageTargetingOptionDetails = 0;
api.LanguageTargetingOptionDetails buildLanguageTargetingOptionDetails() {
  var o = api.LanguageTargetingOptionDetails();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterLanguageTargetingOptionDetails--;
}

core.List<core.String> buildUnnamed5026() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5026(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5027() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5027(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.PartnerCost> buildUnnamed5028() {
  var o = <api.PartnerCost>[];
  o.add(buildPartnerCost());
  o.add(buildPartnerCost());
  return o;
}

void checkUnnamed5028(core.List<api.PartnerCost> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerCost(o[0] as api.PartnerCost);
  checkPartnerCost(o[1] as api.PartnerCost);
}

core.List<core.String> buildUnnamed5029() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5029(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLineItem = 0;
api.LineItem buildLineItem() {
  var o = api.LineItem();
  buildCounterLineItem++;
  if (buildCounterLineItem < 3) {
    o.advertiserId = 'foo';
    o.bidStrategy = buildBiddingStrategy();
    o.budget = buildLineItemBudget();
    o.campaignId = 'foo';
    o.conversionCounting = buildConversionCountingConfig();
    o.creativeIds = buildUnnamed5026();
    o.displayName = 'foo';
    o.entityStatus = 'foo';
    o.flight = buildLineItemFlight();
    o.frequencyCap = buildFrequencyCap();
    o.insertionOrderId = 'foo';
    o.integrationDetails = buildIntegrationDetails();
    o.inventorySourceIds = buildUnnamed5027();
    o.lineItemId = 'foo';
    o.lineItemType = 'foo';
    o.mobileApp = buildMobileApp();
    o.name = 'foo';
    o.pacing = buildPacing();
    o.partnerCosts = buildUnnamed5028();
    o.partnerRevenueModel = buildPartnerRevenueModel();
    o.targetingExpansion = buildTargetingExpansionConfig();
    o.updateTime = 'foo';
    o.warningMessages = buildUnnamed5029();
  }
  buildCounterLineItem--;
  return o;
}

void checkLineItem(api.LineItem o) {
  buildCounterLineItem++;
  if (buildCounterLineItem < 3) {
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkBiddingStrategy(o.bidStrategy as api.BiddingStrategy);
    checkLineItemBudget(o.budget as api.LineItemBudget);
    unittest.expect(o.campaignId, unittest.equals('foo'));
    checkConversionCountingConfig(
        o.conversionCounting as api.ConversionCountingConfig);
    checkUnnamed5026(o.creativeIds);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    checkLineItemFlight(o.flight as api.LineItemFlight);
    checkFrequencyCap(o.frequencyCap as api.FrequencyCap);
    unittest.expect(o.insertionOrderId, unittest.equals('foo'));
    checkIntegrationDetails(o.integrationDetails as api.IntegrationDetails);
    checkUnnamed5027(o.inventorySourceIds);
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.lineItemType, unittest.equals('foo'));
    checkMobileApp(o.mobileApp as api.MobileApp);
    unittest.expect(o.name, unittest.equals('foo'));
    checkPacing(o.pacing as api.Pacing);
    checkUnnamed5028(o.partnerCosts);
    checkPartnerRevenueModel(o.partnerRevenueModel as api.PartnerRevenueModel);
    checkTargetingExpansionConfig(
        o.targetingExpansion as api.TargetingExpansionConfig);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    checkUnnamed5029(o.warningMessages);
  }
  buildCounterLineItem--;
}

core.int buildCounterLineItemBudget = 0;
api.LineItemBudget buildLineItemBudget() {
  var o = api.LineItemBudget();
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
    unittest.expect(o.budgetAllocationType, unittest.equals('foo'));
    unittest.expect(o.budgetUnit, unittest.equals('foo'));
    unittest.expect(o.maxAmount, unittest.equals('foo'));
  }
  buildCounterLineItemBudget--;
}

core.int buildCounterLineItemFlight = 0;
api.LineItemFlight buildLineItemFlight() {
  var o = api.LineItemFlight();
  buildCounterLineItemFlight++;
  if (buildCounterLineItemFlight < 3) {
    o.dateRange = buildDateRange();
    o.flightDateType = 'foo';
    o.triggerId = 'foo';
  }
  buildCounterLineItemFlight--;
  return o;
}

void checkLineItemFlight(api.LineItemFlight o) {
  buildCounterLineItemFlight++;
  if (buildCounterLineItemFlight < 3) {
    checkDateRange(o.dateRange as api.DateRange);
    unittest.expect(o.flightDateType, unittest.equals('foo'));
    unittest.expect(o.triggerId, unittest.equals('foo'));
  }
  buildCounterLineItemFlight--;
}

core.List<api.AssignedTargetingOption> buildUnnamed5030() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed5030(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0] as api.AssignedTargetingOption);
  checkAssignedTargetingOption(o[1] as api.AssignedTargetingOption);
}

core.int buildCounterListAdvertiserAssignedTargetingOptionsResponse = 0;
api.ListAdvertiserAssignedTargetingOptionsResponse
    buildListAdvertiserAssignedTargetingOptionsResponse() {
  var o = api.ListAdvertiserAssignedTargetingOptionsResponse();
  buildCounterListAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterListAdvertiserAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed5030();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdvertiserAssignedTargetingOptionsResponse--;
  return o;
}

void checkListAdvertiserAssignedTargetingOptionsResponse(
    api.ListAdvertiserAssignedTargetingOptionsResponse o) {
  buildCounterListAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterListAdvertiserAssignedTargetingOptionsResponse < 3) {
    checkUnnamed5030(o.assignedTargetingOptions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAdvertiserAssignedTargetingOptionsResponse--;
}

core.List<api.Advertiser> buildUnnamed5031() {
  var o = <api.Advertiser>[];
  o.add(buildAdvertiser());
  o.add(buildAdvertiser());
  return o;
}

void checkUnnamed5031(core.List<api.Advertiser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdvertiser(o[0] as api.Advertiser);
  checkAdvertiser(o[1] as api.Advertiser);
}

core.int buildCounterListAdvertisersResponse = 0;
api.ListAdvertisersResponse buildListAdvertisersResponse() {
  var o = api.ListAdvertisersResponse();
  buildCounterListAdvertisersResponse++;
  if (buildCounterListAdvertisersResponse < 3) {
    o.advertisers = buildUnnamed5031();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdvertisersResponse--;
  return o;
}

void checkListAdvertisersResponse(api.ListAdvertisersResponse o) {
  buildCounterListAdvertisersResponse++;
  if (buildCounterListAdvertisersResponse < 3) {
    checkUnnamed5031(o.advertisers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAdvertisersResponse--;
}

core.List<api.AssignedInventorySource> buildUnnamed5032() {
  var o = <api.AssignedInventorySource>[];
  o.add(buildAssignedInventorySource());
  o.add(buildAssignedInventorySource());
  return o;
}

void checkUnnamed5032(core.List<api.AssignedInventorySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedInventorySource(o[0] as api.AssignedInventorySource);
  checkAssignedInventorySource(o[1] as api.AssignedInventorySource);
}

core.int buildCounterListAssignedInventorySourcesResponse = 0;
api.ListAssignedInventorySourcesResponse
    buildListAssignedInventorySourcesResponse() {
  var o = api.ListAssignedInventorySourcesResponse();
  buildCounterListAssignedInventorySourcesResponse++;
  if (buildCounterListAssignedInventorySourcesResponse < 3) {
    o.assignedInventorySources = buildUnnamed5032();
    o.nextPageToken = 'foo';
  }
  buildCounterListAssignedInventorySourcesResponse--;
  return o;
}

void checkListAssignedInventorySourcesResponse(
    api.ListAssignedInventorySourcesResponse o) {
  buildCounterListAssignedInventorySourcesResponse++;
  if (buildCounterListAssignedInventorySourcesResponse < 3) {
    checkUnnamed5032(o.assignedInventorySources);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAssignedInventorySourcesResponse--;
}

core.List<api.AssignedLocation> buildUnnamed5033() {
  var o = <api.AssignedLocation>[];
  o.add(buildAssignedLocation());
  o.add(buildAssignedLocation());
  return o;
}

void checkUnnamed5033(core.List<api.AssignedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedLocation(o[0] as api.AssignedLocation);
  checkAssignedLocation(o[1] as api.AssignedLocation);
}

core.int buildCounterListAssignedLocationsResponse = 0;
api.ListAssignedLocationsResponse buildListAssignedLocationsResponse() {
  var o = api.ListAssignedLocationsResponse();
  buildCounterListAssignedLocationsResponse++;
  if (buildCounterListAssignedLocationsResponse < 3) {
    o.assignedLocations = buildUnnamed5033();
    o.nextPageToken = 'foo';
  }
  buildCounterListAssignedLocationsResponse--;
  return o;
}

void checkListAssignedLocationsResponse(api.ListAssignedLocationsResponse o) {
  buildCounterListAssignedLocationsResponse++;
  if (buildCounterListAssignedLocationsResponse < 3) {
    checkUnnamed5033(o.assignedLocations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAssignedLocationsResponse--;
}

core.List<api.Campaign> buildUnnamed5034() {
  var o = <api.Campaign>[];
  o.add(buildCampaign());
  o.add(buildCampaign());
  return o;
}

void checkUnnamed5034(core.List<api.Campaign> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCampaign(o[0] as api.Campaign);
  checkCampaign(o[1] as api.Campaign);
}

core.int buildCounterListCampaignsResponse = 0;
api.ListCampaignsResponse buildListCampaignsResponse() {
  var o = api.ListCampaignsResponse();
  buildCounterListCampaignsResponse++;
  if (buildCounterListCampaignsResponse < 3) {
    o.campaigns = buildUnnamed5034();
    o.nextPageToken = 'foo';
  }
  buildCounterListCampaignsResponse--;
  return o;
}

void checkListCampaignsResponse(api.ListCampaignsResponse o) {
  buildCounterListCampaignsResponse++;
  if (buildCounterListCampaignsResponse < 3) {
    checkUnnamed5034(o.campaigns);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCampaignsResponse--;
}

core.List<api.Channel> buildUnnamed5035() {
  var o = <api.Channel>[];
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

void checkUnnamed5035(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0] as api.Channel);
  checkChannel(o[1] as api.Channel);
}

core.int buildCounterListChannelsResponse = 0;
api.ListChannelsResponse buildListChannelsResponse() {
  var o = api.ListChannelsResponse();
  buildCounterListChannelsResponse++;
  if (buildCounterListChannelsResponse < 3) {
    o.channels = buildUnnamed5035();
    o.nextPageToken = 'foo';
  }
  buildCounterListChannelsResponse--;
  return o;
}

void checkListChannelsResponse(api.ListChannelsResponse o) {
  buildCounterListChannelsResponse++;
  if (buildCounterListChannelsResponse < 3) {
    checkUnnamed5035(o.channels);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListChannelsResponse--;
}

core.List<api.CombinedAudience> buildUnnamed5036() {
  var o = <api.CombinedAudience>[];
  o.add(buildCombinedAudience());
  o.add(buildCombinedAudience());
  return o;
}

void checkUnnamed5036(core.List<api.CombinedAudience> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCombinedAudience(o[0] as api.CombinedAudience);
  checkCombinedAudience(o[1] as api.CombinedAudience);
}

core.int buildCounterListCombinedAudiencesResponse = 0;
api.ListCombinedAudiencesResponse buildListCombinedAudiencesResponse() {
  var o = api.ListCombinedAudiencesResponse();
  buildCounterListCombinedAudiencesResponse++;
  if (buildCounterListCombinedAudiencesResponse < 3) {
    o.combinedAudiences = buildUnnamed5036();
    o.nextPageToken = 'foo';
  }
  buildCounterListCombinedAudiencesResponse--;
  return o;
}

void checkListCombinedAudiencesResponse(api.ListCombinedAudiencesResponse o) {
  buildCounterListCombinedAudiencesResponse++;
  if (buildCounterListCombinedAudiencesResponse < 3) {
    checkUnnamed5036(o.combinedAudiences);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCombinedAudiencesResponse--;
}

core.List<api.Creative> buildUnnamed5037() {
  var o = <api.Creative>[];
  o.add(buildCreative());
  o.add(buildCreative());
  return o;
}

void checkUnnamed5037(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0] as api.Creative);
  checkCreative(o[1] as api.Creative);
}

core.int buildCounterListCreativesResponse = 0;
api.ListCreativesResponse buildListCreativesResponse() {
  var o = api.ListCreativesResponse();
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    o.creatives = buildUnnamed5037();
    o.nextPageToken = 'foo';
  }
  buildCounterListCreativesResponse--;
  return o;
}

void checkListCreativesResponse(api.ListCreativesResponse o) {
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    checkUnnamed5037(o.creatives);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCreativesResponse--;
}

core.List<api.CustomBiddingAlgorithm> buildUnnamed5038() {
  var o = <api.CustomBiddingAlgorithm>[];
  o.add(buildCustomBiddingAlgorithm());
  o.add(buildCustomBiddingAlgorithm());
  return o;
}

void checkUnnamed5038(core.List<api.CustomBiddingAlgorithm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomBiddingAlgorithm(o[0] as api.CustomBiddingAlgorithm);
  checkCustomBiddingAlgorithm(o[1] as api.CustomBiddingAlgorithm);
}

core.int buildCounterListCustomBiddingAlgorithmsResponse = 0;
api.ListCustomBiddingAlgorithmsResponse
    buildListCustomBiddingAlgorithmsResponse() {
  var o = api.ListCustomBiddingAlgorithmsResponse();
  buildCounterListCustomBiddingAlgorithmsResponse++;
  if (buildCounterListCustomBiddingAlgorithmsResponse < 3) {
    o.customBiddingAlgorithms = buildUnnamed5038();
    o.nextPageToken = 'foo';
  }
  buildCounterListCustomBiddingAlgorithmsResponse--;
  return o;
}

void checkListCustomBiddingAlgorithmsResponse(
    api.ListCustomBiddingAlgorithmsResponse o) {
  buildCounterListCustomBiddingAlgorithmsResponse++;
  if (buildCounterListCustomBiddingAlgorithmsResponse < 3) {
    checkUnnamed5038(o.customBiddingAlgorithms);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCustomBiddingAlgorithmsResponse--;
}

core.List<api.CustomList> buildUnnamed5039() {
  var o = <api.CustomList>[];
  o.add(buildCustomList());
  o.add(buildCustomList());
  return o;
}

void checkUnnamed5039(core.List<api.CustomList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomList(o[0] as api.CustomList);
  checkCustomList(o[1] as api.CustomList);
}

core.int buildCounterListCustomListsResponse = 0;
api.ListCustomListsResponse buildListCustomListsResponse() {
  var o = api.ListCustomListsResponse();
  buildCounterListCustomListsResponse++;
  if (buildCounterListCustomListsResponse < 3) {
    o.customLists = buildUnnamed5039();
    o.nextPageToken = 'foo';
  }
  buildCounterListCustomListsResponse--;
  return o;
}

void checkListCustomListsResponse(api.ListCustomListsResponse o) {
  buildCounterListCustomListsResponse++;
  if (buildCounterListCustomListsResponse < 3) {
    checkUnnamed5039(o.customLists);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCustomListsResponse--;
}

core.List<api.FirstAndThirdPartyAudience> buildUnnamed5040() {
  var o = <api.FirstAndThirdPartyAudience>[];
  o.add(buildFirstAndThirdPartyAudience());
  o.add(buildFirstAndThirdPartyAudience());
  return o;
}

void checkUnnamed5040(core.List<api.FirstAndThirdPartyAudience> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirstAndThirdPartyAudience(o[0] as api.FirstAndThirdPartyAudience);
  checkFirstAndThirdPartyAudience(o[1] as api.FirstAndThirdPartyAudience);
}

core.int buildCounterListFirstAndThirdPartyAudiencesResponse = 0;
api.ListFirstAndThirdPartyAudiencesResponse
    buildListFirstAndThirdPartyAudiencesResponse() {
  var o = api.ListFirstAndThirdPartyAudiencesResponse();
  buildCounterListFirstAndThirdPartyAudiencesResponse++;
  if (buildCounterListFirstAndThirdPartyAudiencesResponse < 3) {
    o.firstAndThirdPartyAudiences = buildUnnamed5040();
    o.nextPageToken = 'foo';
  }
  buildCounterListFirstAndThirdPartyAudiencesResponse--;
  return o;
}

void checkListFirstAndThirdPartyAudiencesResponse(
    api.ListFirstAndThirdPartyAudiencesResponse o) {
  buildCounterListFirstAndThirdPartyAudiencesResponse++;
  if (buildCounterListFirstAndThirdPartyAudiencesResponse < 3) {
    checkUnnamed5040(o.firstAndThirdPartyAudiences);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListFirstAndThirdPartyAudiencesResponse--;
}

core.List<api.GoogleAudience> buildUnnamed5041() {
  var o = <api.GoogleAudience>[];
  o.add(buildGoogleAudience());
  o.add(buildGoogleAudience());
  return o;
}

void checkUnnamed5041(core.List<api.GoogleAudience> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAudience(o[0] as api.GoogleAudience);
  checkGoogleAudience(o[1] as api.GoogleAudience);
}

core.int buildCounterListGoogleAudiencesResponse = 0;
api.ListGoogleAudiencesResponse buildListGoogleAudiencesResponse() {
  var o = api.ListGoogleAudiencesResponse();
  buildCounterListGoogleAudiencesResponse++;
  if (buildCounterListGoogleAudiencesResponse < 3) {
    o.googleAudiences = buildUnnamed5041();
    o.nextPageToken = 'foo';
  }
  buildCounterListGoogleAudiencesResponse--;
  return o;
}

void checkListGoogleAudiencesResponse(api.ListGoogleAudiencesResponse o) {
  buildCounterListGoogleAudiencesResponse++;
  if (buildCounterListGoogleAudiencesResponse < 3) {
    checkUnnamed5041(o.googleAudiences);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGoogleAudiencesResponse--;
}

core.List<api.InsertionOrder> buildUnnamed5042() {
  var o = <api.InsertionOrder>[];
  o.add(buildInsertionOrder());
  o.add(buildInsertionOrder());
  return o;
}

void checkUnnamed5042(core.List<api.InsertionOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInsertionOrder(o[0] as api.InsertionOrder);
  checkInsertionOrder(o[1] as api.InsertionOrder);
}

core.int buildCounterListInsertionOrdersResponse = 0;
api.ListInsertionOrdersResponse buildListInsertionOrdersResponse() {
  var o = api.ListInsertionOrdersResponse();
  buildCounterListInsertionOrdersResponse++;
  if (buildCounterListInsertionOrdersResponse < 3) {
    o.insertionOrders = buildUnnamed5042();
    o.nextPageToken = 'foo';
  }
  buildCounterListInsertionOrdersResponse--;
  return o;
}

void checkListInsertionOrdersResponse(api.ListInsertionOrdersResponse o) {
  buildCounterListInsertionOrdersResponse++;
  if (buildCounterListInsertionOrdersResponse < 3) {
    checkUnnamed5042(o.insertionOrders);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInsertionOrdersResponse--;
}

core.List<api.InventorySourceGroup> buildUnnamed5043() {
  var o = <api.InventorySourceGroup>[];
  o.add(buildInventorySourceGroup());
  o.add(buildInventorySourceGroup());
  return o;
}

void checkUnnamed5043(core.List<api.InventorySourceGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventorySourceGroup(o[0] as api.InventorySourceGroup);
  checkInventorySourceGroup(o[1] as api.InventorySourceGroup);
}

core.int buildCounterListInventorySourceGroupsResponse = 0;
api.ListInventorySourceGroupsResponse buildListInventorySourceGroupsResponse() {
  var o = api.ListInventorySourceGroupsResponse();
  buildCounterListInventorySourceGroupsResponse++;
  if (buildCounterListInventorySourceGroupsResponse < 3) {
    o.inventorySourceGroups = buildUnnamed5043();
    o.nextPageToken = 'foo';
  }
  buildCounterListInventorySourceGroupsResponse--;
  return o;
}

void checkListInventorySourceGroupsResponse(
    api.ListInventorySourceGroupsResponse o) {
  buildCounterListInventorySourceGroupsResponse++;
  if (buildCounterListInventorySourceGroupsResponse < 3) {
    checkUnnamed5043(o.inventorySourceGroups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInventorySourceGroupsResponse--;
}

core.List<api.InventorySource> buildUnnamed5044() {
  var o = <api.InventorySource>[];
  o.add(buildInventorySource());
  o.add(buildInventorySource());
  return o;
}

void checkUnnamed5044(core.List<api.InventorySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventorySource(o[0] as api.InventorySource);
  checkInventorySource(o[1] as api.InventorySource);
}

core.int buildCounterListInventorySourcesResponse = 0;
api.ListInventorySourcesResponse buildListInventorySourcesResponse() {
  var o = api.ListInventorySourcesResponse();
  buildCounterListInventorySourcesResponse++;
  if (buildCounterListInventorySourcesResponse < 3) {
    o.inventorySources = buildUnnamed5044();
    o.nextPageToken = 'foo';
  }
  buildCounterListInventorySourcesResponse--;
  return o;
}

void checkListInventorySourcesResponse(api.ListInventorySourcesResponse o) {
  buildCounterListInventorySourcesResponse++;
  if (buildCounterListInventorySourcesResponse < 3) {
    checkUnnamed5044(o.inventorySources);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInventorySourcesResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed5045() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed5045(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0] as api.AssignedTargetingOption);
  checkAssignedTargetingOption(o[1] as api.AssignedTargetingOption);
}

core.int buildCounterListLineItemAssignedTargetingOptionsResponse = 0;
api.ListLineItemAssignedTargetingOptionsResponse
    buildListLineItemAssignedTargetingOptionsResponse() {
  var o = api.ListLineItemAssignedTargetingOptionsResponse();
  buildCounterListLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterListLineItemAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed5045();
    o.nextPageToken = 'foo';
  }
  buildCounterListLineItemAssignedTargetingOptionsResponse--;
  return o;
}

void checkListLineItemAssignedTargetingOptionsResponse(
    api.ListLineItemAssignedTargetingOptionsResponse o) {
  buildCounterListLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterListLineItemAssignedTargetingOptionsResponse < 3) {
    checkUnnamed5045(o.assignedTargetingOptions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLineItemAssignedTargetingOptionsResponse--;
}

core.List<api.LineItem> buildUnnamed5046() {
  var o = <api.LineItem>[];
  o.add(buildLineItem());
  o.add(buildLineItem());
  return o;
}

void checkUnnamed5046(core.List<api.LineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLineItem(o[0] as api.LineItem);
  checkLineItem(o[1] as api.LineItem);
}

core.int buildCounterListLineItemsResponse = 0;
api.ListLineItemsResponse buildListLineItemsResponse() {
  var o = api.ListLineItemsResponse();
  buildCounterListLineItemsResponse++;
  if (buildCounterListLineItemsResponse < 3) {
    o.lineItems = buildUnnamed5046();
    o.nextPageToken = 'foo';
  }
  buildCounterListLineItemsResponse--;
  return o;
}

void checkListLineItemsResponse(api.ListLineItemsResponse o) {
  buildCounterListLineItemsResponse++;
  if (buildCounterListLineItemsResponse < 3) {
    checkUnnamed5046(o.lineItems);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLineItemsResponse--;
}

core.List<api.LocationList> buildUnnamed5047() {
  var o = <api.LocationList>[];
  o.add(buildLocationList());
  o.add(buildLocationList());
  return o;
}

void checkUnnamed5047(core.List<api.LocationList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationList(o[0] as api.LocationList);
  checkLocationList(o[1] as api.LocationList);
}

core.int buildCounterListLocationListsResponse = 0;
api.ListLocationListsResponse buildListLocationListsResponse() {
  var o = api.ListLocationListsResponse();
  buildCounterListLocationListsResponse++;
  if (buildCounterListLocationListsResponse < 3) {
    o.locationLists = buildUnnamed5047();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationListsResponse--;
  return o;
}

void checkListLocationListsResponse(api.ListLocationListsResponse o) {
  buildCounterListLocationListsResponse++;
  if (buildCounterListLocationListsResponse < 3) {
    checkUnnamed5047(o.locationLists);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationListsResponse--;
}

core.List<api.ManualTrigger> buildUnnamed5048() {
  var o = <api.ManualTrigger>[];
  o.add(buildManualTrigger());
  o.add(buildManualTrigger());
  return o;
}

void checkUnnamed5048(core.List<api.ManualTrigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManualTrigger(o[0] as api.ManualTrigger);
  checkManualTrigger(o[1] as api.ManualTrigger);
}

core.int buildCounterListManualTriggersResponse = 0;
api.ListManualTriggersResponse buildListManualTriggersResponse() {
  var o = api.ListManualTriggersResponse();
  buildCounterListManualTriggersResponse++;
  if (buildCounterListManualTriggersResponse < 3) {
    o.manualTriggers = buildUnnamed5048();
    o.nextPageToken = 'foo';
  }
  buildCounterListManualTriggersResponse--;
  return o;
}

void checkListManualTriggersResponse(api.ListManualTriggersResponse o) {
  buildCounterListManualTriggersResponse++;
  if (buildCounterListManualTriggersResponse < 3) {
    checkUnnamed5048(o.manualTriggers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListManualTriggersResponse--;
}

core.List<api.NegativeKeywordList> buildUnnamed5049() {
  var o = <api.NegativeKeywordList>[];
  o.add(buildNegativeKeywordList());
  o.add(buildNegativeKeywordList());
  return o;
}

void checkUnnamed5049(core.List<api.NegativeKeywordList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeywordList(o[0] as api.NegativeKeywordList);
  checkNegativeKeywordList(o[1] as api.NegativeKeywordList);
}

core.int buildCounterListNegativeKeywordListsResponse = 0;
api.ListNegativeKeywordListsResponse buildListNegativeKeywordListsResponse() {
  var o = api.ListNegativeKeywordListsResponse();
  buildCounterListNegativeKeywordListsResponse++;
  if (buildCounterListNegativeKeywordListsResponse < 3) {
    o.negativeKeywordLists = buildUnnamed5049();
    o.nextPageToken = 'foo';
  }
  buildCounterListNegativeKeywordListsResponse--;
  return o;
}

void checkListNegativeKeywordListsResponse(
    api.ListNegativeKeywordListsResponse o) {
  buildCounterListNegativeKeywordListsResponse++;
  if (buildCounterListNegativeKeywordListsResponse < 3) {
    checkUnnamed5049(o.negativeKeywordLists);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListNegativeKeywordListsResponse--;
}

core.List<api.NegativeKeyword> buildUnnamed5050() {
  var o = <api.NegativeKeyword>[];
  o.add(buildNegativeKeyword());
  o.add(buildNegativeKeyword());
  return o;
}

void checkUnnamed5050(core.List<api.NegativeKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeyword(o[0] as api.NegativeKeyword);
  checkNegativeKeyword(o[1] as api.NegativeKeyword);
}

core.int buildCounterListNegativeKeywordsResponse = 0;
api.ListNegativeKeywordsResponse buildListNegativeKeywordsResponse() {
  var o = api.ListNegativeKeywordsResponse();
  buildCounterListNegativeKeywordsResponse++;
  if (buildCounterListNegativeKeywordsResponse < 3) {
    o.negativeKeywords = buildUnnamed5050();
    o.nextPageToken = 'foo';
  }
  buildCounterListNegativeKeywordsResponse--;
  return o;
}

void checkListNegativeKeywordsResponse(api.ListNegativeKeywordsResponse o) {
  buildCounterListNegativeKeywordsResponse++;
  if (buildCounterListNegativeKeywordsResponse < 3) {
    checkUnnamed5050(o.negativeKeywords);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListNegativeKeywordsResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed5051() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed5051(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0] as api.AssignedTargetingOption);
  checkAssignedTargetingOption(o[1] as api.AssignedTargetingOption);
}

core.int buildCounterListPartnerAssignedTargetingOptionsResponse = 0;
api.ListPartnerAssignedTargetingOptionsResponse
    buildListPartnerAssignedTargetingOptionsResponse() {
  var o = api.ListPartnerAssignedTargetingOptionsResponse();
  buildCounterListPartnerAssignedTargetingOptionsResponse++;
  if (buildCounterListPartnerAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed5051();
    o.nextPageToken = 'foo';
  }
  buildCounterListPartnerAssignedTargetingOptionsResponse--;
  return o;
}

void checkListPartnerAssignedTargetingOptionsResponse(
    api.ListPartnerAssignedTargetingOptionsResponse o) {
  buildCounterListPartnerAssignedTargetingOptionsResponse++;
  if (buildCounterListPartnerAssignedTargetingOptionsResponse < 3) {
    checkUnnamed5051(o.assignedTargetingOptions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListPartnerAssignedTargetingOptionsResponse--;
}

core.List<api.Partner> buildUnnamed5052() {
  var o = <api.Partner>[];
  o.add(buildPartner());
  o.add(buildPartner());
  return o;
}

void checkUnnamed5052(core.List<api.Partner> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartner(o[0] as api.Partner);
  checkPartner(o[1] as api.Partner);
}

core.int buildCounterListPartnersResponse = 0;
api.ListPartnersResponse buildListPartnersResponse() {
  var o = api.ListPartnersResponse();
  buildCounterListPartnersResponse++;
  if (buildCounterListPartnersResponse < 3) {
    o.nextPageToken = 'foo';
    o.partners = buildUnnamed5052();
  }
  buildCounterListPartnersResponse--;
  return o;
}

void checkListPartnersResponse(api.ListPartnersResponse o) {
  buildCounterListPartnersResponse++;
  if (buildCounterListPartnersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5052(o.partners);
  }
  buildCounterListPartnersResponse--;
}

core.List<api.Site> buildUnnamed5053() {
  var o = <api.Site>[];
  o.add(buildSite());
  o.add(buildSite());
  return o;
}

void checkUnnamed5053(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0] as api.Site);
  checkSite(o[1] as api.Site);
}

core.int buildCounterListSitesResponse = 0;
api.ListSitesResponse buildListSitesResponse() {
  var o = api.ListSitesResponse();
  buildCounterListSitesResponse++;
  if (buildCounterListSitesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sites = buildUnnamed5053();
  }
  buildCounterListSitesResponse--;
  return o;
}

void checkListSitesResponse(api.ListSitesResponse o) {
  buildCounterListSitesResponse++;
  if (buildCounterListSitesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5053(o.sites);
  }
  buildCounterListSitesResponse--;
}

core.List<api.TargetingOption> buildUnnamed5054() {
  var o = <api.TargetingOption>[];
  o.add(buildTargetingOption());
  o.add(buildTargetingOption());
  return o;
}

void checkUnnamed5054(core.List<api.TargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingOption(o[0] as api.TargetingOption);
  checkTargetingOption(o[1] as api.TargetingOption);
}

core.int buildCounterListTargetingOptionsResponse = 0;
api.ListTargetingOptionsResponse buildListTargetingOptionsResponse() {
  var o = api.ListTargetingOptionsResponse();
  buildCounterListTargetingOptionsResponse++;
  if (buildCounterListTargetingOptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.targetingOptions = buildUnnamed5054();
  }
  buildCounterListTargetingOptionsResponse--;
  return o;
}

void checkListTargetingOptionsResponse(api.ListTargetingOptionsResponse o) {
  buildCounterListTargetingOptionsResponse++;
  if (buildCounterListTargetingOptionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5054(o.targetingOptions);
  }
  buildCounterListTargetingOptionsResponse--;
}

core.List<api.User> buildUnnamed5055() {
  var o = <api.User>[];
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

void checkUnnamed5055(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0] as api.User);
  checkUser(o[1] as api.User);
}

core.int buildCounterListUsersResponse = 0;
api.ListUsersResponse buildListUsersResponse() {
  var o = api.ListUsersResponse();
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    o.nextPageToken = 'foo';
    o.users = buildUnnamed5055();
  }
  buildCounterListUsersResponse--;
  return o;
}

void checkListUsersResponse(api.ListUsersResponse o) {
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5055(o.users);
  }
  buildCounterListUsersResponse--;
}

core.int buildCounterLocationList = 0;
api.LocationList buildLocationList() {
  var o = api.LocationList();
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
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.locationListId, unittest.equals('foo'));
    unittest.expect(o.locationType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocationList--;
}

core.int buildCounterLookbackWindow = 0;
api.LookbackWindow buildLookbackWindow() {
  var o = api.LookbackWindow();
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
    unittest.expect(o.clickDays, unittest.equals(42));
    unittest.expect(o.impressionDays, unittest.equals(42));
  }
  buildCounterLookbackWindow--;
}

core.int buildCounterManualTrigger = 0;
api.ManualTrigger buildManualTrigger() {
  var o = api.ManualTrigger();
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
    unittest.expect(o.activationDurationMinutes, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.latestActivationTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.triggerId, unittest.equals('foo'));
  }
  buildCounterManualTrigger--;
}

core.int buildCounterMaximizeSpendBidStrategy = 0;
api.MaximizeSpendBidStrategy buildMaximizeSpendBidStrategy() {
  var o = api.MaximizeSpendBidStrategy();
  buildCounterMaximizeSpendBidStrategy++;
  if (buildCounterMaximizeSpendBidStrategy < 3) {
    o.customBiddingAlgorithmId = 'foo';
    o.maxAverageCpmBidAmountMicros = 'foo';
    o.performanceGoalType = 'foo';
  }
  buildCounterMaximizeSpendBidStrategy--;
  return o;
}

void checkMaximizeSpendBidStrategy(api.MaximizeSpendBidStrategy o) {
  buildCounterMaximizeSpendBidStrategy++;
  if (buildCounterMaximizeSpendBidStrategy < 3) {
    unittest.expect(o.customBiddingAlgorithmId, unittest.equals('foo'));
    unittest.expect(o.maxAverageCpmBidAmountMicros, unittest.equals('foo'));
    unittest.expect(o.performanceGoalType, unittest.equals('foo'));
  }
  buildCounterMaximizeSpendBidStrategy--;
}

core.int buildCounterMeasurementConfig = 0;
api.MeasurementConfig buildMeasurementConfig() {
  var o = api.MeasurementConfig();
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
    unittest.expect(o.dv360ToCmCostReportingEnabled, unittest.isTrue);
    unittest.expect(o.dv360ToCmDataSharingEnabled, unittest.isTrue);
  }
  buildCounterMeasurementConfig--;
}

core.int buildCounterMobileApp = 0;
api.MobileApp buildMobileApp() {
  var o = api.MobileApp();
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
    unittest.expect(o.appId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.platform, unittest.equals('foo'));
    unittest.expect(o.publisher, unittest.equals('foo'));
  }
  buildCounterMobileApp--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  var o = api.Money();
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
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

core.int buildCounterNegativeKeyword = 0;
api.NegativeKeyword buildNegativeKeyword() {
  var o = api.NegativeKeyword();
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
    unittest.expect(o.keywordValue, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterNegativeKeyword--;
}

core.int buildCounterNegativeKeywordList = 0;
api.NegativeKeywordList buildNegativeKeywordList() {
  var o = api.NegativeKeywordList();
  buildCounterNegativeKeywordList++;
  if (buildCounterNegativeKeywordList < 3) {
    o.advertiserId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.negativeKeywordListId = 'foo';
  }
  buildCounterNegativeKeywordList--;
  return o;
}

void checkNegativeKeywordList(api.NegativeKeywordList o) {
  buildCounterNegativeKeywordList++;
  if (buildCounterNegativeKeywordList < 3) {
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.negativeKeywordListId, unittest.equals('foo'));
  }
  buildCounterNegativeKeywordList--;
}

core.int buildCounterNegativeKeywordListAssignedTargetingOptionDetails = 0;
api.NegativeKeywordListAssignedTargetingOptionDetails
    buildNegativeKeywordListAssignedTargetingOptionDetails() {
  var o = api.NegativeKeywordListAssignedTargetingOptionDetails();
  buildCounterNegativeKeywordListAssignedTargetingOptionDetails++;
  if (buildCounterNegativeKeywordListAssignedTargetingOptionDetails < 3) {
    o.negativeKeywordListId = 'foo';
  }
  buildCounterNegativeKeywordListAssignedTargetingOptionDetails--;
  return o;
}

void checkNegativeKeywordListAssignedTargetingOptionDetails(
    api.NegativeKeywordListAssignedTargetingOptionDetails o) {
  buildCounterNegativeKeywordListAssignedTargetingOptionDetails++;
  if (buildCounterNegativeKeywordListAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.negativeKeywordListId, unittest.equals('foo'));
  }
  buildCounterNegativeKeywordListAssignedTargetingOptionDetails--;
}

core.int buildCounterObaIcon = 0;
api.ObaIcon buildObaIcon() {
  var o = api.ObaIcon();
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
    unittest.expect(o.clickTrackingUrl, unittest.equals('foo'));
    checkDimensions(o.dimensions as api.Dimensions);
    unittest.expect(o.landingPageUrl, unittest.equals('foo'));
    unittest.expect(o.position, unittest.equals('foo'));
    unittest.expect(o.program, unittest.equals('foo'));
    unittest.expect(o.resourceMimeType, unittest.equals('foo'));
    unittest.expect(o.resourceUrl, unittest.equals('foo'));
    unittest.expect(o.viewTrackingUrl, unittest.equals('foo'));
  }
  buildCounterObaIcon--;
}

core.int buildCounterOnScreenPositionAssignedTargetingOptionDetails = 0;
api.OnScreenPositionAssignedTargetingOptionDetails
    buildOnScreenPositionAssignedTargetingOptionDetails() {
  var o = api.OnScreenPositionAssignedTargetingOptionDetails();
  buildCounterOnScreenPositionAssignedTargetingOptionDetails++;
  if (buildCounterOnScreenPositionAssignedTargetingOptionDetails < 3) {
    o.onScreenPosition = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterOnScreenPositionAssignedTargetingOptionDetails--;
  return o;
}

void checkOnScreenPositionAssignedTargetingOptionDetails(
    api.OnScreenPositionAssignedTargetingOptionDetails o) {
  buildCounterOnScreenPositionAssignedTargetingOptionDetails++;
  if (buildCounterOnScreenPositionAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.onScreenPosition, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterOnScreenPositionAssignedTargetingOptionDetails--;
}

core.int buildCounterOnScreenPositionTargetingOptionDetails = 0;
api.OnScreenPositionTargetingOptionDetails
    buildOnScreenPositionTargetingOptionDetails() {
  var o = api.OnScreenPositionTargetingOptionDetails();
  buildCounterOnScreenPositionTargetingOptionDetails++;
  if (buildCounterOnScreenPositionTargetingOptionDetails < 3) {
    o.onScreenPosition = 'foo';
  }
  buildCounterOnScreenPositionTargetingOptionDetails--;
  return o;
}

void checkOnScreenPositionTargetingOptionDetails(
    api.OnScreenPositionTargetingOptionDetails o) {
  buildCounterOnScreenPositionTargetingOptionDetails++;
  if (buildCounterOnScreenPositionTargetingOptionDetails < 3) {
    unittest.expect(o.onScreenPosition, unittest.equals('foo'));
  }
  buildCounterOnScreenPositionTargetingOptionDetails--;
}

core.int buildCounterOperatingSystemAssignedTargetingOptionDetails = 0;
api.OperatingSystemAssignedTargetingOptionDetails
    buildOperatingSystemAssignedTargetingOptionDetails() {
  var o = api.OperatingSystemAssignedTargetingOptionDetails();
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
    api.OperatingSystemAssignedTargetingOptionDetails o) {
  buildCounterOperatingSystemAssignedTargetingOptionDetails++;
  if (buildCounterOperatingSystemAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.negative, unittest.isTrue);
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterOperatingSystemAssignedTargetingOptionDetails--;
}

core.int buildCounterOperatingSystemTargetingOptionDetails = 0;
api.OperatingSystemTargetingOptionDetails
    buildOperatingSystemTargetingOptionDetails() {
  var o = api.OperatingSystemTargetingOptionDetails();
  buildCounterOperatingSystemTargetingOptionDetails++;
  if (buildCounterOperatingSystemTargetingOptionDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterOperatingSystemTargetingOptionDetails--;
  return o;
}

void checkOperatingSystemTargetingOptionDetails(
    api.OperatingSystemTargetingOptionDetails o) {
  buildCounterOperatingSystemTargetingOptionDetails++;
  if (buildCounterOperatingSystemTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterOperatingSystemTargetingOptionDetails--;
}

core.Map<core.String, core.Object> buildUnnamed5056() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5056(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed5057() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5057(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed5056();
    o.name = 'foo';
    o.response = buildUnnamed5057();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed5056(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5057(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterPacing = 0;
api.Pacing buildPacing() {
  var o = api.Pacing();
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
    unittest.expect(o.dailyMaxImpressions, unittest.equals('foo'));
    unittest.expect(o.dailyMaxMicros, unittest.equals('foo'));
    unittest.expect(o.pacingPeriod, unittest.equals('foo'));
    unittest.expect(o.pacingType, unittest.equals('foo'));
  }
  buildCounterPacing--;
}

core.List<core.String> buildUnnamed5058() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5058(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5059() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5059(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterParentEntityFilter = 0;
api.ParentEntityFilter buildParentEntityFilter() {
  var o = api.ParentEntityFilter();
  buildCounterParentEntityFilter++;
  if (buildCounterParentEntityFilter < 3) {
    o.fileType = buildUnnamed5058();
    o.filterIds = buildUnnamed5059();
    o.filterType = 'foo';
  }
  buildCounterParentEntityFilter--;
  return o;
}

void checkParentEntityFilter(api.ParentEntityFilter o) {
  buildCounterParentEntityFilter++;
  if (buildCounterParentEntityFilter < 3) {
    checkUnnamed5058(o.fileType);
    checkUnnamed5059(o.filterIds);
    unittest.expect(o.filterType, unittest.equals('foo'));
  }
  buildCounterParentEntityFilter--;
}

core.int buildCounterParentalStatusAssignedTargetingOptionDetails = 0;
api.ParentalStatusAssignedTargetingOptionDetails
    buildParentalStatusAssignedTargetingOptionDetails() {
  var o = api.ParentalStatusAssignedTargetingOptionDetails();
  buildCounterParentalStatusAssignedTargetingOptionDetails++;
  if (buildCounterParentalStatusAssignedTargetingOptionDetails < 3) {
    o.parentalStatus = 'foo';
    o.targetingOptionId = 'foo';
  }
  buildCounterParentalStatusAssignedTargetingOptionDetails--;
  return o;
}

void checkParentalStatusAssignedTargetingOptionDetails(
    api.ParentalStatusAssignedTargetingOptionDetails o) {
  buildCounterParentalStatusAssignedTargetingOptionDetails++;
  if (buildCounterParentalStatusAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.parentalStatus, unittest.equals('foo'));
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterParentalStatusAssignedTargetingOptionDetails--;
}

core.int buildCounterParentalStatusTargetingOptionDetails = 0;
api.ParentalStatusTargetingOptionDetails
    buildParentalStatusTargetingOptionDetails() {
  var o = api.ParentalStatusTargetingOptionDetails();
  buildCounterParentalStatusTargetingOptionDetails++;
  if (buildCounterParentalStatusTargetingOptionDetails < 3) {
    o.parentalStatus = 'foo';
  }
  buildCounterParentalStatusTargetingOptionDetails--;
  return o;
}

void checkParentalStatusTargetingOptionDetails(
    api.ParentalStatusTargetingOptionDetails o) {
  buildCounterParentalStatusTargetingOptionDetails++;
  if (buildCounterParentalStatusTargetingOptionDetails < 3) {
    unittest.expect(o.parentalStatus, unittest.equals('foo'));
  }
  buildCounterParentalStatusTargetingOptionDetails--;
}

core.int buildCounterPartner = 0;
api.Partner buildPartner() {
  var o = api.Partner();
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
    checkPartnerAdServerConfig(o.adServerConfig as api.PartnerAdServerConfig);
    checkPartnerDataAccessConfig(
        o.dataAccessConfig as api.PartnerDataAccessConfig);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    checkExchangeConfig(o.exchangeConfig as api.ExchangeConfig);
    checkPartnerGeneralConfig(o.generalConfig as api.PartnerGeneralConfig);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.partnerId, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterPartner--;
}

core.int buildCounterPartnerAdServerConfig = 0;
api.PartnerAdServerConfig buildPartnerAdServerConfig() {
  var o = api.PartnerAdServerConfig();
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
    checkMeasurementConfig(o.measurementConfig as api.MeasurementConfig);
  }
  buildCounterPartnerAdServerConfig--;
}

core.int buildCounterPartnerCost = 0;
api.PartnerCost buildPartnerCost() {
  var o = api.PartnerCost();
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
    unittest.expect(o.costType, unittest.equals('foo'));
    unittest.expect(o.feeAmount, unittest.equals('foo'));
    unittest.expect(o.feePercentageMillis, unittest.equals('foo'));
    unittest.expect(o.feeType, unittest.equals('foo'));
    unittest.expect(o.invoiceType, unittest.equals('foo'));
  }
  buildCounterPartnerCost--;
}

core.int buildCounterPartnerDataAccessConfig = 0;
api.PartnerDataAccessConfig buildPartnerDataAccessConfig() {
  var o = api.PartnerDataAccessConfig();
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
    checkSdfConfig(o.sdfConfig as api.SdfConfig);
  }
  buildCounterPartnerDataAccessConfig--;
}

core.int buildCounterPartnerGeneralConfig = 0;
api.PartnerGeneralConfig buildPartnerGeneralConfig() {
  var o = api.PartnerGeneralConfig();
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
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterPartnerGeneralConfig--;
}

core.int buildCounterPartnerRevenueModel = 0;
api.PartnerRevenueModel buildPartnerRevenueModel() {
  var o = api.PartnerRevenueModel();
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
    unittest.expect(o.markupAmount, unittest.equals('foo'));
    unittest.expect(o.markupType, unittest.equals('foo'));
  }
  buildCounterPartnerRevenueModel--;
}

core.int buildCounterPerformanceGoal = 0;
api.PerformanceGoal buildPerformanceGoal() {
  var o = api.PerformanceGoal();
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
    unittest.expect(o.performanceGoalAmountMicros, unittest.equals('foo'));
    unittest.expect(o.performanceGoalPercentageMicros, unittest.equals('foo'));
    unittest.expect(o.performanceGoalString, unittest.equals('foo'));
    unittest.expect(o.performanceGoalType, unittest.equals('foo'));
  }
  buildCounterPerformanceGoal--;
}

core.int buildCounterPerformanceGoalBidStrategy = 0;
api.PerformanceGoalBidStrategy buildPerformanceGoalBidStrategy() {
  var o = api.PerformanceGoalBidStrategy();
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
    unittest.expect(o.customBiddingAlgorithmId, unittest.equals('foo'));
    unittest.expect(o.maxAverageCpmBidAmountMicros, unittest.equals('foo'));
    unittest.expect(o.performanceGoalAmountMicros, unittest.equals('foo'));
    unittest.expect(o.performanceGoalType, unittest.equals('foo'));
  }
  buildCounterPerformanceGoalBidStrategy--;
}

core.int buildCounterProximityLocationListAssignedTargetingOptionDetails = 0;
api.ProximityLocationListAssignedTargetingOptionDetails
    buildProximityLocationListAssignedTargetingOptionDetails() {
  var o = api.ProximityLocationListAssignedTargetingOptionDetails();
  buildCounterProximityLocationListAssignedTargetingOptionDetails++;
  if (buildCounterProximityLocationListAssignedTargetingOptionDetails < 3) {
    o.proximityLocationListId = 'foo';
    o.proximityRadiusRange = 'foo';
  }
  buildCounterProximityLocationListAssignedTargetingOptionDetails--;
  return o;
}

void checkProximityLocationListAssignedTargetingOptionDetails(
    api.ProximityLocationListAssignedTargetingOptionDetails o) {
  buildCounterProximityLocationListAssignedTargetingOptionDetails++;
  if (buildCounterProximityLocationListAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.proximityLocationListId, unittest.equals('foo'));
    unittest.expect(o.proximityRadiusRange, unittest.equals('foo'));
  }
  buildCounterProximityLocationListAssignedTargetingOptionDetails--;
}

core.int buildCounterPublisherReviewStatus = 0;
api.PublisherReviewStatus buildPublisherReviewStatus() {
  var o = api.PublisherReviewStatus();
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
    unittest.expect(o.publisherName, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterPublisherReviewStatus--;
}

core.int buildCounterRateDetails = 0;
api.RateDetails buildRateDetails() {
  var o = api.RateDetails();
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
    unittest.expect(o.inventorySourceRateType, unittest.equals('foo'));
    checkMoney(o.minimumSpend as api.Money);
    checkMoney(o.rate as api.Money);
    unittest.expect(o.unitsPurchased, unittest.equals('foo'));
  }
  buildCounterRateDetails--;
}

core.int buildCounterRegionalLocationListAssignedTargetingOptionDetails = 0;
api.RegionalLocationListAssignedTargetingOptionDetails
    buildRegionalLocationListAssignedTargetingOptionDetails() {
  var o = api.RegionalLocationListAssignedTargetingOptionDetails();
  buildCounterRegionalLocationListAssignedTargetingOptionDetails++;
  if (buildCounterRegionalLocationListAssignedTargetingOptionDetails < 3) {
    o.negative = true;
    o.regionalLocationListId = 'foo';
  }
  buildCounterRegionalLocationListAssignedTargetingOptionDetails--;
  return o;
}

void checkRegionalLocationListAssignedTargetingOptionDetails(
    api.RegionalLocationListAssignedTargetingOptionDetails o) {
  buildCounterRegionalLocationListAssignedTargetingOptionDetails++;
  if (buildCounterRegionalLocationListAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.negative, unittest.isTrue);
    unittest.expect(o.regionalLocationListId, unittest.equals('foo'));
  }
  buildCounterRegionalLocationListAssignedTargetingOptionDetails--;
}

core.List<api.ExchangeReviewStatus> buildUnnamed5060() {
  var o = <api.ExchangeReviewStatus>[];
  o.add(buildExchangeReviewStatus());
  o.add(buildExchangeReviewStatus());
  return o;
}

void checkUnnamed5060(core.List<api.ExchangeReviewStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExchangeReviewStatus(o[0] as api.ExchangeReviewStatus);
  checkExchangeReviewStatus(o[1] as api.ExchangeReviewStatus);
}

core.List<api.PublisherReviewStatus> buildUnnamed5061() {
  var o = <api.PublisherReviewStatus>[];
  o.add(buildPublisherReviewStatus());
  o.add(buildPublisherReviewStatus());
  return o;
}

void checkUnnamed5061(core.List<api.PublisherReviewStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherReviewStatus(o[0] as api.PublisherReviewStatus);
  checkPublisherReviewStatus(o[1] as api.PublisherReviewStatus);
}

core.int buildCounterReviewStatusInfo = 0;
api.ReviewStatusInfo buildReviewStatusInfo() {
  var o = api.ReviewStatusInfo();
  buildCounterReviewStatusInfo++;
  if (buildCounterReviewStatusInfo < 3) {
    o.approvalStatus = 'foo';
    o.contentAndPolicyReviewStatus = 'foo';
    o.creativeAndLandingPageReviewStatus = 'foo';
    o.exchangeReviewStatuses = buildUnnamed5060();
    o.publisherReviewStatuses = buildUnnamed5061();
  }
  buildCounterReviewStatusInfo--;
  return o;
}

void checkReviewStatusInfo(api.ReviewStatusInfo o) {
  buildCounterReviewStatusInfo++;
  if (buildCounterReviewStatusInfo < 3) {
    unittest.expect(o.approvalStatus, unittest.equals('foo'));
    unittest.expect(o.contentAndPolicyReviewStatus, unittest.equals('foo'));
    unittest.expect(
        o.creativeAndLandingPageReviewStatus, unittest.equals('foo'));
    checkUnnamed5060(o.exchangeReviewStatuses);
    checkUnnamed5061(o.publisherReviewStatuses);
  }
  buildCounterReviewStatusInfo--;
}

core.int buildCounterSdfConfig = 0;
api.SdfConfig buildSdfConfig() {
  var o = api.SdfConfig();
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
    unittest.expect(o.adminEmail, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterSdfConfig--;
}

core.int buildCounterSdfDownloadTask = 0;
api.SdfDownloadTask buildSdfDownloadTask() {
  var o = api.SdfDownloadTask();
  buildCounterSdfDownloadTask++;
  if (buildCounterSdfDownloadTask < 3) {
    o.resourceName = 'foo';
  }
  buildCounterSdfDownloadTask--;
  return o;
}

void checkSdfDownloadTask(api.SdfDownloadTask o) {
  buildCounterSdfDownloadTask++;
  if (buildCounterSdfDownloadTask < 3) {
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterSdfDownloadTask--;
}

core.int buildCounterSdfDownloadTaskMetadata = 0;
api.SdfDownloadTaskMetadata buildSdfDownloadTaskMetadata() {
  var o = api.SdfDownloadTaskMetadata();
  buildCounterSdfDownloadTaskMetadata++;
  if (buildCounterSdfDownloadTaskMetadata < 3) {
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.version = 'foo';
  }
  buildCounterSdfDownloadTaskMetadata--;
  return o;
}

void checkSdfDownloadTaskMetadata(api.SdfDownloadTaskMetadata o) {
  buildCounterSdfDownloadTaskMetadata++;
  if (buildCounterSdfDownloadTaskMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterSdfDownloadTaskMetadata--;
}

core.int buildCounterSearchTargetingOptionsRequest = 0;
api.SearchTargetingOptionsRequest buildSearchTargetingOptionsRequest() {
  var o = api.SearchTargetingOptionsRequest();
  buildCounterSearchTargetingOptionsRequest++;
  if (buildCounterSearchTargetingOptionsRequest < 3) {
    o.advertiserId = 'foo';
    o.geoRegionSearchTerms = buildGeoRegionSearchTerms();
    o.pageSize = 42;
    o.pageToken = 'foo';
  }
  buildCounterSearchTargetingOptionsRequest--;
  return o;
}

void checkSearchTargetingOptionsRequest(api.SearchTargetingOptionsRequest o) {
  buildCounterSearchTargetingOptionsRequest++;
  if (buildCounterSearchTargetingOptionsRequest < 3) {
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkGeoRegionSearchTerms(
        o.geoRegionSearchTerms as api.GeoRegionSearchTerms);
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterSearchTargetingOptionsRequest--;
}

core.List<api.TargetingOption> buildUnnamed5062() {
  var o = <api.TargetingOption>[];
  o.add(buildTargetingOption());
  o.add(buildTargetingOption());
  return o;
}

void checkUnnamed5062(core.List<api.TargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingOption(o[0] as api.TargetingOption);
  checkTargetingOption(o[1] as api.TargetingOption);
}

core.int buildCounterSearchTargetingOptionsResponse = 0;
api.SearchTargetingOptionsResponse buildSearchTargetingOptionsResponse() {
  var o = api.SearchTargetingOptionsResponse();
  buildCounterSearchTargetingOptionsResponse++;
  if (buildCounterSearchTargetingOptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.targetingOptions = buildUnnamed5062();
  }
  buildCounterSearchTargetingOptionsResponse--;
  return o;
}

void checkSearchTargetingOptionsResponse(api.SearchTargetingOptionsResponse o) {
  buildCounterSearchTargetingOptionsResponse++;
  if (buildCounterSearchTargetingOptionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5062(o.targetingOptions);
  }
  buildCounterSearchTargetingOptionsResponse--;
}

core.int buildCounterSensitiveCategoryAssignedTargetingOptionDetails = 0;
api.SensitiveCategoryAssignedTargetingOptionDetails
    buildSensitiveCategoryAssignedTargetingOptionDetails() {
  var o = api.SensitiveCategoryAssignedTargetingOptionDetails();
  buildCounterSensitiveCategoryAssignedTargetingOptionDetails++;
  if (buildCounterSensitiveCategoryAssignedTargetingOptionDetails < 3) {
    o.excludedTargetingOptionId = 'foo';
    o.sensitiveCategory = 'foo';
  }
  buildCounterSensitiveCategoryAssignedTargetingOptionDetails--;
  return o;
}

void checkSensitiveCategoryAssignedTargetingOptionDetails(
    api.SensitiveCategoryAssignedTargetingOptionDetails o) {
  buildCounterSensitiveCategoryAssignedTargetingOptionDetails++;
  if (buildCounterSensitiveCategoryAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.excludedTargetingOptionId, unittest.equals('foo'));
    unittest.expect(o.sensitiveCategory, unittest.equals('foo'));
  }
  buildCounterSensitiveCategoryAssignedTargetingOptionDetails--;
}

core.int buildCounterSensitiveCategoryTargetingOptionDetails = 0;
api.SensitiveCategoryTargetingOptionDetails
    buildSensitiveCategoryTargetingOptionDetails() {
  var o = api.SensitiveCategoryTargetingOptionDetails();
  buildCounterSensitiveCategoryTargetingOptionDetails++;
  if (buildCounterSensitiveCategoryTargetingOptionDetails < 3) {
    o.sensitiveCategory = 'foo';
  }
  buildCounterSensitiveCategoryTargetingOptionDetails--;
  return o;
}

void checkSensitiveCategoryTargetingOptionDetails(
    api.SensitiveCategoryTargetingOptionDetails o) {
  buildCounterSensitiveCategoryTargetingOptionDetails++;
  if (buildCounterSensitiveCategoryTargetingOptionDetails < 3) {
    unittest.expect(o.sensitiveCategory, unittest.equals('foo'));
  }
  buildCounterSensitiveCategoryTargetingOptionDetails--;
}

core.int buildCounterSite = 0;
api.Site buildSite() {
  var o = api.Site();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.urlOrAppId, unittest.equals('foo'));
  }
  buildCounterSite--;
}

core.Map<core.String, core.Object> buildUnnamed5063() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5063(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed5064() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5063());
  o.add(buildUnnamed5063());
  return o;
}

void checkUnnamed5064(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5063(o[0]);
  checkUnnamed5063(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5064();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5064(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSubExchangeAssignedTargetingOptionDetails = 0;
api.SubExchangeAssignedTargetingOptionDetails
    buildSubExchangeAssignedTargetingOptionDetails() {
  var o = api.SubExchangeAssignedTargetingOptionDetails();
  buildCounterSubExchangeAssignedTargetingOptionDetails++;
  if (buildCounterSubExchangeAssignedTargetingOptionDetails < 3) {
    o.targetingOptionId = 'foo';
  }
  buildCounterSubExchangeAssignedTargetingOptionDetails--;
  return o;
}

void checkSubExchangeAssignedTargetingOptionDetails(
    api.SubExchangeAssignedTargetingOptionDetails o) {
  buildCounterSubExchangeAssignedTargetingOptionDetails++;
  if (buildCounterSubExchangeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
  }
  buildCounterSubExchangeAssignedTargetingOptionDetails--;
}

core.int buildCounterSubExchangeTargetingOptionDetails = 0;
api.SubExchangeTargetingOptionDetails buildSubExchangeTargetingOptionDetails() {
  var o = api.SubExchangeTargetingOptionDetails();
  buildCounterSubExchangeTargetingOptionDetails++;
  if (buildCounterSubExchangeTargetingOptionDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterSubExchangeTargetingOptionDetails--;
  return o;
}

void checkSubExchangeTargetingOptionDetails(
    api.SubExchangeTargetingOptionDetails o) {
  buildCounterSubExchangeTargetingOptionDetails++;
  if (buildCounterSubExchangeTargetingOptionDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterSubExchangeTargetingOptionDetails--;
}

core.int buildCounterTargetingExpansionConfig = 0;
api.TargetingExpansionConfig buildTargetingExpansionConfig() {
  var o = api.TargetingExpansionConfig();
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
    unittest.expect(o.excludeFirstPartyAudience, unittest.isTrue);
    unittest.expect(o.targetingExpansionLevel, unittest.equals('foo'));
  }
  buildCounterTargetingExpansionConfig--;
}

core.int buildCounterTargetingOption = 0;
api.TargetingOption buildTargetingOption() {
  var o = api.TargetingOption();
  buildCounterTargetingOption++;
  if (buildCounterTargetingOption < 3) {
    o.ageRangeDetails = buildAgeRangeTargetingOptionDetails();
    o.appCategoryDetails = buildAppCategoryTargetingOptionDetails();
    o.authorizedSellerStatusDetails =
        buildAuthorizedSellerStatusTargetingOptionDetails();
    o.browserDetails = buildBrowserTargetingOptionDetails();
    o.carrierAndIspDetails = buildCarrierAndIspTargetingOptionDetails();
    o.categoryDetails = buildCategoryTargetingOptionDetails();
    o.contentInstreamPositionDetails =
        buildContentInstreamPositionTargetingOptionDetails();
    o.contentOutstreamPositionDetails =
        buildContentOutstreamPositionTargetingOptionDetails();
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
    o.onScreenPositionDetails = buildOnScreenPositionTargetingOptionDetails();
    o.operatingSystemDetails = buildOperatingSystemTargetingOptionDetails();
    o.parentalStatusDetails = buildParentalStatusTargetingOptionDetails();
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
    checkAgeRangeTargetingOptionDetails(
        o.ageRangeDetails as api.AgeRangeTargetingOptionDetails);
    checkAppCategoryTargetingOptionDetails(
        o.appCategoryDetails as api.AppCategoryTargetingOptionDetails);
    checkAuthorizedSellerStatusTargetingOptionDetails(
        o.authorizedSellerStatusDetails
            as api.AuthorizedSellerStatusTargetingOptionDetails);
    checkBrowserTargetingOptionDetails(
        o.browserDetails as api.BrowserTargetingOptionDetails);
    checkCarrierAndIspTargetingOptionDetails(
        o.carrierAndIspDetails as api.CarrierAndIspTargetingOptionDetails);
    checkCategoryTargetingOptionDetails(
        o.categoryDetails as api.CategoryTargetingOptionDetails);
    checkContentInstreamPositionTargetingOptionDetails(
        o.contentInstreamPositionDetails
            as api.ContentInstreamPositionTargetingOptionDetails);
    checkContentOutstreamPositionTargetingOptionDetails(
        o.contentOutstreamPositionDetails
            as api.ContentOutstreamPositionTargetingOptionDetails);
    checkDeviceMakeModelTargetingOptionDetails(
        o.deviceMakeModelDetails as api.DeviceMakeModelTargetingOptionDetails);
    checkDeviceTypeTargetingOptionDetails(
        o.deviceTypeDetails as api.DeviceTypeTargetingOptionDetails);
    checkDigitalContentLabelTargetingOptionDetails(o.digitalContentLabelDetails
        as api.DigitalContentLabelTargetingOptionDetails);
    checkEnvironmentTargetingOptionDetails(
        o.environmentDetails as api.EnvironmentTargetingOptionDetails);
    checkExchangeTargetingOptionDetails(
        o.exchangeDetails as api.ExchangeTargetingOptionDetails);
    checkGenderTargetingOptionDetails(
        o.genderDetails as api.GenderTargetingOptionDetails);
    checkGeoRegionTargetingOptionDetails(
        o.geoRegionDetails as api.GeoRegionTargetingOptionDetails);
    checkHouseholdIncomeTargetingOptionDetails(
        o.householdIncomeDetails as api.HouseholdIncomeTargetingOptionDetails);
    checkLanguageTargetingOptionDetails(
        o.languageDetails as api.LanguageTargetingOptionDetails);
    unittest.expect(o.name, unittest.equals('foo'));
    checkOnScreenPositionTargetingOptionDetails(o.onScreenPositionDetails
        as api.OnScreenPositionTargetingOptionDetails);
    checkOperatingSystemTargetingOptionDetails(
        o.operatingSystemDetails as api.OperatingSystemTargetingOptionDetails);
    checkParentalStatusTargetingOptionDetails(
        o.parentalStatusDetails as api.ParentalStatusTargetingOptionDetails);
    checkSensitiveCategoryTargetingOptionDetails(o.sensitiveCategoryDetails
        as api.SensitiveCategoryTargetingOptionDetails);
    checkSubExchangeTargetingOptionDetails(
        o.subExchangeDetails as api.SubExchangeTargetingOptionDetails);
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
    unittest.expect(o.targetingType, unittest.equals('foo'));
    checkUserRewardedContentTargetingOptionDetails(o.userRewardedContentDetails
        as api.UserRewardedContentTargetingOptionDetails);
    checkVideoPlayerSizeTargetingOptionDetails(
        o.videoPlayerSizeDetails as api.VideoPlayerSizeTargetingOptionDetails);
    checkViewabilityTargetingOptionDetails(
        o.viewabilityDetails as api.ViewabilityTargetingOptionDetails);
  }
  buildCounterTargetingOption--;
}

core.int buildCounterThirdPartyOnlyConfig = 0;
api.ThirdPartyOnlyConfig buildThirdPartyOnlyConfig() {
  var o = api.ThirdPartyOnlyConfig();
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
    unittest.expect(o.pixelOrderIdReportingEnabled, unittest.isTrue);
  }
  buildCounterThirdPartyOnlyConfig--;
}

core.int buildCounterThirdPartyUrl = 0;
api.ThirdPartyUrl buildThirdPartyUrl() {
  var o = api.ThirdPartyUrl();
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
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterThirdPartyUrl--;
}

core.int buildCounterThirdPartyVerifierAssignedTargetingOptionDetails = 0;
api.ThirdPartyVerifierAssignedTargetingOptionDetails
    buildThirdPartyVerifierAssignedTargetingOptionDetails() {
  var o = api.ThirdPartyVerifierAssignedTargetingOptionDetails();
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
    api.ThirdPartyVerifierAssignedTargetingOptionDetails o) {
  buildCounterThirdPartyVerifierAssignedTargetingOptionDetails++;
  if (buildCounterThirdPartyVerifierAssignedTargetingOptionDetails < 3) {
    checkAdloox(o.adloox as api.Adloox);
    checkDoubleVerify(o.doubleVerify as api.DoubleVerify);
    checkIntegralAdScience(o.integralAdScience as api.IntegralAdScience);
  }
  buildCounterThirdPartyVerifierAssignedTargetingOptionDetails--;
}

core.int buildCounterTimeRange = 0;
api.TimeRange buildTimeRange() {
  var o = api.TimeRange();
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
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeRange--;
}

core.int buildCounterTimerEvent = 0;
api.TimerEvent buildTimerEvent() {
  var o = api.TimerEvent();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.reportingName, unittest.equals('foo'));
  }
  buildCounterTimerEvent--;
}

core.int buildCounterTrackingFloodlightActivityConfig = 0;
api.TrackingFloodlightActivityConfig buildTrackingFloodlightActivityConfig() {
  var o = api.TrackingFloodlightActivityConfig();
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
    api.TrackingFloodlightActivityConfig o) {
  buildCounterTrackingFloodlightActivityConfig++;
  if (buildCounterTrackingFloodlightActivityConfig < 3) {
    unittest.expect(o.floodlightActivityId, unittest.equals('foo'));
    unittest.expect(o.postClickLookbackWindowDays, unittest.equals(42));
    unittest.expect(o.postViewLookbackWindowDays, unittest.equals(42));
  }
  buildCounterTrackingFloodlightActivityConfig--;
}

core.int buildCounterTranscode = 0;
api.Transcode buildTranscode() {
  var o = api.Transcode();
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
    unittest.expect(o.audioBitRateKbps, unittest.equals('foo'));
    unittest.expect(o.audioSampleRateHz, unittest.equals('foo'));
    unittest.expect(o.bitRateKbps, unittest.equals('foo'));
    checkDimensions(o.dimensions as api.Dimensions);
    unittest.expect(o.fileSizeBytes, unittest.equals('foo'));
    unittest.expect(o.frameRate, unittest.equals(42.0));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.transcoded, unittest.isTrue);
  }
  buildCounterTranscode--;
}

core.int buildCounterUniversalAdId = 0;
api.UniversalAdId buildUniversalAdId() {
  var o = api.UniversalAdId();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.registry, unittest.equals('foo'));
  }
  buildCounterUniversalAdId--;
}

core.int buildCounterUrlAssignedTargetingOptionDetails = 0;
api.UrlAssignedTargetingOptionDetails buildUrlAssignedTargetingOptionDetails() {
  var o = api.UrlAssignedTargetingOptionDetails();
  buildCounterUrlAssignedTargetingOptionDetails++;
  if (buildCounterUrlAssignedTargetingOptionDetails < 3) {
    o.negative = true;
    o.url = 'foo';
  }
  buildCounterUrlAssignedTargetingOptionDetails--;
  return o;
}

void checkUrlAssignedTargetingOptionDetails(
    api.UrlAssignedTargetingOptionDetails o) {
  buildCounterUrlAssignedTargetingOptionDetails++;
  if (buildCounterUrlAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.negative, unittest.isTrue);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterUrlAssignedTargetingOptionDetails--;
}

core.List<api.AssignedUserRole> buildUnnamed5065() {
  var o = <api.AssignedUserRole>[];
  o.add(buildAssignedUserRole());
  o.add(buildAssignedUserRole());
  return o;
}

void checkUnnamed5065(core.List<api.AssignedUserRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedUserRole(o[0] as api.AssignedUserRole);
  checkAssignedUserRole(o[1] as api.AssignedUserRole);
}

core.int buildCounterUser = 0;
api.User buildUser() {
  var o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.assignedUserRoles = buildUnnamed5065();
    o.displayName = 'foo';
    o.email = 'foo';
    o.name = 'foo';
    o.userId = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    checkUnnamed5065(o.assignedUserRoles);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.int buildCounterUserRewardedContentAssignedTargetingOptionDetails = 0;
api.UserRewardedContentAssignedTargetingOptionDetails
    buildUserRewardedContentAssignedTargetingOptionDetails() {
  var o = api.UserRewardedContentAssignedTargetingOptionDetails();
  buildCounterUserRewardedContentAssignedTargetingOptionDetails++;
  if (buildCounterUserRewardedContentAssignedTargetingOptionDetails < 3) {
    o.targetingOptionId = 'foo';
    o.userRewardedContent = 'foo';
  }
  buildCounterUserRewardedContentAssignedTargetingOptionDetails--;
  return o;
}

void checkUserRewardedContentAssignedTargetingOptionDetails(
    api.UserRewardedContentAssignedTargetingOptionDetails o) {
  buildCounterUserRewardedContentAssignedTargetingOptionDetails++;
  if (buildCounterUserRewardedContentAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
    unittest.expect(o.userRewardedContent, unittest.equals('foo'));
  }
  buildCounterUserRewardedContentAssignedTargetingOptionDetails--;
}

core.int buildCounterUserRewardedContentTargetingOptionDetails = 0;
api.UserRewardedContentTargetingOptionDetails
    buildUserRewardedContentTargetingOptionDetails() {
  var o = api.UserRewardedContentTargetingOptionDetails();
  buildCounterUserRewardedContentTargetingOptionDetails++;
  if (buildCounterUserRewardedContentTargetingOptionDetails < 3) {
    o.userRewardedContent = 'foo';
  }
  buildCounterUserRewardedContentTargetingOptionDetails--;
  return o;
}

void checkUserRewardedContentTargetingOptionDetails(
    api.UserRewardedContentTargetingOptionDetails o) {
  buildCounterUserRewardedContentTargetingOptionDetails++;
  if (buildCounterUserRewardedContentTargetingOptionDetails < 3) {
    unittest.expect(o.userRewardedContent, unittest.equals('foo'));
  }
  buildCounterUserRewardedContentTargetingOptionDetails--;
}

core.int buildCounterVideoPlayerSizeAssignedTargetingOptionDetails = 0;
api.VideoPlayerSizeAssignedTargetingOptionDetails
    buildVideoPlayerSizeAssignedTargetingOptionDetails() {
  var o = api.VideoPlayerSizeAssignedTargetingOptionDetails();
  buildCounterVideoPlayerSizeAssignedTargetingOptionDetails++;
  if (buildCounterVideoPlayerSizeAssignedTargetingOptionDetails < 3) {
    o.targetingOptionId = 'foo';
    o.videoPlayerSize = 'foo';
  }
  buildCounterVideoPlayerSizeAssignedTargetingOptionDetails--;
  return o;
}

void checkVideoPlayerSizeAssignedTargetingOptionDetails(
    api.VideoPlayerSizeAssignedTargetingOptionDetails o) {
  buildCounterVideoPlayerSizeAssignedTargetingOptionDetails++;
  if (buildCounterVideoPlayerSizeAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
    unittest.expect(o.videoPlayerSize, unittest.equals('foo'));
  }
  buildCounterVideoPlayerSizeAssignedTargetingOptionDetails--;
}

core.int buildCounterVideoPlayerSizeTargetingOptionDetails = 0;
api.VideoPlayerSizeTargetingOptionDetails
    buildVideoPlayerSizeTargetingOptionDetails() {
  var o = api.VideoPlayerSizeTargetingOptionDetails();
  buildCounterVideoPlayerSizeTargetingOptionDetails++;
  if (buildCounterVideoPlayerSizeTargetingOptionDetails < 3) {
    o.videoPlayerSize = 'foo';
  }
  buildCounterVideoPlayerSizeTargetingOptionDetails--;
  return o;
}

void checkVideoPlayerSizeTargetingOptionDetails(
    api.VideoPlayerSizeTargetingOptionDetails o) {
  buildCounterVideoPlayerSizeTargetingOptionDetails++;
  if (buildCounterVideoPlayerSizeTargetingOptionDetails < 3) {
    unittest.expect(o.videoPlayerSize, unittest.equals('foo'));
  }
  buildCounterVideoPlayerSizeTargetingOptionDetails--;
}

core.int buildCounterViewabilityAssignedTargetingOptionDetails = 0;
api.ViewabilityAssignedTargetingOptionDetails
    buildViewabilityAssignedTargetingOptionDetails() {
  var o = api.ViewabilityAssignedTargetingOptionDetails();
  buildCounterViewabilityAssignedTargetingOptionDetails++;
  if (buildCounterViewabilityAssignedTargetingOptionDetails < 3) {
    o.targetingOptionId = 'foo';
    o.viewability = 'foo';
  }
  buildCounterViewabilityAssignedTargetingOptionDetails--;
  return o;
}

void checkViewabilityAssignedTargetingOptionDetails(
    api.ViewabilityAssignedTargetingOptionDetails o) {
  buildCounterViewabilityAssignedTargetingOptionDetails++;
  if (buildCounterViewabilityAssignedTargetingOptionDetails < 3) {
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
    unittest.expect(o.viewability, unittest.equals('foo'));
  }
  buildCounterViewabilityAssignedTargetingOptionDetails--;
}

core.int buildCounterViewabilityTargetingOptionDetails = 0;
api.ViewabilityTargetingOptionDetails buildViewabilityTargetingOptionDetails() {
  var o = api.ViewabilityTargetingOptionDetails();
  buildCounterViewabilityTargetingOptionDetails++;
  if (buildCounterViewabilityTargetingOptionDetails < 3) {
    o.viewability = 'foo';
  }
  buildCounterViewabilityTargetingOptionDetails--;
  return o;
}

void checkViewabilityTargetingOptionDetails(
    api.ViewabilityTargetingOptionDetails o) {
  buildCounterViewabilityTargetingOptionDetails++;
  if (buildCounterViewabilityTargetingOptionDetails < 3) {
    unittest.expect(o.viewability, unittest.equals('foo'));
  }
  buildCounterViewabilityTargetingOptionDetails--;
}

void main() {
  unittest.group('obj-schema-ActivateManualTriggerRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivateManualTriggerRequest();
      var od = api.ActivateManualTriggerRequest.fromJson(o.toJson());
      checkActivateManualTriggerRequest(od as api.ActivateManualTriggerRequest);
    });
  });

  unittest.group('obj-schema-ActiveViewVideoViewabilityMetricConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildActiveViewVideoViewabilityMetricConfig();
      var od = api.ActiveViewVideoViewabilityMetricConfig.fromJson(o.toJson());
      checkActiveViewVideoViewabilityMetricConfig(
          od as api.ActiveViewVideoViewabilityMetricConfig);
    });
  });

  unittest.group('obj-schema-Adloox', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdloox();
      var od = api.Adloox.fromJson(o.toJson());
      checkAdloox(od as api.Adloox);
    });
  });

  unittest.group('obj-schema-Advertiser', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiser();
      var od = api.Advertiser.fromJson(o.toJson());
      checkAdvertiser(od as api.Advertiser);
    });
  });

  unittest.group('obj-schema-AdvertiserAdServerConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserAdServerConfig();
      var od = api.AdvertiserAdServerConfig.fromJson(o.toJson());
      checkAdvertiserAdServerConfig(od as api.AdvertiserAdServerConfig);
    });
  });

  unittest.group('obj-schema-AdvertiserCreativeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserCreativeConfig();
      var od = api.AdvertiserCreativeConfig.fromJson(o.toJson());
      checkAdvertiserCreativeConfig(od as api.AdvertiserCreativeConfig);
    });
  });

  unittest.group('obj-schema-AdvertiserDataAccessConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserDataAccessConfig();
      var od = api.AdvertiserDataAccessConfig.fromJson(o.toJson());
      checkAdvertiserDataAccessConfig(od as api.AdvertiserDataAccessConfig);
    });
  });

  unittest.group('obj-schema-AdvertiserGeneralConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserGeneralConfig();
      var od = api.AdvertiserGeneralConfig.fromJson(o.toJson());
      checkAdvertiserGeneralConfig(od as api.AdvertiserGeneralConfig);
    });
  });

  unittest.group('obj-schema-AdvertiserSdfConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserSdfConfig();
      var od = api.AdvertiserSdfConfig.fromJson(o.toJson());
      checkAdvertiserSdfConfig(od as api.AdvertiserSdfConfig);
    });
  });

  unittest.group('obj-schema-AdvertiserTargetingConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserTargetingConfig();
      var od = api.AdvertiserTargetingConfig.fromJson(o.toJson());
      checkAdvertiserTargetingConfig(od as api.AdvertiserTargetingConfig);
    });
  });

  unittest.group('obj-schema-AgeRangeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAgeRangeAssignedTargetingOptionDetails();
      var od = api.AgeRangeAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkAgeRangeAssignedTargetingOptionDetails(
          od as api.AgeRangeAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-AgeRangeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAgeRangeTargetingOptionDetails();
      var od = api.AgeRangeTargetingOptionDetails.fromJson(o.toJson());
      checkAgeRangeTargetingOptionDetails(
          od as api.AgeRangeTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-AppAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppAssignedTargetingOptionDetails();
      var od = api.AppAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkAppAssignedTargetingOptionDetails(
          od as api.AppAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-AppCategoryAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppCategoryAssignedTargetingOptionDetails();
      var od =
          api.AppCategoryAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkAppCategoryAssignedTargetingOptionDetails(
          od as api.AppCategoryAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-AppCategoryTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppCategoryTargetingOptionDetails();
      var od = api.AppCategoryTargetingOptionDetails.fromJson(o.toJson());
      checkAppCategoryTargetingOptionDetails(
          od as api.AppCategoryTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-Asset', () {
    unittest.test('to-json--from-json', () {
      var o = buildAsset();
      var od = api.Asset.fromJson(o.toJson());
      checkAsset(od as api.Asset);
    });
  });

  unittest.group('obj-schema-AssetAssociation', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssetAssociation();
      var od = api.AssetAssociation.fromJson(o.toJson());
      checkAssetAssociation(od as api.AssetAssociation);
    });
  });

  unittest.group('obj-schema-AssignedInventorySource', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssignedInventorySource();
      var od = api.AssignedInventorySource.fromJson(o.toJson());
      checkAssignedInventorySource(od as api.AssignedInventorySource);
    });
  });

  unittest.group('obj-schema-AssignedLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssignedLocation();
      var od = api.AssignedLocation.fromJson(o.toJson());
      checkAssignedLocation(od as api.AssignedLocation);
    });
  });

  unittest.group('obj-schema-AssignedTargetingOption', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssignedTargetingOption();
      var od = api.AssignedTargetingOption.fromJson(o.toJson());
      checkAssignedTargetingOption(od as api.AssignedTargetingOption);
    });
  });

  unittest.group('obj-schema-AssignedUserRole', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssignedUserRole();
      var od = api.AssignedUserRole.fromJson(o.toJson());
      checkAssignedUserRole(od as api.AssignedUserRole);
    });
  });

  unittest.group('obj-schema-AudienceGroupAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAudienceGroupAssignedTargetingOptionDetails();
      var od =
          api.AudienceGroupAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkAudienceGroupAssignedTargetingOptionDetails(
          od as api.AudienceGroupAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-AudioVideoOffset', () {
    unittest.test('to-json--from-json', () {
      var o = buildAudioVideoOffset();
      var od = api.AudioVideoOffset.fromJson(o.toJson());
      checkAudioVideoOffset(od as api.AudioVideoOffset);
    });
  });

  unittest.group('obj-schema-AuditAdvertiserResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditAdvertiserResponse();
      var od = api.AuditAdvertiserResponse.fromJson(o.toJson());
      checkAuditAdvertiserResponse(od as api.AuditAdvertiserResponse);
    });
  });

  unittest.group(
      'obj-schema-AuthorizedSellerStatusAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthorizedSellerStatusAssignedTargetingOptionDetails();
      var od =
          api.AuthorizedSellerStatusAssignedTargetingOptionDetails.fromJson(
              o.toJson());
      checkAuthorizedSellerStatusAssignedTargetingOptionDetails(
          od as api.AuthorizedSellerStatusAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-AuthorizedSellerStatusTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthorizedSellerStatusTargetingOptionDetails();
      var od =
          api.AuthorizedSellerStatusTargetingOptionDetails.fromJson(o.toJson());
      checkAuthorizedSellerStatusTargetingOptionDetails(
          od as api.AuthorizedSellerStatusTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-BiddingStrategy', () {
    unittest.test('to-json--from-json', () {
      var o = buildBiddingStrategy();
      var od = api.BiddingStrategy.fromJson(o.toJson());
      checkBiddingStrategy(od as api.BiddingStrategy);
    });
  });

  unittest.group('obj-schema-BrowserAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildBrowserAssignedTargetingOptionDetails();
      var od = api.BrowserAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkBrowserAssignedTargetingOptionDetails(
          od as api.BrowserAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-BrowserTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildBrowserTargetingOptionDetails();
      var od = api.BrowserTargetingOptionDetails.fromJson(o.toJson());
      checkBrowserTargetingOptionDetails(
          od as api.BrowserTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-BulkEditAdvertiserAssignedTargetingOptionsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAdvertiserAssignedTargetingOptionsRequest();
      var od = api.BulkEditAdvertiserAssignedTargetingOptionsRequest.fromJson(
          o.toJson());
      checkBulkEditAdvertiserAssignedTargetingOptionsRequest(
          od as api.BulkEditAdvertiserAssignedTargetingOptionsRequest);
    });
  });

  unittest.group(
      'obj-schema-BulkEditAdvertiserAssignedTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAdvertiserAssignedTargetingOptionsResponse();
      var od = api.BulkEditAdvertiserAssignedTargetingOptionsResponse.fromJson(
          o.toJson());
      checkBulkEditAdvertiserAssignedTargetingOptionsResponse(
          od as api.BulkEditAdvertiserAssignedTargetingOptionsResponse);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedInventorySourcesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAssignedInventorySourcesRequest();
      var od = api.BulkEditAssignedInventorySourcesRequest.fromJson(o.toJson());
      checkBulkEditAssignedInventorySourcesRequest(
          od as api.BulkEditAssignedInventorySourcesRequest);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedInventorySourcesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAssignedInventorySourcesResponse();
      var od =
          api.BulkEditAssignedInventorySourcesResponse.fromJson(o.toJson());
      checkBulkEditAssignedInventorySourcesResponse(
          od as api.BulkEditAssignedInventorySourcesResponse);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedLocationsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAssignedLocationsRequest();
      var od = api.BulkEditAssignedLocationsRequest.fromJson(o.toJson());
      checkBulkEditAssignedLocationsRequest(
          od as api.BulkEditAssignedLocationsRequest);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAssignedLocationsResponse();
      var od = api.BulkEditAssignedLocationsResponse.fromJson(o.toJson());
      checkBulkEditAssignedLocationsResponse(
          od as api.BulkEditAssignedLocationsResponse);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedUserRolesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAssignedUserRolesRequest();
      var od = api.BulkEditAssignedUserRolesRequest.fromJson(o.toJson());
      checkBulkEditAssignedUserRolesRequest(
          od as api.BulkEditAssignedUserRolesRequest);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedUserRolesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAssignedUserRolesResponse();
      var od = api.BulkEditAssignedUserRolesResponse.fromJson(o.toJson());
      checkBulkEditAssignedUserRolesResponse(
          od as api.BulkEditAssignedUserRolesResponse);
    });
  });

  unittest.group('obj-schema-BulkEditLineItemAssignedTargetingOptionsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditLineItemAssignedTargetingOptionsRequest();
      var od = api.BulkEditLineItemAssignedTargetingOptionsRequest.fromJson(
          o.toJson());
      checkBulkEditLineItemAssignedTargetingOptionsRequest(
          od as api.BulkEditLineItemAssignedTargetingOptionsRequest);
    });
  });

  unittest.group('obj-schema-BulkEditLineItemAssignedTargetingOptionsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditLineItemAssignedTargetingOptionsResponse();
      var od = api.BulkEditLineItemAssignedTargetingOptionsResponse.fromJson(
          o.toJson());
      checkBulkEditLineItemAssignedTargetingOptionsResponse(
          od as api.BulkEditLineItemAssignedTargetingOptionsResponse);
    });
  });

  unittest.group('obj-schema-BulkEditNegativeKeywordsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditNegativeKeywordsRequest();
      var od = api.BulkEditNegativeKeywordsRequest.fromJson(o.toJson());
      checkBulkEditNegativeKeywordsRequest(
          od as api.BulkEditNegativeKeywordsRequest);
    });
  });

  unittest.group('obj-schema-BulkEditNegativeKeywordsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditNegativeKeywordsResponse();
      var od = api.BulkEditNegativeKeywordsResponse.fromJson(o.toJson());
      checkBulkEditNegativeKeywordsResponse(
          od as api.BulkEditNegativeKeywordsResponse);
    });
  });

  unittest.group('obj-schema-BulkEditPartnerAssignedTargetingOptionsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditPartnerAssignedTargetingOptionsRequest();
      var od = api.BulkEditPartnerAssignedTargetingOptionsRequest.fromJson(
          o.toJson());
      checkBulkEditPartnerAssignedTargetingOptionsRequest(
          od as api.BulkEditPartnerAssignedTargetingOptionsRequest);
    });
  });

  unittest.group('obj-schema-BulkEditPartnerAssignedTargetingOptionsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditPartnerAssignedTargetingOptionsResponse();
      var od = api.BulkEditPartnerAssignedTargetingOptionsResponse.fromJson(
          o.toJson());
      checkBulkEditPartnerAssignedTargetingOptionsResponse(
          od as api.BulkEditPartnerAssignedTargetingOptionsResponse);
    });
  });

  unittest.group('obj-schema-BulkEditSitesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditSitesRequest();
      var od = api.BulkEditSitesRequest.fromJson(o.toJson());
      checkBulkEditSitesRequest(od as api.BulkEditSitesRequest);
    });
  });

  unittest.group('obj-schema-BulkEditSitesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditSitesResponse();
      var od = api.BulkEditSitesResponse.fromJson(o.toJson());
      checkBulkEditSitesResponse(od as api.BulkEditSitesResponse);
    });
  });

  unittest.group(
      'obj-schema-BulkListAdvertiserAssignedTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkListAdvertiserAssignedTargetingOptionsResponse();
      var od = api.BulkListAdvertiserAssignedTargetingOptionsResponse.fromJson(
          o.toJson());
      checkBulkListAdvertiserAssignedTargetingOptionsResponse(
          od as api.BulkListAdvertiserAssignedTargetingOptionsResponse);
    });
  });

  unittest.group('obj-schema-BulkListLineItemAssignedTargetingOptionsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkListLineItemAssignedTargetingOptionsResponse();
      var od = api.BulkListLineItemAssignedTargetingOptionsResponse.fromJson(
          o.toJson());
      checkBulkListLineItemAssignedTargetingOptionsResponse(
          od as api.BulkListLineItemAssignedTargetingOptionsResponse);
    });
  });

  unittest.group('obj-schema-Campaign', () {
    unittest.test('to-json--from-json', () {
      var o = buildCampaign();
      var od = api.Campaign.fromJson(o.toJson());
      checkCampaign(od as api.Campaign);
    });
  });

  unittest.group('obj-schema-CampaignFlight', () {
    unittest.test('to-json--from-json', () {
      var o = buildCampaignFlight();
      var od = api.CampaignFlight.fromJson(o.toJson());
      checkCampaignFlight(od as api.CampaignFlight);
    });
  });

  unittest.group('obj-schema-CampaignGoal', () {
    unittest.test('to-json--from-json', () {
      var o = buildCampaignGoal();
      var od = api.CampaignGoal.fromJson(o.toJson());
      checkCampaignGoal(od as api.CampaignGoal);
    });
  });

  unittest.group('obj-schema-CarrierAndIspAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildCarrierAndIspAssignedTargetingOptionDetails();
      var od =
          api.CarrierAndIspAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkCarrierAndIspAssignedTargetingOptionDetails(
          od as api.CarrierAndIspAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-CarrierAndIspTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildCarrierAndIspTargetingOptionDetails();
      var od = api.CarrierAndIspTargetingOptionDetails.fromJson(o.toJson());
      checkCarrierAndIspTargetingOptionDetails(
          od as api.CarrierAndIspTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-CategoryAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildCategoryAssignedTargetingOptionDetails();
      var od = api.CategoryAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkCategoryAssignedTargetingOptionDetails(
          od as api.CategoryAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-CategoryTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildCategoryTargetingOptionDetails();
      var od = api.CategoryTargetingOptionDetails.fromJson(o.toJson());
      checkCategoryTargetingOptionDetails(
          od as api.CategoryTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannel();
      var od = api.Channel.fromJson(o.toJson());
      checkChannel(od as api.Channel);
    });
  });

  unittest.group('obj-schema-ChannelAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelAssignedTargetingOptionDetails();
      var od = api.ChannelAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkChannelAssignedTargetingOptionDetails(
          od as api.ChannelAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-CmHybridConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildCmHybridConfig();
      var od = api.CmHybridConfig.fromJson(o.toJson());
      checkCmHybridConfig(od as api.CmHybridConfig);
    });
  });

  unittest.group('obj-schema-CmTrackingAd', () {
    unittest.test('to-json--from-json', () {
      var o = buildCmTrackingAd();
      var od = api.CmTrackingAd.fromJson(o.toJson());
      checkCmTrackingAd(od as api.CmTrackingAd);
    });
  });

  unittest.group('obj-schema-CombinedAudience', () {
    unittest.test('to-json--from-json', () {
      var o = buildCombinedAudience();
      var od = api.CombinedAudience.fromJson(o.toJson());
      checkCombinedAudience(od as api.CombinedAudience);
    });
  });

  unittest.group('obj-schema-CombinedAudienceGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildCombinedAudienceGroup();
      var od = api.CombinedAudienceGroup.fromJson(o.toJson());
      checkCombinedAudienceGroup(od as api.CombinedAudienceGroup);
    });
  });

  unittest.group('obj-schema-CombinedAudienceTargetingSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildCombinedAudienceTargetingSetting();
      var od = api.CombinedAudienceTargetingSetting.fromJson(o.toJson());
      checkCombinedAudienceTargetingSetting(
          od as api.CombinedAudienceTargetingSetting);
    });
  });

  unittest.group(
      'obj-schema-ContentInstreamPositionAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildContentInstreamPositionAssignedTargetingOptionDetails();
      var od =
          api.ContentInstreamPositionAssignedTargetingOptionDetails.fromJson(
              o.toJson());
      checkContentInstreamPositionAssignedTargetingOptionDetails(
          od as api.ContentInstreamPositionAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-ContentInstreamPositionTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildContentInstreamPositionTargetingOptionDetails();
      var od = api.ContentInstreamPositionTargetingOptionDetails.fromJson(
          o.toJson());
      checkContentInstreamPositionTargetingOptionDetails(
          od as api.ContentInstreamPositionTargetingOptionDetails);
    });
  });

  unittest.group(
      'obj-schema-ContentOutstreamPositionAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildContentOutstreamPositionAssignedTargetingOptionDetails();
      var od =
          api.ContentOutstreamPositionAssignedTargetingOptionDetails.fromJson(
              o.toJson());
      checkContentOutstreamPositionAssignedTargetingOptionDetails(
          od as api.ContentOutstreamPositionAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-ContentOutstreamPositionTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildContentOutstreamPositionTargetingOptionDetails();
      var od = api.ContentOutstreamPositionTargetingOptionDetails.fromJson(
          o.toJson());
      checkContentOutstreamPositionTargetingOptionDetails(
          od as api.ContentOutstreamPositionTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-ConversionCountingConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildConversionCountingConfig();
      var od = api.ConversionCountingConfig.fromJson(o.toJson());
      checkConversionCountingConfig(od as api.ConversionCountingConfig);
    });
  });

  unittest.group('obj-schema-CounterEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildCounterEvent();
      var od = api.CounterEvent.fromJson(o.toJson());
      checkCounterEvent(od as api.CounterEvent);
    });
  });

  unittest.group('obj-schema-CreateAssetRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateAssetRequest();
      var od = api.CreateAssetRequest.fromJson(o.toJson());
      checkCreateAssetRequest(od as api.CreateAssetRequest);
    });
  });

  unittest.group('obj-schema-CreateAssetResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateAssetResponse();
      var od = api.CreateAssetResponse.fromJson(o.toJson());
      checkCreateAssetResponse(od as api.CreateAssetResponse);
    });
  });

  unittest.group('obj-schema-CreateAssignedTargetingOptionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateAssignedTargetingOptionsRequest();
      var od = api.CreateAssignedTargetingOptionsRequest.fromJson(o.toJson());
      checkCreateAssignedTargetingOptionsRequest(
          od as api.CreateAssignedTargetingOptionsRequest);
    });
  });

  unittest.group('obj-schema-CreateSdfDownloadTaskRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateSdfDownloadTaskRequest();
      var od = api.CreateSdfDownloadTaskRequest.fromJson(o.toJson());
      checkCreateSdfDownloadTaskRequest(od as api.CreateSdfDownloadTaskRequest);
    });
  });

  unittest.group('obj-schema-Creative', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreative();
      var od = api.Creative.fromJson(o.toJson());
      checkCreative(od as api.Creative);
    });
  });

  unittest.group('obj-schema-CreativeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeConfig();
      var od = api.CreativeConfig.fromJson(o.toJson());
      checkCreativeConfig(od as api.CreativeConfig);
    });
  });

  unittest.group('obj-schema-CustomBiddingAlgorithm', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomBiddingAlgorithm();
      var od = api.CustomBiddingAlgorithm.fromJson(o.toJson());
      checkCustomBiddingAlgorithm(od as api.CustomBiddingAlgorithm);
    });
  });

  unittest.group('obj-schema-CustomList', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomList();
      var od = api.CustomList.fromJson(o.toJson());
      checkCustomList(od as api.CustomList);
    });
  });

  unittest.group('obj-schema-CustomListGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomListGroup();
      var od = api.CustomListGroup.fromJson(o.toJson());
      checkCustomListGroup(od as api.CustomListGroup);
    });
  });

  unittest.group('obj-schema-CustomListTargetingSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomListTargetingSetting();
      var od = api.CustomListTargetingSetting.fromJson(o.toJson());
      checkCustomListTargetingSetting(od as api.CustomListTargetingSetting);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () {
      var o = buildDate();
      var od = api.Date.fromJson(o.toJson());
      checkDate(od as api.Date);
    });
  });

  unittest.group('obj-schema-DateRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildDateRange();
      var od = api.DateRange.fromJson(o.toJson());
      checkDateRange(od as api.DateRange);
    });
  });

  unittest.group('obj-schema-DayAndTimeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDayAndTimeAssignedTargetingOptionDetails();
      var od =
          api.DayAndTimeAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkDayAndTimeAssignedTargetingOptionDetails(
          od as api.DayAndTimeAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-DeactivateManualTriggerRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeactivateManualTriggerRequest();
      var od = api.DeactivateManualTriggerRequest.fromJson(o.toJson());
      checkDeactivateManualTriggerRequest(
          od as api.DeactivateManualTriggerRequest);
    });
  });

  unittest.group('obj-schema-DeleteAssignedTargetingOptionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteAssignedTargetingOptionsRequest();
      var od = api.DeleteAssignedTargetingOptionsRequest.fromJson(o.toJson());
      checkDeleteAssignedTargetingOptionsRequest(
          od as api.DeleteAssignedTargetingOptionsRequest);
    });
  });

  unittest.group('obj-schema-DeviceMakeModelAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceMakeModelAssignedTargetingOptionDetails();
      var od = api.DeviceMakeModelAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkDeviceMakeModelAssignedTargetingOptionDetails(
          od as api.DeviceMakeModelAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-DeviceMakeModelTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceMakeModelTargetingOptionDetails();
      var od = api.DeviceMakeModelTargetingOptionDetails.fromJson(o.toJson());
      checkDeviceMakeModelTargetingOptionDetails(
          od as api.DeviceMakeModelTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-DeviceTypeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceTypeAssignedTargetingOptionDetails();
      var od =
          api.DeviceTypeAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkDeviceTypeAssignedTargetingOptionDetails(
          od as api.DeviceTypeAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-DeviceTypeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceTypeTargetingOptionDetails();
      var od = api.DeviceTypeTargetingOptionDetails.fromJson(o.toJson());
      checkDeviceTypeTargetingOptionDetails(
          od as api.DeviceTypeTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-DigitalContentLabelAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildDigitalContentLabelAssignedTargetingOptionDetails();
      var od = api.DigitalContentLabelAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkDigitalContentLabelAssignedTargetingOptionDetails(
          od as api.DigitalContentLabelAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-DigitalContentLabelTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDigitalContentLabelTargetingOptionDetails();
      var od =
          api.DigitalContentLabelTargetingOptionDetails.fromJson(o.toJson());
      checkDigitalContentLabelTargetingOptionDetails(
          od as api.DigitalContentLabelTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-Dimensions', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensions();
      var od = api.Dimensions.fromJson(o.toJson());
      checkDimensions(od as api.Dimensions);
    });
  });

  unittest.group('obj-schema-DoubleVerify', () {
    unittest.test('to-json--from-json', () {
      var o = buildDoubleVerify();
      var od = api.DoubleVerify.fromJson(o.toJson());
      checkDoubleVerify(od as api.DoubleVerify);
    });
  });

  unittest.group('obj-schema-DoubleVerifyAppStarRating', () {
    unittest.test('to-json--from-json', () {
      var o = buildDoubleVerifyAppStarRating();
      var od = api.DoubleVerifyAppStarRating.fromJson(o.toJson());
      checkDoubleVerifyAppStarRating(od as api.DoubleVerifyAppStarRating);
    });
  });

  unittest.group('obj-schema-DoubleVerifyBrandSafetyCategories', () {
    unittest.test('to-json--from-json', () {
      var o = buildDoubleVerifyBrandSafetyCategories();
      var od = api.DoubleVerifyBrandSafetyCategories.fromJson(o.toJson());
      checkDoubleVerifyBrandSafetyCategories(
          od as api.DoubleVerifyBrandSafetyCategories);
    });
  });

  unittest.group('obj-schema-DoubleVerifyDisplayViewability', () {
    unittest.test('to-json--from-json', () {
      var o = buildDoubleVerifyDisplayViewability();
      var od = api.DoubleVerifyDisplayViewability.fromJson(o.toJson());
      checkDoubleVerifyDisplayViewability(
          od as api.DoubleVerifyDisplayViewability);
    });
  });

  unittest.group('obj-schema-DoubleVerifyFraudInvalidTraffic', () {
    unittest.test('to-json--from-json', () {
      var o = buildDoubleVerifyFraudInvalidTraffic();
      var od = api.DoubleVerifyFraudInvalidTraffic.fromJson(o.toJson());
      checkDoubleVerifyFraudInvalidTraffic(
          od as api.DoubleVerifyFraudInvalidTraffic);
    });
  });

  unittest.group('obj-schema-DoubleVerifyVideoViewability', () {
    unittest.test('to-json--from-json', () {
      var o = buildDoubleVerifyVideoViewability();
      var od = api.DoubleVerifyVideoViewability.fromJson(o.toJson());
      checkDoubleVerifyVideoViewability(od as api.DoubleVerifyVideoViewability);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-EnvironmentAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvironmentAssignedTargetingOptionDetails();
      var od =
          api.EnvironmentAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkEnvironmentAssignedTargetingOptionDetails(
          od as api.EnvironmentAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-EnvironmentTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvironmentTargetingOptionDetails();
      var od = api.EnvironmentTargetingOptionDetails.fromJson(o.toJson());
      checkEnvironmentTargetingOptionDetails(
          od as api.EnvironmentTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-ExchangeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildExchangeAssignedTargetingOptionDetails();
      var od = api.ExchangeAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkExchangeAssignedTargetingOptionDetails(
          od as api.ExchangeAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-ExchangeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildExchangeConfig();
      var od = api.ExchangeConfig.fromJson(o.toJson());
      checkExchangeConfig(od as api.ExchangeConfig);
    });
  });

  unittest.group('obj-schema-ExchangeConfigEnabledExchange', () {
    unittest.test('to-json--from-json', () {
      var o = buildExchangeConfigEnabledExchange();
      var od = api.ExchangeConfigEnabledExchange.fromJson(o.toJson());
      checkExchangeConfigEnabledExchange(
          od as api.ExchangeConfigEnabledExchange);
    });
  });

  unittest.group('obj-schema-ExchangeReviewStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildExchangeReviewStatus();
      var od = api.ExchangeReviewStatus.fromJson(o.toJson());
      checkExchangeReviewStatus(od as api.ExchangeReviewStatus);
    });
  });

  unittest.group('obj-schema-ExchangeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildExchangeTargetingOptionDetails();
      var od = api.ExchangeTargetingOptionDetails.fromJson(o.toJson());
      checkExchangeTargetingOptionDetails(
          od as api.ExchangeTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-ExitEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildExitEvent();
      var od = api.ExitEvent.fromJson(o.toJson());
      checkExitEvent(od as api.ExitEvent);
    });
  });

  unittest.group('obj-schema-FirstAndThirdPartyAudience', () {
    unittest.test('to-json--from-json', () {
      var o = buildFirstAndThirdPartyAudience();
      var od = api.FirstAndThirdPartyAudience.fromJson(o.toJson());
      checkFirstAndThirdPartyAudience(od as api.FirstAndThirdPartyAudience);
    });
  });

  unittest.group('obj-schema-FirstAndThirdPartyAudienceGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildFirstAndThirdPartyAudienceGroup();
      var od = api.FirstAndThirdPartyAudienceGroup.fromJson(o.toJson());
      checkFirstAndThirdPartyAudienceGroup(
          od as api.FirstAndThirdPartyAudienceGroup);
    });
  });

  unittest.group('obj-schema-FirstAndThirdPartyAudienceTargetingSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildFirstAndThirdPartyAudienceTargetingSetting();
      var od =
          api.FirstAndThirdPartyAudienceTargetingSetting.fromJson(o.toJson());
      checkFirstAndThirdPartyAudienceTargetingSetting(
          od as api.FirstAndThirdPartyAudienceTargetingSetting);
    });
  });

  unittest.group('obj-schema-FixedBidStrategy', () {
    unittest.test('to-json--from-json', () {
      var o = buildFixedBidStrategy();
      var od = api.FixedBidStrategy.fromJson(o.toJson());
      checkFixedBidStrategy(od as api.FixedBidStrategy);
    });
  });

  unittest.group('obj-schema-FloodlightGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloodlightGroup();
      var od = api.FloodlightGroup.fromJson(o.toJson());
      checkFloodlightGroup(od as api.FloodlightGroup);
    });
  });

  unittest.group('obj-schema-FrequencyCap', () {
    unittest.test('to-json--from-json', () {
      var o = buildFrequencyCap();
      var od = api.FrequencyCap.fromJson(o.toJson());
      checkFrequencyCap(od as api.FrequencyCap);
    });
  });

  unittest.group('obj-schema-GenderAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenderAssignedTargetingOptionDetails();
      var od = api.GenderAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkGenderAssignedTargetingOptionDetails(
          od as api.GenderAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-GenderTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenderTargetingOptionDetails();
      var od = api.GenderTargetingOptionDetails.fromJson(o.toJson());
      checkGenderTargetingOptionDetails(od as api.GenderTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-GeoRegionAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeoRegionAssignedTargetingOptionDetails();
      var od = api.GeoRegionAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkGeoRegionAssignedTargetingOptionDetails(
          od as api.GeoRegionAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-GeoRegionSearchTerms', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeoRegionSearchTerms();
      var od = api.GeoRegionSearchTerms.fromJson(o.toJson());
      checkGeoRegionSearchTerms(od as api.GeoRegionSearchTerms);
    });
  });

  unittest.group('obj-schema-GeoRegionTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeoRegionTargetingOptionDetails();
      var od = api.GeoRegionTargetingOptionDetails.fromJson(o.toJson());
      checkGeoRegionTargetingOptionDetails(
          od as api.GeoRegionTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-GoogleAudience', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAudience();
      var od = api.GoogleAudience.fromJson(o.toJson());
      checkGoogleAudience(od as api.GoogleAudience);
    });
  });

  unittest.group('obj-schema-GoogleAudienceGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAudienceGroup();
      var od = api.GoogleAudienceGroup.fromJson(o.toJson());
      checkGoogleAudienceGroup(od as api.GoogleAudienceGroup);
    });
  });

  unittest.group('obj-schema-GoogleAudienceTargetingSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAudienceTargetingSetting();
      var od = api.GoogleAudienceTargetingSetting.fromJson(o.toJson());
      checkGoogleAudienceTargetingSetting(
          od as api.GoogleAudienceTargetingSetting);
    });
  });

  unittest.group('obj-schema-GoogleBytestreamMedia', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleBytestreamMedia();
      var od = api.GoogleBytestreamMedia.fromJson(o.toJson());
      checkGoogleBytestreamMedia(od as api.GoogleBytestreamMedia);
    });
  });

  unittest.group('obj-schema-HouseholdIncomeAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildHouseholdIncomeAssignedTargetingOptionDetails();
      var od = api.HouseholdIncomeAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkHouseholdIncomeAssignedTargetingOptionDetails(
          od as api.HouseholdIncomeAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-HouseholdIncomeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildHouseholdIncomeTargetingOptionDetails();
      var od = api.HouseholdIncomeTargetingOptionDetails.fromJson(o.toJson());
      checkHouseholdIncomeTargetingOptionDetails(
          od as api.HouseholdIncomeTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-IdFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildIdFilter();
      var od = api.IdFilter.fromJson(o.toJson());
      checkIdFilter(od as api.IdFilter);
    });
  });

  unittest.group('obj-schema-InsertionOrder', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertionOrder();
      var od = api.InsertionOrder.fromJson(o.toJson());
      checkInsertionOrder(od as api.InsertionOrder);
    });
  });

  unittest.group('obj-schema-InsertionOrderBudget', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertionOrderBudget();
      var od = api.InsertionOrderBudget.fromJson(o.toJson());
      checkInsertionOrderBudget(od as api.InsertionOrderBudget);
    });
  });

  unittest.group('obj-schema-InsertionOrderBudgetSegment', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertionOrderBudgetSegment();
      var od = api.InsertionOrderBudgetSegment.fromJson(o.toJson());
      checkInsertionOrderBudgetSegment(od as api.InsertionOrderBudgetSegment);
    });
  });

  unittest.group('obj-schema-IntegralAdScience', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntegralAdScience();
      var od = api.IntegralAdScience.fromJson(o.toJson());
      checkIntegralAdScience(od as api.IntegralAdScience);
    });
  });

  unittest.group('obj-schema-IntegrationDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntegrationDetails();
      var od = api.IntegrationDetails.fromJson(o.toJson());
      checkIntegrationDetails(od as api.IntegrationDetails);
    });
  });

  unittest.group('obj-schema-InventorySource', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySource();
      var od = api.InventorySource.fromJson(o.toJson());
      checkInventorySource(od as api.InventorySource);
    });
  });

  unittest.group('obj-schema-InventorySourceAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceAssignedTargetingOptionDetails();
      var od = api.InventorySourceAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkInventorySourceAssignedTargetingOptionDetails(
          od as api.InventorySourceAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-InventorySourceDisplayCreativeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceDisplayCreativeConfig();
      var od = api.InventorySourceDisplayCreativeConfig.fromJson(o.toJson());
      checkInventorySourceDisplayCreativeConfig(
          od as api.InventorySourceDisplayCreativeConfig);
    });
  });

  unittest.group('obj-schema-InventorySourceFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceFilter();
      var od = api.InventorySourceFilter.fromJson(o.toJson());
      checkInventorySourceFilter(od as api.InventorySourceFilter);
    });
  });

  unittest.group('obj-schema-InventorySourceGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceGroup();
      var od = api.InventorySourceGroup.fromJson(o.toJson());
      checkInventorySourceGroup(od as api.InventorySourceGroup);
    });
  });

  unittest.group(
      'obj-schema-InventorySourceGroupAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceGroupAssignedTargetingOptionDetails();
      var od = api.InventorySourceGroupAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkInventorySourceGroupAssignedTargetingOptionDetails(
          od as api.InventorySourceGroupAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-InventorySourceStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceStatus();
      var od = api.InventorySourceStatus.fromJson(o.toJson());
      checkInventorySourceStatus(od as api.InventorySourceStatus);
    });
  });

  unittest.group('obj-schema-InventorySourceVideoCreativeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceVideoCreativeConfig();
      var od = api.InventorySourceVideoCreativeConfig.fromJson(o.toJson());
      checkInventorySourceVideoCreativeConfig(
          od as api.InventorySourceVideoCreativeConfig);
    });
  });

  unittest.group('obj-schema-KeywordAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildKeywordAssignedTargetingOptionDetails();
      var od = api.KeywordAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkKeywordAssignedTargetingOptionDetails(
          od as api.KeywordAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-LanguageAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLanguageAssignedTargetingOptionDetails();
      var od = api.LanguageAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkLanguageAssignedTargetingOptionDetails(
          od as api.LanguageAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-LanguageTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLanguageTargetingOptionDetails();
      var od = api.LanguageTargetingOptionDetails.fromJson(o.toJson());
      checkLanguageTargetingOptionDetails(
          od as api.LanguageTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-LineItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildLineItem();
      var od = api.LineItem.fromJson(o.toJson());
      checkLineItem(od as api.LineItem);
    });
  });

  unittest.group('obj-schema-LineItemBudget', () {
    unittest.test('to-json--from-json', () {
      var o = buildLineItemBudget();
      var od = api.LineItemBudget.fromJson(o.toJson());
      checkLineItemBudget(od as api.LineItemBudget);
    });
  });

  unittest.group('obj-schema-LineItemFlight', () {
    unittest.test('to-json--from-json', () {
      var o = buildLineItemFlight();
      var od = api.LineItemFlight.fromJson(o.toJson());
      checkLineItemFlight(od as api.LineItemFlight);
    });
  });

  unittest.group('obj-schema-ListAdvertiserAssignedTargetingOptionsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildListAdvertiserAssignedTargetingOptionsResponse();
      var od = api.ListAdvertiserAssignedTargetingOptionsResponse.fromJson(
          o.toJson());
      checkListAdvertiserAssignedTargetingOptionsResponse(
          od as api.ListAdvertiserAssignedTargetingOptionsResponse);
    });
  });

  unittest.group('obj-schema-ListAdvertisersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAdvertisersResponse();
      var od = api.ListAdvertisersResponse.fromJson(o.toJson());
      checkListAdvertisersResponse(od as api.ListAdvertisersResponse);
    });
  });

  unittest.group('obj-schema-ListAssignedInventorySourcesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAssignedInventorySourcesResponse();
      var od = api.ListAssignedInventorySourcesResponse.fromJson(o.toJson());
      checkListAssignedInventorySourcesResponse(
          od as api.ListAssignedInventorySourcesResponse);
    });
  });

  unittest.group('obj-schema-ListAssignedLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAssignedLocationsResponse();
      var od = api.ListAssignedLocationsResponse.fromJson(o.toJson());
      checkListAssignedLocationsResponse(
          od as api.ListAssignedLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListCampaignsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCampaignsResponse();
      var od = api.ListCampaignsResponse.fromJson(o.toJson());
      checkListCampaignsResponse(od as api.ListCampaignsResponse);
    });
  });

  unittest.group('obj-schema-ListChannelsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListChannelsResponse();
      var od = api.ListChannelsResponse.fromJson(o.toJson());
      checkListChannelsResponse(od as api.ListChannelsResponse);
    });
  });

  unittest.group('obj-schema-ListCombinedAudiencesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCombinedAudiencesResponse();
      var od = api.ListCombinedAudiencesResponse.fromJson(o.toJson());
      checkListCombinedAudiencesResponse(
          od as api.ListCombinedAudiencesResponse);
    });
  });

  unittest.group('obj-schema-ListCreativesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCreativesResponse();
      var od = api.ListCreativesResponse.fromJson(o.toJson());
      checkListCreativesResponse(od as api.ListCreativesResponse);
    });
  });

  unittest.group('obj-schema-ListCustomBiddingAlgorithmsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCustomBiddingAlgorithmsResponse();
      var od = api.ListCustomBiddingAlgorithmsResponse.fromJson(o.toJson());
      checkListCustomBiddingAlgorithmsResponse(
          od as api.ListCustomBiddingAlgorithmsResponse);
    });
  });

  unittest.group('obj-schema-ListCustomListsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCustomListsResponse();
      var od = api.ListCustomListsResponse.fromJson(o.toJson());
      checkListCustomListsResponse(od as api.ListCustomListsResponse);
    });
  });

  unittest.group('obj-schema-ListFirstAndThirdPartyAudiencesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListFirstAndThirdPartyAudiencesResponse();
      var od = api.ListFirstAndThirdPartyAudiencesResponse.fromJson(o.toJson());
      checkListFirstAndThirdPartyAudiencesResponse(
          od as api.ListFirstAndThirdPartyAudiencesResponse);
    });
  });

  unittest.group('obj-schema-ListGoogleAudiencesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGoogleAudiencesResponse();
      var od = api.ListGoogleAudiencesResponse.fromJson(o.toJson());
      checkListGoogleAudiencesResponse(od as api.ListGoogleAudiencesResponse);
    });
  });

  unittest.group('obj-schema-ListInsertionOrdersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListInsertionOrdersResponse();
      var od = api.ListInsertionOrdersResponse.fromJson(o.toJson());
      checkListInsertionOrdersResponse(od as api.ListInsertionOrdersResponse);
    });
  });

  unittest.group('obj-schema-ListInventorySourceGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListInventorySourceGroupsResponse();
      var od = api.ListInventorySourceGroupsResponse.fromJson(o.toJson());
      checkListInventorySourceGroupsResponse(
          od as api.ListInventorySourceGroupsResponse);
    });
  });

  unittest.group('obj-schema-ListInventorySourcesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListInventorySourcesResponse();
      var od = api.ListInventorySourcesResponse.fromJson(o.toJson());
      checkListInventorySourcesResponse(od as api.ListInventorySourcesResponse);
    });
  });

  unittest.group('obj-schema-ListLineItemAssignedTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLineItemAssignedTargetingOptionsResponse();
      var od =
          api.ListLineItemAssignedTargetingOptionsResponse.fromJson(o.toJson());
      checkListLineItemAssignedTargetingOptionsResponse(
          od as api.ListLineItemAssignedTargetingOptionsResponse);
    });
  });

  unittest.group('obj-schema-ListLineItemsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLineItemsResponse();
      var od = api.ListLineItemsResponse.fromJson(o.toJson());
      checkListLineItemsResponse(od as api.ListLineItemsResponse);
    });
  });

  unittest.group('obj-schema-ListLocationListsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationListsResponse();
      var od = api.ListLocationListsResponse.fromJson(o.toJson());
      checkListLocationListsResponse(od as api.ListLocationListsResponse);
    });
  });

  unittest.group('obj-schema-ListManualTriggersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListManualTriggersResponse();
      var od = api.ListManualTriggersResponse.fromJson(o.toJson());
      checkListManualTriggersResponse(od as api.ListManualTriggersResponse);
    });
  });

  unittest.group('obj-schema-ListNegativeKeywordListsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListNegativeKeywordListsResponse();
      var od = api.ListNegativeKeywordListsResponse.fromJson(o.toJson());
      checkListNegativeKeywordListsResponse(
          od as api.ListNegativeKeywordListsResponse);
    });
  });

  unittest.group('obj-schema-ListNegativeKeywordsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListNegativeKeywordsResponse();
      var od = api.ListNegativeKeywordsResponse.fromJson(o.toJson());
      checkListNegativeKeywordsResponse(od as api.ListNegativeKeywordsResponse);
    });
  });

  unittest.group('obj-schema-ListPartnerAssignedTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListPartnerAssignedTargetingOptionsResponse();
      var od =
          api.ListPartnerAssignedTargetingOptionsResponse.fromJson(o.toJson());
      checkListPartnerAssignedTargetingOptionsResponse(
          od as api.ListPartnerAssignedTargetingOptionsResponse);
    });
  });

  unittest.group('obj-schema-ListPartnersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListPartnersResponse();
      var od = api.ListPartnersResponse.fromJson(o.toJson());
      checkListPartnersResponse(od as api.ListPartnersResponse);
    });
  });

  unittest.group('obj-schema-ListSitesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListSitesResponse();
      var od = api.ListSitesResponse.fromJson(o.toJson());
      checkListSitesResponse(od as api.ListSitesResponse);
    });
  });

  unittest.group('obj-schema-ListTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListTargetingOptionsResponse();
      var od = api.ListTargetingOptionsResponse.fromJson(o.toJson());
      checkListTargetingOptionsResponse(od as api.ListTargetingOptionsResponse);
    });
  });

  unittest.group('obj-schema-ListUsersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListUsersResponse();
      var od = api.ListUsersResponse.fromJson(o.toJson());
      checkListUsersResponse(od as api.ListUsersResponse);
    });
  });

  unittest.group('obj-schema-LocationList', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocationList();
      var od = api.LocationList.fromJson(o.toJson());
      checkLocationList(od as api.LocationList);
    });
  });

  unittest.group('obj-schema-LookbackWindow', () {
    unittest.test('to-json--from-json', () {
      var o = buildLookbackWindow();
      var od = api.LookbackWindow.fromJson(o.toJson());
      checkLookbackWindow(od as api.LookbackWindow);
    });
  });

  unittest.group('obj-schema-ManualTrigger', () {
    unittest.test('to-json--from-json', () {
      var o = buildManualTrigger();
      var od = api.ManualTrigger.fromJson(o.toJson());
      checkManualTrigger(od as api.ManualTrigger);
    });
  });

  unittest.group('obj-schema-MaximizeSpendBidStrategy', () {
    unittest.test('to-json--from-json', () {
      var o = buildMaximizeSpendBidStrategy();
      var od = api.MaximizeSpendBidStrategy.fromJson(o.toJson());
      checkMaximizeSpendBidStrategy(od as api.MaximizeSpendBidStrategy);
    });
  });

  unittest.group('obj-schema-MeasurementConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildMeasurementConfig();
      var od = api.MeasurementConfig.fromJson(o.toJson());
      checkMeasurementConfig(od as api.MeasurementConfig);
    });
  });

  unittest.group('obj-schema-MobileApp', () {
    unittest.test('to-json--from-json', () {
      var o = buildMobileApp();
      var od = api.MobileApp.fromJson(o.toJson());
      checkMobileApp(od as api.MobileApp);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () {
      var o = buildMoney();
      var od = api.Money.fromJson(o.toJson());
      checkMoney(od as api.Money);
    });
  });

  unittest.group('obj-schema-NegativeKeyword', () {
    unittest.test('to-json--from-json', () {
      var o = buildNegativeKeyword();
      var od = api.NegativeKeyword.fromJson(o.toJson());
      checkNegativeKeyword(od as api.NegativeKeyword);
    });
  });

  unittest.group('obj-schema-NegativeKeywordList', () {
    unittest.test('to-json--from-json', () {
      var o = buildNegativeKeywordList();
      var od = api.NegativeKeywordList.fromJson(o.toJson());
      checkNegativeKeywordList(od as api.NegativeKeywordList);
    });
  });

  unittest.group('obj-schema-NegativeKeywordListAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildNegativeKeywordListAssignedTargetingOptionDetails();
      var od = api.NegativeKeywordListAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkNegativeKeywordListAssignedTargetingOptionDetails(
          od as api.NegativeKeywordListAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-ObaIcon', () {
    unittest.test('to-json--from-json', () {
      var o = buildObaIcon();
      var od = api.ObaIcon.fromJson(o.toJson());
      checkObaIcon(od as api.ObaIcon);
    });
  });

  unittest.group('obj-schema-OnScreenPositionAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildOnScreenPositionAssignedTargetingOptionDetails();
      var od = api.OnScreenPositionAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkOnScreenPositionAssignedTargetingOptionDetails(
          od as api.OnScreenPositionAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-OnScreenPositionTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOnScreenPositionTargetingOptionDetails();
      var od = api.OnScreenPositionTargetingOptionDetails.fromJson(o.toJson());
      checkOnScreenPositionTargetingOptionDetails(
          od as api.OnScreenPositionTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-OperatingSystemAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildOperatingSystemAssignedTargetingOptionDetails();
      var od = api.OperatingSystemAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkOperatingSystemAssignedTargetingOptionDetails(
          od as api.OperatingSystemAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-OperatingSystemTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperatingSystemTargetingOptionDetails();
      var od = api.OperatingSystemTargetingOptionDetails.fromJson(o.toJson());
      checkOperatingSystemTargetingOptionDetails(
          od as api.OperatingSystemTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-Pacing', () {
    unittest.test('to-json--from-json', () {
      var o = buildPacing();
      var od = api.Pacing.fromJson(o.toJson());
      checkPacing(od as api.Pacing);
    });
  });

  unittest.group('obj-schema-ParentEntityFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildParentEntityFilter();
      var od = api.ParentEntityFilter.fromJson(o.toJson());
      checkParentEntityFilter(od as api.ParentEntityFilter);
    });
  });

  unittest.group('obj-schema-ParentalStatusAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildParentalStatusAssignedTargetingOptionDetails();
      var od =
          api.ParentalStatusAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkParentalStatusAssignedTargetingOptionDetails(
          od as api.ParentalStatusAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-ParentalStatusTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildParentalStatusTargetingOptionDetails();
      var od = api.ParentalStatusTargetingOptionDetails.fromJson(o.toJson());
      checkParentalStatusTargetingOptionDetails(
          od as api.ParentalStatusTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-Partner', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartner();
      var od = api.Partner.fromJson(o.toJson());
      checkPartner(od as api.Partner);
    });
  });

  unittest.group('obj-schema-PartnerAdServerConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartnerAdServerConfig();
      var od = api.PartnerAdServerConfig.fromJson(o.toJson());
      checkPartnerAdServerConfig(od as api.PartnerAdServerConfig);
    });
  });

  unittest.group('obj-schema-PartnerCost', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartnerCost();
      var od = api.PartnerCost.fromJson(o.toJson());
      checkPartnerCost(od as api.PartnerCost);
    });
  });

  unittest.group('obj-schema-PartnerDataAccessConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartnerDataAccessConfig();
      var od = api.PartnerDataAccessConfig.fromJson(o.toJson());
      checkPartnerDataAccessConfig(od as api.PartnerDataAccessConfig);
    });
  });

  unittest.group('obj-schema-PartnerGeneralConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartnerGeneralConfig();
      var od = api.PartnerGeneralConfig.fromJson(o.toJson());
      checkPartnerGeneralConfig(od as api.PartnerGeneralConfig);
    });
  });

  unittest.group('obj-schema-PartnerRevenueModel', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartnerRevenueModel();
      var od = api.PartnerRevenueModel.fromJson(o.toJson());
      checkPartnerRevenueModel(od as api.PartnerRevenueModel);
    });
  });

  unittest.group('obj-schema-PerformanceGoal', () {
    unittest.test('to-json--from-json', () {
      var o = buildPerformanceGoal();
      var od = api.PerformanceGoal.fromJson(o.toJson());
      checkPerformanceGoal(od as api.PerformanceGoal);
    });
  });

  unittest.group('obj-schema-PerformanceGoalBidStrategy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPerformanceGoalBidStrategy();
      var od = api.PerformanceGoalBidStrategy.fromJson(o.toJson());
      checkPerformanceGoalBidStrategy(od as api.PerformanceGoalBidStrategy);
    });
  });

  unittest.group(
      'obj-schema-ProximityLocationListAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildProximityLocationListAssignedTargetingOptionDetails();
      var od = api.ProximityLocationListAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkProximityLocationListAssignedTargetingOptionDetails(
          od as api.ProximityLocationListAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-PublisherReviewStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildPublisherReviewStatus();
      var od = api.PublisherReviewStatus.fromJson(o.toJson());
      checkPublisherReviewStatus(od as api.PublisherReviewStatus);
    });
  });

  unittest.group('obj-schema-RateDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildRateDetails();
      var od = api.RateDetails.fromJson(o.toJson());
      checkRateDetails(od as api.RateDetails);
    });
  });

  unittest.group(
      'obj-schema-RegionalLocationListAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionalLocationListAssignedTargetingOptionDetails();
      var od = api.RegionalLocationListAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkRegionalLocationListAssignedTargetingOptionDetails(
          od as api.RegionalLocationListAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-ReviewStatusInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildReviewStatusInfo();
      var od = api.ReviewStatusInfo.fromJson(o.toJson());
      checkReviewStatusInfo(od as api.ReviewStatusInfo);
    });
  });

  unittest.group('obj-schema-SdfConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildSdfConfig();
      var od = api.SdfConfig.fromJson(o.toJson());
      checkSdfConfig(od as api.SdfConfig);
    });
  });

  unittest.group('obj-schema-SdfDownloadTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildSdfDownloadTask();
      var od = api.SdfDownloadTask.fromJson(o.toJson());
      checkSdfDownloadTask(od as api.SdfDownloadTask);
    });
  });

  unittest.group('obj-schema-SdfDownloadTaskMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildSdfDownloadTaskMetadata();
      var od = api.SdfDownloadTaskMetadata.fromJson(o.toJson());
      checkSdfDownloadTaskMetadata(od as api.SdfDownloadTaskMetadata);
    });
  });

  unittest.group('obj-schema-SearchTargetingOptionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchTargetingOptionsRequest();
      var od = api.SearchTargetingOptionsRequest.fromJson(o.toJson());
      checkSearchTargetingOptionsRequest(
          od as api.SearchTargetingOptionsRequest);
    });
  });

  unittest.group('obj-schema-SearchTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchTargetingOptionsResponse();
      var od = api.SearchTargetingOptionsResponse.fromJson(o.toJson());
      checkSearchTargetingOptionsResponse(
          od as api.SearchTargetingOptionsResponse);
    });
  });

  unittest.group('obj-schema-SensitiveCategoryAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildSensitiveCategoryAssignedTargetingOptionDetails();
      var od = api.SensitiveCategoryAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkSensitiveCategoryAssignedTargetingOptionDetails(
          od as api.SensitiveCategoryAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-SensitiveCategoryTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildSensitiveCategoryTargetingOptionDetails();
      var od = api.SensitiveCategoryTargetingOptionDetails.fromJson(o.toJson());
      checkSensitiveCategoryTargetingOptionDetails(
          od as api.SensitiveCategoryTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-Site', () {
    unittest.test('to-json--from-json', () {
      var o = buildSite();
      var od = api.Site.fromJson(o.toJson());
      checkSite(od as api.Site);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-SubExchangeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubExchangeAssignedTargetingOptionDetails();
      var od =
          api.SubExchangeAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkSubExchangeAssignedTargetingOptionDetails(
          od as api.SubExchangeAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-SubExchangeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubExchangeTargetingOptionDetails();
      var od = api.SubExchangeTargetingOptionDetails.fromJson(o.toJson());
      checkSubExchangeTargetingOptionDetails(
          od as api.SubExchangeTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-TargetingExpansionConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetingExpansionConfig();
      var od = api.TargetingExpansionConfig.fromJson(o.toJson());
      checkTargetingExpansionConfig(od as api.TargetingExpansionConfig);
    });
  });

  unittest.group('obj-schema-TargetingOption', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetingOption();
      var od = api.TargetingOption.fromJson(o.toJson());
      checkTargetingOption(od as api.TargetingOption);
    });
  });

  unittest.group('obj-schema-ThirdPartyOnlyConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildThirdPartyOnlyConfig();
      var od = api.ThirdPartyOnlyConfig.fromJson(o.toJson());
      checkThirdPartyOnlyConfig(od as api.ThirdPartyOnlyConfig);
    });
  });

  unittest.group('obj-schema-ThirdPartyUrl', () {
    unittest.test('to-json--from-json', () {
      var o = buildThirdPartyUrl();
      var od = api.ThirdPartyUrl.fromJson(o.toJson());
      checkThirdPartyUrl(od as api.ThirdPartyUrl);
    });
  });

  unittest.group('obj-schema-ThirdPartyVerifierAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildThirdPartyVerifierAssignedTargetingOptionDetails();
      var od = api.ThirdPartyVerifierAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkThirdPartyVerifierAssignedTargetingOptionDetails(
          od as api.ThirdPartyVerifierAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-TimeRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeRange();
      var od = api.TimeRange.fromJson(o.toJson());
      checkTimeRange(od as api.TimeRange);
    });
  });

  unittest.group('obj-schema-TimerEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimerEvent();
      var od = api.TimerEvent.fromJson(o.toJson());
      checkTimerEvent(od as api.TimerEvent);
    });
  });

  unittest.group('obj-schema-TrackingFloodlightActivityConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildTrackingFloodlightActivityConfig();
      var od = api.TrackingFloodlightActivityConfig.fromJson(o.toJson());
      checkTrackingFloodlightActivityConfig(
          od as api.TrackingFloodlightActivityConfig);
    });
  });

  unittest.group('obj-schema-Transcode', () {
    unittest.test('to-json--from-json', () {
      var o = buildTranscode();
      var od = api.Transcode.fromJson(o.toJson());
      checkTranscode(od as api.Transcode);
    });
  });

  unittest.group('obj-schema-UniversalAdId', () {
    unittest.test('to-json--from-json', () {
      var o = buildUniversalAdId();
      var od = api.UniversalAdId.fromJson(o.toJson());
      checkUniversalAdId(od as api.UniversalAdId);
    });
  });

  unittest.group('obj-schema-UrlAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildUrlAssignedTargetingOptionDetails();
      var od = api.UrlAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkUrlAssignedTargetingOptionDetails(
          od as api.UrlAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () {
      var o = buildUser();
      var od = api.User.fromJson(o.toJson());
      checkUser(od as api.User);
    });
  });

  unittest.group('obj-schema-UserRewardedContentAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildUserRewardedContentAssignedTargetingOptionDetails();
      var od = api.UserRewardedContentAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkUserRewardedContentAssignedTargetingOptionDetails(
          od as api.UserRewardedContentAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-UserRewardedContentTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserRewardedContentTargetingOptionDetails();
      var od =
          api.UserRewardedContentTargetingOptionDetails.fromJson(o.toJson());
      checkUserRewardedContentTargetingOptionDetails(
          od as api.UserRewardedContentTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-VideoPlayerSizeAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoPlayerSizeAssignedTargetingOptionDetails();
      var od = api.VideoPlayerSizeAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkVideoPlayerSizeAssignedTargetingOptionDetails(
          od as api.VideoPlayerSizeAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-VideoPlayerSizeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoPlayerSizeTargetingOptionDetails();
      var od = api.VideoPlayerSizeTargetingOptionDetails.fromJson(o.toJson());
      checkVideoPlayerSizeTargetingOptionDetails(
          od as api.VideoPlayerSizeTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-ViewabilityAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildViewabilityAssignedTargetingOptionDetails();
      var od =
          api.ViewabilityAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkViewabilityAssignedTargetingOptionDetails(
          od as api.ViewabilityAssignedTargetingOptionDetails);
    });
  });

  unittest.group('obj-schema-ViewabilityTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildViewabilityTargetingOptionDetails();
      var od = api.ViewabilityTargetingOptionDetails.fromJson(o.toJson());
      checkViewabilityTargetingOptionDetails(
          od as api.ViewabilityTargetingOptionDetails);
    });
  });

  unittest.group('resource-AdvertisersResource', () {
    unittest.test('method--audit', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers;
      var arg_advertiserId = 'foo';
      var arg_readMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAuditAdvertiserResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .audit(arg_advertiserId, readMask: arg_readMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAuditAdvertiserResponse(response as api.AuditAdvertiserResponse);
      })));
    });

    unittest.test('method--bulkEditAdvertiserAssignedTargetingOptions', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers;
      var arg_request =
          buildBulkEditAdvertiserAssignedTargetingOptionsRequest();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.BulkEditAdvertiserAssignedTargetingOptionsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkBulkEditAdvertiserAssignedTargetingOptionsRequest(
            obj as api.BulkEditAdvertiserAssignedTargetingOptionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json
            .encode(buildBulkEditAdvertiserAssignedTargetingOptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulkEditAdvertiserAssignedTargetingOptions(
              arg_request, arg_advertiserId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBulkEditAdvertiserAssignedTargetingOptionsResponse(
            response as api.BulkEditAdvertiserAssignedTargetingOptionsResponse);
      })));
    });

    unittest.test('method--bulkListAdvertiserAssignedTargetingOptions', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildBulkListAdvertiserAssignedTargetingOptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulkListAdvertiserAssignedTargetingOptions(arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBulkListAdvertiserAssignedTargetingOptionsResponse(
            response as api.BulkListAdvertiserAssignedTargetingOptionsResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers;
      var arg_request = buildAdvertiser();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Advertiser.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAdvertiser(obj as api.Advertiser);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/advertisers"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAdvertiser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiser(response as api.Advertiser);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers;
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers;
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAdvertiser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiser(response as api.Advertiser);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers;
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/advertisers"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAdvertisersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAdvertisersResponse(response as api.ListAdvertisersResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers;
      var arg_request = buildAdvertiser();
      var arg_advertiserId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Advertiser.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAdvertiser(obj as api.Advertiser);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAdvertiser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_advertiserId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiser(response as api.Advertiser);
      })));
    });
  });

  unittest.group('resource-AdvertisersAssetsResource', () {
    unittest.test('method--upload', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.assets;
      var arg_request = buildCreateAssetRequest();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateAssetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateAssetRequest(obj as api.CreateAssetRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildCreateAssetResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .upload(arg_request, arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreateAssetResponse(response as api.CreateAssetResponse);
      })));
    });
  });

  unittest.group('resource-AdvertisersCampaignsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.campaigns;
      var arg_request = buildCampaign();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Campaign.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCampaign(obj as api.Campaign);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildCampaign());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCampaign(response as api.Campaign);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.campaigns;
      var arg_advertiserId = 'foo';
      var arg_campaignId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_advertiserId, arg_campaignId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.campaigns;
      var arg_advertiserId = 'foo';
      var arg_campaignId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildCampaign());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_advertiserId, arg_campaignId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCampaign(response as api.Campaign);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.campaigns;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCampaignsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCampaignsResponse(response as api.ListCampaignsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.campaigns;
      var arg_request = buildCampaign();
      var arg_advertiserId = 'foo';
      var arg_campaignId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Campaign.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCampaign(obj as api.Campaign);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCampaign());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_advertiserId, arg_campaignId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCampaign(response as api.Campaign);
      })));
    });
  });

  unittest.group('resource-AdvertisersChannelsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.channels;
      var arg_request = buildChannel();
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj as api.Channel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_advertiserId,
              partnerId: arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response as api.Channel);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.channels;
      var arg_advertiserId = 'foo';
      var arg_channelId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_advertiserId, arg_channelId,
              partnerId: arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response as api.Channel);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.channels;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListChannelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListChannelsResponse(response as api.ListChannelsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.channels;
      var arg_request = buildChannel();
      var arg_advertiserId = 'foo';
      var arg_channelId = 'foo';
      var arg_partnerId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj as api.Channel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_advertiserId, arg_channelId,
              partnerId: arg_partnerId,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response as api.Channel);
      })));
    });
  });

  unittest.group('resource-AdvertisersChannelsSitesResource', () {
    unittest.test('method--bulkEdit', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.channels.sites;
      var arg_request = buildBulkEditSitesRequest();
      var arg_advertiserId = 'foo';
      var arg_channelId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditSitesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBulkEditSitesRequest(obj as api.BulkEditSitesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        index = path.indexOf('/channels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/channels/"));
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildBulkEditSitesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulkEdit(arg_request, arg_advertiserId, arg_channelId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBulkEditSitesResponse(response as api.BulkEditSitesResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.channels.sites;
      var arg_request = buildSite();
      var arg_advertiserId = 'foo';
      var arg_channelId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Site.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSite(obj as api.Site);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        index = path.indexOf('/channels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/channels/"));
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_advertiserId, arg_channelId,
              partnerId: arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSite(response as api.Site);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.channels.sites;
      var arg_advertiserId = 'foo';
      var arg_channelId = 'foo';
      var arg_urlOrAppId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        index = path.indexOf('/channels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/channels/"));
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_advertiserId, arg_channelId, arg_urlOrAppId,
              partnerId: arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.channels.sites;
      var arg_advertiserId = 'foo';
      var arg_channelId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListSitesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId, arg_channelId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSitesResponse(response as api.ListSitesResponse);
      })));
    });
  });

  unittest.group('resource-AdvertisersCreativesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.creatives;
      var arg_request = buildCreative();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Creative.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCreative(obj as api.Creative);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response as api.Creative);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.creatives;
      var arg_advertiserId = 'foo';
      var arg_creativeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_advertiserId, arg_creativeId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.creatives;
      var arg_advertiserId = 'foo';
      var arg_creativeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_advertiserId, arg_creativeId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response as api.Creative);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.creatives;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCreativesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCreativesResponse(response as api.ListCreativesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.creatives;
      var arg_request = buildCreative();
      var arg_advertiserId = 'foo';
      var arg_creativeId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Creative.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCreative(obj as api.Creative);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_advertiserId, arg_creativeId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response as api.Creative);
      })));
    });
  });

  unittest.group('resource-AdvertisersInsertionOrdersResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.insertionOrders;
      var arg_request = buildInsertionOrder();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InsertionOrder.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInsertionOrder(obj as api.InsertionOrder);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildInsertionOrder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInsertionOrder(response as api.InsertionOrder);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.insertionOrders;
      var arg_advertiserId = 'foo';
      var arg_insertionOrderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_advertiserId, arg_insertionOrderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.insertionOrders;
      var arg_advertiserId = 'foo';
      var arg_insertionOrderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildInsertionOrder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_advertiserId, arg_insertionOrderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInsertionOrder(response as api.InsertionOrder);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.insertionOrders;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListInsertionOrdersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListInsertionOrdersResponse(
            response as api.ListInsertionOrdersResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.insertionOrders;
      var arg_request = buildInsertionOrder();
      var arg_advertiserId = 'foo';
      var arg_insertionOrderId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InsertionOrder.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInsertionOrder(obj as api.InsertionOrder);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInsertionOrder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_advertiserId, arg_insertionOrderId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInsertionOrder(response as api.InsertionOrder);
      })));
    });
  });

  unittest.group('resource-AdvertisersLineItemsResource', () {
    unittest.test('method--bulkEditLineItemAssignedTargetingOptions', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.lineItems;
      var arg_request = buildBulkEditLineItemAssignedTargetingOptionsRequest();
      var arg_advertiserId = 'foo';
      var arg_lineItemId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditLineItemAssignedTargetingOptionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBulkEditLineItemAssignedTargetingOptionsRequest(
            obj as api.BulkEditLineItemAssignedTargetingOptionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json
            .encode(buildBulkEditLineItemAssignedTargetingOptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulkEditLineItemAssignedTargetingOptions(
              arg_request, arg_advertiserId, arg_lineItemId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBulkEditLineItemAssignedTargetingOptionsResponse(
            response as api.BulkEditLineItemAssignedTargetingOptionsResponse);
      })));
    });

    unittest.test('method--bulkListLineItemAssignedTargetingOptions', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.lineItems;
      var arg_advertiserId = 'foo';
      var arg_lineItemId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildBulkListLineItemAssignedTargetingOptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulkListLineItemAssignedTargetingOptions(
              arg_advertiserId, arg_lineItemId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBulkListLineItemAssignedTargetingOptionsResponse(
            response as api.BulkListLineItemAssignedTargetingOptionsResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.lineItems;
      var arg_request = buildLineItem();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.LineItem.fromJson(json as core.Map<core.String, core.dynamic>);
        checkLineItem(obj as api.LineItem);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildLineItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLineItem(response as api.LineItem);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.lineItems;
      var arg_advertiserId = 'foo';
      var arg_lineItemId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_advertiserId, arg_lineItemId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.lineItems;
      var arg_advertiserId = 'foo';
      var arg_lineItemId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildLineItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_advertiserId, arg_lineItemId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLineItem(response as api.LineItem);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.lineItems;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLineItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLineItemsResponse(response as api.ListLineItemsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.lineItems;
      var arg_request = buildLineItem();
      var arg_advertiserId = 'foo';
      var arg_lineItemId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.LineItem.fromJson(json as core.Map<core.String, core.dynamic>);
        checkLineItem(obj as api.LineItem);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLineItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_advertiserId, arg_lineItemId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLineItem(response as api.LineItem);
      })));
    });
  });

  unittest.group(
      'resource-AdvertisersLineItemsTargetingTypesAssignedTargetingOptionsResource',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .advertisers
          .lineItems
          .targetingTypes
          .assignedTargetingOptions;
      var arg_request = buildAssignedTargetingOption();
      var arg_advertiserId = 'foo';
      var arg_lineItemId = 'foo';
      var arg_targetingType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AssignedTargetingOption.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAssignedTargetingOption(obj as api.AssignedTargetingOption);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAssignedTargetingOption());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(
              arg_request, arg_advertiserId, arg_lineItemId, arg_targetingType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssignedTargetingOption(response as api.AssignedTargetingOption);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .advertisers
          .lineItems
          .targetingTypes
          .assignedTargetingOptions;
      var arg_advertiserId = 'foo';
      var arg_lineItemId = 'foo';
      var arg_targetingType = 'foo';
      var arg_assignedTargetingOptionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_advertiserId, arg_lineItemId, arg_targetingType,
              arg_assignedTargetingOptionId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .advertisers
          .lineItems
          .targetingTypes
          .assignedTargetingOptions;
      var arg_advertiserId = 'foo';
      var arg_lineItemId = 'foo';
      var arg_targetingType = 'foo';
      var arg_assignedTargetingOptionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAssignedTargetingOption());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_advertiserId, arg_lineItemId, arg_targetingType,
              arg_assignedTargetingOptionId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssignedTargetingOption(response as api.AssignedTargetingOption);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .advertisers
          .lineItems
          .targetingTypes
          .assignedTargetingOptions;
      var arg_advertiserId = 'foo';
      var arg_lineItemId = 'foo';
      var arg_targetingType = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildListLineItemAssignedTargetingOptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId, arg_lineItemId, arg_targetingType,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLineItemAssignedTargetingOptionsResponse(
            response as api.ListLineItemAssignedTargetingOptionsResponse);
      })));
    });
  });

  unittest.group('resource-AdvertisersLocationListsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.locationLists;
      var arg_request = buildLocationList();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LocationList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLocationList(obj as api.LocationList);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildLocationList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocationList(response as api.LocationList);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.locationLists;
      var arg_advertiserId = 'foo';
      var arg_locationListId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildLocationList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_advertiserId, arg_locationListId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocationList(response as api.LocationList);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.locationLists;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLocationListsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationListsResponse(
            response as api.ListLocationListsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.locationLists;
      var arg_request = buildLocationList();
      var arg_advertiserId = 'foo';
      var arg_locationListId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LocationList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLocationList(obj as api.LocationList);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLocationList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_advertiserId, arg_locationListId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocationList(response as api.LocationList);
      })));
    });
  });

  unittest.group('resource-AdvertisersLocationListsAssignedLocationsResource',
      () {
    unittest.test('method--bulkEdit', () {
      var mock = HttpServerMock();
      var res =
          api.DisplayVideoApi(mock).advertisers.locationLists.assignedLocations;
      var arg_request = buildBulkEditAssignedLocationsRequest();
      var arg_advertiserId = 'foo';
      var arg_locationListId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditAssignedLocationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBulkEditAssignedLocationsRequest(
            obj as api.BulkEditAssignedLocationsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        index = path.indexOf('/locationLists/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/locationLists/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildBulkEditAssignedLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulkEdit(arg_request, arg_advertiserId, arg_locationListId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBulkEditAssignedLocationsResponse(
            response as api.BulkEditAssignedLocationsResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res =
          api.DisplayVideoApi(mock).advertisers.locationLists.assignedLocations;
      var arg_request = buildAssignedLocation();
      var arg_advertiserId = 'foo';
      var arg_locationListId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AssignedLocation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAssignedLocation(obj as api.AssignedLocation);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        index = path.indexOf('/locationLists/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/locationLists/"));
        pathOffset += 15;
        index = path.indexOf('/assignedLocations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_locationListId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/assignedLocations"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAssignedLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_advertiserId, arg_locationListId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssignedLocation(response as api.AssignedLocation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res =
          api.DisplayVideoApi(mock).advertisers.locationLists.assignedLocations;
      var arg_advertiserId = 'foo';
      var arg_locationListId = 'foo';
      var arg_assignedLocationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        index = path.indexOf('/locationLists/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/locationLists/"));
        pathOffset += 15;
        index = path.indexOf('/assignedLocations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_locationListId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/assignedLocations/"));
        pathOffset += 19;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_advertiserId, arg_locationListId, arg_assignedLocationId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.DisplayVideoApi(mock).advertisers.locationLists.assignedLocations;
      var arg_advertiserId = 'foo';
      var arg_locationListId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        index = path.indexOf('/locationLists/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/locationLists/"));
        pathOffset += 15;
        index = path.indexOf('/assignedLocations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_locationListId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/assignedLocations"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAssignedLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId, arg_locationListId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAssignedLocationsResponse(
            response as api.ListAssignedLocationsResponse);
      })));
    });
  });

  unittest.group('resource-AdvertisersManualTriggersResource', () {
    unittest.test('method--activate', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.manualTriggers;
      var arg_request = buildActivateManualTriggerRequest();
      var arg_advertiserId = 'foo';
      var arg_triggerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ActivateManualTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkActivateManualTriggerRequest(
            obj as api.ActivateManualTriggerRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildManualTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .activate(arg_request, arg_advertiserId, arg_triggerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManualTrigger(response as api.ManualTrigger);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.manualTriggers;
      var arg_request = buildManualTrigger();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ManualTrigger.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManualTrigger(obj as api.ManualTrigger);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildManualTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManualTrigger(response as api.ManualTrigger);
      })));
    });

    unittest.test('method--deactivate', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.manualTriggers;
      var arg_request = buildDeactivateManualTriggerRequest();
      var arg_advertiserId = 'foo';
      var arg_triggerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DeactivateManualTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeactivateManualTriggerRequest(
            obj as api.DeactivateManualTriggerRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildManualTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deactivate(arg_request, arg_advertiserId, arg_triggerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManualTrigger(response as api.ManualTrigger);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.manualTriggers;
      var arg_advertiserId = 'foo';
      var arg_triggerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildManualTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_advertiserId, arg_triggerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManualTrigger(response as api.ManualTrigger);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.manualTriggers;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListManualTriggersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListManualTriggersResponse(
            response as api.ListManualTriggersResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.manualTriggers;
      var arg_request = buildManualTrigger();
      var arg_advertiserId = 'foo';
      var arg_triggerId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ManualTrigger.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManualTrigger(obj as api.ManualTrigger);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildManualTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_advertiserId, arg_triggerId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManualTrigger(response as api.ManualTrigger);
      })));
    });
  });

  unittest.group('resource-AdvertisersNegativeKeywordListsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.negativeKeywordLists;
      var arg_request = buildNegativeKeywordList();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.NegativeKeywordList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkNegativeKeywordList(obj as api.NegativeKeywordList);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildNegativeKeywordList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNegativeKeywordList(response as api.NegativeKeywordList);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.negativeKeywordLists;
      var arg_advertiserId = 'foo';
      var arg_negativeKeywordListId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_advertiserId, arg_negativeKeywordListId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.negativeKeywordLists;
      var arg_advertiserId = 'foo';
      var arg_negativeKeywordListId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildNegativeKeywordList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_advertiserId, arg_negativeKeywordListId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNegativeKeywordList(response as api.NegativeKeywordList);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.negativeKeywordLists;
      var arg_advertiserId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildListNegativeKeywordListsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNegativeKeywordListsResponse(
            response as api.ListNegativeKeywordListsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).advertisers.negativeKeywordLists;
      var arg_request = buildNegativeKeywordList();
      var arg_advertiserId = 'foo';
      var arg_negativeKeywordListId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.NegativeKeywordList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkNegativeKeywordList(obj as api.NegativeKeywordList);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNegativeKeywordList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_advertiserId, arg_negativeKeywordListId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNegativeKeywordList(response as api.NegativeKeywordList);
      })));
    });
  });

  unittest.group(
      'resource-AdvertisersNegativeKeywordListsNegativeKeywordsResource', () {
    unittest.test('method--bulkEdit', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .advertisers
          .negativeKeywordLists
          .negativeKeywords;
      var arg_request = buildBulkEditNegativeKeywordsRequest();
      var arg_advertiserId = 'foo';
      var arg_negativeKeywordListId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditNegativeKeywordsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBulkEditNegativeKeywordsRequest(
            obj as api.BulkEditNegativeKeywordsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        index = path.indexOf('/negativeKeywordLists/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/negativeKeywordLists/"));
        pathOffset += 22;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildBulkEditNegativeKeywordsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulkEdit(arg_request, arg_advertiserId, arg_negativeKeywordListId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBulkEditNegativeKeywordsResponse(
            response as api.BulkEditNegativeKeywordsResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .advertisers
          .negativeKeywordLists
          .negativeKeywords;
      var arg_request = buildNegativeKeyword();
      var arg_advertiserId = 'foo';
      var arg_negativeKeywordListId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.NegativeKeyword.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkNegativeKeyword(obj as api.NegativeKeyword);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        index = path.indexOf('/negativeKeywordLists/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/negativeKeywordLists/"));
        pathOffset += 22;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildNegativeKeyword());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_advertiserId, arg_negativeKeywordListId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNegativeKeyword(response as api.NegativeKeyword);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .advertisers
          .negativeKeywordLists
          .negativeKeywords;
      var arg_advertiserId = 'foo';
      var arg_negativeKeywordListId = 'foo';
      var arg_keywordValue = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        index = path.indexOf('/negativeKeywordLists/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/negativeKeywordLists/"));
        pathOffset += 22;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_advertiserId, arg_negativeKeywordListId, arg_keywordValue,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .advertisers
          .negativeKeywordLists
          .negativeKeywords;
      var arg_advertiserId = 'foo';
      var arg_negativeKeywordListId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListNegativeKeywordsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId, arg_negativeKeywordListId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNegativeKeywordsResponse(
            response as api.ListNegativeKeywordsResponse);
      })));
    });
  });

  unittest.group(
      'resource-AdvertisersTargetingTypesAssignedTargetingOptionsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .advertisers
          .targetingTypes
          .assignedTargetingOptions;
      var arg_request = buildAssignedTargetingOption();
      var arg_advertiserId = 'foo';
      var arg_targetingType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AssignedTargetingOption.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAssignedTargetingOption(obj as api.AssignedTargetingOption);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAssignedTargetingOption());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_advertiserId, arg_targetingType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssignedTargetingOption(response as api.AssignedTargetingOption);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .advertisers
          .targetingTypes
          .assignedTargetingOptions;
      var arg_advertiserId = 'foo';
      var arg_targetingType = 'foo';
      var arg_assignedTargetingOptionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_advertiserId, arg_targetingType,
              arg_assignedTargetingOptionId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .advertisers
          .targetingTypes
          .assignedTargetingOptions;
      var arg_advertiserId = 'foo';
      var arg_targetingType = 'foo';
      var arg_assignedTargetingOptionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAssignedTargetingOption());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_advertiserId, arg_targetingType,
              arg_assignedTargetingOptionId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssignedTargetingOption(response as api.AssignedTargetingOption);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .advertisers
          .targetingTypes
          .assignedTargetingOptions;
      var arg_advertiserId = 'foo';
      var arg_targetingType = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/advertisers/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildListAdvertiserAssignedTargetingOptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_advertiserId, arg_targetingType,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAdvertiserAssignedTargetingOptionsResponse(
            response as api.ListAdvertiserAssignedTargetingOptionsResponse);
      })));
    });
  });

  unittest.group('resource-CombinedAudiencesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).combinedAudiences;
      var arg_combinedAudienceId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v1/combinedAudiences/"));
        pathOffset += 21;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCombinedAudience());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_combinedAudienceId,
              advertiserId: arg_advertiserId,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCombinedAudience(response as api.CombinedAudience);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).combinedAudiences;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("v1/combinedAudiences"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCombinedAudiencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              advertiserId: arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCombinedAudiencesResponse(
            response as api.ListCombinedAudiencesResponse);
      })));
    });
  });

  unittest.group('resource-CustomBiddingAlgorithmsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).customBiddingAlgorithms;
      var arg_customBiddingAlgorithmId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("v1/customBiddingAlgorithms/"));
        pathOffset += 27;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCustomBiddingAlgorithm());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customBiddingAlgorithmId,
              advertiserId: arg_advertiserId,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomBiddingAlgorithm(response as api.CustomBiddingAlgorithm);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).customBiddingAlgorithms;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("v1/customBiddingAlgorithms"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildListCustomBiddingAlgorithmsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              advertiserId: arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCustomBiddingAlgorithmsResponse(
            response as api.ListCustomBiddingAlgorithmsResponse);
      })));
    });
  });

  unittest.group('resource-CustomListsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).customLists;
      var arg_customListId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/customLists/"));
        pathOffset += 15;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCustomList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customListId,
              advertiserId: arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomList(response as api.CustomList);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).customLists;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/customLists"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCustomListsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              advertiserId: arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCustomListsResponse(response as api.ListCustomListsResponse);
      })));
    });
  });

  unittest.group('resource-FirstAndThirdPartyAudiencesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).firstAndThirdPartyAudiences;
      var arg_firstAndThirdPartyAudienceId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("v1/firstAndThirdPartyAudiences/"));
        pathOffset += 31;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFirstAndThirdPartyAudience());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_firstAndThirdPartyAudienceId,
              advertiserId: arg_advertiserId,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFirstAndThirdPartyAudience(
            response as api.FirstAndThirdPartyAudience);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).firstAndThirdPartyAudiences;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("v1/firstAndThirdPartyAudiences"));
        pathOffset += 30;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildListFirstAndThirdPartyAudiencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              advertiserId: arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFirstAndThirdPartyAudiencesResponse(
            response as api.ListFirstAndThirdPartyAudiencesResponse);
      })));
    });
  });

  unittest.group('resource-FloodlightGroupsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).floodlightGroups;
      var arg_floodlightGroupId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("v1/floodlightGroups/"));
        pathOffset += 20;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFloodlightGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_floodlightGroupId,
              partnerId: arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightGroup(response as api.FloodlightGroup);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).floodlightGroups;
      var arg_request = buildFloodlightGroup();
      var arg_floodlightGroupId = 'foo';
      var arg_partnerId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FloodlightGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFloodlightGroup(obj as api.FloodlightGroup);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("v1/floodlightGroups/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_floodlightGroupId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFloodlightGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_floodlightGroupId,
              partnerId: arg_partnerId,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightGroup(response as api.FloodlightGroup);
      })));
    });
  });

  unittest.group('resource-GoogleAudiencesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).googleAudiences;
      var arg_googleAudienceId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v1/googleAudiences/"));
        pathOffset += 19;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleAudience());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_googleAudienceId,
              advertiserId: arg_advertiserId,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAudience(response as api.GoogleAudience);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).googleAudiences;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/googleAudiences"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListGoogleAudiencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              advertiserId: arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGoogleAudiencesResponse(
            response as api.ListGoogleAudiencesResponse);
      })));
    });
  });

  unittest.group('resource-InventorySourceGroupsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).inventorySourceGroups;
      var arg_request = buildInventorySourceGroup();
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InventorySourceGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInventorySourceGroup(obj as api.InventorySourceGroup);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("v1/inventorySourceGroups"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInventorySourceGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request,
              advertiserId: arg_advertiserId,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInventorySourceGroup(response as api.InventorySourceGroup);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).inventorySourceGroups;
      var arg_inventorySourceGroupId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1/inventorySourceGroups/"));
        pathOffset += 25;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_inventorySourceGroupId,
              advertiserId: arg_advertiserId,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).inventorySourceGroups;
      var arg_inventorySourceGroupId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1/inventorySourceGroups/"));
        pathOffset += 25;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInventorySourceGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_inventorySourceGroupId,
              advertiserId: arg_advertiserId,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInventorySourceGroup(response as api.InventorySourceGroup);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).inventorySourceGroups;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("v1/inventorySourceGroups"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildListInventorySourceGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              advertiserId: arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListInventorySourceGroupsResponse(
            response as api.ListInventorySourceGroupsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).inventorySourceGroups;
      var arg_request = buildInventorySourceGroup();
      var arg_inventorySourceGroupId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InventorySourceGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInventorySourceGroup(obj as api.InventorySourceGroup);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1/inventorySourceGroups/"));
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals('$arg_inventorySourceGroupId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInventorySourceGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_inventorySourceGroupId,
              advertiserId: arg_advertiserId,
              partnerId: arg_partnerId,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInventorySourceGroup(response as api.InventorySourceGroup);
      })));
    });
  });

  unittest.group(
      'resource-InventorySourceGroupsAssignedInventorySourcesResource', () {
    unittest.test('method--bulkEdit', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .inventorySourceGroups
          .assignedInventorySources;
      var arg_request = buildBulkEditAssignedInventorySourcesRequest();
      var arg_inventorySourceGroupId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditAssignedInventorySourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBulkEditAssignedInventorySourcesRequest(
            obj as api.BulkEditAssignedInventorySourcesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1/inventorySourceGroups/"));
        pathOffset += 25;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json
            .encode(buildBulkEditAssignedInventorySourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulkEdit(arg_request, arg_inventorySourceGroupId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBulkEditAssignedInventorySourcesResponse(
            response as api.BulkEditAssignedInventorySourcesResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .inventorySourceGroups
          .assignedInventorySources;
      var arg_request = buildAssignedInventorySource();
      var arg_inventorySourceGroupId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AssignedInventorySource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAssignedInventorySource(obj as api.AssignedInventorySource);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1/inventorySourceGroups/"));
        pathOffset += 25;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAssignedInventorySource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_inventorySourceGroupId,
              advertiserId: arg_advertiserId,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssignedInventorySource(response as api.AssignedInventorySource);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .inventorySourceGroups
          .assignedInventorySources;
      var arg_inventorySourceGroupId = 'foo';
      var arg_assignedInventorySourceId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1/inventorySourceGroups/"));
        pathOffset += 25;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_inventorySourceGroupId, arg_assignedInventorySourceId,
              advertiserId: arg_advertiserId,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .inventorySourceGroups
          .assignedInventorySources;
      var arg_inventorySourceGroupId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1/inventorySourceGroups/"));
        pathOffset += 25;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildListAssignedInventorySourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_inventorySourceGroupId,
              advertiserId: arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAssignedInventorySourcesResponse(
            response as api.ListAssignedInventorySourcesResponse);
      })));
    });
  });

  unittest.group('resource-InventorySourcesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).inventorySources;
      var arg_inventorySourceId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("v1/inventorySources/"));
        pathOffset += 20;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInventorySource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_inventorySourceId,
              partnerId: arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInventorySource(response as api.InventorySource);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).inventorySources;
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v1/inventorySources"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["partnerId"].first, unittest.equals(arg_partnerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListInventorySourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              advertiserId: arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              partnerId: arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListInventorySourcesResponse(
            response as api.ListInventorySourcesResponse);
      })));
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--download', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).media;
      var arg_resourceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("download/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildGoogleBytestreamMedia());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .download(arg_resourceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleBytestreamMedia(response as api.GoogleBytestreamMedia);
      })));
    });
  });

  unittest.group('resource-PartnersResource', () {
    unittest.test('method--bulkEditPartnerAssignedTargetingOptions', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).partners;
      var arg_request = buildBulkEditPartnerAssignedTargetingOptionsRequest();
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditPartnerAssignedTargetingOptionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBulkEditPartnerAssignedTargetingOptionsRequest(
            obj as api.BulkEditPartnerAssignedTargetingOptionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json
            .encode(buildBulkEditPartnerAssignedTargetingOptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulkEditPartnerAssignedTargetingOptions(arg_request, arg_partnerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBulkEditPartnerAssignedTargetingOptionsResponse(
            response as api.BulkEditPartnerAssignedTargetingOptionsResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).partners;
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildPartner());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPartner(response as api.Partner);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).partners;
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
            unittest.equals("v1/partners"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListPartnersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPartnersResponse(response as api.ListPartnersResponse);
      })));
    });
  });

  unittest.group('resource-PartnersChannelsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).partners.channels;
      var arg_request = buildChannel();
      var arg_partnerId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj as api.Channel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_partnerId,
              advertiserId: arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response as api.Channel);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).partners.channels;
      var arg_partnerId = 'foo';
      var arg_channelId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_partnerId, arg_channelId,
              advertiserId: arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response as api.Channel);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).partners.channels;
      var arg_partnerId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListChannelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_partnerId,
              advertiserId: arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListChannelsResponse(response as api.ListChannelsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).partners.channels;
      var arg_request = buildChannel();
      var arg_partnerId = 'foo';
      var arg_channelId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj as api.Channel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_partnerId, arg_channelId,
              advertiserId: arg_advertiserId,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response as api.Channel);
      })));
    });
  });

  unittest.group('resource-PartnersChannelsSitesResource', () {
    unittest.test('method--bulkEdit', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).partners.channels.sites;
      var arg_request = buildBulkEditSitesRequest();
      var arg_partnerId = 'foo';
      var arg_channelId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditSitesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBulkEditSitesRequest(obj as api.BulkEditSitesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        index = path.indexOf('/channels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_partnerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/channels/"));
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildBulkEditSitesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulkEdit(arg_request, arg_partnerId, arg_channelId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBulkEditSitesResponse(response as api.BulkEditSitesResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).partners.channels.sites;
      var arg_request = buildSite();
      var arg_partnerId = 'foo';
      var arg_channelId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Site.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSite(obj as api.Site);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        index = path.indexOf('/channels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_partnerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/channels/"));
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_partnerId, arg_channelId,
              advertiserId: arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSite(response as api.Site);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).partners.channels.sites;
      var arg_partnerId = 'foo';
      var arg_channelId = 'foo';
      var arg_urlOrAppId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        index = path.indexOf('/channels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_partnerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/channels/"));
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_partnerId, arg_channelId, arg_urlOrAppId,
              advertiserId: arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).partners.channels.sites;
      var arg_partnerId = 'foo';
      var arg_channelId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListSitesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_partnerId, arg_channelId,
              advertiserId: arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSitesResponse(response as api.ListSitesResponse);
      })));
    });
  });

  unittest.group(
      'resource-PartnersTargetingTypesAssignedTargetingOptionsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .partners
          .targetingTypes
          .assignedTargetingOptions;
      var arg_request = buildAssignedTargetingOption();
      var arg_partnerId = 'foo';
      var arg_targetingType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AssignedTargetingOption.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAssignedTargetingOption(obj as api.AssignedTargetingOption);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAssignedTargetingOption());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_partnerId, arg_targetingType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssignedTargetingOption(response as api.AssignedTargetingOption);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .partners
          .targetingTypes
          .assignedTargetingOptions;
      var arg_partnerId = 'foo';
      var arg_targetingType = 'foo';
      var arg_assignedTargetingOptionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(
              arg_partnerId, arg_targetingType, arg_assignedTargetingOptionId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .partners
          .targetingTypes
          .assignedTargetingOptions;
      var arg_partnerId = 'foo';
      var arg_targetingType = 'foo';
      var arg_assignedTargetingOptionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAssignedTargetingOption());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_partnerId, arg_targetingType, arg_assignedTargetingOptionId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssignedTargetingOption(response as api.AssignedTargetingOption);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock)
          .partners
          .targetingTypes
          .assignedTargetingOptions;
      var arg_partnerId = 'foo';
      var arg_targetingType = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildListPartnerAssignedTargetingOptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_partnerId, arg_targetingType,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPartnerAssignedTargetingOptionsResponse(
            response as api.ListPartnerAssignedTargetingOptionsResponse);
      })));
    });
  });

  unittest.group('resource-SdfdownloadtasksResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).sdfdownloadtasks;
      var arg_request = buildCreateSdfDownloadTaskRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateSdfDownloadTaskRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateSdfDownloadTaskRequest(
            obj as api.CreateSdfDownloadTaskRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v1/sdfdownloadtasks"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-SdfdownloadtasksOperationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).sdfdownloadtasks.operations;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-TargetingTypesTargetingOptionsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).targetingTypes.targetingOptions;
      var arg_targetingType = 'foo';
      var arg_targetingOptionId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/targetingTypes/"));
        pathOffset += 18;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTargetingOption());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_targetingType, arg_targetingOptionId,
              advertiserId: arg_advertiserId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTargetingOption(response as api.TargetingOption);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).targetingTypes.targetingOptions;
      var arg_targetingType = 'foo';
      var arg_advertiserId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/targetingTypes/"));
        pathOffset += 18;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTargetingOptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_targetingType,
              advertiserId: arg_advertiserId,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTargetingOptionsResponse(
            response as api.ListTargetingOptionsResponse);
      })));
    });

    unittest.test('method--search', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).targetingTypes.targetingOptions;
      var arg_request = buildSearchTargetingOptionsRequest();
      var arg_targetingType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SearchTargetingOptionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchTargetingOptionsRequest(
            obj as api.SearchTargetingOptionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/targetingTypes/"));
        pathOffset += 18;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildSearchTargetingOptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, arg_targetingType, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchTargetingOptionsResponse(
            response as api.SearchTargetingOptionsResponse);
      })));
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--bulkEditAssignedUserRoles', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).users;
      var arg_request = buildBulkEditAssignedUserRolesRequest();
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditAssignedUserRolesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBulkEditAssignedUserRolesRequest(
            obj as api.BulkEditAssignedUserRolesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/users/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildBulkEditAssignedUserRolesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulkEditAssignedUserRoles(arg_request, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBulkEditAssignedUserRolesResponse(
            response as api.BulkEditAssignedUserRolesResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).users;
      var arg_request = buildUser();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUser(obj as api.User);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/users"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response as api.User);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).users;
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/users/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).users;
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/users/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response as api.User);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).users;
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/users"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListUsersResponse(response as api.ListUsersResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayVideoApi(mock).users;
      var arg_request = buildUser();
      var arg_userId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUser(obj as api.User);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/users/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_userId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response as api.User);
      })));
    });
  });
}
