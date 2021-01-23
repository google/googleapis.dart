// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis.displayvideo.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/displayvideo/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
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

core.List<core.String> buildUnnamed4566() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4566(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdloox = 0;
api.Adloox buildAdloox() {
  var o = api.Adloox();
  buildCounterAdloox++;
  if (buildCounterAdloox < 3) {
    o.excludedAdlooxCategories = buildUnnamed4566();
  }
  buildCounterAdloox--;
  return o;
}

void checkAdloox(api.Adloox o) {
  buildCounterAdloox++;
  if (buildCounterAdloox < 3) {
    checkUnnamed4566(o.excludedAdlooxCategories);
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
    checkAdvertiserAdServerConfig(o.adServerConfig);
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkAdvertiserCreativeConfig(o.creativeConfig);
    checkAdvertiserDataAccessConfig(o.dataAccessConfig);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    checkAdvertiserGeneralConfig(o.generalConfig);
    checkIntegrationDetails(o.integrationDetails);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.partnerId, unittest.equals('foo'));
    checkAdvertiserTargetingConfig(o.servingConfig);
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
    checkCmHybridConfig(o.cmHybridConfig);
    checkThirdPartyOnlyConfig(o.thirdPartyOnlyConfig);
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
    checkAdvertiserSdfConfig(o.sdfConfig);
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
    checkSdfConfig(o.sdfConfig);
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
    checkAsset(o.asset);
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
    checkAgeRangeAssignedTargetingOptionDetails(o.ageRangeDetails);
    checkAppCategoryAssignedTargetingOptionDetails(o.appCategoryDetails);
    checkAppAssignedTargetingOptionDetails(o.appDetails);
    unittest.expect(o.assignedTargetingOptionId, unittest.equals('foo'));
    checkAudienceGroupAssignedTargetingOptionDetails(o.audienceGroupDetails);
    checkAuthorizedSellerStatusAssignedTargetingOptionDetails(
        o.authorizedSellerStatusDetails);
    checkBrowserAssignedTargetingOptionDetails(o.browserDetails);
    checkCarrierAndIspAssignedTargetingOptionDetails(o.carrierAndIspDetails);
    checkCategoryAssignedTargetingOptionDetails(o.categoryDetails);
    checkChannelAssignedTargetingOptionDetails(o.channelDetails);
    checkContentInstreamPositionAssignedTargetingOptionDetails(
        o.contentInstreamPositionDetails);
    checkContentOutstreamPositionAssignedTargetingOptionDetails(
        o.contentOutstreamPositionDetails);
    checkDayAndTimeAssignedTargetingOptionDetails(o.dayAndTimeDetails);
    checkDeviceMakeModelAssignedTargetingOptionDetails(
        o.deviceMakeModelDetails);
    checkDeviceTypeAssignedTargetingOptionDetails(o.deviceTypeDetails);
    checkDigitalContentLabelAssignedTargetingOptionDetails(
        o.digitalContentLabelExclusionDetails);
    checkEnvironmentAssignedTargetingOptionDetails(o.environmentDetails);
    checkExchangeAssignedTargetingOptionDetails(o.exchangeDetails);
    checkGenderAssignedTargetingOptionDetails(o.genderDetails);
    checkGeoRegionAssignedTargetingOptionDetails(o.geoRegionDetails);
    checkHouseholdIncomeAssignedTargetingOptionDetails(
        o.householdIncomeDetails);
    unittest.expect(o.inheritance, unittest.equals('foo'));
    checkInventorySourceAssignedTargetingOptionDetails(
        o.inventorySourceDetails);
    checkInventorySourceGroupAssignedTargetingOptionDetails(
        o.inventorySourceGroupDetails);
    checkKeywordAssignedTargetingOptionDetails(o.keywordDetails);
    checkLanguageAssignedTargetingOptionDetails(o.languageDetails);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNegativeKeywordListAssignedTargetingOptionDetails(
        o.negativeKeywordListDetails);
    checkOnScreenPositionAssignedTargetingOptionDetails(
        o.onScreenPositionDetails);
    checkOperatingSystemAssignedTargetingOptionDetails(
        o.operatingSystemDetails);
    checkParentalStatusAssignedTargetingOptionDetails(o.parentalStatusDetails);
    checkProximityLocationListAssignedTargetingOptionDetails(
        o.proximityLocationListDetails);
    checkRegionalLocationListAssignedTargetingOptionDetails(
        o.regionalLocationListDetails);
    checkSensitiveCategoryAssignedTargetingOptionDetails(
        o.sensitiveCategoryExclusionDetails);
    checkSubExchangeAssignedTargetingOptionDetails(o.subExchangeDetails);
    unittest.expect(o.targetingType, unittest.equals('foo'));
    checkThirdPartyVerifierAssignedTargetingOptionDetails(
        o.thirdPartyVerifierDetails);
    checkUrlAssignedTargetingOptionDetails(o.urlDetails);
    checkUserRewardedContentAssignedTargetingOptionDetails(
        o.userRewardedContentDetails);
    checkVideoPlayerSizeAssignedTargetingOptionDetails(
        o.videoPlayerSizeDetails);
    checkViewabilityAssignedTargetingOptionDetails(o.viewabilityDetails);
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

core.List<api.FirstAndThirdPartyAudienceGroup> buildUnnamed4567() {
  var o = <api.FirstAndThirdPartyAudienceGroup>[];
  o.add(buildFirstAndThirdPartyAudienceGroup());
  o.add(buildFirstAndThirdPartyAudienceGroup());
  return o;
}

void checkUnnamed4567(core.List<api.FirstAndThirdPartyAudienceGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirstAndThirdPartyAudienceGroup(o[0]);
  checkFirstAndThirdPartyAudienceGroup(o[1]);
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
    o.includedFirstAndThirdPartyAudienceGroups = buildUnnamed4567();
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
        o.excludedFirstAndThirdPartyAudienceGroup);
    checkGoogleAudienceGroup(o.excludedGoogleAudienceGroup);
    checkCombinedAudienceGroup(o.includedCombinedAudienceGroup);
    checkCustomListGroup(o.includedCustomListGroup);
    checkUnnamed4567(o.includedFirstAndThirdPartyAudienceGroups);
    checkGoogleAudienceGroup(o.includedGoogleAudienceGroup);
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
    checkFixedBidStrategy(o.fixedBid);
    checkMaximizeSpendBidStrategy(o.maximizeSpendAutoBid);
    checkPerformanceGoalBidStrategy(o.performanceGoalAutoBid);
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

core.List<api.CreateAssignedTargetingOptionsRequest> buildUnnamed4568() {
  var o = <api.CreateAssignedTargetingOptionsRequest>[];
  o.add(buildCreateAssignedTargetingOptionsRequest());
  o.add(buildCreateAssignedTargetingOptionsRequest());
  return o;
}

void checkUnnamed4568(core.List<api.CreateAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateAssignedTargetingOptionsRequest(o[0]);
  checkCreateAssignedTargetingOptionsRequest(o[1]);
}

core.List<api.DeleteAssignedTargetingOptionsRequest> buildUnnamed4569() {
  var o = <api.DeleteAssignedTargetingOptionsRequest>[];
  o.add(buildDeleteAssignedTargetingOptionsRequest());
  o.add(buildDeleteAssignedTargetingOptionsRequest());
  return o;
}

void checkUnnamed4569(core.List<api.DeleteAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeleteAssignedTargetingOptionsRequest(o[0]);
  checkDeleteAssignedTargetingOptionsRequest(o[1]);
}

core.int buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest = 0;
api.BulkEditAdvertiserAssignedTargetingOptionsRequest
    buildBulkEditAdvertiserAssignedTargetingOptionsRequest() {
  var o = api.BulkEditAdvertiserAssignedTargetingOptionsRequest();
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest < 3) {
    o.createRequests = buildUnnamed4568();
    o.deleteRequests = buildUnnamed4569();
  }
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest--;
  return o;
}

void checkBulkEditAdvertiserAssignedTargetingOptionsRequest(
    api.BulkEditAdvertiserAssignedTargetingOptionsRequest o) {
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest < 3) {
    checkUnnamed4568(o.createRequests);
    checkUnnamed4569(o.deleteRequests);
  }
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsRequest--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4570() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4570(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse = 0;
api.BulkEditAdvertiserAssignedTargetingOptionsResponse
    buildBulkEditAdvertiserAssignedTargetingOptionsResponse() {
  var o = api.BulkEditAdvertiserAssignedTargetingOptionsResponse();
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse < 3) {
    o.createdAssignedTargetingOptions = buildUnnamed4570();
  }
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkEditAdvertiserAssignedTargetingOptionsResponse(
    api.BulkEditAdvertiserAssignedTargetingOptionsResponse o) {
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4570(o.createdAssignedTargetingOptions);
  }
  buildCounterBulkEditAdvertiserAssignedTargetingOptionsResponse--;
}

core.List<api.AssignedInventorySource> buildUnnamed4571() {
  var o = <api.AssignedInventorySource>[];
  o.add(buildAssignedInventorySource());
  o.add(buildAssignedInventorySource());
  return o;
}

void checkUnnamed4571(core.List<api.AssignedInventorySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedInventorySource(o[0]);
  checkAssignedInventorySource(o[1]);
}

core.List<core.String> buildUnnamed4572() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4572(core.List<core.String> o) {
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
    o.createdAssignedInventorySources = buildUnnamed4571();
    o.deletedAssignedInventorySources = buildUnnamed4572();
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
    checkUnnamed4571(o.createdAssignedInventorySources);
    checkUnnamed4572(o.deletedAssignedInventorySources);
    unittest.expect(o.partnerId, unittest.equals('foo'));
  }
  buildCounterBulkEditAssignedInventorySourcesRequest--;
}

core.List<api.AssignedInventorySource> buildUnnamed4573() {
  var o = <api.AssignedInventorySource>[];
  o.add(buildAssignedInventorySource());
  o.add(buildAssignedInventorySource());
  return o;
}

void checkUnnamed4573(core.List<api.AssignedInventorySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedInventorySource(o[0]);
  checkAssignedInventorySource(o[1]);
}

core.int buildCounterBulkEditAssignedInventorySourcesResponse = 0;
api.BulkEditAssignedInventorySourcesResponse
    buildBulkEditAssignedInventorySourcesResponse() {
  var o = api.BulkEditAssignedInventorySourcesResponse();
  buildCounterBulkEditAssignedInventorySourcesResponse++;
  if (buildCounterBulkEditAssignedInventorySourcesResponse < 3) {
    o.assignedInventorySources = buildUnnamed4573();
  }
  buildCounterBulkEditAssignedInventorySourcesResponse--;
  return o;
}

void checkBulkEditAssignedInventorySourcesResponse(
    api.BulkEditAssignedInventorySourcesResponse o) {
  buildCounterBulkEditAssignedInventorySourcesResponse++;
  if (buildCounterBulkEditAssignedInventorySourcesResponse < 3) {
    checkUnnamed4573(o.assignedInventorySources);
  }
  buildCounterBulkEditAssignedInventorySourcesResponse--;
}

core.List<api.AssignedLocation> buildUnnamed4574() {
  var o = <api.AssignedLocation>[];
  o.add(buildAssignedLocation());
  o.add(buildAssignedLocation());
  return o;
}

void checkUnnamed4574(core.List<api.AssignedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedLocation(o[0]);
  checkAssignedLocation(o[1]);
}

core.List<core.String> buildUnnamed4575() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4575(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditAssignedLocationsRequest = 0;
api.BulkEditAssignedLocationsRequest buildBulkEditAssignedLocationsRequest() {
  var o = api.BulkEditAssignedLocationsRequest();
  buildCounterBulkEditAssignedLocationsRequest++;
  if (buildCounterBulkEditAssignedLocationsRequest < 3) {
    o.createdAssignedLocations = buildUnnamed4574();
    o.deletedAssignedLocations = buildUnnamed4575();
  }
  buildCounterBulkEditAssignedLocationsRequest--;
  return o;
}

void checkBulkEditAssignedLocationsRequest(
    api.BulkEditAssignedLocationsRequest o) {
  buildCounterBulkEditAssignedLocationsRequest++;
  if (buildCounterBulkEditAssignedLocationsRequest < 3) {
    checkUnnamed4574(o.createdAssignedLocations);
    checkUnnamed4575(o.deletedAssignedLocations);
  }
  buildCounterBulkEditAssignedLocationsRequest--;
}

core.List<api.AssignedLocation> buildUnnamed4576() {
  var o = <api.AssignedLocation>[];
  o.add(buildAssignedLocation());
  o.add(buildAssignedLocation());
  return o;
}

void checkUnnamed4576(core.List<api.AssignedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedLocation(o[0]);
  checkAssignedLocation(o[1]);
}

core.int buildCounterBulkEditAssignedLocationsResponse = 0;
api.BulkEditAssignedLocationsResponse buildBulkEditAssignedLocationsResponse() {
  var o = api.BulkEditAssignedLocationsResponse();
  buildCounterBulkEditAssignedLocationsResponse++;
  if (buildCounterBulkEditAssignedLocationsResponse < 3) {
    o.assignedLocations = buildUnnamed4576();
  }
  buildCounterBulkEditAssignedLocationsResponse--;
  return o;
}

void checkBulkEditAssignedLocationsResponse(
    api.BulkEditAssignedLocationsResponse o) {
  buildCounterBulkEditAssignedLocationsResponse++;
  if (buildCounterBulkEditAssignedLocationsResponse < 3) {
    checkUnnamed4576(o.assignedLocations);
  }
  buildCounterBulkEditAssignedLocationsResponse--;
}

core.List<api.AssignedUserRole> buildUnnamed4577() {
  var o = <api.AssignedUserRole>[];
  o.add(buildAssignedUserRole());
  o.add(buildAssignedUserRole());
  return o;
}

void checkUnnamed4577(core.List<api.AssignedUserRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedUserRole(o[0]);
  checkAssignedUserRole(o[1]);
}

core.List<core.String> buildUnnamed4578() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4578(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditAssignedUserRolesRequest = 0;
api.BulkEditAssignedUserRolesRequest buildBulkEditAssignedUserRolesRequest() {
  var o = api.BulkEditAssignedUserRolesRequest();
  buildCounterBulkEditAssignedUserRolesRequest++;
  if (buildCounterBulkEditAssignedUserRolesRequest < 3) {
    o.createdAssignedUserRoles = buildUnnamed4577();
    o.deletedAssignedUserRoles = buildUnnamed4578();
  }
  buildCounterBulkEditAssignedUserRolesRequest--;
  return o;
}

void checkBulkEditAssignedUserRolesRequest(
    api.BulkEditAssignedUserRolesRequest o) {
  buildCounterBulkEditAssignedUserRolesRequest++;
  if (buildCounterBulkEditAssignedUserRolesRequest < 3) {
    checkUnnamed4577(o.createdAssignedUserRoles);
    checkUnnamed4578(o.deletedAssignedUserRoles);
  }
  buildCounterBulkEditAssignedUserRolesRequest--;
}

core.List<api.AssignedUserRole> buildUnnamed4579() {
  var o = <api.AssignedUserRole>[];
  o.add(buildAssignedUserRole());
  o.add(buildAssignedUserRole());
  return o;
}

void checkUnnamed4579(core.List<api.AssignedUserRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedUserRole(o[0]);
  checkAssignedUserRole(o[1]);
}

core.int buildCounterBulkEditAssignedUserRolesResponse = 0;
api.BulkEditAssignedUserRolesResponse buildBulkEditAssignedUserRolesResponse() {
  var o = api.BulkEditAssignedUserRolesResponse();
  buildCounterBulkEditAssignedUserRolesResponse++;
  if (buildCounterBulkEditAssignedUserRolesResponse < 3) {
    o.createdAssignedUserRoles = buildUnnamed4579();
  }
  buildCounterBulkEditAssignedUserRolesResponse--;
  return o;
}

void checkBulkEditAssignedUserRolesResponse(
    api.BulkEditAssignedUserRolesResponse o) {
  buildCounterBulkEditAssignedUserRolesResponse++;
  if (buildCounterBulkEditAssignedUserRolesResponse < 3) {
    checkUnnamed4579(o.createdAssignedUserRoles);
  }
  buildCounterBulkEditAssignedUserRolesResponse--;
}

core.List<api.CreateAssignedTargetingOptionsRequest> buildUnnamed4580() {
  var o = <api.CreateAssignedTargetingOptionsRequest>[];
  o.add(buildCreateAssignedTargetingOptionsRequest());
  o.add(buildCreateAssignedTargetingOptionsRequest());
  return o;
}

void checkUnnamed4580(core.List<api.CreateAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateAssignedTargetingOptionsRequest(o[0]);
  checkCreateAssignedTargetingOptionsRequest(o[1]);
}

core.List<api.DeleteAssignedTargetingOptionsRequest> buildUnnamed4581() {
  var o = <api.DeleteAssignedTargetingOptionsRequest>[];
  o.add(buildDeleteAssignedTargetingOptionsRequest());
  o.add(buildDeleteAssignedTargetingOptionsRequest());
  return o;
}

void checkUnnamed4581(core.List<api.DeleteAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeleteAssignedTargetingOptionsRequest(o[0]);
  checkDeleteAssignedTargetingOptionsRequest(o[1]);
}

core.int buildCounterBulkEditLineItemAssignedTargetingOptionsRequest = 0;
api.BulkEditLineItemAssignedTargetingOptionsRequest
    buildBulkEditLineItemAssignedTargetingOptionsRequest() {
  var o = api.BulkEditLineItemAssignedTargetingOptionsRequest();
  buildCounterBulkEditLineItemAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditLineItemAssignedTargetingOptionsRequest < 3) {
    o.createRequests = buildUnnamed4580();
    o.deleteRequests = buildUnnamed4581();
  }
  buildCounterBulkEditLineItemAssignedTargetingOptionsRequest--;
  return o;
}

void checkBulkEditLineItemAssignedTargetingOptionsRequest(
    api.BulkEditLineItemAssignedTargetingOptionsRequest o) {
  buildCounterBulkEditLineItemAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditLineItemAssignedTargetingOptionsRequest < 3) {
    checkUnnamed4580(o.createRequests);
    checkUnnamed4581(o.deleteRequests);
  }
  buildCounterBulkEditLineItemAssignedTargetingOptionsRequest--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4582() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4582(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterBulkEditLineItemAssignedTargetingOptionsResponse = 0;
api.BulkEditLineItemAssignedTargetingOptionsResponse
    buildBulkEditLineItemAssignedTargetingOptionsResponse() {
  var o = api.BulkEditLineItemAssignedTargetingOptionsResponse();
  buildCounterBulkEditLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditLineItemAssignedTargetingOptionsResponse < 3) {
    o.createdAssignedTargetingOptions = buildUnnamed4582();
  }
  buildCounterBulkEditLineItemAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkEditLineItemAssignedTargetingOptionsResponse(
    api.BulkEditLineItemAssignedTargetingOptionsResponse o) {
  buildCounterBulkEditLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditLineItemAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4582(o.createdAssignedTargetingOptions);
  }
  buildCounterBulkEditLineItemAssignedTargetingOptionsResponse--;
}

core.List<api.NegativeKeyword> buildUnnamed4583() {
  var o = <api.NegativeKeyword>[];
  o.add(buildNegativeKeyword());
  o.add(buildNegativeKeyword());
  return o;
}

void checkUnnamed4583(core.List<api.NegativeKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeyword(o[0]);
  checkNegativeKeyword(o[1]);
}

core.List<core.String> buildUnnamed4584() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4584(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBulkEditNegativeKeywordsRequest = 0;
api.BulkEditNegativeKeywordsRequest buildBulkEditNegativeKeywordsRequest() {
  var o = api.BulkEditNegativeKeywordsRequest();
  buildCounterBulkEditNegativeKeywordsRequest++;
  if (buildCounterBulkEditNegativeKeywordsRequest < 3) {
    o.createdNegativeKeywords = buildUnnamed4583();
    o.deletedNegativeKeywords = buildUnnamed4584();
  }
  buildCounterBulkEditNegativeKeywordsRequest--;
  return o;
}

void checkBulkEditNegativeKeywordsRequest(
    api.BulkEditNegativeKeywordsRequest o) {
  buildCounterBulkEditNegativeKeywordsRequest++;
  if (buildCounterBulkEditNegativeKeywordsRequest < 3) {
    checkUnnamed4583(o.createdNegativeKeywords);
    checkUnnamed4584(o.deletedNegativeKeywords);
  }
  buildCounterBulkEditNegativeKeywordsRequest--;
}

core.List<api.NegativeKeyword> buildUnnamed4585() {
  var o = <api.NegativeKeyword>[];
  o.add(buildNegativeKeyword());
  o.add(buildNegativeKeyword());
  return o;
}

void checkUnnamed4585(core.List<api.NegativeKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeyword(o[0]);
  checkNegativeKeyword(o[1]);
}

core.int buildCounterBulkEditNegativeKeywordsResponse = 0;
api.BulkEditNegativeKeywordsResponse buildBulkEditNegativeKeywordsResponse() {
  var o = api.BulkEditNegativeKeywordsResponse();
  buildCounterBulkEditNegativeKeywordsResponse++;
  if (buildCounterBulkEditNegativeKeywordsResponse < 3) {
    o.negativeKeywords = buildUnnamed4585();
  }
  buildCounterBulkEditNegativeKeywordsResponse--;
  return o;
}

void checkBulkEditNegativeKeywordsResponse(
    api.BulkEditNegativeKeywordsResponse o) {
  buildCounterBulkEditNegativeKeywordsResponse++;
  if (buildCounterBulkEditNegativeKeywordsResponse < 3) {
    checkUnnamed4585(o.negativeKeywords);
  }
  buildCounterBulkEditNegativeKeywordsResponse--;
}

core.List<api.CreateAssignedTargetingOptionsRequest> buildUnnamed4586() {
  var o = <api.CreateAssignedTargetingOptionsRequest>[];
  o.add(buildCreateAssignedTargetingOptionsRequest());
  o.add(buildCreateAssignedTargetingOptionsRequest());
  return o;
}

void checkUnnamed4586(core.List<api.CreateAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateAssignedTargetingOptionsRequest(o[0]);
  checkCreateAssignedTargetingOptionsRequest(o[1]);
}

core.List<api.DeleteAssignedTargetingOptionsRequest> buildUnnamed4587() {
  var o = <api.DeleteAssignedTargetingOptionsRequest>[];
  o.add(buildDeleteAssignedTargetingOptionsRequest());
  o.add(buildDeleteAssignedTargetingOptionsRequest());
  return o;
}

void checkUnnamed4587(core.List<api.DeleteAssignedTargetingOptionsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeleteAssignedTargetingOptionsRequest(o[0]);
  checkDeleteAssignedTargetingOptionsRequest(o[1]);
}

core.int buildCounterBulkEditPartnerAssignedTargetingOptionsRequest = 0;
api.BulkEditPartnerAssignedTargetingOptionsRequest
    buildBulkEditPartnerAssignedTargetingOptionsRequest() {
  var o = api.BulkEditPartnerAssignedTargetingOptionsRequest();
  buildCounterBulkEditPartnerAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditPartnerAssignedTargetingOptionsRequest < 3) {
    o.createRequests = buildUnnamed4586();
    o.deleteRequests = buildUnnamed4587();
  }
  buildCounterBulkEditPartnerAssignedTargetingOptionsRequest--;
  return o;
}

void checkBulkEditPartnerAssignedTargetingOptionsRequest(
    api.BulkEditPartnerAssignedTargetingOptionsRequest o) {
  buildCounterBulkEditPartnerAssignedTargetingOptionsRequest++;
  if (buildCounterBulkEditPartnerAssignedTargetingOptionsRequest < 3) {
    checkUnnamed4586(o.createRequests);
    checkUnnamed4587(o.deleteRequests);
  }
  buildCounterBulkEditPartnerAssignedTargetingOptionsRequest--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4588() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4588(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterBulkEditPartnerAssignedTargetingOptionsResponse = 0;
api.BulkEditPartnerAssignedTargetingOptionsResponse
    buildBulkEditPartnerAssignedTargetingOptionsResponse() {
  var o = api.BulkEditPartnerAssignedTargetingOptionsResponse();
  buildCounterBulkEditPartnerAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditPartnerAssignedTargetingOptionsResponse < 3) {
    o.createdAssignedTargetingOptions = buildUnnamed4588();
  }
  buildCounterBulkEditPartnerAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkEditPartnerAssignedTargetingOptionsResponse(
    api.BulkEditPartnerAssignedTargetingOptionsResponse o) {
  buildCounterBulkEditPartnerAssignedTargetingOptionsResponse++;
  if (buildCounterBulkEditPartnerAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4588(o.createdAssignedTargetingOptions);
  }
  buildCounterBulkEditPartnerAssignedTargetingOptionsResponse--;
}

core.List<api.Site> buildUnnamed4589() {
  var o = <api.Site>[];
  o.add(buildSite());
  o.add(buildSite());
  return o;
}

void checkUnnamed4589(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0]);
  checkSite(o[1]);
}

core.List<core.String> buildUnnamed4590() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4590(core.List<core.String> o) {
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
    o.createdSites = buildUnnamed4589();
    o.deletedSites = buildUnnamed4590();
    o.partnerId = 'foo';
  }
  buildCounterBulkEditSitesRequest--;
  return o;
}

void checkBulkEditSitesRequest(api.BulkEditSitesRequest o) {
  buildCounterBulkEditSitesRequest++;
  if (buildCounterBulkEditSitesRequest < 3) {
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkUnnamed4589(o.createdSites);
    checkUnnamed4590(o.deletedSites);
    unittest.expect(o.partnerId, unittest.equals('foo'));
  }
  buildCounterBulkEditSitesRequest--;
}

core.List<api.Site> buildUnnamed4591() {
  var o = <api.Site>[];
  o.add(buildSite());
  o.add(buildSite());
  return o;
}

void checkUnnamed4591(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0]);
  checkSite(o[1]);
}

core.int buildCounterBulkEditSitesResponse = 0;
api.BulkEditSitesResponse buildBulkEditSitesResponse() {
  var o = api.BulkEditSitesResponse();
  buildCounterBulkEditSitesResponse++;
  if (buildCounterBulkEditSitesResponse < 3) {
    o.sites = buildUnnamed4591();
  }
  buildCounterBulkEditSitesResponse--;
  return o;
}

void checkBulkEditSitesResponse(api.BulkEditSitesResponse o) {
  buildCounterBulkEditSitesResponse++;
  if (buildCounterBulkEditSitesResponse < 3) {
    checkUnnamed4591(o.sites);
  }
  buildCounterBulkEditSitesResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4592() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4592(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse = 0;
api.BulkListAdvertiserAssignedTargetingOptionsResponse
    buildBulkListAdvertiserAssignedTargetingOptionsResponse() {
  var o = api.BulkListAdvertiserAssignedTargetingOptionsResponse();
  buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed4592();
    o.nextPageToken = 'foo';
  }
  buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkListAdvertiserAssignedTargetingOptionsResponse(
    api.BulkListAdvertiserAssignedTargetingOptionsResponse o) {
  buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4592(o.assignedTargetingOptions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterBulkListAdvertiserAssignedTargetingOptionsResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4593() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4593(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterBulkListLineItemAssignedTargetingOptionsResponse = 0;
api.BulkListLineItemAssignedTargetingOptionsResponse
    buildBulkListLineItemAssignedTargetingOptionsResponse() {
  var o = api.BulkListLineItemAssignedTargetingOptionsResponse();
  buildCounterBulkListLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListLineItemAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed4593();
    o.nextPageToken = 'foo';
  }
  buildCounterBulkListLineItemAssignedTargetingOptionsResponse--;
  return o;
}

void checkBulkListLineItemAssignedTargetingOptionsResponse(
    api.BulkListLineItemAssignedTargetingOptionsResponse o) {
  buildCounterBulkListLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterBulkListLineItemAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4593(o.assignedTargetingOptions);
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
    checkCampaignFlight(o.campaignFlight);
    checkCampaignGoal(o.campaignGoal);
    unittest.expect(o.campaignId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    checkFrequencyCap(o.frequencyCap);
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
    checkDateRange(o.plannedDates);
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
    checkPerformanceGoal(o.performanceGoal);
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

core.List<core.String> buildUnnamed4594() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4594(core.List<core.String> o) {
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
    o.cmSyncableSiteIds = buildUnnamed4594();
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
    checkUnnamed4594(o.cmSyncableSiteIds);
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

core.List<api.CombinedAudienceTargetingSetting> buildUnnamed4595() {
  var o = <api.CombinedAudienceTargetingSetting>[];
  o.add(buildCombinedAudienceTargetingSetting());
  o.add(buildCombinedAudienceTargetingSetting());
  return o;
}

void checkUnnamed4595(core.List<api.CombinedAudienceTargetingSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCombinedAudienceTargetingSetting(o[0]);
  checkCombinedAudienceTargetingSetting(o[1]);
}

core.int buildCounterCombinedAudienceGroup = 0;
api.CombinedAudienceGroup buildCombinedAudienceGroup() {
  var o = api.CombinedAudienceGroup();
  buildCounterCombinedAudienceGroup++;
  if (buildCounterCombinedAudienceGroup < 3) {
    o.settings = buildUnnamed4595();
  }
  buildCounterCombinedAudienceGroup--;
  return o;
}

void checkCombinedAudienceGroup(api.CombinedAudienceGroup o) {
  buildCounterCombinedAudienceGroup++;
  if (buildCounterCombinedAudienceGroup < 3) {
    checkUnnamed4595(o.settings);
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

core.List<api.TrackingFloodlightActivityConfig> buildUnnamed4596() {
  var o = <api.TrackingFloodlightActivityConfig>[];
  o.add(buildTrackingFloodlightActivityConfig());
  o.add(buildTrackingFloodlightActivityConfig());
  return o;
}

void checkUnnamed4596(core.List<api.TrackingFloodlightActivityConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackingFloodlightActivityConfig(o[0]);
  checkTrackingFloodlightActivityConfig(o[1]);
}

core.int buildCounterConversionCountingConfig = 0;
api.ConversionCountingConfig buildConversionCountingConfig() {
  var o = api.ConversionCountingConfig();
  buildCounterConversionCountingConfig++;
  if (buildCounterConversionCountingConfig < 3) {
    o.floodlightActivityConfigs = buildUnnamed4596();
    o.postViewCountPercentageMillis = 'foo';
  }
  buildCounterConversionCountingConfig--;
  return o;
}

void checkConversionCountingConfig(api.ConversionCountingConfig o) {
  buildCounterConversionCountingConfig++;
  if (buildCounterConversionCountingConfig < 3) {
    checkUnnamed4596(o.floodlightActivityConfigs);
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
    checkAsset(o.asset);
  }
  buildCounterCreateAssetResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4597() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4597(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterCreateAssignedTargetingOptionsRequest = 0;
api.CreateAssignedTargetingOptionsRequest
    buildCreateAssignedTargetingOptionsRequest() {
  var o = api.CreateAssignedTargetingOptionsRequest();
  buildCounterCreateAssignedTargetingOptionsRequest++;
  if (buildCounterCreateAssignedTargetingOptionsRequest < 3) {
    o.assignedTargetingOptions = buildUnnamed4597();
    o.targetingType = 'foo';
  }
  buildCounterCreateAssignedTargetingOptionsRequest--;
  return o;
}

void checkCreateAssignedTargetingOptionsRequest(
    api.CreateAssignedTargetingOptionsRequest o) {
  buildCounterCreateAssignedTargetingOptionsRequest++;
  if (buildCounterCreateAssignedTargetingOptionsRequest < 3) {
    checkUnnamed4597(o.assignedTargetingOptions);
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
    checkIdFilter(o.idFilter);
    checkInventorySourceFilter(o.inventorySourceFilter);
    checkParentEntityFilter(o.parentEntityFilter);
    unittest.expect(o.partnerId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterCreateSdfDownloadTaskRequest--;
}

core.List<api.Dimensions> buildUnnamed4598() {
  var o = <api.Dimensions>[];
  o.add(buildDimensions());
  o.add(buildDimensions());
  return o;
}

void checkUnnamed4598(core.List<api.Dimensions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensions(o[0]);
  checkDimensions(o[1]);
}

core.List<api.AssetAssociation> buildUnnamed4599() {
  var o = <api.AssetAssociation>[];
  o.add(buildAssetAssociation());
  o.add(buildAssetAssociation());
  return o;
}

void checkUnnamed4599(core.List<api.AssetAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssetAssociation(o[0]);
  checkAssetAssociation(o[1]);
}

core.List<core.String> buildUnnamed4600() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4600(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CounterEvent> buildUnnamed4601() {
  var o = <api.CounterEvent>[];
  o.add(buildCounterEvent());
  o.add(buildCounterEvent());
  return o;
}

void checkUnnamed4601(core.List<api.CounterEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCounterEvent(o[0]);
  checkCounterEvent(o[1]);
}

core.List<core.String> buildUnnamed4602() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4602(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ExitEvent> buildUnnamed4603() {
  var o = <api.ExitEvent>[];
  o.add(buildExitEvent());
  o.add(buildExitEvent());
  return o;
}

void checkUnnamed4603(core.List<api.ExitEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExitEvent(o[0]);
  checkExitEvent(o[1]);
}

core.List<core.String> buildUnnamed4604() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4604(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ThirdPartyUrl> buildUnnamed4605() {
  var o = <api.ThirdPartyUrl>[];
  o.add(buildThirdPartyUrl());
  o.add(buildThirdPartyUrl());
  return o;
}

void checkUnnamed4605(core.List<api.ThirdPartyUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThirdPartyUrl(o[0]);
  checkThirdPartyUrl(o[1]);
}

core.List<api.TimerEvent> buildUnnamed4606() {
  var o = <api.TimerEvent>[];
  o.add(buildTimerEvent());
  o.add(buildTimerEvent());
  return o;
}

void checkUnnamed4606(core.List<api.TimerEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimerEvent(o[0]);
  checkTimerEvent(o[1]);
}

core.List<core.String> buildUnnamed4607() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4607(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Transcode> buildUnnamed4608() {
  var o = <api.Transcode>[];
  o.add(buildTranscode());
  o.add(buildTranscode());
  return o;
}

void checkUnnamed4608(core.List<api.Transcode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranscode(o[0]);
  checkTranscode(o[1]);
}

core.int buildCounterCreative = 0;
api.Creative buildCreative() {
  var o = api.Creative();
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    o.additionalDimensions = buildUnnamed4598();
    o.advertiserId = 'foo';
    o.appendedTag = 'foo';
    o.assets = buildUnnamed4599();
    o.cmPlacementId = 'foo';
    o.cmTrackingAd = buildCmTrackingAd();
    o.companionCreativeIds = buildUnnamed4600();
    o.counterEvents = buildUnnamed4601();
    o.createTime = 'foo';
    o.creativeAttributes = buildUnnamed4602();
    o.creativeId = 'foo';
    o.creativeType = 'foo';
    o.dimensions = buildDimensions();
    o.displayName = 'foo';
    o.dynamic = true;
    o.entityStatus = 'foo';
    o.exitEvents = buildUnnamed4603();
    o.expandOnHover = true;
    o.expandingDirection = 'foo';
    o.hostingSource = 'foo';
    o.html5Video = true;
    o.iasCampaignMonitoring = true;
    o.integrationCode = 'foo';
    o.jsTrackerUrl = 'foo';
    o.lineItemIds = buildUnnamed4604();
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
    o.thirdPartyUrls = buildUnnamed4605();
    o.timerEvents = buildUnnamed4606();
    o.trackerUrls = buildUnnamed4607();
    o.transcodes = buildUnnamed4608();
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
    checkUnnamed4598(o.additionalDimensions);
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.appendedTag, unittest.equals('foo'));
    checkUnnamed4599(o.assets);
    unittest.expect(o.cmPlacementId, unittest.equals('foo'));
    checkCmTrackingAd(o.cmTrackingAd);
    checkUnnamed4600(o.companionCreativeIds);
    checkUnnamed4601(o.counterEvents);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed4602(o.creativeAttributes);
    unittest.expect(o.creativeId, unittest.equals('foo'));
    unittest.expect(o.creativeType, unittest.equals('foo'));
    checkDimensions(o.dimensions);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.dynamic, unittest.isTrue);
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    checkUnnamed4603(o.exitEvents);
    unittest.expect(o.expandOnHover, unittest.isTrue);
    unittest.expect(o.expandingDirection, unittest.equals('foo'));
    unittest.expect(o.hostingSource, unittest.equals('foo'));
    unittest.expect(o.html5Video, unittest.isTrue);
    unittest.expect(o.iasCampaignMonitoring, unittest.isTrue);
    unittest.expect(o.integrationCode, unittest.equals('foo'));
    unittest.expect(o.jsTrackerUrl, unittest.equals('foo'));
    checkUnnamed4604(o.lineItemIds);
    unittest.expect(o.mediaDuration, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    checkObaIcon(o.obaIcon);
    checkAudioVideoOffset(o.progressOffset);
    unittest.expect(o.requireHtml5, unittest.isTrue);
    unittest.expect(o.requireMraid, unittest.isTrue);
    unittest.expect(o.requirePingForAttribution, unittest.isTrue);
    checkReviewStatusInfo(o.reviewStatus);
    checkAudioVideoOffset(o.skipOffset);
    unittest.expect(o.skippable, unittest.isTrue);
    unittest.expect(o.thirdPartyTag, unittest.equals('foo'));
    checkUnnamed4605(o.thirdPartyUrls);
    checkUnnamed4606(o.timerEvents);
    checkUnnamed4607(o.trackerUrls);
    checkUnnamed4608(o.transcodes);
    checkUniversalAdId(o.universalAdId);
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
    checkInventorySourceDisplayCreativeConfig(o.displayCreativeConfig);
    checkInventorySourceVideoCreativeConfig(o.videoCreativeConfig);
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

core.List<api.CustomListTargetingSetting> buildUnnamed4609() {
  var o = <api.CustomListTargetingSetting>[];
  o.add(buildCustomListTargetingSetting());
  o.add(buildCustomListTargetingSetting());
  return o;
}

void checkUnnamed4609(core.List<api.CustomListTargetingSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomListTargetingSetting(o[0]);
  checkCustomListTargetingSetting(o[1]);
}

core.int buildCounterCustomListGroup = 0;
api.CustomListGroup buildCustomListGroup() {
  var o = api.CustomListGroup();
  buildCounterCustomListGroup++;
  if (buildCounterCustomListGroup < 3) {
    o.settings = buildUnnamed4609();
  }
  buildCounterCustomListGroup--;
  return o;
}

void checkCustomListGroup(api.CustomListGroup o) {
  buildCounterCustomListGroup++;
  if (buildCounterCustomListGroup < 3) {
    checkUnnamed4609(o.settings);
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
    checkDate(o.endDate);
    checkDate(o.startDate);
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

core.List<core.String> buildUnnamed4610() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4610(core.List<core.String> o) {
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
    o.assignedTargetingOptionIds = buildUnnamed4610();
    o.targetingType = 'foo';
  }
  buildCounterDeleteAssignedTargetingOptionsRequest--;
  return o;
}

void checkDeleteAssignedTargetingOptionsRequest(
    api.DeleteAssignedTargetingOptionsRequest o) {
  buildCounterDeleteAssignedTargetingOptionsRequest++;
  if (buildCounterDeleteAssignedTargetingOptionsRequest < 3) {
    checkUnnamed4610(o.assignedTargetingOptionIds);
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

core.List<core.String> buildUnnamed4611() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4611(core.List<core.String> o) {
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
    o.avoidedAgeRatings = buildUnnamed4611();
    o.brandSafetyCategories = buildDoubleVerifyBrandSafetyCategories();
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
    checkDoubleVerifyAppStarRating(o.appStarRating);
    checkUnnamed4611(o.avoidedAgeRatings);
    checkDoubleVerifyBrandSafetyCategories(o.brandSafetyCategories);
    checkDoubleVerifyDisplayViewability(o.displayViewability);
    checkDoubleVerifyFraudInvalidTraffic(o.fraudInvalidTraffic);
    checkDoubleVerifyVideoViewability(o.videoViewability);
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

core.List<core.String> buildUnnamed4612() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4612(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4613() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4613(core.List<core.String> o) {
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
    o.avoidedHighSeverityCategories = buildUnnamed4612();
    o.avoidedMediumSeverityCategories = buildUnnamed4613();
  }
  buildCounterDoubleVerifyBrandSafetyCategories--;
  return o;
}

void checkDoubleVerifyBrandSafetyCategories(
    api.DoubleVerifyBrandSafetyCategories o) {
  buildCounterDoubleVerifyBrandSafetyCategories++;
  if (buildCounterDoubleVerifyBrandSafetyCategories < 3) {
    unittest.expect(o.avoidUnknownBrandSafetyCategory, unittest.isTrue);
    checkUnnamed4612(o.avoidedHighSeverityCategories);
    checkUnnamed4613(o.avoidedMediumSeverityCategories);
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

core.List<api.ExchangeConfigEnabledExchange> buildUnnamed4614() {
  var o = <api.ExchangeConfigEnabledExchange>[];
  o.add(buildExchangeConfigEnabledExchange());
  o.add(buildExchangeConfigEnabledExchange());
  return o;
}

void checkUnnamed4614(core.List<api.ExchangeConfigEnabledExchange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExchangeConfigEnabledExchange(o[0]);
  checkExchangeConfigEnabledExchange(o[1]);
}

core.int buildCounterExchangeConfig = 0;
api.ExchangeConfig buildExchangeConfig() {
  var o = api.ExchangeConfig();
  buildCounterExchangeConfig++;
  if (buildCounterExchangeConfig < 3) {
    o.enabledExchanges = buildUnnamed4614();
  }
  buildCounterExchangeConfig--;
  return o;
}

void checkExchangeConfig(api.ExchangeConfig o) {
  buildCounterExchangeConfig++;
  if (buildCounterExchangeConfig < 3) {
    checkUnnamed4614(o.enabledExchanges);
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

core.List<api.FirstAndThirdPartyAudienceTargetingSetting> buildUnnamed4615() {
  var o = <api.FirstAndThirdPartyAudienceTargetingSetting>[];
  o.add(buildFirstAndThirdPartyAudienceTargetingSetting());
  o.add(buildFirstAndThirdPartyAudienceTargetingSetting());
  return o;
}

void checkUnnamed4615(
    core.List<api.FirstAndThirdPartyAudienceTargetingSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirstAndThirdPartyAudienceTargetingSetting(o[0]);
  checkFirstAndThirdPartyAudienceTargetingSetting(o[1]);
}

core.int buildCounterFirstAndThirdPartyAudienceGroup = 0;
api.FirstAndThirdPartyAudienceGroup buildFirstAndThirdPartyAudienceGroup() {
  var o = api.FirstAndThirdPartyAudienceGroup();
  buildCounterFirstAndThirdPartyAudienceGroup++;
  if (buildCounterFirstAndThirdPartyAudienceGroup < 3) {
    o.settings = buildUnnamed4615();
  }
  buildCounterFirstAndThirdPartyAudienceGroup--;
  return o;
}

void checkFirstAndThirdPartyAudienceGroup(
    api.FirstAndThirdPartyAudienceGroup o) {
  buildCounterFirstAndThirdPartyAudienceGroup++;
  if (buildCounterFirstAndThirdPartyAudienceGroup < 3) {
    checkUnnamed4615(o.settings);
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

core.Map<core.String, core.Object> buildUnnamed4616() {
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

void checkUnnamed4616(core.Map<core.String, core.Object> o) {
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
    o.customVariables = buildUnnamed4616();
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
    checkActiveViewVideoViewabilityMetricConfig(o.activeViewConfig);
    checkUnnamed4616(o.customVariables);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.floodlightGroupId, unittest.equals('foo'));
    checkLookbackWindow(o.lookbackWindow);
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

core.List<api.GoogleAudienceTargetingSetting> buildUnnamed4617() {
  var o = <api.GoogleAudienceTargetingSetting>[];
  o.add(buildGoogleAudienceTargetingSetting());
  o.add(buildGoogleAudienceTargetingSetting());
  return o;
}

void checkUnnamed4617(core.List<api.GoogleAudienceTargetingSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAudienceTargetingSetting(o[0]);
  checkGoogleAudienceTargetingSetting(o[1]);
}

core.int buildCounterGoogleAudienceGroup = 0;
api.GoogleAudienceGroup buildGoogleAudienceGroup() {
  var o = api.GoogleAudienceGroup();
  buildCounterGoogleAudienceGroup++;
  if (buildCounterGoogleAudienceGroup < 3) {
    o.settings = buildUnnamed4617();
  }
  buildCounterGoogleAudienceGroup--;
  return o;
}

void checkGoogleAudienceGroup(api.GoogleAudienceGroup o) {
  buildCounterGoogleAudienceGroup++;
  if (buildCounterGoogleAudienceGroup < 3) {
    checkUnnamed4617(o.settings);
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

core.List<core.String> buildUnnamed4618() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4618(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4619() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4619(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4620() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4620(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4621() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4621(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4622() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4622(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4623() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4623(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIdFilter = 0;
api.IdFilter buildIdFilter() {
  var o = api.IdFilter();
  buildCounterIdFilter++;
  if (buildCounterIdFilter < 3) {
    o.adGroupAdIds = buildUnnamed4618();
    o.adGroupIds = buildUnnamed4619();
    o.campaignIds = buildUnnamed4620();
    o.insertionOrderIds = buildUnnamed4621();
    o.lineItemIds = buildUnnamed4622();
    o.mediaProductIds = buildUnnamed4623();
  }
  buildCounterIdFilter--;
  return o;
}

void checkIdFilter(api.IdFilter o) {
  buildCounterIdFilter++;
  if (buildCounterIdFilter < 3) {
    checkUnnamed4618(o.adGroupAdIds);
    checkUnnamed4619(o.adGroupIds);
    checkUnnamed4620(o.campaignIds);
    checkUnnamed4621(o.insertionOrderIds);
    checkUnnamed4622(o.lineItemIds);
    checkUnnamed4623(o.mediaProductIds);
  }
  buildCounterIdFilter--;
}

core.List<api.PartnerCost> buildUnnamed4624() {
  var o = <api.PartnerCost>[];
  o.add(buildPartnerCost());
  o.add(buildPartnerCost());
  return o;
}

void checkUnnamed4624(core.List<api.PartnerCost> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerCost(o[0]);
  checkPartnerCost(o[1]);
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
    o.integrationDetails = buildIntegrationDetails();
    o.name = 'foo';
    o.pacing = buildPacing();
    o.partnerCosts = buildUnnamed4624();
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
    checkBiddingStrategy(o.bidStrategy);
    checkInsertionOrderBudget(o.budget);
    unittest.expect(o.campaignId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    checkFrequencyCap(o.frequencyCap);
    unittest.expect(o.insertionOrderId, unittest.equals('foo'));
    checkIntegrationDetails(o.integrationDetails);
    unittest.expect(o.name, unittest.equals('foo'));
    checkPacing(o.pacing);
    checkUnnamed4624(o.partnerCosts);
    checkPerformanceGoal(o.performanceGoal);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterInsertionOrder--;
}

core.List<api.InsertionOrderBudgetSegment> buildUnnamed4625() {
  var o = <api.InsertionOrderBudgetSegment>[];
  o.add(buildInsertionOrderBudgetSegment());
  o.add(buildInsertionOrderBudgetSegment());
  return o;
}

void checkUnnamed4625(core.List<api.InsertionOrderBudgetSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInsertionOrderBudgetSegment(o[0]);
  checkInsertionOrderBudgetSegment(o[1]);
}

core.int buildCounterInsertionOrderBudget = 0;
api.InsertionOrderBudget buildInsertionOrderBudget() {
  var o = api.InsertionOrderBudget();
  buildCounterInsertionOrderBudget++;
  if (buildCounterInsertionOrderBudget < 3) {
    o.automationType = 'foo';
    o.budgetSegments = buildUnnamed4625();
    o.budgetUnit = 'foo';
  }
  buildCounterInsertionOrderBudget--;
  return o;
}

void checkInsertionOrderBudget(api.InsertionOrderBudget o) {
  buildCounterInsertionOrderBudget++;
  if (buildCounterInsertionOrderBudget < 3) {
    unittest.expect(o.automationType, unittest.equals('foo'));
    checkUnnamed4625(o.budgetSegments);
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
    checkDateRange(o.dateRange);
    unittest.expect(o.description, unittest.equals('foo'));
  }
  buildCounterInsertionOrderBudgetSegment--;
}

core.int buildCounterIntegralAdScience = 0;
api.IntegralAdScience buildIntegralAdScience() {
  var o = api.IntegralAdScience();
  buildCounterIntegralAdScience++;
  if (buildCounterIntegralAdScience < 3) {
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

core.List<api.CreativeConfig> buildUnnamed4626() {
  var o = <api.CreativeConfig>[];
  o.add(buildCreativeConfig());
  o.add(buildCreativeConfig());
  return o;
}

void checkUnnamed4626(core.List<api.CreativeConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeConfig(o[0]);
  checkCreativeConfig(o[1]);
}

core.int buildCounterInventorySource = 0;
api.InventorySource buildInventorySource() {
  var o = api.InventorySource();
  buildCounterInventorySource++;
  if (buildCounterInventorySource < 3) {
    o.commitment = 'foo';
    o.creativeConfigs = buildUnnamed4626();
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
    checkUnnamed4626(o.creativeConfigs);
    unittest.expect(o.dealId, unittest.equals('foo'));
    unittest.expect(o.deliveryMethod, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.exchange, unittest.equals('foo'));
    unittest.expect(o.inventorySourceId, unittest.equals('foo'));
    unittest.expect(o.inventorySourceType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.publisherName, unittest.equals('foo'));
    checkRateDetails(o.rateDetails);
    checkInventorySourceStatus(o.status);
    checkTimeRange(o.timeRange);
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
    checkDimensions(o.creativeSize);
  }
  buildCounterInventorySourceDisplayCreativeConfig--;
}

core.List<core.String> buildUnnamed4627() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4627(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInventorySourceFilter = 0;
api.InventorySourceFilter buildInventorySourceFilter() {
  var o = api.InventorySourceFilter();
  buildCounterInventorySourceFilter++;
  if (buildCounterInventorySourceFilter < 3) {
    o.inventorySourceIds = buildUnnamed4627();
  }
  buildCounterInventorySourceFilter--;
  return o;
}

void checkInventorySourceFilter(api.InventorySourceFilter o) {
  buildCounterInventorySourceFilter++;
  if (buildCounterInventorySourceFilter < 3) {
    checkUnnamed4627(o.inventorySourceIds);
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

core.List<core.String> buildUnnamed4628() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4628(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4629() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4629(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.PartnerCost> buildUnnamed4630() {
  var o = <api.PartnerCost>[];
  o.add(buildPartnerCost());
  o.add(buildPartnerCost());
  return o;
}

void checkUnnamed4630(core.List<api.PartnerCost> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerCost(o[0]);
  checkPartnerCost(o[1]);
}

core.List<core.String> buildUnnamed4631() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4631(core.List<core.String> o) {
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
    o.creativeIds = buildUnnamed4628();
    o.displayName = 'foo';
    o.entityStatus = 'foo';
    o.flight = buildLineItemFlight();
    o.frequencyCap = buildFrequencyCap();
    o.insertionOrderId = 'foo';
    o.integrationDetails = buildIntegrationDetails();
    o.inventorySourceIds = buildUnnamed4629();
    o.lineItemId = 'foo';
    o.lineItemType = 'foo';
    o.name = 'foo';
    o.pacing = buildPacing();
    o.partnerCosts = buildUnnamed4630();
    o.partnerRevenueModel = buildPartnerRevenueModel();
    o.updateTime = 'foo';
    o.warningMessages = buildUnnamed4631();
  }
  buildCounterLineItem--;
  return o;
}

void checkLineItem(api.LineItem o) {
  buildCounterLineItem++;
  if (buildCounterLineItem < 3) {
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkBiddingStrategy(o.bidStrategy);
    checkLineItemBudget(o.budget);
    unittest.expect(o.campaignId, unittest.equals('foo'));
    checkConversionCountingConfig(o.conversionCounting);
    checkUnnamed4628(o.creativeIds);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    checkLineItemFlight(o.flight);
    checkFrequencyCap(o.frequencyCap);
    unittest.expect(o.insertionOrderId, unittest.equals('foo'));
    checkIntegrationDetails(o.integrationDetails);
    checkUnnamed4629(o.inventorySourceIds);
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.lineItemType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkPacing(o.pacing);
    checkUnnamed4630(o.partnerCosts);
    checkPartnerRevenueModel(o.partnerRevenueModel);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    checkUnnamed4631(o.warningMessages);
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
  }
  buildCounterLineItemFlight--;
  return o;
}

void checkLineItemFlight(api.LineItemFlight o) {
  buildCounterLineItemFlight++;
  if (buildCounterLineItemFlight < 3) {
    checkDateRange(o.dateRange);
    unittest.expect(o.flightDateType, unittest.equals('foo'));
  }
  buildCounterLineItemFlight--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4632() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4632(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterListAdvertiserAssignedTargetingOptionsResponse = 0;
api.ListAdvertiserAssignedTargetingOptionsResponse
    buildListAdvertiserAssignedTargetingOptionsResponse() {
  var o = api.ListAdvertiserAssignedTargetingOptionsResponse();
  buildCounterListAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterListAdvertiserAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed4632();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdvertiserAssignedTargetingOptionsResponse--;
  return o;
}

void checkListAdvertiserAssignedTargetingOptionsResponse(
    api.ListAdvertiserAssignedTargetingOptionsResponse o) {
  buildCounterListAdvertiserAssignedTargetingOptionsResponse++;
  if (buildCounterListAdvertiserAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4632(o.assignedTargetingOptions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAdvertiserAssignedTargetingOptionsResponse--;
}

core.List<api.Advertiser> buildUnnamed4633() {
  var o = <api.Advertiser>[];
  o.add(buildAdvertiser());
  o.add(buildAdvertiser());
  return o;
}

void checkUnnamed4633(core.List<api.Advertiser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdvertiser(o[0]);
  checkAdvertiser(o[1]);
}

core.int buildCounterListAdvertisersResponse = 0;
api.ListAdvertisersResponse buildListAdvertisersResponse() {
  var o = api.ListAdvertisersResponse();
  buildCounterListAdvertisersResponse++;
  if (buildCounterListAdvertisersResponse < 3) {
    o.advertisers = buildUnnamed4633();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdvertisersResponse--;
  return o;
}

void checkListAdvertisersResponse(api.ListAdvertisersResponse o) {
  buildCounterListAdvertisersResponse++;
  if (buildCounterListAdvertisersResponse < 3) {
    checkUnnamed4633(o.advertisers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAdvertisersResponse--;
}

core.List<api.AssignedInventorySource> buildUnnamed4634() {
  var o = <api.AssignedInventorySource>[];
  o.add(buildAssignedInventorySource());
  o.add(buildAssignedInventorySource());
  return o;
}

void checkUnnamed4634(core.List<api.AssignedInventorySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedInventorySource(o[0]);
  checkAssignedInventorySource(o[1]);
}

core.int buildCounterListAssignedInventorySourcesResponse = 0;
api.ListAssignedInventorySourcesResponse
    buildListAssignedInventorySourcesResponse() {
  var o = api.ListAssignedInventorySourcesResponse();
  buildCounterListAssignedInventorySourcesResponse++;
  if (buildCounterListAssignedInventorySourcesResponse < 3) {
    o.assignedInventorySources = buildUnnamed4634();
    o.nextPageToken = 'foo';
  }
  buildCounterListAssignedInventorySourcesResponse--;
  return o;
}

void checkListAssignedInventorySourcesResponse(
    api.ListAssignedInventorySourcesResponse o) {
  buildCounterListAssignedInventorySourcesResponse++;
  if (buildCounterListAssignedInventorySourcesResponse < 3) {
    checkUnnamed4634(o.assignedInventorySources);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAssignedInventorySourcesResponse--;
}

core.List<api.AssignedLocation> buildUnnamed4635() {
  var o = <api.AssignedLocation>[];
  o.add(buildAssignedLocation());
  o.add(buildAssignedLocation());
  return o;
}

void checkUnnamed4635(core.List<api.AssignedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedLocation(o[0]);
  checkAssignedLocation(o[1]);
}

core.int buildCounterListAssignedLocationsResponse = 0;
api.ListAssignedLocationsResponse buildListAssignedLocationsResponse() {
  var o = api.ListAssignedLocationsResponse();
  buildCounterListAssignedLocationsResponse++;
  if (buildCounterListAssignedLocationsResponse < 3) {
    o.assignedLocations = buildUnnamed4635();
    o.nextPageToken = 'foo';
  }
  buildCounterListAssignedLocationsResponse--;
  return o;
}

void checkListAssignedLocationsResponse(api.ListAssignedLocationsResponse o) {
  buildCounterListAssignedLocationsResponse++;
  if (buildCounterListAssignedLocationsResponse < 3) {
    checkUnnamed4635(o.assignedLocations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAssignedLocationsResponse--;
}

core.List<api.Campaign> buildUnnamed4636() {
  var o = <api.Campaign>[];
  o.add(buildCampaign());
  o.add(buildCampaign());
  return o;
}

void checkUnnamed4636(core.List<api.Campaign> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCampaign(o[0]);
  checkCampaign(o[1]);
}

core.int buildCounterListCampaignsResponse = 0;
api.ListCampaignsResponse buildListCampaignsResponse() {
  var o = api.ListCampaignsResponse();
  buildCounterListCampaignsResponse++;
  if (buildCounterListCampaignsResponse < 3) {
    o.campaigns = buildUnnamed4636();
    o.nextPageToken = 'foo';
  }
  buildCounterListCampaignsResponse--;
  return o;
}

void checkListCampaignsResponse(api.ListCampaignsResponse o) {
  buildCounterListCampaignsResponse++;
  if (buildCounterListCampaignsResponse < 3) {
    checkUnnamed4636(o.campaigns);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCampaignsResponse--;
}

core.List<api.Channel> buildUnnamed4637() {
  var o = <api.Channel>[];
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

void checkUnnamed4637(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

core.int buildCounterListChannelsResponse = 0;
api.ListChannelsResponse buildListChannelsResponse() {
  var o = api.ListChannelsResponse();
  buildCounterListChannelsResponse++;
  if (buildCounterListChannelsResponse < 3) {
    o.channels = buildUnnamed4637();
    o.nextPageToken = 'foo';
  }
  buildCounterListChannelsResponse--;
  return o;
}

void checkListChannelsResponse(api.ListChannelsResponse o) {
  buildCounterListChannelsResponse++;
  if (buildCounterListChannelsResponse < 3) {
    checkUnnamed4637(o.channels);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListChannelsResponse--;
}

core.List<api.CombinedAudience> buildUnnamed4638() {
  var o = <api.CombinedAudience>[];
  o.add(buildCombinedAudience());
  o.add(buildCombinedAudience());
  return o;
}

void checkUnnamed4638(core.List<api.CombinedAudience> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCombinedAudience(o[0]);
  checkCombinedAudience(o[1]);
}

core.int buildCounterListCombinedAudiencesResponse = 0;
api.ListCombinedAudiencesResponse buildListCombinedAudiencesResponse() {
  var o = api.ListCombinedAudiencesResponse();
  buildCounterListCombinedAudiencesResponse++;
  if (buildCounterListCombinedAudiencesResponse < 3) {
    o.combinedAudiences = buildUnnamed4638();
    o.nextPageToken = 'foo';
  }
  buildCounterListCombinedAudiencesResponse--;
  return o;
}

void checkListCombinedAudiencesResponse(api.ListCombinedAudiencesResponse o) {
  buildCounterListCombinedAudiencesResponse++;
  if (buildCounterListCombinedAudiencesResponse < 3) {
    checkUnnamed4638(o.combinedAudiences);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCombinedAudiencesResponse--;
}

core.List<api.Creative> buildUnnamed4639() {
  var o = <api.Creative>[];
  o.add(buildCreative());
  o.add(buildCreative());
  return o;
}

void checkUnnamed4639(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterListCreativesResponse = 0;
api.ListCreativesResponse buildListCreativesResponse() {
  var o = api.ListCreativesResponse();
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    o.creatives = buildUnnamed4639();
    o.nextPageToken = 'foo';
  }
  buildCounterListCreativesResponse--;
  return o;
}

void checkListCreativesResponse(api.ListCreativesResponse o) {
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    checkUnnamed4639(o.creatives);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCreativesResponse--;
}

core.List<api.CustomBiddingAlgorithm> buildUnnamed4640() {
  var o = <api.CustomBiddingAlgorithm>[];
  o.add(buildCustomBiddingAlgorithm());
  o.add(buildCustomBiddingAlgorithm());
  return o;
}

void checkUnnamed4640(core.List<api.CustomBiddingAlgorithm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomBiddingAlgorithm(o[0]);
  checkCustomBiddingAlgorithm(o[1]);
}

core.int buildCounterListCustomBiddingAlgorithmsResponse = 0;
api.ListCustomBiddingAlgorithmsResponse
    buildListCustomBiddingAlgorithmsResponse() {
  var o = api.ListCustomBiddingAlgorithmsResponse();
  buildCounterListCustomBiddingAlgorithmsResponse++;
  if (buildCounterListCustomBiddingAlgorithmsResponse < 3) {
    o.customBiddingAlgorithms = buildUnnamed4640();
    o.nextPageToken = 'foo';
  }
  buildCounterListCustomBiddingAlgorithmsResponse--;
  return o;
}

void checkListCustomBiddingAlgorithmsResponse(
    api.ListCustomBiddingAlgorithmsResponse o) {
  buildCounterListCustomBiddingAlgorithmsResponse++;
  if (buildCounterListCustomBiddingAlgorithmsResponse < 3) {
    checkUnnamed4640(o.customBiddingAlgorithms);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCustomBiddingAlgorithmsResponse--;
}

core.List<api.CustomList> buildUnnamed4641() {
  var o = <api.CustomList>[];
  o.add(buildCustomList());
  o.add(buildCustomList());
  return o;
}

void checkUnnamed4641(core.List<api.CustomList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomList(o[0]);
  checkCustomList(o[1]);
}

core.int buildCounterListCustomListsResponse = 0;
api.ListCustomListsResponse buildListCustomListsResponse() {
  var o = api.ListCustomListsResponse();
  buildCounterListCustomListsResponse++;
  if (buildCounterListCustomListsResponse < 3) {
    o.customLists = buildUnnamed4641();
    o.nextPageToken = 'foo';
  }
  buildCounterListCustomListsResponse--;
  return o;
}

void checkListCustomListsResponse(api.ListCustomListsResponse o) {
  buildCounterListCustomListsResponse++;
  if (buildCounterListCustomListsResponse < 3) {
    checkUnnamed4641(o.customLists);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCustomListsResponse--;
}

core.List<api.FirstAndThirdPartyAudience> buildUnnamed4642() {
  var o = <api.FirstAndThirdPartyAudience>[];
  o.add(buildFirstAndThirdPartyAudience());
  o.add(buildFirstAndThirdPartyAudience());
  return o;
}

void checkUnnamed4642(core.List<api.FirstAndThirdPartyAudience> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirstAndThirdPartyAudience(o[0]);
  checkFirstAndThirdPartyAudience(o[1]);
}

core.int buildCounterListFirstAndThirdPartyAudiencesResponse = 0;
api.ListFirstAndThirdPartyAudiencesResponse
    buildListFirstAndThirdPartyAudiencesResponse() {
  var o = api.ListFirstAndThirdPartyAudiencesResponse();
  buildCounterListFirstAndThirdPartyAudiencesResponse++;
  if (buildCounterListFirstAndThirdPartyAudiencesResponse < 3) {
    o.firstAndThirdPartyAudiences = buildUnnamed4642();
    o.nextPageToken = 'foo';
  }
  buildCounterListFirstAndThirdPartyAudiencesResponse--;
  return o;
}

void checkListFirstAndThirdPartyAudiencesResponse(
    api.ListFirstAndThirdPartyAudiencesResponse o) {
  buildCounterListFirstAndThirdPartyAudiencesResponse++;
  if (buildCounterListFirstAndThirdPartyAudiencesResponse < 3) {
    checkUnnamed4642(o.firstAndThirdPartyAudiences);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListFirstAndThirdPartyAudiencesResponse--;
}

core.List<api.GoogleAudience> buildUnnamed4643() {
  var o = <api.GoogleAudience>[];
  o.add(buildGoogleAudience());
  o.add(buildGoogleAudience());
  return o;
}

void checkUnnamed4643(core.List<api.GoogleAudience> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAudience(o[0]);
  checkGoogleAudience(o[1]);
}

core.int buildCounterListGoogleAudiencesResponse = 0;
api.ListGoogleAudiencesResponse buildListGoogleAudiencesResponse() {
  var o = api.ListGoogleAudiencesResponse();
  buildCounterListGoogleAudiencesResponse++;
  if (buildCounterListGoogleAudiencesResponse < 3) {
    o.googleAudiences = buildUnnamed4643();
    o.nextPageToken = 'foo';
  }
  buildCounterListGoogleAudiencesResponse--;
  return o;
}

void checkListGoogleAudiencesResponse(api.ListGoogleAudiencesResponse o) {
  buildCounterListGoogleAudiencesResponse++;
  if (buildCounterListGoogleAudiencesResponse < 3) {
    checkUnnamed4643(o.googleAudiences);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGoogleAudiencesResponse--;
}

core.List<api.InsertionOrder> buildUnnamed4644() {
  var o = <api.InsertionOrder>[];
  o.add(buildInsertionOrder());
  o.add(buildInsertionOrder());
  return o;
}

void checkUnnamed4644(core.List<api.InsertionOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInsertionOrder(o[0]);
  checkInsertionOrder(o[1]);
}

core.int buildCounterListInsertionOrdersResponse = 0;
api.ListInsertionOrdersResponse buildListInsertionOrdersResponse() {
  var o = api.ListInsertionOrdersResponse();
  buildCounterListInsertionOrdersResponse++;
  if (buildCounterListInsertionOrdersResponse < 3) {
    o.insertionOrders = buildUnnamed4644();
    o.nextPageToken = 'foo';
  }
  buildCounterListInsertionOrdersResponse--;
  return o;
}

void checkListInsertionOrdersResponse(api.ListInsertionOrdersResponse o) {
  buildCounterListInsertionOrdersResponse++;
  if (buildCounterListInsertionOrdersResponse < 3) {
    checkUnnamed4644(o.insertionOrders);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInsertionOrdersResponse--;
}

core.List<api.InventorySourceGroup> buildUnnamed4645() {
  var o = <api.InventorySourceGroup>[];
  o.add(buildInventorySourceGroup());
  o.add(buildInventorySourceGroup());
  return o;
}

void checkUnnamed4645(core.List<api.InventorySourceGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventorySourceGroup(o[0]);
  checkInventorySourceGroup(o[1]);
}

core.int buildCounterListInventorySourceGroupsResponse = 0;
api.ListInventorySourceGroupsResponse buildListInventorySourceGroupsResponse() {
  var o = api.ListInventorySourceGroupsResponse();
  buildCounterListInventorySourceGroupsResponse++;
  if (buildCounterListInventorySourceGroupsResponse < 3) {
    o.inventorySourceGroups = buildUnnamed4645();
    o.nextPageToken = 'foo';
  }
  buildCounterListInventorySourceGroupsResponse--;
  return o;
}

void checkListInventorySourceGroupsResponse(
    api.ListInventorySourceGroupsResponse o) {
  buildCounterListInventorySourceGroupsResponse++;
  if (buildCounterListInventorySourceGroupsResponse < 3) {
    checkUnnamed4645(o.inventorySourceGroups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInventorySourceGroupsResponse--;
}

core.List<api.InventorySource> buildUnnamed4646() {
  var o = <api.InventorySource>[];
  o.add(buildInventorySource());
  o.add(buildInventorySource());
  return o;
}

void checkUnnamed4646(core.List<api.InventorySource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventorySource(o[0]);
  checkInventorySource(o[1]);
}

core.int buildCounterListInventorySourcesResponse = 0;
api.ListInventorySourcesResponse buildListInventorySourcesResponse() {
  var o = api.ListInventorySourcesResponse();
  buildCounterListInventorySourcesResponse++;
  if (buildCounterListInventorySourcesResponse < 3) {
    o.inventorySources = buildUnnamed4646();
    o.nextPageToken = 'foo';
  }
  buildCounterListInventorySourcesResponse--;
  return o;
}

void checkListInventorySourcesResponse(api.ListInventorySourcesResponse o) {
  buildCounterListInventorySourcesResponse++;
  if (buildCounterListInventorySourcesResponse < 3) {
    checkUnnamed4646(o.inventorySources);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInventorySourcesResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4647() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4647(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterListLineItemAssignedTargetingOptionsResponse = 0;
api.ListLineItemAssignedTargetingOptionsResponse
    buildListLineItemAssignedTargetingOptionsResponse() {
  var o = api.ListLineItemAssignedTargetingOptionsResponse();
  buildCounterListLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterListLineItemAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed4647();
    o.nextPageToken = 'foo';
  }
  buildCounterListLineItemAssignedTargetingOptionsResponse--;
  return o;
}

void checkListLineItemAssignedTargetingOptionsResponse(
    api.ListLineItemAssignedTargetingOptionsResponse o) {
  buildCounterListLineItemAssignedTargetingOptionsResponse++;
  if (buildCounterListLineItemAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4647(o.assignedTargetingOptions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLineItemAssignedTargetingOptionsResponse--;
}

core.List<api.LineItem> buildUnnamed4648() {
  var o = <api.LineItem>[];
  o.add(buildLineItem());
  o.add(buildLineItem());
  return o;
}

void checkUnnamed4648(core.List<api.LineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLineItem(o[0]);
  checkLineItem(o[1]);
}

core.int buildCounterListLineItemsResponse = 0;
api.ListLineItemsResponse buildListLineItemsResponse() {
  var o = api.ListLineItemsResponse();
  buildCounterListLineItemsResponse++;
  if (buildCounterListLineItemsResponse < 3) {
    o.lineItems = buildUnnamed4648();
    o.nextPageToken = 'foo';
  }
  buildCounterListLineItemsResponse--;
  return o;
}

void checkListLineItemsResponse(api.ListLineItemsResponse o) {
  buildCounterListLineItemsResponse++;
  if (buildCounterListLineItemsResponse < 3) {
    checkUnnamed4648(o.lineItems);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLineItemsResponse--;
}

core.List<api.LocationList> buildUnnamed4649() {
  var o = <api.LocationList>[];
  o.add(buildLocationList());
  o.add(buildLocationList());
  return o;
}

void checkUnnamed4649(core.List<api.LocationList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationList(o[0]);
  checkLocationList(o[1]);
}

core.int buildCounterListLocationListsResponse = 0;
api.ListLocationListsResponse buildListLocationListsResponse() {
  var o = api.ListLocationListsResponse();
  buildCounterListLocationListsResponse++;
  if (buildCounterListLocationListsResponse < 3) {
    o.locationLists = buildUnnamed4649();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationListsResponse--;
  return o;
}

void checkListLocationListsResponse(api.ListLocationListsResponse o) {
  buildCounterListLocationListsResponse++;
  if (buildCounterListLocationListsResponse < 3) {
    checkUnnamed4649(o.locationLists);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationListsResponse--;
}

core.List<api.NegativeKeywordList> buildUnnamed4650() {
  var o = <api.NegativeKeywordList>[];
  o.add(buildNegativeKeywordList());
  o.add(buildNegativeKeywordList());
  return o;
}

void checkUnnamed4650(core.List<api.NegativeKeywordList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeywordList(o[0]);
  checkNegativeKeywordList(o[1]);
}

core.int buildCounterListNegativeKeywordListsResponse = 0;
api.ListNegativeKeywordListsResponse buildListNegativeKeywordListsResponse() {
  var o = api.ListNegativeKeywordListsResponse();
  buildCounterListNegativeKeywordListsResponse++;
  if (buildCounterListNegativeKeywordListsResponse < 3) {
    o.negativeKeywordLists = buildUnnamed4650();
    o.nextPageToken = 'foo';
  }
  buildCounterListNegativeKeywordListsResponse--;
  return o;
}

void checkListNegativeKeywordListsResponse(
    api.ListNegativeKeywordListsResponse o) {
  buildCounterListNegativeKeywordListsResponse++;
  if (buildCounterListNegativeKeywordListsResponse < 3) {
    checkUnnamed4650(o.negativeKeywordLists);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListNegativeKeywordListsResponse--;
}

core.List<api.NegativeKeyword> buildUnnamed4651() {
  var o = <api.NegativeKeyword>[];
  o.add(buildNegativeKeyword());
  o.add(buildNegativeKeyword());
  return o;
}

void checkUnnamed4651(core.List<api.NegativeKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegativeKeyword(o[0]);
  checkNegativeKeyword(o[1]);
}

core.int buildCounterListNegativeKeywordsResponse = 0;
api.ListNegativeKeywordsResponse buildListNegativeKeywordsResponse() {
  var o = api.ListNegativeKeywordsResponse();
  buildCounterListNegativeKeywordsResponse++;
  if (buildCounterListNegativeKeywordsResponse < 3) {
    o.negativeKeywords = buildUnnamed4651();
    o.nextPageToken = 'foo';
  }
  buildCounterListNegativeKeywordsResponse--;
  return o;
}

void checkListNegativeKeywordsResponse(api.ListNegativeKeywordsResponse o) {
  buildCounterListNegativeKeywordsResponse++;
  if (buildCounterListNegativeKeywordsResponse < 3) {
    checkUnnamed4651(o.negativeKeywords);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListNegativeKeywordsResponse--;
}

core.List<api.AssignedTargetingOption> buildUnnamed4652() {
  var o = <api.AssignedTargetingOption>[];
  o.add(buildAssignedTargetingOption());
  o.add(buildAssignedTargetingOption());
  return o;
}

void checkUnnamed4652(core.List<api.AssignedTargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedTargetingOption(o[0]);
  checkAssignedTargetingOption(o[1]);
}

core.int buildCounterListPartnerAssignedTargetingOptionsResponse = 0;
api.ListPartnerAssignedTargetingOptionsResponse
    buildListPartnerAssignedTargetingOptionsResponse() {
  var o = api.ListPartnerAssignedTargetingOptionsResponse();
  buildCounterListPartnerAssignedTargetingOptionsResponse++;
  if (buildCounterListPartnerAssignedTargetingOptionsResponse < 3) {
    o.assignedTargetingOptions = buildUnnamed4652();
    o.nextPageToken = 'foo';
  }
  buildCounterListPartnerAssignedTargetingOptionsResponse--;
  return o;
}

void checkListPartnerAssignedTargetingOptionsResponse(
    api.ListPartnerAssignedTargetingOptionsResponse o) {
  buildCounterListPartnerAssignedTargetingOptionsResponse++;
  if (buildCounterListPartnerAssignedTargetingOptionsResponse < 3) {
    checkUnnamed4652(o.assignedTargetingOptions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListPartnerAssignedTargetingOptionsResponse--;
}

core.List<api.Partner> buildUnnamed4653() {
  var o = <api.Partner>[];
  o.add(buildPartner());
  o.add(buildPartner());
  return o;
}

void checkUnnamed4653(core.List<api.Partner> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartner(o[0]);
  checkPartner(o[1]);
}

core.int buildCounterListPartnersResponse = 0;
api.ListPartnersResponse buildListPartnersResponse() {
  var o = api.ListPartnersResponse();
  buildCounterListPartnersResponse++;
  if (buildCounterListPartnersResponse < 3) {
    o.nextPageToken = 'foo';
    o.partners = buildUnnamed4653();
  }
  buildCounterListPartnersResponse--;
  return o;
}

void checkListPartnersResponse(api.ListPartnersResponse o) {
  buildCounterListPartnersResponse++;
  if (buildCounterListPartnersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4653(o.partners);
  }
  buildCounterListPartnersResponse--;
}

core.List<api.Site> buildUnnamed4654() {
  var o = <api.Site>[];
  o.add(buildSite());
  o.add(buildSite());
  return o;
}

void checkUnnamed4654(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0]);
  checkSite(o[1]);
}

core.int buildCounterListSitesResponse = 0;
api.ListSitesResponse buildListSitesResponse() {
  var o = api.ListSitesResponse();
  buildCounterListSitesResponse++;
  if (buildCounterListSitesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sites = buildUnnamed4654();
  }
  buildCounterListSitesResponse--;
  return o;
}

void checkListSitesResponse(api.ListSitesResponse o) {
  buildCounterListSitesResponse++;
  if (buildCounterListSitesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4654(o.sites);
  }
  buildCounterListSitesResponse--;
}

core.List<api.TargetingOption> buildUnnamed4655() {
  var o = <api.TargetingOption>[];
  o.add(buildTargetingOption());
  o.add(buildTargetingOption());
  return o;
}

void checkUnnamed4655(core.List<api.TargetingOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingOption(o[0]);
  checkTargetingOption(o[1]);
}

core.int buildCounterListTargetingOptionsResponse = 0;
api.ListTargetingOptionsResponse buildListTargetingOptionsResponse() {
  var o = api.ListTargetingOptionsResponse();
  buildCounterListTargetingOptionsResponse++;
  if (buildCounterListTargetingOptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.targetingOptions = buildUnnamed4655();
  }
  buildCounterListTargetingOptionsResponse--;
  return o;
}

void checkListTargetingOptionsResponse(api.ListTargetingOptionsResponse o) {
  buildCounterListTargetingOptionsResponse++;
  if (buildCounterListTargetingOptionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4655(o.targetingOptions);
  }
  buildCounterListTargetingOptionsResponse--;
}

core.List<api.User> buildUnnamed4656() {
  var o = <api.User>[];
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

void checkUnnamed4656(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterListUsersResponse = 0;
api.ListUsersResponse buildListUsersResponse() {
  var o = api.ListUsersResponse();
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    o.nextPageToken = 'foo';
    o.users = buildUnnamed4656();
  }
  buildCounterListUsersResponse--;
  return o;
}

void checkListUsersResponse(api.ListUsersResponse o) {
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4656(o.users);
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
    checkDimensions(o.dimensions);
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

core.Map<core.String, core.Object> buildUnnamed4657() {
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

void checkUnnamed4657(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed4658() {
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

void checkUnnamed4658(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed4657();
    o.name = 'foo';
    o.response = buildUnnamed4658();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed4657(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4658(o.response);
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

core.List<core.String> buildUnnamed4659() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4659(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4660() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4660(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterParentEntityFilter = 0;
api.ParentEntityFilter buildParentEntityFilter() {
  var o = api.ParentEntityFilter();
  buildCounterParentEntityFilter++;
  if (buildCounterParentEntityFilter < 3) {
    o.fileType = buildUnnamed4659();
    o.filterIds = buildUnnamed4660();
    o.filterType = 'foo';
  }
  buildCounterParentEntityFilter--;
  return o;
}

void checkParentEntityFilter(api.ParentEntityFilter o) {
  buildCounterParentEntityFilter++;
  if (buildCounterParentEntityFilter < 3) {
    checkUnnamed4659(o.fileType);
    checkUnnamed4660(o.filterIds);
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
    checkPartnerAdServerConfig(o.adServerConfig);
    checkPartnerDataAccessConfig(o.dataAccessConfig);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityStatus, unittest.equals('foo'));
    checkExchangeConfig(o.exchangeConfig);
    checkPartnerGeneralConfig(o.generalConfig);
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
    checkMeasurementConfig(o.measurementConfig);
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
    checkSdfConfig(o.sdfConfig);
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
    checkMoney(o.minimumSpend);
    checkMoney(o.rate);
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

core.List<api.ExchangeReviewStatus> buildUnnamed4661() {
  var o = <api.ExchangeReviewStatus>[];
  o.add(buildExchangeReviewStatus());
  o.add(buildExchangeReviewStatus());
  return o;
}

void checkUnnamed4661(core.List<api.ExchangeReviewStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExchangeReviewStatus(o[0]);
  checkExchangeReviewStatus(o[1]);
}

core.List<api.PublisherReviewStatus> buildUnnamed4662() {
  var o = <api.PublisherReviewStatus>[];
  o.add(buildPublisherReviewStatus());
  o.add(buildPublisherReviewStatus());
  return o;
}

void checkUnnamed4662(core.List<api.PublisherReviewStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherReviewStatus(o[0]);
  checkPublisherReviewStatus(o[1]);
}

core.int buildCounterReviewStatusInfo = 0;
api.ReviewStatusInfo buildReviewStatusInfo() {
  var o = api.ReviewStatusInfo();
  buildCounterReviewStatusInfo++;
  if (buildCounterReviewStatusInfo < 3) {
    o.approvalStatus = 'foo';
    o.contentAndPolicyReviewStatus = 'foo';
    o.creativeAndLandingPageReviewStatus = 'foo';
    o.exchangeReviewStatuses = buildUnnamed4661();
    o.publisherReviewStatuses = buildUnnamed4662();
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
    checkUnnamed4661(o.exchangeReviewStatuses);
    checkUnnamed4662(o.publisherReviewStatuses);
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

core.Map<core.String, core.Object> buildUnnamed4663() {
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

void checkUnnamed4663(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed4664() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed4663());
  o.add(buildUnnamed4663());
  return o;
}

void checkUnnamed4664(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4663(o[0]);
  checkUnnamed4663(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4664();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4664(o.details);
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
    checkAgeRangeTargetingOptionDetails(o.ageRangeDetails);
    checkAppCategoryTargetingOptionDetails(o.appCategoryDetails);
    checkAuthorizedSellerStatusTargetingOptionDetails(
        o.authorizedSellerStatusDetails);
    checkBrowserTargetingOptionDetails(o.browserDetails);
    checkCarrierAndIspTargetingOptionDetails(o.carrierAndIspDetails);
    checkCategoryTargetingOptionDetails(o.categoryDetails);
    checkContentInstreamPositionTargetingOptionDetails(
        o.contentInstreamPositionDetails);
    checkContentOutstreamPositionTargetingOptionDetails(
        o.contentOutstreamPositionDetails);
    checkDeviceMakeModelTargetingOptionDetails(o.deviceMakeModelDetails);
    checkDeviceTypeTargetingOptionDetails(o.deviceTypeDetails);
    checkDigitalContentLabelTargetingOptionDetails(
        o.digitalContentLabelDetails);
    checkEnvironmentTargetingOptionDetails(o.environmentDetails);
    checkExchangeTargetingOptionDetails(o.exchangeDetails);
    checkGenderTargetingOptionDetails(o.genderDetails);
    checkGeoRegionTargetingOptionDetails(o.geoRegionDetails);
    checkHouseholdIncomeTargetingOptionDetails(o.householdIncomeDetails);
    checkLanguageTargetingOptionDetails(o.languageDetails);
    unittest.expect(o.name, unittest.equals('foo'));
    checkOnScreenPositionTargetingOptionDetails(o.onScreenPositionDetails);
    checkOperatingSystemTargetingOptionDetails(o.operatingSystemDetails);
    checkParentalStatusTargetingOptionDetails(o.parentalStatusDetails);
    checkSensitiveCategoryTargetingOptionDetails(o.sensitiveCategoryDetails);
    checkSubExchangeTargetingOptionDetails(o.subExchangeDetails);
    unittest.expect(o.targetingOptionId, unittest.equals('foo'));
    unittest.expect(o.targetingType, unittest.equals('foo'));
    checkUserRewardedContentTargetingOptionDetails(
        o.userRewardedContentDetails);
    checkVideoPlayerSizeTargetingOptionDetails(o.videoPlayerSizeDetails);
    checkViewabilityTargetingOptionDetails(o.viewabilityDetails);
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
    checkAdloox(o.adloox);
    checkDoubleVerify(o.doubleVerify);
    checkIntegralAdScience(o.integralAdScience);
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
    checkDimensions(o.dimensions);
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

core.List<api.AssignedUserRole> buildUnnamed4665() {
  var o = <api.AssignedUserRole>[];
  o.add(buildAssignedUserRole());
  o.add(buildAssignedUserRole());
  return o;
}

void checkUnnamed4665(core.List<api.AssignedUserRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssignedUserRole(o[0]);
  checkAssignedUserRole(o[1]);
}

core.int buildCounterUser = 0;
api.User buildUser() {
  var o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.assignedUserRoles = buildUnnamed4665();
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
    checkUnnamed4665(o.assignedUserRoles);
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
  unittest.group('obj-schema-ActiveViewVideoViewabilityMetricConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildActiveViewVideoViewabilityMetricConfig();
      var od = api.ActiveViewVideoViewabilityMetricConfig.fromJson(o.toJson());
      checkActiveViewVideoViewabilityMetricConfig(od);
    });
  });

  unittest.group('obj-schema-Adloox', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdloox();
      var od = api.Adloox.fromJson(o.toJson());
      checkAdloox(od);
    });
  });

  unittest.group('obj-schema-Advertiser', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiser();
      var od = api.Advertiser.fromJson(o.toJson());
      checkAdvertiser(od);
    });
  });

  unittest.group('obj-schema-AdvertiserAdServerConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserAdServerConfig();
      var od = api.AdvertiserAdServerConfig.fromJson(o.toJson());
      checkAdvertiserAdServerConfig(od);
    });
  });

  unittest.group('obj-schema-AdvertiserCreativeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserCreativeConfig();
      var od = api.AdvertiserCreativeConfig.fromJson(o.toJson());
      checkAdvertiserCreativeConfig(od);
    });
  });

  unittest.group('obj-schema-AdvertiserDataAccessConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserDataAccessConfig();
      var od = api.AdvertiserDataAccessConfig.fromJson(o.toJson());
      checkAdvertiserDataAccessConfig(od);
    });
  });

  unittest.group('obj-schema-AdvertiserGeneralConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserGeneralConfig();
      var od = api.AdvertiserGeneralConfig.fromJson(o.toJson());
      checkAdvertiserGeneralConfig(od);
    });
  });

  unittest.group('obj-schema-AdvertiserSdfConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserSdfConfig();
      var od = api.AdvertiserSdfConfig.fromJson(o.toJson());
      checkAdvertiserSdfConfig(od);
    });
  });

  unittest.group('obj-schema-AdvertiserTargetingConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserTargetingConfig();
      var od = api.AdvertiserTargetingConfig.fromJson(o.toJson());
      checkAdvertiserTargetingConfig(od);
    });
  });

  unittest.group('obj-schema-AgeRangeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAgeRangeAssignedTargetingOptionDetails();
      var od = api.AgeRangeAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkAgeRangeAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-AgeRangeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAgeRangeTargetingOptionDetails();
      var od = api.AgeRangeTargetingOptionDetails.fromJson(o.toJson());
      checkAgeRangeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-AppAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppAssignedTargetingOptionDetails();
      var od = api.AppAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkAppAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-AppCategoryAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppCategoryAssignedTargetingOptionDetails();
      var od =
          api.AppCategoryAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkAppCategoryAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-AppCategoryTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppCategoryTargetingOptionDetails();
      var od = api.AppCategoryTargetingOptionDetails.fromJson(o.toJson());
      checkAppCategoryTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-Asset', () {
    unittest.test('to-json--from-json', () {
      var o = buildAsset();
      var od = api.Asset.fromJson(o.toJson());
      checkAsset(od);
    });
  });

  unittest.group('obj-schema-AssetAssociation', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssetAssociation();
      var od = api.AssetAssociation.fromJson(o.toJson());
      checkAssetAssociation(od);
    });
  });

  unittest.group('obj-schema-AssignedInventorySource', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssignedInventorySource();
      var od = api.AssignedInventorySource.fromJson(o.toJson());
      checkAssignedInventorySource(od);
    });
  });

  unittest.group('obj-schema-AssignedLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssignedLocation();
      var od = api.AssignedLocation.fromJson(o.toJson());
      checkAssignedLocation(od);
    });
  });

  unittest.group('obj-schema-AssignedTargetingOption', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssignedTargetingOption();
      var od = api.AssignedTargetingOption.fromJson(o.toJson());
      checkAssignedTargetingOption(od);
    });
  });

  unittest.group('obj-schema-AssignedUserRole', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssignedUserRole();
      var od = api.AssignedUserRole.fromJson(o.toJson());
      checkAssignedUserRole(od);
    });
  });

  unittest.group('obj-schema-AudienceGroupAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAudienceGroupAssignedTargetingOptionDetails();
      var od =
          api.AudienceGroupAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkAudienceGroupAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-AudioVideoOffset', () {
    unittest.test('to-json--from-json', () {
      var o = buildAudioVideoOffset();
      var od = api.AudioVideoOffset.fromJson(o.toJson());
      checkAudioVideoOffset(od);
    });
  });

  unittest.group('obj-schema-AuditAdvertiserResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditAdvertiserResponse();
      var od = api.AuditAdvertiserResponse.fromJson(o.toJson());
      checkAuditAdvertiserResponse(od);
    });
  });

  unittest.group(
      'obj-schema-AuthorizedSellerStatusAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthorizedSellerStatusAssignedTargetingOptionDetails();
      var od =
          api.AuthorizedSellerStatusAssignedTargetingOptionDetails.fromJson(
              o.toJson());
      checkAuthorizedSellerStatusAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-AuthorizedSellerStatusTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthorizedSellerStatusTargetingOptionDetails();
      var od =
          api.AuthorizedSellerStatusTargetingOptionDetails.fromJson(o.toJson());
      checkAuthorizedSellerStatusTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-BiddingStrategy', () {
    unittest.test('to-json--from-json', () {
      var o = buildBiddingStrategy();
      var od = api.BiddingStrategy.fromJson(o.toJson());
      checkBiddingStrategy(od);
    });
  });

  unittest.group('obj-schema-BrowserAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildBrowserAssignedTargetingOptionDetails();
      var od = api.BrowserAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkBrowserAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-BrowserTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildBrowserTargetingOptionDetails();
      var od = api.BrowserTargetingOptionDetails.fromJson(o.toJson());
      checkBrowserTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-BulkEditAdvertiserAssignedTargetingOptionsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAdvertiserAssignedTargetingOptionsRequest();
      var od = api.BulkEditAdvertiserAssignedTargetingOptionsRequest.fromJson(
          o.toJson());
      checkBulkEditAdvertiserAssignedTargetingOptionsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-BulkEditAdvertiserAssignedTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAdvertiserAssignedTargetingOptionsResponse();
      var od = api.BulkEditAdvertiserAssignedTargetingOptionsResponse.fromJson(
          o.toJson());
      checkBulkEditAdvertiserAssignedTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedInventorySourcesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAssignedInventorySourcesRequest();
      var od = api.BulkEditAssignedInventorySourcesRequest.fromJson(o.toJson());
      checkBulkEditAssignedInventorySourcesRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedInventorySourcesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAssignedInventorySourcesResponse();
      var od =
          api.BulkEditAssignedInventorySourcesResponse.fromJson(o.toJson());
      checkBulkEditAssignedInventorySourcesResponse(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedLocationsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAssignedLocationsRequest();
      var od = api.BulkEditAssignedLocationsRequest.fromJson(o.toJson());
      checkBulkEditAssignedLocationsRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAssignedLocationsResponse();
      var od = api.BulkEditAssignedLocationsResponse.fromJson(o.toJson());
      checkBulkEditAssignedLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedUserRolesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAssignedUserRolesRequest();
      var od = api.BulkEditAssignedUserRolesRequest.fromJson(o.toJson());
      checkBulkEditAssignedUserRolesRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditAssignedUserRolesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditAssignedUserRolesResponse();
      var od = api.BulkEditAssignedUserRolesResponse.fromJson(o.toJson());
      checkBulkEditAssignedUserRolesResponse(od);
    });
  });

  unittest.group('obj-schema-BulkEditLineItemAssignedTargetingOptionsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditLineItemAssignedTargetingOptionsRequest();
      var od = api.BulkEditLineItemAssignedTargetingOptionsRequest.fromJson(
          o.toJson());
      checkBulkEditLineItemAssignedTargetingOptionsRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditLineItemAssignedTargetingOptionsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditLineItemAssignedTargetingOptionsResponse();
      var od = api.BulkEditLineItemAssignedTargetingOptionsResponse.fromJson(
          o.toJson());
      checkBulkEditLineItemAssignedTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-BulkEditNegativeKeywordsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditNegativeKeywordsRequest();
      var od = api.BulkEditNegativeKeywordsRequest.fromJson(o.toJson());
      checkBulkEditNegativeKeywordsRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditNegativeKeywordsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditNegativeKeywordsResponse();
      var od = api.BulkEditNegativeKeywordsResponse.fromJson(o.toJson());
      checkBulkEditNegativeKeywordsResponse(od);
    });
  });

  unittest.group('obj-schema-BulkEditPartnerAssignedTargetingOptionsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditPartnerAssignedTargetingOptionsRequest();
      var od = api.BulkEditPartnerAssignedTargetingOptionsRequest.fromJson(
          o.toJson());
      checkBulkEditPartnerAssignedTargetingOptionsRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditPartnerAssignedTargetingOptionsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditPartnerAssignedTargetingOptionsResponse();
      var od = api.BulkEditPartnerAssignedTargetingOptionsResponse.fromJson(
          o.toJson());
      checkBulkEditPartnerAssignedTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-BulkEditSitesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditSitesRequest();
      var od = api.BulkEditSitesRequest.fromJson(o.toJson());
      checkBulkEditSitesRequest(od);
    });
  });

  unittest.group('obj-schema-BulkEditSitesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkEditSitesResponse();
      var od = api.BulkEditSitesResponse.fromJson(o.toJson());
      checkBulkEditSitesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-BulkListAdvertiserAssignedTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkListAdvertiserAssignedTargetingOptionsResponse();
      var od = api.BulkListAdvertiserAssignedTargetingOptionsResponse.fromJson(
          o.toJson());
      checkBulkListAdvertiserAssignedTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-BulkListLineItemAssignedTargetingOptionsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBulkListLineItemAssignedTargetingOptionsResponse();
      var od = api.BulkListLineItemAssignedTargetingOptionsResponse.fromJson(
          o.toJson());
      checkBulkListLineItemAssignedTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-Campaign', () {
    unittest.test('to-json--from-json', () {
      var o = buildCampaign();
      var od = api.Campaign.fromJson(o.toJson());
      checkCampaign(od);
    });
  });

  unittest.group('obj-schema-CampaignFlight', () {
    unittest.test('to-json--from-json', () {
      var o = buildCampaignFlight();
      var od = api.CampaignFlight.fromJson(o.toJson());
      checkCampaignFlight(od);
    });
  });

  unittest.group('obj-schema-CampaignGoal', () {
    unittest.test('to-json--from-json', () {
      var o = buildCampaignGoal();
      var od = api.CampaignGoal.fromJson(o.toJson());
      checkCampaignGoal(od);
    });
  });

  unittest.group('obj-schema-CarrierAndIspAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildCarrierAndIspAssignedTargetingOptionDetails();
      var od =
          api.CarrierAndIspAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkCarrierAndIspAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-CarrierAndIspTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildCarrierAndIspTargetingOptionDetails();
      var od = api.CarrierAndIspTargetingOptionDetails.fromJson(o.toJson());
      checkCarrierAndIspTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-CategoryAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildCategoryAssignedTargetingOptionDetails();
      var od = api.CategoryAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkCategoryAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-CategoryTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildCategoryTargetingOptionDetails();
      var od = api.CategoryTargetingOptionDetails.fromJson(o.toJson());
      checkCategoryTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannel();
      var od = api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-ChannelAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelAssignedTargetingOptionDetails();
      var od = api.ChannelAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkChannelAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-CmHybridConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildCmHybridConfig();
      var od = api.CmHybridConfig.fromJson(o.toJson());
      checkCmHybridConfig(od);
    });
  });

  unittest.group('obj-schema-CmTrackingAd', () {
    unittest.test('to-json--from-json', () {
      var o = buildCmTrackingAd();
      var od = api.CmTrackingAd.fromJson(o.toJson());
      checkCmTrackingAd(od);
    });
  });

  unittest.group('obj-schema-CombinedAudience', () {
    unittest.test('to-json--from-json', () {
      var o = buildCombinedAudience();
      var od = api.CombinedAudience.fromJson(o.toJson());
      checkCombinedAudience(od);
    });
  });

  unittest.group('obj-schema-CombinedAudienceGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildCombinedAudienceGroup();
      var od = api.CombinedAudienceGroup.fromJson(o.toJson());
      checkCombinedAudienceGroup(od);
    });
  });

  unittest.group('obj-schema-CombinedAudienceTargetingSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildCombinedAudienceTargetingSetting();
      var od = api.CombinedAudienceTargetingSetting.fromJson(o.toJson());
      checkCombinedAudienceTargetingSetting(od);
    });
  });

  unittest.group(
      'obj-schema-ContentInstreamPositionAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildContentInstreamPositionAssignedTargetingOptionDetails();
      var od =
          api.ContentInstreamPositionAssignedTargetingOptionDetails.fromJson(
              o.toJson());
      checkContentInstreamPositionAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ContentInstreamPositionTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildContentInstreamPositionTargetingOptionDetails();
      var od = api.ContentInstreamPositionTargetingOptionDetails.fromJson(
          o.toJson());
      checkContentInstreamPositionTargetingOptionDetails(od);
    });
  });

  unittest.group(
      'obj-schema-ContentOutstreamPositionAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildContentOutstreamPositionAssignedTargetingOptionDetails();
      var od =
          api.ContentOutstreamPositionAssignedTargetingOptionDetails.fromJson(
              o.toJson());
      checkContentOutstreamPositionAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ContentOutstreamPositionTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildContentOutstreamPositionTargetingOptionDetails();
      var od = api.ContentOutstreamPositionTargetingOptionDetails.fromJson(
          o.toJson());
      checkContentOutstreamPositionTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ConversionCountingConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildConversionCountingConfig();
      var od = api.ConversionCountingConfig.fromJson(o.toJson());
      checkConversionCountingConfig(od);
    });
  });

  unittest.group('obj-schema-CounterEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildCounterEvent();
      var od = api.CounterEvent.fromJson(o.toJson());
      checkCounterEvent(od);
    });
  });

  unittest.group('obj-schema-CreateAssetRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateAssetRequest();
      var od = api.CreateAssetRequest.fromJson(o.toJson());
      checkCreateAssetRequest(od);
    });
  });

  unittest.group('obj-schema-CreateAssetResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateAssetResponse();
      var od = api.CreateAssetResponse.fromJson(o.toJson());
      checkCreateAssetResponse(od);
    });
  });

  unittest.group('obj-schema-CreateAssignedTargetingOptionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateAssignedTargetingOptionsRequest();
      var od = api.CreateAssignedTargetingOptionsRequest.fromJson(o.toJson());
      checkCreateAssignedTargetingOptionsRequest(od);
    });
  });

  unittest.group('obj-schema-CreateSdfDownloadTaskRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateSdfDownloadTaskRequest();
      var od = api.CreateSdfDownloadTaskRequest.fromJson(o.toJson());
      checkCreateSdfDownloadTaskRequest(od);
    });
  });

  unittest.group('obj-schema-Creative', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreative();
      var od = api.Creative.fromJson(o.toJson());
      checkCreative(od);
    });
  });

  unittest.group('obj-schema-CreativeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeConfig();
      var od = api.CreativeConfig.fromJson(o.toJson());
      checkCreativeConfig(od);
    });
  });

  unittest.group('obj-schema-CustomBiddingAlgorithm', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomBiddingAlgorithm();
      var od = api.CustomBiddingAlgorithm.fromJson(o.toJson());
      checkCustomBiddingAlgorithm(od);
    });
  });

  unittest.group('obj-schema-CustomList', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomList();
      var od = api.CustomList.fromJson(o.toJson());
      checkCustomList(od);
    });
  });

  unittest.group('obj-schema-CustomListGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomListGroup();
      var od = api.CustomListGroup.fromJson(o.toJson());
      checkCustomListGroup(od);
    });
  });

  unittest.group('obj-schema-CustomListTargetingSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomListTargetingSetting();
      var od = api.CustomListTargetingSetting.fromJson(o.toJson());
      checkCustomListTargetingSetting(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () {
      var o = buildDate();
      var od = api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DateRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildDateRange();
      var od = api.DateRange.fromJson(o.toJson());
      checkDateRange(od);
    });
  });

  unittest.group('obj-schema-DayAndTimeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDayAndTimeAssignedTargetingOptionDetails();
      var od =
          api.DayAndTimeAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkDayAndTimeAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-DeleteAssignedTargetingOptionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteAssignedTargetingOptionsRequest();
      var od = api.DeleteAssignedTargetingOptionsRequest.fromJson(o.toJson());
      checkDeleteAssignedTargetingOptionsRequest(od);
    });
  });

  unittest.group('obj-schema-DeviceMakeModelAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceMakeModelAssignedTargetingOptionDetails();
      var od = api.DeviceMakeModelAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkDeviceMakeModelAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-DeviceMakeModelTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceMakeModelTargetingOptionDetails();
      var od = api.DeviceMakeModelTargetingOptionDetails.fromJson(o.toJson());
      checkDeviceMakeModelTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-DeviceTypeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceTypeAssignedTargetingOptionDetails();
      var od =
          api.DeviceTypeAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkDeviceTypeAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-DeviceTypeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceTypeTargetingOptionDetails();
      var od = api.DeviceTypeTargetingOptionDetails.fromJson(o.toJson());
      checkDeviceTypeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-DigitalContentLabelAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildDigitalContentLabelAssignedTargetingOptionDetails();
      var od = api.DigitalContentLabelAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkDigitalContentLabelAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-DigitalContentLabelTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDigitalContentLabelTargetingOptionDetails();
      var od =
          api.DigitalContentLabelTargetingOptionDetails.fromJson(o.toJson());
      checkDigitalContentLabelTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-Dimensions', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensions();
      var od = api.Dimensions.fromJson(o.toJson());
      checkDimensions(od);
    });
  });

  unittest.group('obj-schema-DoubleVerify', () {
    unittest.test('to-json--from-json', () {
      var o = buildDoubleVerify();
      var od = api.DoubleVerify.fromJson(o.toJson());
      checkDoubleVerify(od);
    });
  });

  unittest.group('obj-schema-DoubleVerifyAppStarRating', () {
    unittest.test('to-json--from-json', () {
      var o = buildDoubleVerifyAppStarRating();
      var od = api.DoubleVerifyAppStarRating.fromJson(o.toJson());
      checkDoubleVerifyAppStarRating(od);
    });
  });

  unittest.group('obj-schema-DoubleVerifyBrandSafetyCategories', () {
    unittest.test('to-json--from-json', () {
      var o = buildDoubleVerifyBrandSafetyCategories();
      var od = api.DoubleVerifyBrandSafetyCategories.fromJson(o.toJson());
      checkDoubleVerifyBrandSafetyCategories(od);
    });
  });

  unittest.group('obj-schema-DoubleVerifyDisplayViewability', () {
    unittest.test('to-json--from-json', () {
      var o = buildDoubleVerifyDisplayViewability();
      var od = api.DoubleVerifyDisplayViewability.fromJson(o.toJson());
      checkDoubleVerifyDisplayViewability(od);
    });
  });

  unittest.group('obj-schema-DoubleVerifyFraudInvalidTraffic', () {
    unittest.test('to-json--from-json', () {
      var o = buildDoubleVerifyFraudInvalidTraffic();
      var od = api.DoubleVerifyFraudInvalidTraffic.fromJson(o.toJson());
      checkDoubleVerifyFraudInvalidTraffic(od);
    });
  });

  unittest.group('obj-schema-DoubleVerifyVideoViewability', () {
    unittest.test('to-json--from-json', () {
      var o = buildDoubleVerifyVideoViewability();
      var od = api.DoubleVerifyVideoViewability.fromJson(o.toJson());
      checkDoubleVerifyVideoViewability(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-EnvironmentAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvironmentAssignedTargetingOptionDetails();
      var od =
          api.EnvironmentAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkEnvironmentAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-EnvironmentTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvironmentTargetingOptionDetails();
      var od = api.EnvironmentTargetingOptionDetails.fromJson(o.toJson());
      checkEnvironmentTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ExchangeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildExchangeAssignedTargetingOptionDetails();
      var od = api.ExchangeAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkExchangeAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ExchangeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildExchangeConfig();
      var od = api.ExchangeConfig.fromJson(o.toJson());
      checkExchangeConfig(od);
    });
  });

  unittest.group('obj-schema-ExchangeConfigEnabledExchange', () {
    unittest.test('to-json--from-json', () {
      var o = buildExchangeConfigEnabledExchange();
      var od = api.ExchangeConfigEnabledExchange.fromJson(o.toJson());
      checkExchangeConfigEnabledExchange(od);
    });
  });

  unittest.group('obj-schema-ExchangeReviewStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildExchangeReviewStatus();
      var od = api.ExchangeReviewStatus.fromJson(o.toJson());
      checkExchangeReviewStatus(od);
    });
  });

  unittest.group('obj-schema-ExchangeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildExchangeTargetingOptionDetails();
      var od = api.ExchangeTargetingOptionDetails.fromJson(o.toJson());
      checkExchangeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ExitEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildExitEvent();
      var od = api.ExitEvent.fromJson(o.toJson());
      checkExitEvent(od);
    });
  });

  unittest.group('obj-schema-FirstAndThirdPartyAudience', () {
    unittest.test('to-json--from-json', () {
      var o = buildFirstAndThirdPartyAudience();
      var od = api.FirstAndThirdPartyAudience.fromJson(o.toJson());
      checkFirstAndThirdPartyAudience(od);
    });
  });

  unittest.group('obj-schema-FirstAndThirdPartyAudienceGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildFirstAndThirdPartyAudienceGroup();
      var od = api.FirstAndThirdPartyAudienceGroup.fromJson(o.toJson());
      checkFirstAndThirdPartyAudienceGroup(od);
    });
  });

  unittest.group('obj-schema-FirstAndThirdPartyAudienceTargetingSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildFirstAndThirdPartyAudienceTargetingSetting();
      var od =
          api.FirstAndThirdPartyAudienceTargetingSetting.fromJson(o.toJson());
      checkFirstAndThirdPartyAudienceTargetingSetting(od);
    });
  });

  unittest.group('obj-schema-FixedBidStrategy', () {
    unittest.test('to-json--from-json', () {
      var o = buildFixedBidStrategy();
      var od = api.FixedBidStrategy.fromJson(o.toJson());
      checkFixedBidStrategy(od);
    });
  });

  unittest.group('obj-schema-FloodlightGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloodlightGroup();
      var od = api.FloodlightGroup.fromJson(o.toJson());
      checkFloodlightGroup(od);
    });
  });

  unittest.group('obj-schema-FrequencyCap', () {
    unittest.test('to-json--from-json', () {
      var o = buildFrequencyCap();
      var od = api.FrequencyCap.fromJson(o.toJson());
      checkFrequencyCap(od);
    });
  });

  unittest.group('obj-schema-GenderAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenderAssignedTargetingOptionDetails();
      var od = api.GenderAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkGenderAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-GenderTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenderTargetingOptionDetails();
      var od = api.GenderTargetingOptionDetails.fromJson(o.toJson());
      checkGenderTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-GeoRegionAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeoRegionAssignedTargetingOptionDetails();
      var od = api.GeoRegionAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkGeoRegionAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-GeoRegionTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeoRegionTargetingOptionDetails();
      var od = api.GeoRegionTargetingOptionDetails.fromJson(o.toJson());
      checkGeoRegionTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleAudience', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAudience();
      var od = api.GoogleAudience.fromJson(o.toJson());
      checkGoogleAudience(od);
    });
  });

  unittest.group('obj-schema-GoogleAudienceGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAudienceGroup();
      var od = api.GoogleAudienceGroup.fromJson(o.toJson());
      checkGoogleAudienceGroup(od);
    });
  });

  unittest.group('obj-schema-GoogleAudienceTargetingSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAudienceTargetingSetting();
      var od = api.GoogleAudienceTargetingSetting.fromJson(o.toJson());
      checkGoogleAudienceTargetingSetting(od);
    });
  });

  unittest.group('obj-schema-GoogleBytestreamMedia', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleBytestreamMedia();
      var od = api.GoogleBytestreamMedia.fromJson(o.toJson());
      checkGoogleBytestreamMedia(od);
    });
  });

  unittest.group('obj-schema-HouseholdIncomeAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildHouseholdIncomeAssignedTargetingOptionDetails();
      var od = api.HouseholdIncomeAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkHouseholdIncomeAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-HouseholdIncomeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildHouseholdIncomeTargetingOptionDetails();
      var od = api.HouseholdIncomeTargetingOptionDetails.fromJson(o.toJson());
      checkHouseholdIncomeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-IdFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildIdFilter();
      var od = api.IdFilter.fromJson(o.toJson());
      checkIdFilter(od);
    });
  });

  unittest.group('obj-schema-InsertionOrder', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertionOrder();
      var od = api.InsertionOrder.fromJson(o.toJson());
      checkInsertionOrder(od);
    });
  });

  unittest.group('obj-schema-InsertionOrderBudget', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertionOrderBudget();
      var od = api.InsertionOrderBudget.fromJson(o.toJson());
      checkInsertionOrderBudget(od);
    });
  });

  unittest.group('obj-schema-InsertionOrderBudgetSegment', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertionOrderBudgetSegment();
      var od = api.InsertionOrderBudgetSegment.fromJson(o.toJson());
      checkInsertionOrderBudgetSegment(od);
    });
  });

  unittest.group('obj-schema-IntegralAdScience', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntegralAdScience();
      var od = api.IntegralAdScience.fromJson(o.toJson());
      checkIntegralAdScience(od);
    });
  });

  unittest.group('obj-schema-IntegrationDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntegrationDetails();
      var od = api.IntegrationDetails.fromJson(o.toJson());
      checkIntegrationDetails(od);
    });
  });

  unittest.group('obj-schema-InventorySource', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySource();
      var od = api.InventorySource.fromJson(o.toJson());
      checkInventorySource(od);
    });
  });

  unittest.group('obj-schema-InventorySourceAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceAssignedTargetingOptionDetails();
      var od = api.InventorySourceAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkInventorySourceAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-InventorySourceDisplayCreativeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceDisplayCreativeConfig();
      var od = api.InventorySourceDisplayCreativeConfig.fromJson(o.toJson());
      checkInventorySourceDisplayCreativeConfig(od);
    });
  });

  unittest.group('obj-schema-InventorySourceFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceFilter();
      var od = api.InventorySourceFilter.fromJson(o.toJson());
      checkInventorySourceFilter(od);
    });
  });

  unittest.group('obj-schema-InventorySourceGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceGroup();
      var od = api.InventorySourceGroup.fromJson(o.toJson());
      checkInventorySourceGroup(od);
    });
  });

  unittest.group(
      'obj-schema-InventorySourceGroupAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceGroupAssignedTargetingOptionDetails();
      var od = api.InventorySourceGroupAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkInventorySourceGroupAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-InventorySourceStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceStatus();
      var od = api.InventorySourceStatus.fromJson(o.toJson());
      checkInventorySourceStatus(od);
    });
  });

  unittest.group('obj-schema-InventorySourceVideoCreativeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventorySourceVideoCreativeConfig();
      var od = api.InventorySourceVideoCreativeConfig.fromJson(o.toJson());
      checkInventorySourceVideoCreativeConfig(od);
    });
  });

  unittest.group('obj-schema-KeywordAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildKeywordAssignedTargetingOptionDetails();
      var od = api.KeywordAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkKeywordAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-LanguageAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLanguageAssignedTargetingOptionDetails();
      var od = api.LanguageAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkLanguageAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-LanguageTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLanguageTargetingOptionDetails();
      var od = api.LanguageTargetingOptionDetails.fromJson(o.toJson());
      checkLanguageTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-LineItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildLineItem();
      var od = api.LineItem.fromJson(o.toJson());
      checkLineItem(od);
    });
  });

  unittest.group('obj-schema-LineItemBudget', () {
    unittest.test('to-json--from-json', () {
      var o = buildLineItemBudget();
      var od = api.LineItemBudget.fromJson(o.toJson());
      checkLineItemBudget(od);
    });
  });

  unittest.group('obj-schema-LineItemFlight', () {
    unittest.test('to-json--from-json', () {
      var o = buildLineItemFlight();
      var od = api.LineItemFlight.fromJson(o.toJson());
      checkLineItemFlight(od);
    });
  });

  unittest.group('obj-schema-ListAdvertiserAssignedTargetingOptionsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildListAdvertiserAssignedTargetingOptionsResponse();
      var od = api.ListAdvertiserAssignedTargetingOptionsResponse.fromJson(
          o.toJson());
      checkListAdvertiserAssignedTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAdvertisersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAdvertisersResponse();
      var od = api.ListAdvertisersResponse.fromJson(o.toJson());
      checkListAdvertisersResponse(od);
    });
  });

  unittest.group('obj-schema-ListAssignedInventorySourcesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAssignedInventorySourcesResponse();
      var od = api.ListAssignedInventorySourcesResponse.fromJson(o.toJson());
      checkListAssignedInventorySourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAssignedLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAssignedLocationsResponse();
      var od = api.ListAssignedLocationsResponse.fromJson(o.toJson());
      checkListAssignedLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCampaignsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCampaignsResponse();
      var od = api.ListCampaignsResponse.fromJson(o.toJson());
      checkListCampaignsResponse(od);
    });
  });

  unittest.group('obj-schema-ListChannelsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListChannelsResponse();
      var od = api.ListChannelsResponse.fromJson(o.toJson());
      checkListChannelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCombinedAudiencesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCombinedAudiencesResponse();
      var od = api.ListCombinedAudiencesResponse.fromJson(o.toJson());
      checkListCombinedAudiencesResponse(od);
    });
  });

  unittest.group('obj-schema-ListCreativesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCreativesResponse();
      var od = api.ListCreativesResponse.fromJson(o.toJson());
      checkListCreativesResponse(od);
    });
  });

  unittest.group('obj-schema-ListCustomBiddingAlgorithmsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCustomBiddingAlgorithmsResponse();
      var od = api.ListCustomBiddingAlgorithmsResponse.fromJson(o.toJson());
      checkListCustomBiddingAlgorithmsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCustomListsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCustomListsResponse();
      var od = api.ListCustomListsResponse.fromJson(o.toJson());
      checkListCustomListsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFirstAndThirdPartyAudiencesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListFirstAndThirdPartyAudiencesResponse();
      var od = api.ListFirstAndThirdPartyAudiencesResponse.fromJson(o.toJson());
      checkListFirstAndThirdPartyAudiencesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGoogleAudiencesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGoogleAudiencesResponse();
      var od = api.ListGoogleAudiencesResponse.fromJson(o.toJson());
      checkListGoogleAudiencesResponse(od);
    });
  });

  unittest.group('obj-schema-ListInsertionOrdersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListInsertionOrdersResponse();
      var od = api.ListInsertionOrdersResponse.fromJson(o.toJson());
      checkListInsertionOrdersResponse(od);
    });
  });

  unittest.group('obj-schema-ListInventorySourceGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListInventorySourceGroupsResponse();
      var od = api.ListInventorySourceGroupsResponse.fromJson(o.toJson());
      checkListInventorySourceGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListInventorySourcesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListInventorySourcesResponse();
      var od = api.ListInventorySourcesResponse.fromJson(o.toJson());
      checkListInventorySourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListLineItemAssignedTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLineItemAssignedTargetingOptionsResponse();
      var od =
          api.ListLineItemAssignedTargetingOptionsResponse.fromJson(o.toJson());
      checkListLineItemAssignedTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLineItemsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLineItemsResponse();
      var od = api.ListLineItemsResponse.fromJson(o.toJson());
      checkListLineItemsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationListsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationListsResponse();
      var od = api.ListLocationListsResponse.fromJson(o.toJson());
      checkListLocationListsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNegativeKeywordListsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListNegativeKeywordListsResponse();
      var od = api.ListNegativeKeywordListsResponse.fromJson(o.toJson());
      checkListNegativeKeywordListsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNegativeKeywordsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListNegativeKeywordsResponse();
      var od = api.ListNegativeKeywordsResponse.fromJson(o.toJson());
      checkListNegativeKeywordsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPartnerAssignedTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListPartnerAssignedTargetingOptionsResponse();
      var od =
          api.ListPartnerAssignedTargetingOptionsResponse.fromJson(o.toJson());
      checkListPartnerAssignedTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPartnersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListPartnersResponse();
      var od = api.ListPartnersResponse.fromJson(o.toJson());
      checkListPartnersResponse(od);
    });
  });

  unittest.group('obj-schema-ListSitesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListSitesResponse();
      var od = api.ListSitesResponse.fromJson(o.toJson());
      checkListSitesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTargetingOptionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListTargetingOptionsResponse();
      var od = api.ListTargetingOptionsResponse.fromJson(o.toJson());
      checkListTargetingOptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUsersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListUsersResponse();
      var od = api.ListUsersResponse.fromJson(o.toJson());
      checkListUsersResponse(od);
    });
  });

  unittest.group('obj-schema-LocationList', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocationList();
      var od = api.LocationList.fromJson(o.toJson());
      checkLocationList(od);
    });
  });

  unittest.group('obj-schema-LookbackWindow', () {
    unittest.test('to-json--from-json', () {
      var o = buildLookbackWindow();
      var od = api.LookbackWindow.fromJson(o.toJson());
      checkLookbackWindow(od);
    });
  });

  unittest.group('obj-schema-MaximizeSpendBidStrategy', () {
    unittest.test('to-json--from-json', () {
      var o = buildMaximizeSpendBidStrategy();
      var od = api.MaximizeSpendBidStrategy.fromJson(o.toJson());
      checkMaximizeSpendBidStrategy(od);
    });
  });

  unittest.group('obj-schema-MeasurementConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildMeasurementConfig();
      var od = api.MeasurementConfig.fromJson(o.toJson());
      checkMeasurementConfig(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () {
      var o = buildMoney();
      var od = api.Money.fromJson(o.toJson());
      checkMoney(od);
    });
  });

  unittest.group('obj-schema-NegativeKeyword', () {
    unittest.test('to-json--from-json', () {
      var o = buildNegativeKeyword();
      var od = api.NegativeKeyword.fromJson(o.toJson());
      checkNegativeKeyword(od);
    });
  });

  unittest.group('obj-schema-NegativeKeywordList', () {
    unittest.test('to-json--from-json', () {
      var o = buildNegativeKeywordList();
      var od = api.NegativeKeywordList.fromJson(o.toJson());
      checkNegativeKeywordList(od);
    });
  });

  unittest.group('obj-schema-NegativeKeywordListAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildNegativeKeywordListAssignedTargetingOptionDetails();
      var od = api.NegativeKeywordListAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkNegativeKeywordListAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ObaIcon', () {
    unittest.test('to-json--from-json', () {
      var o = buildObaIcon();
      var od = api.ObaIcon.fromJson(o.toJson());
      checkObaIcon(od);
    });
  });

  unittest.group('obj-schema-OnScreenPositionAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildOnScreenPositionAssignedTargetingOptionDetails();
      var od = api.OnScreenPositionAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkOnScreenPositionAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-OnScreenPositionTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOnScreenPositionTargetingOptionDetails();
      var od = api.OnScreenPositionTargetingOptionDetails.fromJson(o.toJson());
      checkOnScreenPositionTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-OperatingSystemAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildOperatingSystemAssignedTargetingOptionDetails();
      var od = api.OperatingSystemAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkOperatingSystemAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-OperatingSystemTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperatingSystemTargetingOptionDetails();
      var od = api.OperatingSystemTargetingOptionDetails.fromJson(o.toJson());
      checkOperatingSystemTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Pacing', () {
    unittest.test('to-json--from-json', () {
      var o = buildPacing();
      var od = api.Pacing.fromJson(o.toJson());
      checkPacing(od);
    });
  });

  unittest.group('obj-schema-ParentEntityFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildParentEntityFilter();
      var od = api.ParentEntityFilter.fromJson(o.toJson());
      checkParentEntityFilter(od);
    });
  });

  unittest.group('obj-schema-ParentalStatusAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildParentalStatusAssignedTargetingOptionDetails();
      var od =
          api.ParentalStatusAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkParentalStatusAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ParentalStatusTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildParentalStatusTargetingOptionDetails();
      var od = api.ParentalStatusTargetingOptionDetails.fromJson(o.toJson());
      checkParentalStatusTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-Partner', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartner();
      var od = api.Partner.fromJson(o.toJson());
      checkPartner(od);
    });
  });

  unittest.group('obj-schema-PartnerAdServerConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartnerAdServerConfig();
      var od = api.PartnerAdServerConfig.fromJson(o.toJson());
      checkPartnerAdServerConfig(od);
    });
  });

  unittest.group('obj-schema-PartnerCost', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartnerCost();
      var od = api.PartnerCost.fromJson(o.toJson());
      checkPartnerCost(od);
    });
  });

  unittest.group('obj-schema-PartnerDataAccessConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartnerDataAccessConfig();
      var od = api.PartnerDataAccessConfig.fromJson(o.toJson());
      checkPartnerDataAccessConfig(od);
    });
  });

  unittest.group('obj-schema-PartnerGeneralConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartnerGeneralConfig();
      var od = api.PartnerGeneralConfig.fromJson(o.toJson());
      checkPartnerGeneralConfig(od);
    });
  });

  unittest.group('obj-schema-PartnerRevenueModel', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartnerRevenueModel();
      var od = api.PartnerRevenueModel.fromJson(o.toJson());
      checkPartnerRevenueModel(od);
    });
  });

  unittest.group('obj-schema-PerformanceGoal', () {
    unittest.test('to-json--from-json', () {
      var o = buildPerformanceGoal();
      var od = api.PerformanceGoal.fromJson(o.toJson());
      checkPerformanceGoal(od);
    });
  });

  unittest.group('obj-schema-PerformanceGoalBidStrategy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPerformanceGoalBidStrategy();
      var od = api.PerformanceGoalBidStrategy.fromJson(o.toJson());
      checkPerformanceGoalBidStrategy(od);
    });
  });

  unittest.group(
      'obj-schema-ProximityLocationListAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildProximityLocationListAssignedTargetingOptionDetails();
      var od = api.ProximityLocationListAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkProximityLocationListAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-PublisherReviewStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildPublisherReviewStatus();
      var od = api.PublisherReviewStatus.fromJson(o.toJson());
      checkPublisherReviewStatus(od);
    });
  });

  unittest.group('obj-schema-RateDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildRateDetails();
      var od = api.RateDetails.fromJson(o.toJson());
      checkRateDetails(od);
    });
  });

  unittest.group(
      'obj-schema-RegionalLocationListAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionalLocationListAssignedTargetingOptionDetails();
      var od = api.RegionalLocationListAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkRegionalLocationListAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ReviewStatusInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildReviewStatusInfo();
      var od = api.ReviewStatusInfo.fromJson(o.toJson());
      checkReviewStatusInfo(od);
    });
  });

  unittest.group('obj-schema-SdfConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildSdfConfig();
      var od = api.SdfConfig.fromJson(o.toJson());
      checkSdfConfig(od);
    });
  });

  unittest.group('obj-schema-SdfDownloadTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildSdfDownloadTask();
      var od = api.SdfDownloadTask.fromJson(o.toJson());
      checkSdfDownloadTask(od);
    });
  });

  unittest.group('obj-schema-SdfDownloadTaskMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildSdfDownloadTaskMetadata();
      var od = api.SdfDownloadTaskMetadata.fromJson(o.toJson());
      checkSdfDownloadTaskMetadata(od);
    });
  });

  unittest.group('obj-schema-SensitiveCategoryAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildSensitiveCategoryAssignedTargetingOptionDetails();
      var od = api.SensitiveCategoryAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkSensitiveCategoryAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-SensitiveCategoryTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildSensitiveCategoryTargetingOptionDetails();
      var od = api.SensitiveCategoryTargetingOptionDetails.fromJson(o.toJson());
      checkSensitiveCategoryTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-Site', () {
    unittest.test('to-json--from-json', () {
      var o = buildSite();
      var od = api.Site.fromJson(o.toJson());
      checkSite(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-SubExchangeAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubExchangeAssignedTargetingOptionDetails();
      var od =
          api.SubExchangeAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkSubExchangeAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-SubExchangeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubExchangeTargetingOptionDetails();
      var od = api.SubExchangeTargetingOptionDetails.fromJson(o.toJson());
      checkSubExchangeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-TargetingOption', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetingOption();
      var od = api.TargetingOption.fromJson(o.toJson());
      checkTargetingOption(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyOnlyConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildThirdPartyOnlyConfig();
      var od = api.ThirdPartyOnlyConfig.fromJson(o.toJson());
      checkThirdPartyOnlyConfig(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyUrl', () {
    unittest.test('to-json--from-json', () {
      var o = buildThirdPartyUrl();
      var od = api.ThirdPartyUrl.fromJson(o.toJson());
      checkThirdPartyUrl(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyVerifierAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildThirdPartyVerifierAssignedTargetingOptionDetails();
      var od = api.ThirdPartyVerifierAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkThirdPartyVerifierAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-TimeRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeRange();
      var od = api.TimeRange.fromJson(o.toJson());
      checkTimeRange(od);
    });
  });

  unittest.group('obj-schema-TimerEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimerEvent();
      var od = api.TimerEvent.fromJson(o.toJson());
      checkTimerEvent(od);
    });
  });

  unittest.group('obj-schema-TrackingFloodlightActivityConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildTrackingFloodlightActivityConfig();
      var od = api.TrackingFloodlightActivityConfig.fromJson(o.toJson());
      checkTrackingFloodlightActivityConfig(od);
    });
  });

  unittest.group('obj-schema-Transcode', () {
    unittest.test('to-json--from-json', () {
      var o = buildTranscode();
      var od = api.Transcode.fromJson(o.toJson());
      checkTranscode(od);
    });
  });

  unittest.group('obj-schema-UniversalAdId', () {
    unittest.test('to-json--from-json', () {
      var o = buildUniversalAdId();
      var od = api.UniversalAdId.fromJson(o.toJson());
      checkUniversalAdId(od);
    });
  });

  unittest.group('obj-schema-UrlAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildUrlAssignedTargetingOptionDetails();
      var od = api.UrlAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkUrlAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () {
      var o = buildUser();
      var od = api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UserRewardedContentAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildUserRewardedContentAssignedTargetingOptionDetails();
      var od = api.UserRewardedContentAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkUserRewardedContentAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-UserRewardedContentTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserRewardedContentTargetingOptionDetails();
      var od =
          api.UserRewardedContentTargetingOptionDetails.fromJson(o.toJson());
      checkUserRewardedContentTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-VideoPlayerSizeAssignedTargetingOptionDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoPlayerSizeAssignedTargetingOptionDetails();
      var od = api.VideoPlayerSizeAssignedTargetingOptionDetails.fromJson(
          o.toJson());
      checkVideoPlayerSizeAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-VideoPlayerSizeTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoPlayerSizeTargetingOptionDetails();
      var od = api.VideoPlayerSizeTargetingOptionDetails.fromJson(o.toJson());
      checkVideoPlayerSizeTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ViewabilityAssignedTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildViewabilityAssignedTargetingOptionDetails();
      var od =
          api.ViewabilityAssignedTargetingOptionDetails.fromJson(o.toJson());
      checkViewabilityAssignedTargetingOptionDetails(od);
    });
  });

  unittest.group('obj-schema-ViewabilityTargetingOptionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildViewabilityTargetingOptionDetails();
      var od = api.ViewabilityTargetingOptionDetails.fromJson(o.toJson());
      checkViewabilityTargetingOptionDetails(od);
    });
  });

  unittest.group('resource-AdvertisersResourceApi', () {
    unittest.test('method--audit', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAuditAdvertiserResponse(response);
      })));
    });

    unittest.test('method--bulkEditAdvertiserAssignedTargetingOptions', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers;
      var arg_request =
          buildBulkEditAdvertiserAssignedTargetingOptionsRequest();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.BulkEditAdvertiserAssignedTargetingOptionsRequest.fromJson(
                json);
        checkBulkEditAdvertiserAssignedTargetingOptionsRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkBulkEditAdvertiserAssignedTargetingOptionsResponse(response);
      })));
    });

    unittest.test('method--bulkListAdvertiserAssignedTargetingOptions', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkBulkListAdvertiserAssignedTargetingOptionsResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers;
      var arg_request = buildAdvertiser();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Advertiser.fromJson(json);
        checkAdvertiser(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAdvertiser(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAdvertiser(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListAdvertisersResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers;
      var arg_request = buildAdvertiser();
      var arg_advertiserId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Advertiser.fromJson(json);
        checkAdvertiser(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAdvertiser(response);
      })));
    });
  });

  unittest.group('resource-AdvertisersAssetsResourceApi', () {
    unittest.test('method--upload', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.assets;
      var arg_request = buildCreateAssetRequest();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateAssetRequest.fromJson(json);
        checkCreateAssetRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkCreateAssetResponse(response);
      })));
    });
  });

  unittest.group('resource-AdvertisersCampaignsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.campaigns;
      var arg_request = buildCampaign();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Campaign.fromJson(json);
        checkCampaign(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkCampaign(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.campaigns;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.campaigns;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkCampaign(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.campaigns;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListCampaignsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.campaigns;
      var arg_request = buildCampaign();
      var arg_advertiserId = 'foo';
      var arg_campaignId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Campaign.fromJson(json);
        checkCampaign(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkCampaign(response);
      })));
    });
  });

  unittest.group('resource-AdvertisersChannelsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.channels;
      var arg_request = buildChannel();
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Channel.fromJson(json);
        checkChannel(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkChannel(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.channels;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkChannel(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.channels;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListChannelsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.channels;
      var arg_request = buildChannel();
      var arg_advertiserId = 'foo';
      var arg_channelId = 'foo';
      var arg_partnerId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Channel.fromJson(json);
        checkChannel(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkChannel(response);
      })));
    });
  });

  unittest.group('resource-AdvertisersChannelsSitesResourceApi', () {
    unittest.test('method--bulkEdit', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.channels.sites;
      var arg_request = buildBulkEditSitesRequest();
      var arg_advertiserId = 'foo';
      var arg_channelId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditSitesRequest.fromJson(json);
        checkBulkEditSitesRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkBulkEditSitesResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.channels.sites;
      var arg_request = buildSite();
      var arg_advertiserId = 'foo';
      var arg_channelId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Site.fromJson(json);
        checkSite(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSite(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.channels.sites;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.channels.sites;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListSitesResponse(response);
      })));
    });
  });

  unittest.group('resource-AdvertisersCreativesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.creatives;
      var arg_request = buildCreative();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Creative.fromJson(json);
        checkCreative(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkCreative(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.creatives;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.creatives;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkCreative(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.creatives;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListCreativesResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.creatives;
      var arg_request = buildCreative();
      var arg_advertiserId = 'foo';
      var arg_creativeId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Creative.fromJson(json);
        checkCreative(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkCreative(response);
      })));
    });
  });

  unittest.group('resource-AdvertisersInsertionOrdersResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.insertionOrders;
      var arg_request = buildInsertionOrder();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InsertionOrder.fromJson(json);
        checkInsertionOrder(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkInsertionOrder(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.insertionOrders;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.insertionOrders;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkInsertionOrder(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.insertionOrders;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListInsertionOrdersResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.insertionOrders;
      var arg_request = buildInsertionOrder();
      var arg_advertiserId = 'foo';
      var arg_insertionOrderId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InsertionOrder.fromJson(json);
        checkInsertionOrder(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkInsertionOrder(response);
      })));
    });
  });

  unittest.group('resource-AdvertisersLineItemsResourceApi', () {
    unittest.test('method--bulkEditLineItemAssignedTargetingOptions', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.lineItems;
      var arg_request = buildBulkEditLineItemAssignedTargetingOptionsRequest();
      var arg_advertiserId = 'foo';
      var arg_lineItemId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.BulkEditLineItemAssignedTargetingOptionsRequest.fromJson(json);
        checkBulkEditLineItemAssignedTargetingOptionsRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkBulkEditLineItemAssignedTargetingOptionsResponse(response);
      })));
    });

    unittest.test('method--bulkListLineItemAssignedTargetingOptions', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.lineItems;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkBulkListLineItemAssignedTargetingOptionsResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.lineItems;
      var arg_request = buildLineItem();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LineItem.fromJson(json);
        checkLineItem(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLineItem(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.lineItems;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.lineItems;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLineItem(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.lineItems;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListLineItemsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.lineItems;
      var arg_request = buildLineItem();
      var arg_advertiserId = 'foo';
      var arg_lineItemId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LineItem.fromJson(json);
        checkLineItem(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLineItem(response);
      })));
    });
  });

  unittest.group(
      'resource-AdvertisersLineItemsTargetingTypesAssignedTargetingOptionsResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        var obj = api.AssignedTargetingOption.fromJson(json);
        checkAssignedTargetingOption(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAssignedTargetingOption(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAssignedTargetingOption(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListLineItemAssignedTargetingOptionsResponse(response);
      })));
    });
  });

  unittest.group('resource-AdvertisersLocationListsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.locationLists;
      var arg_request = buildLocationList();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LocationList.fromJson(json);
        checkLocationList(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLocationList(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.locationLists;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLocationList(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.locationLists;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListLocationListsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.locationLists;
      var arg_request = buildLocationList();
      var arg_advertiserId = 'foo';
      var arg_locationListId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LocationList.fromJson(json);
        checkLocationList(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLocationList(response);
      })));
    });
  });

  unittest.group(
      'resource-AdvertisersLocationListsAssignedLocationsResourceApi', () {
    unittest.test('method--bulkEdit', () {
      var mock = HttpServerMock();
      var res =
          api.DisplayvideoApi(mock).advertisers.locationLists.assignedLocations;
      var arg_request = buildBulkEditAssignedLocationsRequest();
      var arg_advertiserId = 'foo';
      var arg_locationListId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditAssignedLocationsRequest.fromJson(json);
        checkBulkEditAssignedLocationsRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkBulkEditAssignedLocationsResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res =
          api.DisplayvideoApi(mock).advertisers.locationLists.assignedLocations;
      var arg_request = buildAssignedLocation();
      var arg_advertiserId = 'foo';
      var arg_locationListId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AssignedLocation.fromJson(json);
        checkAssignedLocation(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAssignedLocation(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res =
          api.DisplayvideoApi(mock).advertisers.locationLists.assignedLocations;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.DisplayvideoApi(mock).advertisers.locationLists.assignedLocations;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListAssignedLocationsResponse(response);
      })));
    });
  });

  unittest.group('resource-AdvertisersNegativeKeywordListsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.negativeKeywordLists;
      var arg_request = buildNegativeKeywordList();
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.NegativeKeywordList.fromJson(json);
        checkNegativeKeywordList(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkNegativeKeywordList(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.negativeKeywordLists;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.negativeKeywordLists;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkNegativeKeywordList(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.negativeKeywordLists;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListNegativeKeywordListsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).advertisers.negativeKeywordLists;
      var arg_request = buildNegativeKeywordList();
      var arg_advertiserId = 'foo';
      var arg_negativeKeywordListId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.NegativeKeywordList.fromJson(json);
        checkNegativeKeywordList(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkNegativeKeywordList(response);
      })));
    });
  });

  unittest.group(
      'resource-AdvertisersNegativeKeywordListsNegativeKeywordsResourceApi',
      () {
    unittest.test('method--bulkEdit', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
          .advertisers
          .negativeKeywordLists
          .negativeKeywords;
      var arg_request = buildBulkEditNegativeKeywordsRequest();
      var arg_advertiserId = 'foo';
      var arg_negativeKeywordListId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditNegativeKeywordsRequest.fromJson(json);
        checkBulkEditNegativeKeywordsRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkBulkEditNegativeKeywordsResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
          .advertisers
          .negativeKeywordLists
          .negativeKeywords;
      var arg_request = buildNegativeKeyword();
      var arg_advertiserId = 'foo';
      var arg_negativeKeywordListId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.NegativeKeyword.fromJson(json);
        checkNegativeKeyword(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkNegativeKeyword(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListNegativeKeywordsResponse(response);
      })));
    });
  });

  unittest.group(
      'resource-AdvertisersTargetingTypesAssignedTargetingOptionsResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
          .advertisers
          .targetingTypes
          .assignedTargetingOptions;
      var arg_request = buildAssignedTargetingOption();
      var arg_advertiserId = 'foo';
      var arg_targetingType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AssignedTargetingOption.fromJson(json);
        checkAssignedTargetingOption(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAssignedTargetingOption(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAssignedTargetingOption(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListAdvertiserAssignedTargetingOptionsResponse(response);
      })));
    });
  });

  unittest.group('resource-CombinedAudiencesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).combinedAudiences;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkCombinedAudience(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).combinedAudiences;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListCombinedAudiencesResponse(response);
      })));
    });
  });

  unittest.group('resource-CustomBiddingAlgorithmsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).customBiddingAlgorithms;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkCustomBiddingAlgorithm(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).customBiddingAlgorithms;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListCustomBiddingAlgorithmsResponse(response);
      })));
    });
  });

  unittest.group('resource-CustomListsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).customLists;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkCustomList(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).customLists;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListCustomListsResponse(response);
      })));
    });
  });

  unittest.group('resource-FirstAndThirdPartyAudiencesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).firstAndThirdPartyAudiences;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkFirstAndThirdPartyAudience(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).firstAndThirdPartyAudiences;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListFirstAndThirdPartyAudiencesResponse(response);
      })));
    });
  });

  unittest.group('resource-FloodlightGroupsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).floodlightGroups;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkFloodlightGroup(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).floodlightGroups;
      var arg_request = buildFloodlightGroup();
      var arg_floodlightGroupId = 'foo';
      var arg_partnerId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FloodlightGroup.fromJson(json);
        checkFloodlightGroup(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkFloodlightGroup(response);
      })));
    });
  });

  unittest.group('resource-GoogleAudiencesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).googleAudiences;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkGoogleAudience(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).googleAudiences;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListGoogleAudiencesResponse(response);
      })));
    });
  });

  unittest.group('resource-InventorySourceGroupsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).inventorySourceGroups;
      var arg_request = buildInventorySourceGroup();
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InventorySourceGroup.fromJson(json);
        checkInventorySourceGroup(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkInventorySourceGroup(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).inventorySourceGroups;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).inventorySourceGroups;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkInventorySourceGroup(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).inventorySourceGroups;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListInventorySourceGroupsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).inventorySourceGroups;
      var arg_request = buildInventorySourceGroup();
      var arg_inventorySourceGroupId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InventorySourceGroup.fromJson(json);
        checkInventorySourceGroup(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkInventorySourceGroup(response);
      })));
    });
  });

  unittest.group(
      'resource-InventorySourceGroupsAssignedInventorySourcesResourceApi', () {
    unittest.test('method--bulkEdit', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
          .inventorySourceGroups
          .assignedInventorySources;
      var arg_request = buildBulkEditAssignedInventorySourcesRequest();
      var arg_inventorySourceGroupId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditAssignedInventorySourcesRequest.fromJson(json);
        checkBulkEditAssignedInventorySourcesRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkBulkEditAssignedInventorySourcesResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
          .inventorySourceGroups
          .assignedInventorySources;
      var arg_request = buildAssignedInventorySource();
      var arg_inventorySourceGroupId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AssignedInventorySource.fromJson(json);
        checkAssignedInventorySource(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAssignedInventorySource(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListAssignedInventorySourcesResponse(response);
      })));
    });
  });

  unittest.group('resource-InventorySourcesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).inventorySources;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkInventorySource(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).inventorySources;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListInventorySourcesResponse(response);
      })));
    });
  });

  unittest.group('resource-MediaResourceApi', () {
    unittest.test('method--download', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).media;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkGoogleBytestreamMedia(response);
      })));
    });
  });

  unittest.group('resource-PartnersResourceApi', () {
    unittest.test('method--bulkEditPartnerAssignedTargetingOptions', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).partners;
      var arg_request = buildBulkEditPartnerAssignedTargetingOptionsRequest();
      var arg_partnerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.BulkEditPartnerAssignedTargetingOptionsRequest.fromJson(json);
        checkBulkEditPartnerAssignedTargetingOptionsRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkBulkEditPartnerAssignedTargetingOptionsResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).partners;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPartner(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).partners;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListPartnersResponse(response);
      })));
    });
  });

  unittest.group('resource-PartnersChannelsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).partners.channels;
      var arg_request = buildChannel();
      var arg_partnerId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Channel.fromJson(json);
        checkChannel(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkChannel(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).partners.channels;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkChannel(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).partners.channels;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListChannelsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).partners.channels;
      var arg_request = buildChannel();
      var arg_partnerId = 'foo';
      var arg_channelId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Channel.fromJson(json);
        checkChannel(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkChannel(response);
      })));
    });
  });

  unittest.group('resource-PartnersChannelsSitesResourceApi', () {
    unittest.test('method--bulkEdit', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).partners.channels.sites;
      var arg_request = buildBulkEditSitesRequest();
      var arg_partnerId = 'foo';
      var arg_channelId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditSitesRequest.fromJson(json);
        checkBulkEditSitesRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkBulkEditSitesResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).partners.channels.sites;
      var arg_request = buildSite();
      var arg_partnerId = 'foo';
      var arg_channelId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Site.fromJson(json);
        checkSite(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSite(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).partners.channels.sites;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).partners.channels.sites;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListSitesResponse(response);
      })));
    });
  });

  unittest.group(
      'resource-PartnersTargetingTypesAssignedTargetingOptionsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
          .partners
          .targetingTypes
          .assignedTargetingOptions;
      var arg_request = buildAssignedTargetingOption();
      var arg_partnerId = 'foo';
      var arg_targetingType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AssignedTargetingOption.fromJson(json);
        checkAssignedTargetingOption(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAssignedTargetingOption(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAssignedTargetingOption(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock)
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListPartnerAssignedTargetingOptionsResponse(response);
      })));
    });
  });

  unittest.group('resource-SdfdownloadtasksResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).sdfdownloadtasks;
      var arg_request = buildCreateSdfDownloadTaskRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateSdfDownloadTaskRequest.fromJson(json);
        checkCreateSdfDownloadTaskRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOperation(response);
      })));
    });
  });

  unittest.group('resource-SdfdownloadtasksOperationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).sdfdownloadtasks.operations;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOperation(response);
      })));
    });
  });

  unittest.group('resource-TargetingTypesTargetingOptionsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).targetingTypes.targetingOptions;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTargetingOption(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).targetingTypes.targetingOptions;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListTargetingOptionsResponse(response);
      })));
    });
  });

  unittest.group('resource-UsersResourceApi', () {
    unittest.test('method--bulkEditAssignedUserRoles', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).users;
      var arg_request = buildBulkEditAssignedUserRolesRequest();
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BulkEditAssignedUserRolesRequest.fromJson(json);
        checkBulkEditAssignedUserRolesRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkBulkEditAssignedUserRolesResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).users;
      var arg_request = buildUser();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.User.fromJson(json);
        checkUser(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkUser(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).users;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).users;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkUser(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).users;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListUsersResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DisplayvideoApi(mock).users;
      var arg_request = buildUser();
      var arg_userId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.User.fromJson(json);
        checkUser(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkUser(response);
      })));
    });
  });
}
