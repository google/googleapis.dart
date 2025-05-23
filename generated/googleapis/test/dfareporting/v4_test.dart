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

import 'package:googleapis/dfareporting/v4.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.accountPermissionIds = buildUnnamed0();
    o.accountProfile = 'foo';
    o.active = true;
    o.activeAdsLimitTier = 'foo';
    o.activeViewOptOut = true;
    o.availablePermissionIds = buildUnnamed1();
    o.countryId = 'foo';
    o.currencyId = 'foo';
    o.defaultCreativeSizeId = 'foo';
    o.description = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.locale = 'foo';
    o.maximumImageSize = 'foo';
    o.name = 'foo';
    o.nielsenOcrEnabled = true;
    o.reportsConfiguration = buildReportsConfiguration();
    o.shareReportsWithTwitter = true;
    o.teaserSizeLimit = 'foo';
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    checkUnnamed0(o.accountPermissionIds!);
    unittest.expect(
      o.accountProfile!,
      unittest.equals('foo'),
    );
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.activeAdsLimitTier!,
      unittest.equals('foo'),
    );
    unittest.expect(o.activeViewOptOut!, unittest.isTrue);
    checkUnnamed1(o.availablePermissionIds!);
    unittest.expect(
      o.countryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultCreativeSizeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maximumImageSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.nielsenOcrEnabled!, unittest.isTrue);
    checkReportsConfiguration(o.reportsConfiguration!);
    unittest.expect(o.shareReportsWithTwitter!, unittest.isTrue);
    unittest.expect(
      o.teaserSizeLimit!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccount--;
}

core.int buildCounterAccountActiveAdSummary = 0;
api.AccountActiveAdSummary buildAccountActiveAdSummary() {
  final o = api.AccountActiveAdSummary();
  buildCounterAccountActiveAdSummary++;
  if (buildCounterAccountActiveAdSummary < 3) {
    o.accountId = 'foo';
    o.activeAds = 'foo';
    o.activeAdsLimitTier = 'foo';
    o.availableAds = 'foo';
    o.kind = 'foo';
  }
  buildCounterAccountActiveAdSummary--;
  return o;
}

void checkAccountActiveAdSummary(api.AccountActiveAdSummary o) {
  buildCounterAccountActiveAdSummary++;
  if (buildCounterAccountActiveAdSummary < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.activeAds!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.activeAdsLimitTier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availableAds!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountActiveAdSummary--;
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

core.int buildCounterAccountPermission = 0;
api.AccountPermission buildAccountPermission() {
  final o = api.AccountPermission();
  buildCounterAccountPermission++;
  if (buildCounterAccountPermission < 3) {
    o.accountProfiles = buildUnnamed2();
    o.id = 'foo';
    o.kind = 'foo';
    o.level = 'foo';
    o.name = 'foo';
    o.permissionGroupId = 'foo';
  }
  buildCounterAccountPermission--;
  return o;
}

void checkAccountPermission(api.AccountPermission o) {
  buildCounterAccountPermission++;
  if (buildCounterAccountPermission < 3) {
    checkUnnamed2(o.accountProfiles!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.level!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permissionGroupId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountPermission--;
}

core.int buildCounterAccountPermissionGroup = 0;
api.AccountPermissionGroup buildAccountPermissionGroup() {
  final o = api.AccountPermissionGroup();
  buildCounterAccountPermissionGroup++;
  if (buildCounterAccountPermissionGroup < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterAccountPermissionGroup--;
  return o;
}

void checkAccountPermissionGroup(api.AccountPermissionGroup o) {
  buildCounterAccountPermissionGroup++;
  if (buildCounterAccountPermissionGroup < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountPermissionGroup--;
}

core.List<api.AccountPermissionGroup> buildUnnamed3() => [
      buildAccountPermissionGroup(),
      buildAccountPermissionGroup(),
    ];

void checkUnnamed3(core.List<api.AccountPermissionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountPermissionGroup(o[0]);
  checkAccountPermissionGroup(o[1]);
}

core.int buildCounterAccountPermissionGroupsListResponse = 0;
api.AccountPermissionGroupsListResponse
    buildAccountPermissionGroupsListResponse() {
  final o = api.AccountPermissionGroupsListResponse();
  buildCounterAccountPermissionGroupsListResponse++;
  if (buildCounterAccountPermissionGroupsListResponse < 3) {
    o.accountPermissionGroups = buildUnnamed3();
    o.kind = 'foo';
  }
  buildCounterAccountPermissionGroupsListResponse--;
  return o;
}

void checkAccountPermissionGroupsListResponse(
    api.AccountPermissionGroupsListResponse o) {
  buildCounterAccountPermissionGroupsListResponse++;
  if (buildCounterAccountPermissionGroupsListResponse < 3) {
    checkUnnamed3(o.accountPermissionGroups!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountPermissionGroupsListResponse--;
}

core.List<api.AccountPermission> buildUnnamed4() => [
      buildAccountPermission(),
      buildAccountPermission(),
    ];

void checkUnnamed4(core.List<api.AccountPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountPermission(o[0]);
  checkAccountPermission(o[1]);
}

core.int buildCounterAccountPermissionsListResponse = 0;
api.AccountPermissionsListResponse buildAccountPermissionsListResponse() {
  final o = api.AccountPermissionsListResponse();
  buildCounterAccountPermissionsListResponse++;
  if (buildCounterAccountPermissionsListResponse < 3) {
    o.accountPermissions = buildUnnamed4();
    o.kind = 'foo';
  }
  buildCounterAccountPermissionsListResponse--;
  return o;
}

void checkAccountPermissionsListResponse(api.AccountPermissionsListResponse o) {
  buildCounterAccountPermissionsListResponse++;
  if (buildCounterAccountPermissionsListResponse < 3) {
    checkUnnamed4(o.accountPermissions!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountPermissionsListResponse--;
}

core.int buildCounterAccountUserProfile = 0;
api.AccountUserProfile buildAccountUserProfile() {
  final o = api.AccountUserProfile();
  buildCounterAccountUserProfile++;
  if (buildCounterAccountUserProfile < 3) {
    o.accountId = 'foo';
    o.active = true;
    o.advertiserFilter = buildObjectFilter();
    o.campaignFilter = buildObjectFilter();
    o.comments = 'foo';
    o.email = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.locale = 'foo';
    o.name = 'foo';
    o.siteFilter = buildObjectFilter();
    o.subaccountId = 'foo';
    o.traffickerType = 'foo';
    o.userAccessType = 'foo';
    o.userRoleFilter = buildObjectFilter();
    o.userRoleId = 'foo';
  }
  buildCounterAccountUserProfile--;
  return o;
}

void checkAccountUserProfile(api.AccountUserProfile o) {
  buildCounterAccountUserProfile++;
  if (buildCounterAccountUserProfile < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.active!, unittest.isTrue);
    checkObjectFilter(o.advertiserFilter!);
    checkObjectFilter(o.campaignFilter!);
    unittest.expect(
      o.comments!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkObjectFilter(o.siteFilter!);
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.traffickerType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userAccessType!,
      unittest.equals('foo'),
    );
    checkObjectFilter(o.userRoleFilter!);
    unittest.expect(
      o.userRoleId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountUserProfile--;
}

core.List<api.AccountUserProfile> buildUnnamed5() => [
      buildAccountUserProfile(),
      buildAccountUserProfile(),
    ];

void checkUnnamed5(core.List<api.AccountUserProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountUserProfile(o[0]);
  checkAccountUserProfile(o[1]);
}

core.int buildCounterAccountUserProfilesListResponse = 0;
api.AccountUserProfilesListResponse buildAccountUserProfilesListResponse() {
  final o = api.AccountUserProfilesListResponse();
  buildCounterAccountUserProfilesListResponse++;
  if (buildCounterAccountUserProfilesListResponse < 3) {
    o.accountUserProfiles = buildUnnamed5();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAccountUserProfilesListResponse--;
  return o;
}

void checkAccountUserProfilesListResponse(
    api.AccountUserProfilesListResponse o) {
  buildCounterAccountUserProfilesListResponse++;
  if (buildCounterAccountUserProfilesListResponse < 3) {
    checkUnnamed5(o.accountUserProfiles!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountUserProfilesListResponse--;
}

core.List<api.Account> buildUnnamed6() => [
      buildAccount(),
      buildAccount(),
    ];

void checkUnnamed6(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccountsListResponse = 0;
api.AccountsListResponse buildAccountsListResponse() {
  final o = api.AccountsListResponse();
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    o.accounts = buildUnnamed6();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAccountsListResponse--;
  return o;
}

void checkAccountsListResponse(api.AccountsListResponse o) {
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    checkUnnamed6(o.accounts!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountsListResponse--;
}

core.List<api.DimensionValue> buildUnnamed7() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed7(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.int buildCounterActivities = 0;
api.Activities buildActivities() {
  final o = api.Activities();
  buildCounterActivities++;
  if (buildCounterActivities < 3) {
    o.filters = buildUnnamed7();
    o.kind = 'foo';
    o.metricNames = buildUnnamed8();
  }
  buildCounterActivities--;
  return o;
}

void checkActivities(api.Activities o) {
  buildCounterActivities++;
  if (buildCounterActivities < 3) {
    checkUnnamed7(o.filters!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.metricNames!);
  }
  buildCounterActivities--;
}

core.List<api.CreativeGroupAssignment> buildUnnamed9() => [
      buildCreativeGroupAssignment(),
      buildCreativeGroupAssignment(),
    ];

void checkUnnamed9(core.List<api.CreativeGroupAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeGroupAssignment(o[0]);
  checkCreativeGroupAssignment(o[1]);
}

core.List<api.EventTagOverride> buildUnnamed10() => [
      buildEventTagOverride(),
      buildEventTagOverride(),
    ];

void checkUnnamed10(core.List<api.EventTagOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventTagOverride(o[0]);
  checkEventTagOverride(o[1]);
}

core.List<api.PlacementAssignment> buildUnnamed11() => [
      buildPlacementAssignment(),
      buildPlacementAssignment(),
    ];

void checkUnnamed11(core.List<api.PlacementAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlacementAssignment(o[0]);
  checkPlacementAssignment(o[1]);
}

core.int buildCounterAd = 0;
api.Ad buildAd() {
  final o = api.Ad();
  buildCounterAd++;
  if (buildCounterAd < 3) {
    o.accountId = 'foo';
    o.active = true;
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.archived = true;
    o.audienceSegmentId = 'foo';
    o.campaignId = 'foo';
    o.campaignIdDimensionValue = buildDimensionValue();
    o.clickThroughUrl = buildClickThroughUrl();
    o.clickThroughUrlSuffixProperties = buildClickThroughUrlSuffixProperties();
    o.comments = 'foo';
    o.compatibility = 'foo';
    o.createInfo = buildLastModifiedInfo();
    o.creativeGroupAssignments = buildUnnamed9();
    o.creativeRotation = buildCreativeRotation();
    o.dayPartTargeting = buildDayPartTargeting();
    o.defaultClickThroughEventTagProperties =
        buildDefaultClickThroughEventTagProperties();
    o.deliverySchedule = buildDeliverySchedule();
    o.dynamicClickTracker = true;
    o.endTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.eventTagOverrides = buildUnnamed10();
    o.geoTargeting = buildGeoTargeting();
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.keyValueTargetingExpression = buildKeyValueTargetingExpression();
    o.kind = 'foo';
    o.languageTargeting = buildLanguageTargeting();
    o.lastModifiedInfo = buildLastModifiedInfo();
    o.name = 'foo';
    o.placementAssignments = buildUnnamed11();
    o.remarketingListExpression = buildListTargetingExpression();
    o.size = buildSize();
    o.sslCompliant = true;
    o.sslRequired = true;
    o.startTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.subaccountId = 'foo';
    o.targetingTemplateId = 'foo';
    o.technologyTargeting = buildTechnologyTargeting();
    o.type = 'foo';
  }
  buildCounterAd--;
  return o;
}

void checkAd(api.Ad o) {
  buildCounterAd++;
  if (buildCounterAd < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    unittest.expect(o.archived!, unittest.isTrue);
    unittest.expect(
      o.audienceSegmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.campaignId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.campaignIdDimensionValue!);
    checkClickThroughUrl(o.clickThroughUrl!);
    checkClickThroughUrlSuffixProperties(o.clickThroughUrlSuffixProperties!);
    unittest.expect(
      o.comments!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.compatibility!,
      unittest.equals('foo'),
    );
    checkLastModifiedInfo(o.createInfo!);
    checkUnnamed9(o.creativeGroupAssignments!);
    checkCreativeRotation(o.creativeRotation!);
    checkDayPartTargeting(o.dayPartTargeting!);
    checkDefaultClickThroughEventTagProperties(
        o.defaultClickThroughEventTagProperties!);
    checkDeliverySchedule(o.deliverySchedule!);
    unittest.expect(o.dynamicClickTracker!, unittest.isTrue);
    unittest.expect(
      o.endTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkUnnamed10(o.eventTagOverrides!);
    checkGeoTargeting(o.geoTargeting!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    checkKeyValueTargetingExpression(o.keyValueTargetingExpression!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLanguageTargeting(o.languageTargeting!);
    checkLastModifiedInfo(o.lastModifiedInfo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.placementAssignments!);
    checkListTargetingExpression(o.remarketingListExpression!);
    checkSize(o.size!);
    unittest.expect(o.sslCompliant!, unittest.isTrue);
    unittest.expect(o.sslRequired!, unittest.isTrue);
    unittest.expect(
      o.startTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetingTemplateId!,
      unittest.equals('foo'),
    );
    checkTechnologyTargeting(o.technologyTargeting!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAd--;
}

core.int buildCounterAdBlockingConfiguration = 0;
api.AdBlockingConfiguration buildAdBlockingConfiguration() {
  final o = api.AdBlockingConfiguration();
  buildCounterAdBlockingConfiguration++;
  if (buildCounterAdBlockingConfiguration < 3) {
    o.enabled = true;
  }
  buildCounterAdBlockingConfiguration--;
  return o;
}

void checkAdBlockingConfiguration(api.AdBlockingConfiguration o) {
  buildCounterAdBlockingConfiguration++;
  if (buildCounterAdBlockingConfiguration < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterAdBlockingConfiguration--;
}

core.int buildCounterAdSlot = 0;
api.AdSlot buildAdSlot() {
  final o = api.AdSlot();
  buildCounterAdSlot++;
  if (buildCounterAdSlot < 3) {
    o.comment = 'foo';
    o.compatibility = 'foo';
    o.height = 'foo';
    o.linkedPlacementId = 'foo';
    o.name = 'foo';
    o.paymentSourceType = 'foo';
    o.primary = true;
    o.width = 'foo';
  }
  buildCounterAdSlot--;
  return o;
}

void checkAdSlot(api.AdSlot o) {
  buildCounterAdSlot++;
  if (buildCounterAdSlot < 3) {
    unittest.expect(
      o.comment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.compatibility!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkedPlacementId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentSourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.primary!, unittest.isTrue);
    unittest.expect(
      o.width!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdSlot--;
}

core.List<api.Ad> buildUnnamed12() => [
      buildAd(),
      buildAd(),
    ];

void checkUnnamed12(core.List<api.Ad> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAd(o[0]);
  checkAd(o[1]);
}

core.int buildCounterAdsListResponse = 0;
api.AdsListResponse buildAdsListResponse() {
  final o = api.AdsListResponse();
  buildCounterAdsListResponse++;
  if (buildCounterAdsListResponse < 3) {
    o.ads = buildUnnamed12();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAdsListResponse--;
  return o;
}

void checkAdsListResponse(api.AdsListResponse o) {
  buildCounterAdsListResponse++;
  if (buildCounterAdsListResponse < 3) {
    checkUnnamed12(o.ads!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdsListResponse--;
}

core.int buildCounterAdvertiser = 0;
api.Advertiser buildAdvertiser() {
  final o = api.Advertiser();
  buildCounterAdvertiser++;
  if (buildCounterAdvertiser < 3) {
    o.accountId = 'foo';
    o.advertiserGroupId = 'foo';
    o.clickThroughUrlSuffix = 'foo';
    o.defaultClickThroughEventTagId = 'foo';
    o.defaultEmail = 'foo';
    o.floodlightConfigurationId = 'foo';
    o.floodlightConfigurationIdDimensionValue = buildDimensionValue();
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.kind = 'foo';
    o.measurementPartnerLink = buildMeasurementPartnerAdvertiserLink();
    o.name = 'foo';
    o.originalFloodlightConfigurationId = 'foo';
    o.status = 'foo';
    o.subaccountId = 'foo';
    o.suspended = true;
  }
  buildCounterAdvertiser--;
  return o;
}

void checkAdvertiser(api.Advertiser o) {
  buildCounterAdvertiser++;
  if (buildCounterAdvertiser < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clickThroughUrlSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultClickThroughEventTagId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floodlightConfigurationId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.floodlightConfigurationIdDimensionValue!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkMeasurementPartnerAdvertiserLink(o.measurementPartnerLink!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalFloodlightConfigurationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.suspended!, unittest.isTrue);
  }
  buildCounterAdvertiser--;
}

core.int buildCounterAdvertiserGroup = 0;
api.AdvertiserGroup buildAdvertiserGroup() {
  final o = api.AdvertiserGroup();
  buildCounterAdvertiserGroup++;
  if (buildCounterAdvertiserGroup < 3) {
    o.accountId = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterAdvertiserGroup--;
  return o;
}

void checkAdvertiserGroup(api.AdvertiserGroup o) {
  buildCounterAdvertiserGroup++;
  if (buildCounterAdvertiserGroup < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdvertiserGroup--;
}

core.List<api.AdvertiserGroup> buildUnnamed13() => [
      buildAdvertiserGroup(),
      buildAdvertiserGroup(),
    ];

void checkUnnamed13(core.List<api.AdvertiserGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdvertiserGroup(o[0]);
  checkAdvertiserGroup(o[1]);
}

core.int buildCounterAdvertiserGroupsListResponse = 0;
api.AdvertiserGroupsListResponse buildAdvertiserGroupsListResponse() {
  final o = api.AdvertiserGroupsListResponse();
  buildCounterAdvertiserGroupsListResponse++;
  if (buildCounterAdvertiserGroupsListResponse < 3) {
    o.advertiserGroups = buildUnnamed13();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAdvertiserGroupsListResponse--;
  return o;
}

void checkAdvertiserGroupsListResponse(api.AdvertiserGroupsListResponse o) {
  buildCounterAdvertiserGroupsListResponse++;
  if (buildCounterAdvertiserGroupsListResponse < 3) {
    checkUnnamed13(o.advertiserGroups!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdvertiserGroupsListResponse--;
}

core.List<api.Invoice> buildUnnamed14() => [
      buildInvoice(),
      buildInvoice(),
    ];

void checkUnnamed14(core.List<api.Invoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoice(o[0]);
  checkInvoice(o[1]);
}

core.int buildCounterAdvertiserInvoicesListResponse = 0;
api.AdvertiserInvoicesListResponse buildAdvertiserInvoicesListResponse() {
  final o = api.AdvertiserInvoicesListResponse();
  buildCounterAdvertiserInvoicesListResponse++;
  if (buildCounterAdvertiserInvoicesListResponse < 3) {
    o.invoices = buildUnnamed14();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAdvertiserInvoicesListResponse--;
  return o;
}

void checkAdvertiserInvoicesListResponse(api.AdvertiserInvoicesListResponse o) {
  buildCounterAdvertiserInvoicesListResponse++;
  if (buildCounterAdvertiserInvoicesListResponse < 3) {
    checkUnnamed14(o.invoices!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdvertiserInvoicesListResponse--;
}

core.List<api.LandingPage> buildUnnamed15() => [
      buildLandingPage(),
      buildLandingPage(),
    ];

void checkUnnamed15(core.List<api.LandingPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLandingPage(o[0]);
  checkLandingPage(o[1]);
}

core.int buildCounterAdvertiserLandingPagesListResponse = 0;
api.AdvertiserLandingPagesListResponse
    buildAdvertiserLandingPagesListResponse() {
  final o = api.AdvertiserLandingPagesListResponse();
  buildCounterAdvertiserLandingPagesListResponse++;
  if (buildCounterAdvertiserLandingPagesListResponse < 3) {
    o.kind = 'foo';
    o.landingPages = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterAdvertiserLandingPagesListResponse--;
  return o;
}

void checkAdvertiserLandingPagesListResponse(
    api.AdvertiserLandingPagesListResponse o) {
  buildCounterAdvertiserLandingPagesListResponse++;
  if (buildCounterAdvertiserLandingPagesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.landingPages!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdvertiserLandingPagesListResponse--;
}

core.List<api.Advertiser> buildUnnamed16() => [
      buildAdvertiser(),
      buildAdvertiser(),
    ];

void checkUnnamed16(core.List<api.Advertiser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdvertiser(o[0]);
  checkAdvertiser(o[1]);
}

core.int buildCounterAdvertisersListResponse = 0;
api.AdvertisersListResponse buildAdvertisersListResponse() {
  final o = api.AdvertisersListResponse();
  buildCounterAdvertisersListResponse++;
  if (buildCounterAdvertisersListResponse < 3) {
    o.advertisers = buildUnnamed16();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAdvertisersListResponse--;
  return o;
}

void checkAdvertisersListResponse(api.AdvertisersListResponse o) {
  buildCounterAdvertisersListResponse++;
  if (buildCounterAdvertisersListResponse < 3) {
    checkUnnamed16(o.advertisers!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdvertisersListResponse--;
}

core.int buildCounterAudienceSegment = 0;
api.AudienceSegment buildAudienceSegment() {
  final o = api.AudienceSegment();
  buildCounterAudienceSegment++;
  if (buildCounterAudienceSegment < 3) {
    o.allocation = 42;
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterAudienceSegment--;
  return o;
}

void checkAudienceSegment(api.AudienceSegment o) {
  buildCounterAudienceSegment++;
  if (buildCounterAudienceSegment < 3) {
    unittest.expect(
      o.allocation!,
      unittest.equals(42),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAudienceSegment--;
}

core.List<api.AudienceSegment> buildUnnamed17() => [
      buildAudienceSegment(),
      buildAudienceSegment(),
    ];

void checkUnnamed17(core.List<api.AudienceSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudienceSegment(o[0]);
  checkAudienceSegment(o[1]);
}

core.int buildCounterAudienceSegmentGroup = 0;
api.AudienceSegmentGroup buildAudienceSegmentGroup() {
  final o = api.AudienceSegmentGroup();
  buildCounterAudienceSegmentGroup++;
  if (buildCounterAudienceSegmentGroup < 3) {
    o.audienceSegments = buildUnnamed17();
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterAudienceSegmentGroup--;
  return o;
}

void checkAudienceSegmentGroup(api.AudienceSegmentGroup o) {
  buildCounterAudienceSegmentGroup++;
  if (buildCounterAudienceSegmentGroup < 3) {
    checkUnnamed17(o.audienceSegments!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAudienceSegmentGroup--;
}

core.int buildCounterBillingAssignment = 0;
api.BillingAssignment buildBillingAssignment() {
  final o = api.BillingAssignment();
  buildCounterBillingAssignment++;
  if (buildCounterBillingAssignment < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.campaignId = 'foo';
    o.kind = 'foo';
    o.subaccountId = 'foo';
  }
  buildCounterBillingAssignment--;
  return o;
}

void checkBillingAssignment(api.BillingAssignment o) {
  buildCounterBillingAssignment++;
  if (buildCounterBillingAssignment < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.campaignId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingAssignment--;
}

core.List<api.BillingAssignment> buildUnnamed18() => [
      buildBillingAssignment(),
      buildBillingAssignment(),
    ];

void checkUnnamed18(core.List<api.BillingAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingAssignment(o[0]);
  checkBillingAssignment(o[1]);
}

core.int buildCounterBillingAssignmentsListResponse = 0;
api.BillingAssignmentsListResponse buildBillingAssignmentsListResponse() {
  final o = api.BillingAssignmentsListResponse();
  buildCounterBillingAssignmentsListResponse++;
  if (buildCounterBillingAssignmentsListResponse < 3) {
    o.billingAssignments = buildUnnamed18();
    o.kind = 'foo';
  }
  buildCounterBillingAssignmentsListResponse--;
  return o;
}

void checkBillingAssignmentsListResponse(api.BillingAssignmentsListResponse o) {
  buildCounterBillingAssignmentsListResponse++;
  if (buildCounterBillingAssignmentsListResponse < 3) {
    checkUnnamed18(o.billingAssignments!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingAssignmentsListResponse--;
}

core.int buildCounterBillingProfile = 0;
api.BillingProfile buildBillingProfile() {
  final o = api.BillingProfile();
  buildCounterBillingProfile++;
  if (buildCounterBillingProfile < 3) {
    o.consolidatedInvoice = true;
    o.countryCode = 'foo';
    o.currencyCode = 'foo';
    o.id = 'foo';
    o.invoiceLevel = 'foo';
    o.isDefault = true;
    o.kind = 'foo';
    o.name = 'foo';
    o.paymentsAccountId = 'foo';
    o.paymentsCustomerId = 'foo';
    o.purchaseOrder = 'foo';
    o.secondaryPaymentsCustomerId = 'foo';
    o.status = 'foo';
  }
  buildCounterBillingProfile--;
  return o;
}

void checkBillingProfile(api.BillingProfile o) {
  buildCounterBillingProfile++;
  if (buildCounterBillingProfile < 3) {
    unittest.expect(o.consolidatedInvoice!, unittest.isTrue);
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invoiceLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDefault!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentsAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentsCustomerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseOrder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secondaryPaymentsCustomerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingProfile--;
}

core.List<api.BillingProfile> buildUnnamed19() => [
      buildBillingProfile(),
      buildBillingProfile(),
    ];

void checkUnnamed19(core.List<api.BillingProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingProfile(o[0]);
  checkBillingProfile(o[1]);
}

core.int buildCounterBillingProfilesListResponse = 0;
api.BillingProfilesListResponse buildBillingProfilesListResponse() {
  final o = api.BillingProfilesListResponse();
  buildCounterBillingProfilesListResponse++;
  if (buildCounterBillingProfilesListResponse < 3) {
    o.billingProfiles = buildUnnamed19();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterBillingProfilesListResponse--;
  return o;
}

void checkBillingProfilesListResponse(api.BillingProfilesListResponse o) {
  buildCounterBillingProfilesListResponse++;
  if (buildCounterBillingProfilesListResponse < 3) {
    checkUnnamed19(o.billingProfiles!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingProfilesListResponse--;
}

core.List<api.BillingRateTieredRate> buildUnnamed20() => [
      buildBillingRateTieredRate(),
      buildBillingRateTieredRate(),
    ];

void checkUnnamed20(core.List<api.BillingRateTieredRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingRateTieredRate(o[0]);
  checkBillingRateTieredRate(o[1]);
}

core.int buildCounterBillingRate = 0;
api.BillingRate buildBillingRate() {
  final o = api.BillingRate();
  buildCounterBillingRate++;
  if (buildCounterBillingRate < 3) {
    o.currencyCode = 'foo';
    o.endDate = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.rateInMicros = 'foo';
    o.startDate = 'foo';
    o.tieredRates = buildUnnamed20();
    o.type = 'foo';
    o.unitOfMeasure = 'foo';
  }
  buildCounterBillingRate--;
  return o;
}

void checkBillingRate(api.BillingRate o) {
  buildCounterBillingRate++;
  if (buildCounterBillingRate < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endDate!,
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
      o.rateInMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.tieredRates!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unitOfMeasure!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingRate--;
}

core.int buildCounterBillingRateTieredRate = 0;
api.BillingRateTieredRate buildBillingRateTieredRate() {
  final o = api.BillingRateTieredRate();
  buildCounterBillingRateTieredRate++;
  if (buildCounterBillingRateTieredRate < 3) {
    o.highValue = 'foo';
    o.lowValue = 'foo';
    o.rateInMicros = 'foo';
  }
  buildCounterBillingRateTieredRate--;
  return o;
}

void checkBillingRateTieredRate(api.BillingRateTieredRate o) {
  buildCounterBillingRateTieredRate++;
  if (buildCounterBillingRateTieredRate < 3) {
    unittest.expect(
      o.highValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lowValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rateInMicros!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingRateTieredRate--;
}

core.List<api.BillingRate> buildUnnamed21() => [
      buildBillingRate(),
      buildBillingRate(),
    ];

void checkUnnamed21(core.List<api.BillingRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingRate(o[0]);
  checkBillingRate(o[1]);
}

core.int buildCounterBillingRatesListResponse = 0;
api.BillingRatesListResponse buildBillingRatesListResponse() {
  final o = api.BillingRatesListResponse();
  buildCounterBillingRatesListResponse++;
  if (buildCounterBillingRatesListResponse < 3) {
    o.billingRates = buildUnnamed21();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterBillingRatesListResponse--;
  return o;
}

void checkBillingRatesListResponse(api.BillingRatesListResponse o) {
  buildCounterBillingRatesListResponse++;
  if (buildCounterBillingRatesListResponse < 3) {
    checkUnnamed21(o.billingRates!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingRatesListResponse--;
}

core.int buildCounterBrowser = 0;
api.Browser buildBrowser() {
  final o = api.Browser();
  buildCounterBrowser++;
  if (buildCounterBrowser < 3) {
    o.browserVersionId = 'foo';
    o.dartId = 'foo';
    o.kind = 'foo';
    o.majorVersion = 'foo';
    o.minorVersion = 'foo';
    o.name = 'foo';
  }
  buildCounterBrowser--;
  return o;
}

void checkBrowser(api.Browser o) {
  buildCounterBrowser++;
  if (buildCounterBrowser < 3) {
    unittest.expect(
      o.browserVersionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dartId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.majorVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minorVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterBrowser--;
}

core.List<api.Browser> buildUnnamed22() => [
      buildBrowser(),
      buildBrowser(),
    ];

void checkUnnamed22(core.List<api.Browser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBrowser(o[0]);
  checkBrowser(o[1]);
}

core.int buildCounterBrowsersListResponse = 0;
api.BrowsersListResponse buildBrowsersListResponse() {
  final o = api.BrowsersListResponse();
  buildCounterBrowsersListResponse++;
  if (buildCounterBrowsersListResponse < 3) {
    o.browsers = buildUnnamed22();
    o.kind = 'foo';
  }
  buildCounterBrowsersListResponse--;
  return o;
}

void checkBrowsersListResponse(api.BrowsersListResponse o) {
  buildCounterBrowsersListResponse++;
  if (buildCounterBrowsersListResponse < 3) {
    checkUnnamed22(o.browsers!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBrowsersListResponse--;
}

core.List<api.CreativeOptimizationConfiguration> buildUnnamed23() => [
      buildCreativeOptimizationConfiguration(),
      buildCreativeOptimizationConfiguration(),
    ];

void checkUnnamed23(core.List<api.CreativeOptimizationConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeOptimizationConfiguration(o[0]);
  checkCreativeOptimizationConfiguration(o[1]);
}

core.List<api.AudienceSegmentGroup> buildUnnamed24() => [
      buildAudienceSegmentGroup(),
      buildAudienceSegmentGroup(),
    ];

void checkUnnamed24(core.List<api.AudienceSegmentGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudienceSegmentGroup(o[0]);
  checkAudienceSegmentGroup(o[1]);
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

core.List<api.EventTagOverride> buildUnnamed26() => [
      buildEventTagOverride(),
      buildEventTagOverride(),
    ];

void checkUnnamed26(core.List<api.EventTagOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventTagOverride(o[0]);
  checkEventTagOverride(o[1]);
}

core.int buildCounterCampaign = 0;
api.Campaign buildCampaign() {
  final o = api.Campaign();
  buildCounterCampaign++;
  if (buildCounterCampaign < 3) {
    o.accountId = 'foo';
    o.adBlockingConfiguration = buildAdBlockingConfiguration();
    o.additionalCreativeOptimizationConfigurations = buildUnnamed23();
    o.advertiserGroupId = 'foo';
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.archived = true;
    o.audienceSegmentGroups = buildUnnamed24();
    o.billingInvoiceCode = 'foo';
    o.clickThroughUrlSuffixProperties = buildClickThroughUrlSuffixProperties();
    o.comment = 'foo';
    o.createInfo = buildLastModifiedInfo();
    o.creativeGroupIds = buildUnnamed25();
    o.creativeOptimizationConfiguration =
        buildCreativeOptimizationConfiguration();
    o.defaultClickThroughEventTagProperties =
        buildDefaultClickThroughEventTagProperties();
    o.defaultLandingPageId = 'foo';
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.eventTagOverrides = buildUnnamed26();
    o.externalId = 'foo';
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.kind = 'foo';
    o.lastModifiedInfo = buildLastModifiedInfo();
    o.measurementPartnerLink = buildMeasurementPartnerCampaignLink();
    o.name = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.subaccountId = 'foo';
  }
  buildCounterCampaign--;
  return o;
}

void checkCampaign(api.Campaign o) {
  buildCounterCampaign++;
  if (buildCounterCampaign < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkAdBlockingConfiguration(o.adBlockingConfiguration!);
    checkUnnamed23(o.additionalCreativeOptimizationConfigurations!);
    unittest.expect(
      o.advertiserGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    unittest.expect(o.archived!, unittest.isTrue);
    checkUnnamed24(o.audienceSegmentGroups!);
    unittest.expect(
      o.billingInvoiceCode!,
      unittest.equals('foo'),
    );
    checkClickThroughUrlSuffixProperties(o.clickThroughUrlSuffixProperties!);
    unittest.expect(
      o.comment!,
      unittest.equals('foo'),
    );
    checkLastModifiedInfo(o.createInfo!);
    checkUnnamed25(o.creativeGroupIds!);
    checkCreativeOptimizationConfiguration(
        o.creativeOptimizationConfiguration!);
    checkDefaultClickThroughEventTagProperties(
        o.defaultClickThroughEventTagProperties!);
    unittest.expect(
      o.defaultLandingPageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    checkUnnamed26(o.eventTagOverrides!);
    unittest.expect(
      o.externalId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLastModifiedInfo(o.lastModifiedInfo!);
    checkMeasurementPartnerCampaignLink(o.measurementPartnerLink!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCampaign--;
}

core.int buildCounterCampaignCreativeAssociation = 0;
api.CampaignCreativeAssociation buildCampaignCreativeAssociation() {
  final o = api.CampaignCreativeAssociation();
  buildCounterCampaignCreativeAssociation++;
  if (buildCounterCampaignCreativeAssociation < 3) {
    o.creativeId = 'foo';
    o.kind = 'foo';
  }
  buildCounterCampaignCreativeAssociation--;
  return o;
}

void checkCampaignCreativeAssociation(api.CampaignCreativeAssociation o) {
  buildCounterCampaignCreativeAssociation++;
  if (buildCounterCampaignCreativeAssociation < 3) {
    unittest.expect(
      o.creativeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterCampaignCreativeAssociation--;
}

core.List<api.CampaignCreativeAssociation> buildUnnamed27() => [
      buildCampaignCreativeAssociation(),
      buildCampaignCreativeAssociation(),
    ];

void checkUnnamed27(core.List<api.CampaignCreativeAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCampaignCreativeAssociation(o[0]);
  checkCampaignCreativeAssociation(o[1]);
}

core.int buildCounterCampaignCreativeAssociationsListResponse = 0;
api.CampaignCreativeAssociationsListResponse
    buildCampaignCreativeAssociationsListResponse() {
  final o = api.CampaignCreativeAssociationsListResponse();
  buildCounterCampaignCreativeAssociationsListResponse++;
  if (buildCounterCampaignCreativeAssociationsListResponse < 3) {
    o.campaignCreativeAssociations = buildUnnamed27();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCampaignCreativeAssociationsListResponse--;
  return o;
}

void checkCampaignCreativeAssociationsListResponse(
    api.CampaignCreativeAssociationsListResponse o) {
  buildCounterCampaignCreativeAssociationsListResponse++;
  if (buildCounterCampaignCreativeAssociationsListResponse < 3) {
    checkUnnamed27(o.campaignCreativeAssociations!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCampaignCreativeAssociationsListResponse--;
}

core.int buildCounterCampaignSummary = 0;
api.CampaignSummary buildCampaignSummary() {
  final o = api.CampaignSummary();
  buildCounterCampaignSummary++;
  if (buildCounterCampaignSummary < 3) {
    o.billingInvoiceCode = 'foo';
    o.campaignId = 'foo';
    o.preTaxAmountMicros = 'foo';
    o.taxAmountMicros = 'foo';
    o.totalAmountMicros = 'foo';
  }
  buildCounterCampaignSummary--;
  return o;
}

void checkCampaignSummary(api.CampaignSummary o) {
  buildCounterCampaignSummary++;
  if (buildCounterCampaignSummary < 3) {
    unittest.expect(
      o.billingInvoiceCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.campaignId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preTaxAmountMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taxAmountMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalAmountMicros!,
      unittest.equals('foo'),
    );
  }
  buildCounterCampaignSummary--;
}

core.List<api.Campaign> buildUnnamed28() => [
      buildCampaign(),
      buildCampaign(),
    ];

void checkUnnamed28(core.List<api.Campaign> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCampaign(o[0]);
  checkCampaign(o[1]);
}

core.int buildCounterCampaignsListResponse = 0;
api.CampaignsListResponse buildCampaignsListResponse() {
  final o = api.CampaignsListResponse();
  buildCounterCampaignsListResponse++;
  if (buildCounterCampaignsListResponse < 3) {
    o.campaigns = buildUnnamed28();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCampaignsListResponse--;
  return o;
}

void checkCampaignsListResponse(api.CampaignsListResponse o) {
  buildCounterCampaignsListResponse++;
  if (buildCounterCampaignsListResponse < 3) {
    checkUnnamed28(o.campaigns!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCampaignsListResponse--;
}

core.List<api.CartDataItem> buildUnnamed29() => [
      buildCartDataItem(),
      buildCartDataItem(),
    ];

void checkUnnamed29(core.List<api.CartDataItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCartDataItem(o[0]);
  checkCartDataItem(o[1]);
}

core.int buildCounterCartData = 0;
api.CartData buildCartData() {
  final o = api.CartData();
  buildCounterCartData++;
  if (buildCounterCartData < 3) {
    o.items = buildUnnamed29();
    o.merchantFeedLabel = 'foo';
    o.merchantFeedLanguage = 'foo';
    o.merchantId = 'foo';
  }
  buildCounterCartData--;
  return o;
}

void checkCartData(api.CartData o) {
  buildCounterCartData++;
  if (buildCounterCartData < 3) {
    checkUnnamed29(o.items!);
    unittest.expect(
      o.merchantFeedLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantFeedLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCartData--;
}

core.int buildCounterCartDataItem = 0;
api.CartDataItem buildCartDataItem() {
  final o = api.CartDataItem();
  buildCounterCartDataItem++;
  if (buildCounterCartDataItem < 3) {
    o.itemId = 'foo';
    o.quantity = 42;
    o.unitPrice = 42.0;
  }
  buildCounterCartDataItem--;
  return o;
}

void checkCartDataItem(api.CartDataItem o) {
  buildCounterCartDataItem++;
  if (buildCounterCartDataItem < 3) {
    unittest.expect(
      o.itemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.unitPrice!,
      unittest.equals(42.0),
    );
  }
  buildCounterCartDataItem--;
}

core.int buildCounterChangeLog = 0;
api.ChangeLog buildChangeLog() {
  final o = api.ChangeLog();
  buildCounterChangeLog++;
  if (buildCounterChangeLog < 3) {
    o.accountId = 'foo';
    o.action = 'foo';
    o.changeTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.fieldName = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.newValue = 'foo';
    o.objectId = 'foo';
    o.objectType = 'foo';
    o.oldValue = 'foo';
    o.subaccountId = 'foo';
    o.transactionId = 'foo';
    o.userProfileId = 'foo';
    o.userProfileName = 'foo';
  }
  buildCounterChangeLog--;
  return o;
}

void checkChangeLog(api.ChangeLog o) {
  buildCounterChangeLog++;
  if (buildCounterChangeLog < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.changeTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oldValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transactionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userProfileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userProfileName!,
      unittest.equals('foo'),
    );
  }
  buildCounterChangeLog--;
}

core.List<api.ChangeLog> buildUnnamed30() => [
      buildChangeLog(),
      buildChangeLog(),
    ];

void checkUnnamed30(core.List<api.ChangeLog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChangeLog(o[0]);
  checkChangeLog(o[1]);
}

core.int buildCounterChangeLogsListResponse = 0;
api.ChangeLogsListResponse buildChangeLogsListResponse() {
  final o = api.ChangeLogsListResponse();
  buildCounterChangeLogsListResponse++;
  if (buildCounterChangeLogsListResponse < 3) {
    o.changeLogs = buildUnnamed30();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterChangeLogsListResponse--;
  return o;
}

void checkChangeLogsListResponse(api.ChangeLogsListResponse o) {
  buildCounterChangeLogsListResponse++;
  if (buildCounterChangeLogsListResponse < 3) {
    checkUnnamed30(o.changeLogs!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterChangeLogsListResponse--;
}

core.List<api.City> buildUnnamed31() => [
      buildCity(),
      buildCity(),
    ];

void checkUnnamed31(core.List<api.City> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCity(o[0]);
  checkCity(o[1]);
}

core.int buildCounterCitiesListResponse = 0;
api.CitiesListResponse buildCitiesListResponse() {
  final o = api.CitiesListResponse();
  buildCounterCitiesListResponse++;
  if (buildCounterCitiesListResponse < 3) {
    o.cities = buildUnnamed31();
    o.kind = 'foo';
  }
  buildCounterCitiesListResponse--;
  return o;
}

void checkCitiesListResponse(api.CitiesListResponse o) {
  buildCounterCitiesListResponse++;
  if (buildCounterCitiesListResponse < 3) {
    checkUnnamed31(o.cities!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterCitiesListResponse--;
}

core.int buildCounterCity = 0;
api.City buildCity() {
  final o = api.City();
  buildCounterCity++;
  if (buildCounterCity < 3) {
    o.countryCode = 'foo';
    o.countryDartId = 'foo';
    o.dartId = 'foo';
    o.kind = 'foo';
    o.metroCode = 'foo';
    o.metroDmaId = 'foo';
    o.name = 'foo';
    o.regionCode = 'foo';
    o.regionDartId = 'foo';
  }
  buildCounterCity--;
  return o;
}

void checkCity(api.City o) {
  buildCounterCity++;
  if (buildCounterCity < 3) {
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryDartId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dartId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metroCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metroDmaId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionDartId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCity--;
}

core.int buildCounterClickTag = 0;
api.ClickTag buildClickTag() {
  final o = api.ClickTag();
  buildCounterClickTag++;
  if (buildCounterClickTag < 3) {
    o.clickThroughUrl = buildCreativeClickThroughUrl();
    o.eventName = 'foo';
    o.name = 'foo';
  }
  buildCounterClickTag--;
  return o;
}

void checkClickTag(api.ClickTag o) {
  buildCounterClickTag++;
  if (buildCounterClickTag < 3) {
    checkCreativeClickThroughUrl(o.clickThroughUrl!);
    unittest.expect(
      o.eventName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterClickTag--;
}

core.int buildCounterClickThroughUrl = 0;
api.ClickThroughUrl buildClickThroughUrl() {
  final o = api.ClickThroughUrl();
  buildCounterClickThroughUrl++;
  if (buildCounterClickThroughUrl < 3) {
    o.computedClickThroughUrl = 'foo';
    o.customClickThroughUrl = 'foo';
    o.defaultLandingPage = true;
    o.landingPageId = 'foo';
  }
  buildCounterClickThroughUrl--;
  return o;
}

void checkClickThroughUrl(api.ClickThroughUrl o) {
  buildCounterClickThroughUrl++;
  if (buildCounterClickThroughUrl < 3) {
    unittest.expect(
      o.computedClickThroughUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customClickThroughUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.defaultLandingPage!, unittest.isTrue);
    unittest.expect(
      o.landingPageId!,
      unittest.equals('foo'),
    );
  }
  buildCounterClickThroughUrl--;
}

core.int buildCounterClickThroughUrlSuffixProperties = 0;
api.ClickThroughUrlSuffixProperties buildClickThroughUrlSuffixProperties() {
  final o = api.ClickThroughUrlSuffixProperties();
  buildCounterClickThroughUrlSuffixProperties++;
  if (buildCounterClickThroughUrlSuffixProperties < 3) {
    o.clickThroughUrlSuffix = 'foo';
    o.overrideInheritedSuffix = true;
  }
  buildCounterClickThroughUrlSuffixProperties--;
  return o;
}

void checkClickThroughUrlSuffixProperties(
    api.ClickThroughUrlSuffixProperties o) {
  buildCounterClickThroughUrlSuffixProperties++;
  if (buildCounterClickThroughUrlSuffixProperties < 3) {
    unittest.expect(
      o.clickThroughUrlSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(o.overrideInheritedSuffix!, unittest.isTrue);
  }
  buildCounterClickThroughUrlSuffixProperties--;
}

core.int buildCounterCompanionClickThroughOverride = 0;
api.CompanionClickThroughOverride buildCompanionClickThroughOverride() {
  final o = api.CompanionClickThroughOverride();
  buildCounterCompanionClickThroughOverride++;
  if (buildCounterCompanionClickThroughOverride < 3) {
    o.clickThroughUrl = buildClickThroughUrl();
    o.creativeId = 'foo';
  }
  buildCounterCompanionClickThroughOverride--;
  return o;
}

void checkCompanionClickThroughOverride(api.CompanionClickThroughOverride o) {
  buildCounterCompanionClickThroughOverride++;
  if (buildCounterCompanionClickThroughOverride < 3) {
    checkClickThroughUrl(o.clickThroughUrl!);
    unittest.expect(
      o.creativeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompanionClickThroughOverride--;
}

core.List<api.Size> buildUnnamed32() => [
      buildSize(),
      buildSize(),
    ];

void checkUnnamed32(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.int buildCounterCompanionSetting = 0;
api.CompanionSetting buildCompanionSetting() {
  final o = api.CompanionSetting();
  buildCounterCompanionSetting++;
  if (buildCounterCompanionSetting < 3) {
    o.companionsDisabled = true;
    o.enabledSizes = buildUnnamed32();
    o.imageOnly = true;
    o.kind = 'foo';
  }
  buildCounterCompanionSetting--;
  return o;
}

void checkCompanionSetting(api.CompanionSetting o) {
  buildCounterCompanionSetting++;
  if (buildCounterCompanionSetting < 3) {
    unittest.expect(o.companionsDisabled!, unittest.isTrue);
    checkUnnamed32(o.enabledSizes!);
    unittest.expect(o.imageOnly!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompanionSetting--;
}

core.int buildCounterCompatibleFields = 0;
api.CompatibleFields buildCompatibleFields() {
  final o = api.CompatibleFields();
  buildCounterCompatibleFields++;
  if (buildCounterCompatibleFields < 3) {
    o.crossDimensionReachReportCompatibleFields =
        buildCrossDimensionReachReportCompatibleFields();
    o.crossMediaReachReportCompatibleFields =
        buildCrossMediaReachReportCompatibleFields();
    o.floodlightReportCompatibleFields =
        buildFloodlightReportCompatibleFields();
    o.kind = 'foo';
    o.pathToConversionReportCompatibleFields =
        buildPathToConversionReportCompatibleFields();
    o.reachReportCompatibleFields = buildReachReportCompatibleFields();
    o.reportCompatibleFields = buildReportCompatibleFields();
  }
  buildCounterCompatibleFields--;
  return o;
}

void checkCompatibleFields(api.CompatibleFields o) {
  buildCounterCompatibleFields++;
  if (buildCounterCompatibleFields < 3) {
    checkCrossDimensionReachReportCompatibleFields(
        o.crossDimensionReachReportCompatibleFields!);
    checkCrossMediaReachReportCompatibleFields(
        o.crossMediaReachReportCompatibleFields!);
    checkFloodlightReportCompatibleFields(o.floodlightReportCompatibleFields!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkPathToConversionReportCompatibleFields(
        o.pathToConversionReportCompatibleFields!);
    checkReachReportCompatibleFields(o.reachReportCompatibleFields!);
    checkReportCompatibleFields(o.reportCompatibleFields!);
  }
  buildCounterCompatibleFields--;
}

core.int buildCounterConnectionType = 0;
api.ConnectionType buildConnectionType() {
  final o = api.ConnectionType();
  buildCounterConnectionType++;
  if (buildCounterConnectionType < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterConnectionType--;
  return o;
}

void checkConnectionType(api.ConnectionType o) {
  buildCounterConnectionType++;
  if (buildCounterConnectionType < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectionType--;
}

core.List<api.ConnectionType> buildUnnamed33() => [
      buildConnectionType(),
      buildConnectionType(),
    ];

void checkUnnamed33(core.List<api.ConnectionType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionType(o[0]);
  checkConnectionType(o[1]);
}

core.int buildCounterConnectionTypesListResponse = 0;
api.ConnectionTypesListResponse buildConnectionTypesListResponse() {
  final o = api.ConnectionTypesListResponse();
  buildCounterConnectionTypesListResponse++;
  if (buildCounterConnectionTypesListResponse < 3) {
    o.connectionTypes = buildUnnamed33();
    o.kind = 'foo';
  }
  buildCounterConnectionTypesListResponse--;
  return o;
}

void checkConnectionTypesListResponse(api.ConnectionTypesListResponse o) {
  buildCounterConnectionTypesListResponse++;
  if (buildCounterConnectionTypesListResponse < 3) {
    checkUnnamed33(o.connectionTypes!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectionTypesListResponse--;
}

core.List<api.ContentCategory> buildUnnamed34() => [
      buildContentCategory(),
      buildContentCategory(),
    ];

void checkUnnamed34(core.List<api.ContentCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContentCategory(o[0]);
  checkContentCategory(o[1]);
}

core.int buildCounterContentCategoriesListResponse = 0;
api.ContentCategoriesListResponse buildContentCategoriesListResponse() {
  final o = api.ContentCategoriesListResponse();
  buildCounterContentCategoriesListResponse++;
  if (buildCounterContentCategoriesListResponse < 3) {
    o.contentCategories = buildUnnamed34();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterContentCategoriesListResponse--;
  return o;
}

void checkContentCategoriesListResponse(api.ContentCategoriesListResponse o) {
  buildCounterContentCategoriesListResponse++;
  if (buildCounterContentCategoriesListResponse < 3) {
    checkUnnamed34(o.contentCategories!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterContentCategoriesListResponse--;
}

core.int buildCounterContentCategory = 0;
api.ContentCategory buildContentCategory() {
  final o = api.ContentCategory();
  buildCounterContentCategory++;
  if (buildCounterContentCategory < 3) {
    o.accountId = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterContentCategory--;
  return o;
}

void checkContentCategory(api.ContentCategory o) {
  buildCounterContentCategory++;
  if (buildCounterContentCategory < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterContentCategory--;
}

core.List<api.CustomFloodlightVariable> buildUnnamed35() => [
      buildCustomFloodlightVariable(),
      buildCustomFloodlightVariable(),
    ];

void checkUnnamed35(core.List<api.CustomFloodlightVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomFloodlightVariable(o[0]);
  checkCustomFloodlightVariable(o[1]);
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

core.List<api.UserIdentifier> buildUnnamed37() => [
      buildUserIdentifier(),
      buildUserIdentifier(),
    ];

void checkUnnamed37(core.List<api.UserIdentifier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserIdentifier(o[0]);
  checkUserIdentifier(o[1]);
}

core.int buildCounterConversion = 0;
api.Conversion buildConversion() {
  final o = api.Conversion();
  buildCounterConversion++;
  if (buildCounterConversion < 3) {
    o.adUserDataConsent = 'foo';
    o.cartData = buildCartData();
    o.childDirectedTreatment = true;
    o.customVariables = buildUnnamed35();
    o.dclid = 'foo';
    o.encryptedUserId = 'foo';
    o.encryptedUserIdCandidates = buildUnnamed36();
    o.floodlightActivityId = 'foo';
    o.floodlightConfigurationId = 'foo';
    o.gclid = 'foo';
    o.impressionId = 'foo';
    o.kind = 'foo';
    o.limitAdTracking = true;
    o.matchId = 'foo';
    o.mobileDeviceId = 'foo';
    o.nonPersonalizedAd = true;
    o.ordinal = 'foo';
    o.quantity = 'foo';
    o.timestampMicros = 'foo';
    o.treatmentForUnderage = true;
    o.userIdentifiers = buildUnnamed37();
    o.value = 42.0;
  }
  buildCounterConversion--;
  return o;
}

void checkConversion(api.Conversion o) {
  buildCounterConversion++;
  if (buildCounterConversion < 3) {
    unittest.expect(
      o.adUserDataConsent!,
      unittest.equals('foo'),
    );
    checkCartData(o.cartData!);
    unittest.expect(o.childDirectedTreatment!, unittest.isTrue);
    checkUnnamed35(o.customVariables!);
    unittest.expect(
      o.dclid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encryptedUserId!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.encryptedUserIdCandidates!);
    unittest.expect(
      o.floodlightActivityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floodlightConfigurationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gclid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.impressionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.limitAdTracking!, unittest.isTrue);
    unittest.expect(
      o.matchId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mobileDeviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.nonPersonalizedAd!, unittest.isTrue);
    unittest.expect(
      o.ordinal!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestampMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(o.treatmentForUnderage!, unittest.isTrue);
    checkUnnamed37(o.userIdentifiers!);
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterConversion--;
}

core.int buildCounterConversionError = 0;
api.ConversionError buildConversionError() {
  final o = api.ConversionError();
  buildCounterConversionError++;
  if (buildCounterConversionError < 3) {
    o.code = 'foo';
    o.kind = 'foo';
    o.message = 'foo';
  }
  buildCounterConversionError--;
  return o;
}

void checkConversionError(api.ConversionError o) {
  buildCounterConversionError++;
  if (buildCounterConversionError < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterConversionError--;
}

core.List<api.ConversionError> buildUnnamed38() => [
      buildConversionError(),
      buildConversionError(),
    ];

void checkUnnamed38(core.List<api.ConversionError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversionError(o[0]);
  checkConversionError(o[1]);
}

core.int buildCounterConversionStatus = 0;
api.ConversionStatus buildConversionStatus() {
  final o = api.ConversionStatus();
  buildCounterConversionStatus++;
  if (buildCounterConversionStatus < 3) {
    o.conversion = buildConversion();
    o.errors = buildUnnamed38();
    o.kind = 'foo';
  }
  buildCounterConversionStatus--;
  return o;
}

void checkConversionStatus(api.ConversionStatus o) {
  buildCounterConversionStatus++;
  if (buildCounterConversionStatus < 3) {
    checkConversion(o.conversion!);
    checkUnnamed38(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterConversionStatus--;
}

core.List<api.Conversion> buildUnnamed39() => [
      buildConversion(),
      buildConversion(),
    ];

void checkUnnamed39(core.List<api.Conversion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversion(o[0]);
  checkConversion(o[1]);
}

core.int buildCounterConversionsBatchInsertRequest = 0;
api.ConversionsBatchInsertRequest buildConversionsBatchInsertRequest() {
  final o = api.ConversionsBatchInsertRequest();
  buildCounterConversionsBatchInsertRequest++;
  if (buildCounterConversionsBatchInsertRequest < 3) {
    o.conversions = buildUnnamed39();
    o.encryptionInfo = buildEncryptionInfo();
    o.kind = 'foo';
  }
  buildCounterConversionsBatchInsertRequest--;
  return o;
}

void checkConversionsBatchInsertRequest(api.ConversionsBatchInsertRequest o) {
  buildCounterConversionsBatchInsertRequest++;
  if (buildCounterConversionsBatchInsertRequest < 3) {
    checkUnnamed39(o.conversions!);
    checkEncryptionInfo(o.encryptionInfo!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterConversionsBatchInsertRequest--;
}

core.List<api.ConversionStatus> buildUnnamed40() => [
      buildConversionStatus(),
      buildConversionStatus(),
    ];

void checkUnnamed40(core.List<api.ConversionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversionStatus(o[0]);
  checkConversionStatus(o[1]);
}

core.int buildCounterConversionsBatchInsertResponse = 0;
api.ConversionsBatchInsertResponse buildConversionsBatchInsertResponse() {
  final o = api.ConversionsBatchInsertResponse();
  buildCounterConversionsBatchInsertResponse++;
  if (buildCounterConversionsBatchInsertResponse < 3) {
    o.hasFailures = true;
    o.kind = 'foo';
    o.status = buildUnnamed40();
  }
  buildCounterConversionsBatchInsertResponse--;
  return o;
}

void checkConversionsBatchInsertResponse(api.ConversionsBatchInsertResponse o) {
  buildCounterConversionsBatchInsertResponse++;
  if (buildCounterConversionsBatchInsertResponse < 3) {
    unittest.expect(o.hasFailures!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.status!);
  }
  buildCounterConversionsBatchInsertResponse--;
}

core.List<api.Conversion> buildUnnamed41() => [
      buildConversion(),
      buildConversion(),
    ];

void checkUnnamed41(core.List<api.Conversion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversion(o[0]);
  checkConversion(o[1]);
}

core.int buildCounterConversionsBatchUpdateRequest = 0;
api.ConversionsBatchUpdateRequest buildConversionsBatchUpdateRequest() {
  final o = api.ConversionsBatchUpdateRequest();
  buildCounterConversionsBatchUpdateRequest++;
  if (buildCounterConversionsBatchUpdateRequest < 3) {
    o.conversions = buildUnnamed41();
    o.encryptionInfo = buildEncryptionInfo();
    o.kind = 'foo';
  }
  buildCounterConversionsBatchUpdateRequest--;
  return o;
}

void checkConversionsBatchUpdateRequest(api.ConversionsBatchUpdateRequest o) {
  buildCounterConversionsBatchUpdateRequest++;
  if (buildCounterConversionsBatchUpdateRequest < 3) {
    checkUnnamed41(o.conversions!);
    checkEncryptionInfo(o.encryptionInfo!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterConversionsBatchUpdateRequest--;
}

core.List<api.ConversionStatus> buildUnnamed42() => [
      buildConversionStatus(),
      buildConversionStatus(),
    ];

void checkUnnamed42(core.List<api.ConversionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversionStatus(o[0]);
  checkConversionStatus(o[1]);
}

core.int buildCounterConversionsBatchUpdateResponse = 0;
api.ConversionsBatchUpdateResponse buildConversionsBatchUpdateResponse() {
  final o = api.ConversionsBatchUpdateResponse();
  buildCounterConversionsBatchUpdateResponse++;
  if (buildCounterConversionsBatchUpdateResponse < 3) {
    o.hasFailures = true;
    o.kind = 'foo';
    o.status = buildUnnamed42();
  }
  buildCounterConversionsBatchUpdateResponse--;
  return o;
}

void checkConversionsBatchUpdateResponse(api.ConversionsBatchUpdateResponse o) {
  buildCounterConversionsBatchUpdateResponse++;
  if (buildCounterConversionsBatchUpdateResponse < 3) {
    unittest.expect(o.hasFailures!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.status!);
  }
  buildCounterConversionsBatchUpdateResponse--;
}

core.List<api.Country> buildUnnamed43() => [
      buildCountry(),
      buildCountry(),
    ];

void checkUnnamed43(core.List<api.Country> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCountry(o[0]);
  checkCountry(o[1]);
}

core.int buildCounterCountriesListResponse = 0;
api.CountriesListResponse buildCountriesListResponse() {
  final o = api.CountriesListResponse();
  buildCounterCountriesListResponse++;
  if (buildCounterCountriesListResponse < 3) {
    o.countries = buildUnnamed43();
    o.kind = 'foo';
  }
  buildCounterCountriesListResponse--;
  return o;
}

void checkCountriesListResponse(api.CountriesListResponse o) {
  buildCounterCountriesListResponse++;
  if (buildCounterCountriesListResponse < 3) {
    checkUnnamed43(o.countries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterCountriesListResponse--;
}

core.int buildCounterCountry = 0;
api.Country buildCountry() {
  final o = api.Country();
  buildCounterCountry++;
  if (buildCounterCountry < 3) {
    o.countryCode = 'foo';
    o.dartId = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.sslEnabled = true;
  }
  buildCounterCountry--;
  return o;
}

void checkCountry(api.Country o) {
  buildCounterCountry++;
  if (buildCounterCountry < 3) {
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dartId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.sslEnabled!, unittest.isTrue);
  }
  buildCounterCountry--;
}

core.List<core.String> buildUnnamed44() => [
      'foo',
      'foo',
    ];

void checkUnnamed44(core.List<core.String> o) {
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

core.List<api.Size> buildUnnamed45() => [
      buildSize(),
      buildSize(),
    ];

void checkUnnamed45(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
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

core.List<api.ClickTag> buildUnnamed47() => [
      buildClickTag(),
      buildClickTag(),
    ];

void checkUnnamed47(core.List<api.ClickTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClickTag(o[0]);
  checkClickTag(o[1]);
}

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed49() => [
      'foo',
      'foo',
    ];

void checkUnnamed49(core.List<core.String> o) {
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

core.List<api.CreativeCustomEvent> buildUnnamed50() => [
      buildCreativeCustomEvent(),
      buildCreativeCustomEvent(),
    ];

void checkUnnamed50(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<api.CreativeAsset> buildUnnamed51() => [
      buildCreativeAsset(),
      buildCreativeAsset(),
    ];

void checkUnnamed51(core.List<api.CreativeAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeAsset(o[0]);
  checkCreativeAsset(o[1]);
}

core.List<api.CreativeFieldAssignment> buildUnnamed52() => [
      buildCreativeFieldAssignment(),
      buildCreativeFieldAssignment(),
    ];

void checkUnnamed52(core.List<api.CreativeFieldAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeFieldAssignment(o[0]);
  checkCreativeFieldAssignment(o[1]);
}

core.List<core.String> buildUnnamed53() => [
      'foo',
      'foo',
    ];

void checkUnnamed53(core.List<core.String> o) {
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

core.List<api.CreativeCustomEvent> buildUnnamed54() => [
      buildCreativeCustomEvent(),
      buildCreativeCustomEvent(),
    ];

void checkUnnamed54(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<api.ThirdPartyTrackingUrl> buildUnnamed55() => [
      buildThirdPartyTrackingUrl(),
      buildThirdPartyTrackingUrl(),
    ];

void checkUnnamed55(core.List<api.ThirdPartyTrackingUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThirdPartyTrackingUrl(o[0]);
  checkThirdPartyTrackingUrl(o[1]);
}

core.List<api.CreativeCustomEvent> buildUnnamed56() => [
      buildCreativeCustomEvent(),
      buildCreativeCustomEvent(),
    ];

void checkUnnamed56(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.int buildCounterCreative = 0;
api.Creative buildCreative() {
  final o = api.Creative();
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    o.accountId = 'foo';
    o.active = true;
    o.adParameters = 'foo';
    o.adTagKeys = buildUnnamed44();
    o.additionalSizes = buildUnnamed45();
    o.advertiserId = 'foo';
    o.allowScriptAccess = true;
    o.archived = true;
    o.artworkType = 'foo';
    o.authoringSource = 'foo';
    o.authoringTool = 'foo';
    o.autoAdvanceImages = true;
    o.backgroundColor = 'foo';
    o.backupImageClickThroughUrl = buildCreativeClickThroughUrl();
    o.backupImageFeatures = buildUnnamed46();
    o.backupImageReportingLabel = 'foo';
    o.backupImageTargetWindow = buildTargetWindow();
    o.clickTags = buildUnnamed47();
    o.commercialId = 'foo';
    o.companionCreatives = buildUnnamed48();
    o.compatibility = buildUnnamed49();
    o.convertFlashToHtml5 = true;
    o.counterCustomEvents = buildUnnamed50();
    o.creativeAssetSelection = buildCreativeAssetSelection();
    o.creativeAssets = buildUnnamed51();
    o.creativeFieldAssignments = buildUnnamed52();
    o.customKeyValues = buildUnnamed53();
    o.dynamicAssetSelection = true;
    o.exitCustomEvents = buildUnnamed54();
    o.fsCommand = buildFsCommand();
    o.htmlCode = 'foo';
    o.htmlCodeLocked = true;
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.kind = 'foo';
    o.lastModifiedInfo = buildLastModifiedInfo();
    o.latestTraffickedCreativeId = 'foo';
    o.mediaDescription = 'foo';
    o.mediaDuration = 42.0;
    o.name = 'foo';
    o.obaIcon = buildObaIcon();
    o.overrideCss = 'foo';
    o.progressOffset = buildVideoOffset();
    o.redirectUrl = 'foo';
    o.renderingId = 'foo';
    o.renderingIdDimensionValue = buildDimensionValue();
    o.requiredFlashPluginVersion = 'foo';
    o.requiredFlashVersion = 42;
    o.size = buildSize();
    o.skipOffset = buildVideoOffset();
    o.skippable = true;
    o.sslCompliant = true;
    o.sslOverride = true;
    o.studioAdvertiserId = 'foo';
    o.studioCreativeId = 'foo';
    o.studioTraffickedCreativeId = 'foo';
    o.subaccountId = 'foo';
    o.thirdPartyBackupImageImpressionsUrl = 'foo';
    o.thirdPartyRichMediaImpressionsUrl = 'foo';
    o.thirdPartyUrls = buildUnnamed55();
    o.timerCustomEvents = buildUnnamed56();
    o.totalFileSize = 'foo';
    o.type = 'foo';
    o.universalAdId = buildUniversalAdId();
    o.version = 42;
  }
  buildCounterCreative--;
  return o;
}

void checkCreative(api.Creative o) {
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.adParameters!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.adTagKeys!);
    checkUnnamed45(o.additionalSizes!);
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.allowScriptAccess!, unittest.isTrue);
    unittest.expect(o.archived!, unittest.isTrue);
    unittest.expect(
      o.artworkType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authoringSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authoringTool!,
      unittest.equals('foo'),
    );
    unittest.expect(o.autoAdvanceImages!, unittest.isTrue);
    unittest.expect(
      o.backgroundColor!,
      unittest.equals('foo'),
    );
    checkCreativeClickThroughUrl(o.backupImageClickThroughUrl!);
    checkUnnamed46(o.backupImageFeatures!);
    unittest.expect(
      o.backupImageReportingLabel!,
      unittest.equals('foo'),
    );
    checkTargetWindow(o.backupImageTargetWindow!);
    checkUnnamed47(o.clickTags!);
    unittest.expect(
      o.commercialId!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.companionCreatives!);
    checkUnnamed49(o.compatibility!);
    unittest.expect(o.convertFlashToHtml5!, unittest.isTrue);
    checkUnnamed50(o.counterCustomEvents!);
    checkCreativeAssetSelection(o.creativeAssetSelection!);
    checkUnnamed51(o.creativeAssets!);
    checkUnnamed52(o.creativeFieldAssignments!);
    checkUnnamed53(o.customKeyValues!);
    unittest.expect(o.dynamicAssetSelection!, unittest.isTrue);
    checkUnnamed54(o.exitCustomEvents!);
    checkFsCommand(o.fsCommand!);
    unittest.expect(
      o.htmlCode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.htmlCodeLocked!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLastModifiedInfo(o.lastModifiedInfo!);
    unittest.expect(
      o.latestTraffickedCreativeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mediaDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mediaDuration!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkObaIcon(o.obaIcon!);
    unittest.expect(
      o.overrideCss!,
      unittest.equals('foo'),
    );
    checkVideoOffset(o.progressOffset!);
    unittest.expect(
      o.redirectUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.renderingId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.renderingIdDimensionValue!);
    unittest.expect(
      o.requiredFlashPluginVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requiredFlashVersion!,
      unittest.equals(42),
    );
    checkSize(o.size!);
    checkVideoOffset(o.skipOffset!);
    unittest.expect(o.skippable!, unittest.isTrue);
    unittest.expect(o.sslCompliant!, unittest.isTrue);
    unittest.expect(o.sslOverride!, unittest.isTrue);
    unittest.expect(
      o.studioAdvertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.studioCreativeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.studioTraffickedCreativeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thirdPartyBackupImageImpressionsUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thirdPartyRichMediaImpressionsUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed55(o.thirdPartyUrls!);
    checkUnnamed56(o.timerCustomEvents!);
    unittest.expect(
      o.totalFileSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkUniversalAdId(o.universalAdId!);
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterCreative--;
}

core.List<api.Size> buildUnnamed57() => [
      buildSize(),
      buildSize(),
    ];

void checkUnnamed57(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.List<core.String> buildUnnamed58() => [
      'foo',
      'foo',
    ];

void checkUnnamed58(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed59() => [
      'foo',
      'foo',
    ];

void checkUnnamed59(core.List<core.String> o) {
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

core.int buildCounterCreativeAsset = 0;
api.CreativeAsset buildCreativeAsset() {
  final o = api.CreativeAsset();
  buildCounterCreativeAsset++;
  if (buildCounterCreativeAsset < 3) {
    o.actionScript3 = true;
    o.active = true;
    o.additionalSizes = buildUnnamed57();
    o.alignment = 'foo';
    o.artworkType = 'foo';
    o.assetIdentifier = buildCreativeAssetId();
    o.audioBitRate = 42;
    o.audioSampleRate = 42;
    o.backupImageExit = buildCreativeCustomEvent();
    o.bitRate = 42;
    o.childAssetType = 'foo';
    o.collapsedSize = buildSize();
    o.companionCreativeIds = buildUnnamed58();
    o.customStartTimeValue = 42;
    o.detectedFeatures = buildUnnamed59();
    o.displayType = 'foo';
    o.duration = 42;
    o.durationType = 'foo';
    o.expandedDimension = buildSize();
    o.fileSize = 'foo';
    o.flashVersion = 42;
    o.frameRate = 42.0;
    o.hideFlashObjects = true;
    o.hideSelectionBoxes = true;
    o.horizontallyLocked = true;
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.mediaDuration = 42.0;
    o.mimeType = 'foo';
    o.offset = buildOffsetPosition();
    o.orientation = 'foo';
    o.originalBackup = true;
    o.politeLoad = true;
    o.position = buildOffsetPosition();
    o.positionLeftUnit = 'foo';
    o.positionTopUnit = 'foo';
    o.progressiveServingUrl = 'foo';
    o.pushdown = true;
    o.pushdownDuration = 42.0;
    o.role = 'foo';
    o.size = buildSize();
    o.sslCompliant = true;
    o.startTimeType = 'foo';
    o.streamingServingUrl = 'foo';
    o.transparency = true;
    o.verticallyLocked = true;
    o.windowMode = 'foo';
    o.zIndex = 42;
    o.zipFilename = 'foo';
    o.zipFilesize = 'foo';
  }
  buildCounterCreativeAsset--;
  return o;
}

void checkCreativeAsset(api.CreativeAsset o) {
  buildCounterCreativeAsset++;
  if (buildCounterCreativeAsset < 3) {
    unittest.expect(o.actionScript3!, unittest.isTrue);
    unittest.expect(o.active!, unittest.isTrue);
    checkUnnamed57(o.additionalSizes!);
    unittest.expect(
      o.alignment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.artworkType!,
      unittest.equals('foo'),
    );
    checkCreativeAssetId(o.assetIdentifier!);
    unittest.expect(
      o.audioBitRate!,
      unittest.equals(42),
    );
    unittest.expect(
      o.audioSampleRate!,
      unittest.equals(42),
    );
    checkCreativeCustomEvent(o.backupImageExit!);
    unittest.expect(
      o.bitRate!,
      unittest.equals(42),
    );
    unittest.expect(
      o.childAssetType!,
      unittest.equals('foo'),
    );
    checkSize(o.collapsedSize!);
    checkUnnamed58(o.companionCreativeIds!);
    unittest.expect(
      o.customStartTimeValue!,
      unittest.equals(42),
    );
    checkUnnamed59(o.detectedFeatures!);
    unittest.expect(
      o.displayType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals(42),
    );
    unittest.expect(
      o.durationType!,
      unittest.equals('foo'),
    );
    checkSize(o.expandedDimension!);
    unittest.expect(
      o.fileSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.flashVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.frameRate!,
      unittest.equals(42.0),
    );
    unittest.expect(o.hideFlashObjects!, unittest.isTrue);
    unittest.expect(o.hideSelectionBoxes!, unittest.isTrue);
    unittest.expect(o.horizontallyLocked!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    unittest.expect(
      o.mediaDuration!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkOffsetPosition(o.offset!);
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    unittest.expect(o.originalBackup!, unittest.isTrue);
    unittest.expect(o.politeLoad!, unittest.isTrue);
    checkOffsetPosition(o.position!);
    unittest.expect(
      o.positionLeftUnit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.positionTopUnit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressiveServingUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.pushdown!, unittest.isTrue);
    unittest.expect(
      o.pushdownDuration!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    checkSize(o.size!);
    unittest.expect(o.sslCompliant!, unittest.isTrue);
    unittest.expect(
      o.startTimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streamingServingUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.transparency!, unittest.isTrue);
    unittest.expect(o.verticallyLocked!, unittest.isTrue);
    unittest.expect(
      o.windowMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.zipFilename!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zipFilesize!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeAsset--;
}

core.int buildCounterCreativeAssetId = 0;
api.CreativeAssetId buildCreativeAssetId() {
  final o = api.CreativeAssetId();
  buildCounterCreativeAssetId++;
  if (buildCounterCreativeAssetId < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterCreativeAssetId--;
  return o;
}

void checkCreativeAssetId(api.CreativeAssetId o) {
  buildCounterCreativeAssetId++;
  if (buildCounterCreativeAssetId < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeAssetId--;
}

core.List<api.ClickTag> buildUnnamed60() => [
      buildClickTag(),
      buildClickTag(),
    ];

void checkUnnamed60(core.List<api.ClickTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClickTag(o[0]);
  checkClickTag(o[1]);
}

core.List<api.CreativeCustomEvent> buildUnnamed61() => [
      buildCreativeCustomEvent(),
      buildCreativeCustomEvent(),
    ];

void checkUnnamed61(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<core.String> buildUnnamed62() => [
      'foo',
      'foo',
    ];

void checkUnnamed62(core.List<core.String> o) {
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

core.List<api.CreativeCustomEvent> buildUnnamed63() => [
      buildCreativeCustomEvent(),
      buildCreativeCustomEvent(),
    ];

void checkUnnamed63(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<api.CreativeCustomEvent> buildUnnamed64() => [
      buildCreativeCustomEvent(),
      buildCreativeCustomEvent(),
    ];

void checkUnnamed64(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<core.String> buildUnnamed65() => [
      'foo',
      'foo',
    ];

void checkUnnamed65(core.List<core.String> o) {
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

core.int buildCounterCreativeAssetMetadata = 0;
api.CreativeAssetMetadata buildCreativeAssetMetadata() {
  final o = api.CreativeAssetMetadata();
  buildCounterCreativeAssetMetadata++;
  if (buildCounterCreativeAssetMetadata < 3) {
    o.assetIdentifier = buildCreativeAssetId();
    o.clickTags = buildUnnamed60();
    o.counterCustomEvents = buildUnnamed61();
    o.detectedFeatures = buildUnnamed62();
    o.exitCustomEvents = buildUnnamed63();
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.kind = 'foo';
    o.richMedia = true;
    o.timerCustomEvents = buildUnnamed64();
    o.warnedValidationRules = buildUnnamed65();
  }
  buildCounterCreativeAssetMetadata--;
  return o;
}

void checkCreativeAssetMetadata(api.CreativeAssetMetadata o) {
  buildCounterCreativeAssetMetadata++;
  if (buildCounterCreativeAssetMetadata < 3) {
    checkCreativeAssetId(o.assetIdentifier!);
    checkUnnamed60(o.clickTags!);
    checkUnnamed61(o.counterCustomEvents!);
    checkUnnamed62(o.detectedFeatures!);
    checkUnnamed63(o.exitCustomEvents!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.richMedia!, unittest.isTrue);
    checkUnnamed64(o.timerCustomEvents!);
    checkUnnamed65(o.warnedValidationRules!);
  }
  buildCounterCreativeAssetMetadata--;
}

core.List<api.Rule> buildUnnamed66() => [
      buildRule(),
      buildRule(),
    ];

void checkUnnamed66(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.int buildCounterCreativeAssetSelection = 0;
api.CreativeAssetSelection buildCreativeAssetSelection() {
  final o = api.CreativeAssetSelection();
  buildCounterCreativeAssetSelection++;
  if (buildCounterCreativeAssetSelection < 3) {
    o.defaultAssetId = 'foo';
    o.rules = buildUnnamed66();
  }
  buildCounterCreativeAssetSelection--;
  return o;
}

void checkCreativeAssetSelection(api.CreativeAssetSelection o) {
  buildCounterCreativeAssetSelection++;
  if (buildCounterCreativeAssetSelection < 3) {
    unittest.expect(
      o.defaultAssetId!,
      unittest.equals('foo'),
    );
    checkUnnamed66(o.rules!);
  }
  buildCounterCreativeAssetSelection--;
}

core.List<api.CompanionClickThroughOverride> buildUnnamed67() => [
      buildCompanionClickThroughOverride(),
      buildCompanionClickThroughOverride(),
    ];

void checkUnnamed67(core.List<api.CompanionClickThroughOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompanionClickThroughOverride(o[0]);
  checkCompanionClickThroughOverride(o[1]);
}

core.List<api.CreativeGroupAssignment> buildUnnamed68() => [
      buildCreativeGroupAssignment(),
      buildCreativeGroupAssignment(),
    ];

void checkUnnamed68(core.List<api.CreativeGroupAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeGroupAssignment(o[0]);
  checkCreativeGroupAssignment(o[1]);
}

core.List<api.RichMediaExitOverride> buildUnnamed69() => [
      buildRichMediaExitOverride(),
      buildRichMediaExitOverride(),
    ];

void checkUnnamed69(core.List<api.RichMediaExitOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRichMediaExitOverride(o[0]);
  checkRichMediaExitOverride(o[1]);
}

core.int buildCounterCreativeAssignment = 0;
api.CreativeAssignment buildCreativeAssignment() {
  final o = api.CreativeAssignment();
  buildCounterCreativeAssignment++;
  if (buildCounterCreativeAssignment < 3) {
    o.active = true;
    o.applyEventTags = true;
    o.clickThroughUrl = buildClickThroughUrl();
    o.companionCreativeOverrides = buildUnnamed67();
    o.creativeGroupAssignments = buildUnnamed68();
    o.creativeId = 'foo';
    o.creativeIdDimensionValue = buildDimensionValue();
    o.endTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.richMediaExitOverrides = buildUnnamed69();
    o.sequence = 42;
    o.sslCompliant = true;
    o.startTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.weight = 42;
  }
  buildCounterCreativeAssignment--;
  return o;
}

void checkCreativeAssignment(api.CreativeAssignment o) {
  buildCounterCreativeAssignment++;
  if (buildCounterCreativeAssignment < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(o.applyEventTags!, unittest.isTrue);
    checkClickThroughUrl(o.clickThroughUrl!);
    checkUnnamed67(o.companionCreativeOverrides!);
    checkUnnamed68(o.creativeGroupAssignments!);
    unittest.expect(
      o.creativeId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.creativeIdDimensionValue!);
    unittest.expect(
      o.endTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkUnnamed69(o.richMediaExitOverrides!);
    unittest.expect(
      o.sequence!,
      unittest.equals(42),
    );
    unittest.expect(o.sslCompliant!, unittest.isTrue);
    unittest.expect(
      o.startTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.weight!,
      unittest.equals(42),
    );
  }
  buildCounterCreativeAssignment--;
}

core.int buildCounterCreativeClickThroughUrl = 0;
api.CreativeClickThroughUrl buildCreativeClickThroughUrl() {
  final o = api.CreativeClickThroughUrl();
  buildCounterCreativeClickThroughUrl++;
  if (buildCounterCreativeClickThroughUrl < 3) {
    o.computedClickThroughUrl = 'foo';
    o.customClickThroughUrl = 'foo';
    o.landingPageId = 'foo';
  }
  buildCounterCreativeClickThroughUrl--;
  return o;
}

void checkCreativeClickThroughUrl(api.CreativeClickThroughUrl o) {
  buildCounterCreativeClickThroughUrl++;
  if (buildCounterCreativeClickThroughUrl < 3) {
    unittest.expect(
      o.computedClickThroughUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customClickThroughUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.landingPageId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeClickThroughUrl--;
}

core.int buildCounterCreativeCustomEvent = 0;
api.CreativeCustomEvent buildCreativeCustomEvent() {
  final o = api.CreativeCustomEvent();
  buildCounterCreativeCustomEvent++;
  if (buildCounterCreativeCustomEvent < 3) {
    o.advertiserCustomEventId = 'foo';
    o.advertiserCustomEventName = 'foo';
    o.advertiserCustomEventType = 'foo';
    o.artworkLabel = 'foo';
    o.artworkType = 'foo';
    o.exitClickThroughUrl = buildCreativeClickThroughUrl();
    o.id = 'foo';
    o.popupWindowProperties = buildPopupWindowProperties();
    o.targetType = 'foo';
    o.videoReportingId = 'foo';
  }
  buildCounterCreativeCustomEvent--;
  return o;
}

void checkCreativeCustomEvent(api.CreativeCustomEvent o) {
  buildCounterCreativeCustomEvent++;
  if (buildCounterCreativeCustomEvent < 3) {
    unittest.expect(
      o.advertiserCustomEventId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserCustomEventName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserCustomEventType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.artworkLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.artworkType!,
      unittest.equals('foo'),
    );
    checkCreativeClickThroughUrl(o.exitClickThroughUrl!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkPopupWindowProperties(o.popupWindowProperties!);
    unittest.expect(
      o.targetType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoReportingId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeCustomEvent--;
}

core.int buildCounterCreativeField = 0;
api.CreativeField buildCreativeField() {
  final o = api.CreativeField();
  buildCounterCreativeField++;
  if (buildCounterCreativeField < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.subaccountId = 'foo';
  }
  buildCounterCreativeField--;
  return o;
}

void checkCreativeField(api.CreativeField o) {
  buildCounterCreativeField++;
  if (buildCounterCreativeField < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeField--;
}

core.int buildCounterCreativeFieldAssignment = 0;
api.CreativeFieldAssignment buildCreativeFieldAssignment() {
  final o = api.CreativeFieldAssignment();
  buildCounterCreativeFieldAssignment++;
  if (buildCounterCreativeFieldAssignment < 3) {
    o.creativeFieldId = 'foo';
    o.creativeFieldValueId = 'foo';
  }
  buildCounterCreativeFieldAssignment--;
  return o;
}

void checkCreativeFieldAssignment(api.CreativeFieldAssignment o) {
  buildCounterCreativeFieldAssignment++;
  if (buildCounterCreativeFieldAssignment < 3) {
    unittest.expect(
      o.creativeFieldId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creativeFieldValueId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeFieldAssignment--;
}

core.int buildCounterCreativeFieldValue = 0;
api.CreativeFieldValue buildCreativeFieldValue() {
  final o = api.CreativeFieldValue();
  buildCounterCreativeFieldValue++;
  if (buildCounterCreativeFieldValue < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.value = 'foo';
  }
  buildCounterCreativeFieldValue--;
  return o;
}

void checkCreativeFieldValue(api.CreativeFieldValue o) {
  buildCounterCreativeFieldValue++;
  if (buildCounterCreativeFieldValue < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeFieldValue--;
}

core.List<api.CreativeFieldValue> buildUnnamed70() => [
      buildCreativeFieldValue(),
      buildCreativeFieldValue(),
    ];

void checkUnnamed70(core.List<api.CreativeFieldValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeFieldValue(o[0]);
  checkCreativeFieldValue(o[1]);
}

core.int buildCounterCreativeFieldValuesListResponse = 0;
api.CreativeFieldValuesListResponse buildCreativeFieldValuesListResponse() {
  final o = api.CreativeFieldValuesListResponse();
  buildCounterCreativeFieldValuesListResponse++;
  if (buildCounterCreativeFieldValuesListResponse < 3) {
    o.creativeFieldValues = buildUnnamed70();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCreativeFieldValuesListResponse--;
  return o;
}

void checkCreativeFieldValuesListResponse(
    api.CreativeFieldValuesListResponse o) {
  buildCounterCreativeFieldValuesListResponse++;
  if (buildCounterCreativeFieldValuesListResponse < 3) {
    checkUnnamed70(o.creativeFieldValues!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeFieldValuesListResponse--;
}

core.List<api.CreativeField> buildUnnamed71() => [
      buildCreativeField(),
      buildCreativeField(),
    ];

void checkUnnamed71(core.List<api.CreativeField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeField(o[0]);
  checkCreativeField(o[1]);
}

core.int buildCounterCreativeFieldsListResponse = 0;
api.CreativeFieldsListResponse buildCreativeFieldsListResponse() {
  final o = api.CreativeFieldsListResponse();
  buildCounterCreativeFieldsListResponse++;
  if (buildCounterCreativeFieldsListResponse < 3) {
    o.creativeFields = buildUnnamed71();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCreativeFieldsListResponse--;
  return o;
}

void checkCreativeFieldsListResponse(api.CreativeFieldsListResponse o) {
  buildCounterCreativeFieldsListResponse++;
  if (buildCounterCreativeFieldsListResponse < 3) {
    checkUnnamed71(o.creativeFields!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeFieldsListResponse--;
}

core.int buildCounterCreativeGroup = 0;
api.CreativeGroup buildCreativeGroup() {
  final o = api.CreativeGroup();
  buildCounterCreativeGroup++;
  if (buildCounterCreativeGroup < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.groupNumber = 42;
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.subaccountId = 'foo';
  }
  buildCounterCreativeGroup--;
  return o;
}

void checkCreativeGroup(api.CreativeGroup o) {
  buildCounterCreativeGroup++;
  if (buildCounterCreativeGroup < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    unittest.expect(
      o.groupNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeGroup--;
}

core.int buildCounterCreativeGroupAssignment = 0;
api.CreativeGroupAssignment buildCreativeGroupAssignment() {
  final o = api.CreativeGroupAssignment();
  buildCounterCreativeGroupAssignment++;
  if (buildCounterCreativeGroupAssignment < 3) {
    o.creativeGroupId = 'foo';
    o.creativeGroupNumber = 'foo';
  }
  buildCounterCreativeGroupAssignment--;
  return o;
}

void checkCreativeGroupAssignment(api.CreativeGroupAssignment o) {
  buildCounterCreativeGroupAssignment++;
  if (buildCounterCreativeGroupAssignment < 3) {
    unittest.expect(
      o.creativeGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creativeGroupNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeGroupAssignment--;
}

core.List<api.CreativeGroup> buildUnnamed72() => [
      buildCreativeGroup(),
      buildCreativeGroup(),
    ];

void checkUnnamed72(core.List<api.CreativeGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeGroup(o[0]);
  checkCreativeGroup(o[1]);
}

core.int buildCounterCreativeGroupsListResponse = 0;
api.CreativeGroupsListResponse buildCreativeGroupsListResponse() {
  final o = api.CreativeGroupsListResponse();
  buildCounterCreativeGroupsListResponse++;
  if (buildCounterCreativeGroupsListResponse < 3) {
    o.creativeGroups = buildUnnamed72();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCreativeGroupsListResponse--;
  return o;
}

void checkCreativeGroupsListResponse(api.CreativeGroupsListResponse o) {
  buildCounterCreativeGroupsListResponse++;
  if (buildCounterCreativeGroupsListResponse < 3) {
    checkUnnamed72(o.creativeGroups!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeGroupsListResponse--;
}

core.List<api.OptimizationActivity> buildUnnamed73() => [
      buildOptimizationActivity(),
      buildOptimizationActivity(),
    ];

void checkUnnamed73(core.List<api.OptimizationActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOptimizationActivity(o[0]);
  checkOptimizationActivity(o[1]);
}

core.int buildCounterCreativeOptimizationConfiguration = 0;
api.CreativeOptimizationConfiguration buildCreativeOptimizationConfiguration() {
  final o = api.CreativeOptimizationConfiguration();
  buildCounterCreativeOptimizationConfiguration++;
  if (buildCounterCreativeOptimizationConfiguration < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.optimizationActivitys = buildUnnamed73();
    o.optimizationModel = 'foo';
  }
  buildCounterCreativeOptimizationConfiguration--;
  return o;
}

void checkCreativeOptimizationConfiguration(
    api.CreativeOptimizationConfiguration o) {
  buildCounterCreativeOptimizationConfiguration++;
  if (buildCounterCreativeOptimizationConfiguration < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed73(o.optimizationActivitys!);
    unittest.expect(
      o.optimizationModel!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeOptimizationConfiguration--;
}

core.List<api.CreativeAssignment> buildUnnamed74() => [
      buildCreativeAssignment(),
      buildCreativeAssignment(),
    ];

void checkUnnamed74(core.List<api.CreativeAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeAssignment(o[0]);
  checkCreativeAssignment(o[1]);
}

core.int buildCounterCreativeRotation = 0;
api.CreativeRotation buildCreativeRotation() {
  final o = api.CreativeRotation();
  buildCounterCreativeRotation++;
  if (buildCounterCreativeRotation < 3) {
    o.creativeAssignments = buildUnnamed74();
    o.creativeOptimizationConfigurationId = 'foo';
    o.type = 'foo';
    o.weightCalculationStrategy = 'foo';
  }
  buildCounterCreativeRotation--;
  return o;
}

void checkCreativeRotation(api.CreativeRotation o) {
  buildCounterCreativeRotation++;
  if (buildCounterCreativeRotation < 3) {
    checkUnnamed74(o.creativeAssignments!);
    unittest.expect(
      o.creativeOptimizationConfigurationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.weightCalculationStrategy!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeRotation--;
}

core.List<api.Creative> buildUnnamed75() => [
      buildCreative(),
      buildCreative(),
    ];

void checkUnnamed75(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterCreativesListResponse = 0;
api.CreativesListResponse buildCreativesListResponse() {
  final o = api.CreativesListResponse();
  buildCounterCreativesListResponse++;
  if (buildCounterCreativesListResponse < 3) {
    o.creatives = buildUnnamed75();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCreativesListResponse--;
  return o;
}

void checkCreativesListResponse(api.CreativesListResponse o) {
  buildCounterCreativesListResponse++;
  if (buildCounterCreativesListResponse < 3) {
    checkUnnamed75(o.creatives!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativesListResponse--;
}

core.List<api.Dimension> buildUnnamed76() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed76(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Dimension> buildUnnamed77() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed77(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed78() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed78(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Metric> buildUnnamed79() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed79(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterCrossDimensionReachReportCompatibleFields = 0;
api.CrossDimensionReachReportCompatibleFields
    buildCrossDimensionReachReportCompatibleFields() {
  final o = api.CrossDimensionReachReportCompatibleFields();
  buildCounterCrossDimensionReachReportCompatibleFields++;
  if (buildCounterCrossDimensionReachReportCompatibleFields < 3) {
    o.breakdown = buildUnnamed76();
    o.dimensionFilters = buildUnnamed77();
    o.kind = 'foo';
    o.metrics = buildUnnamed78();
    o.overlapMetrics = buildUnnamed79();
  }
  buildCounterCrossDimensionReachReportCompatibleFields--;
  return o;
}

void checkCrossDimensionReachReportCompatibleFields(
    api.CrossDimensionReachReportCompatibleFields o) {
  buildCounterCrossDimensionReachReportCompatibleFields++;
  if (buildCounterCrossDimensionReachReportCompatibleFields < 3) {
    checkUnnamed76(o.breakdown!);
    checkUnnamed77(o.dimensionFilters!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed78(o.metrics!);
    checkUnnamed79(o.overlapMetrics!);
  }
  buildCounterCrossDimensionReachReportCompatibleFields--;
}

core.List<api.Dimension> buildUnnamed80() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed80(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Dimension> buildUnnamed81() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed81(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed82() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed82(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterCrossMediaReachReportCompatibleFields = 0;
api.CrossMediaReachReportCompatibleFields
    buildCrossMediaReachReportCompatibleFields() {
  final o = api.CrossMediaReachReportCompatibleFields();
  buildCounterCrossMediaReachReportCompatibleFields++;
  if (buildCounterCrossMediaReachReportCompatibleFields < 3) {
    o.dimensionFilters = buildUnnamed80();
    o.dimensions = buildUnnamed81();
    o.kind = 'foo';
    o.metrics = buildUnnamed82();
  }
  buildCounterCrossMediaReachReportCompatibleFields--;
  return o;
}

void checkCrossMediaReachReportCompatibleFields(
    api.CrossMediaReachReportCompatibleFields o) {
  buildCounterCrossMediaReachReportCompatibleFields++;
  if (buildCounterCrossMediaReachReportCompatibleFields < 3) {
    checkUnnamed80(o.dimensionFilters!);
    checkUnnamed81(o.dimensions!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed82(o.metrics!);
  }
  buildCounterCrossMediaReachReportCompatibleFields--;
}

core.int buildCounterCustomFloodlightVariable = 0;
api.CustomFloodlightVariable buildCustomFloodlightVariable() {
  final o = api.CustomFloodlightVariable();
  buildCounterCustomFloodlightVariable++;
  if (buildCounterCustomFloodlightVariable < 3) {
    o.kind = 'foo';
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomFloodlightVariable--;
  return o;
}

void checkCustomFloodlightVariable(api.CustomFloodlightVariable o) {
  buildCounterCustomFloodlightVariable++;
  if (buildCounterCustomFloodlightVariable < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomFloodlightVariable--;
}

core.List<api.DimensionValue> buildUnnamed83() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed83(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.int buildCounterCustomRichMediaEvents = 0;
api.CustomRichMediaEvents buildCustomRichMediaEvents() {
  final o = api.CustomRichMediaEvents();
  buildCounterCustomRichMediaEvents++;
  if (buildCounterCustomRichMediaEvents < 3) {
    o.filteredEventIds = buildUnnamed83();
    o.kind = 'foo';
  }
  buildCounterCustomRichMediaEvents--;
  return o;
}

void checkCustomRichMediaEvents(api.CustomRichMediaEvents o) {
  buildCounterCustomRichMediaEvents++;
  if (buildCounterCustomRichMediaEvents < 3) {
    checkUnnamed83(o.filteredEventIds!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomRichMediaEvents--;
}

core.int buildCounterCustomViewabilityMetric = 0;
api.CustomViewabilityMetric buildCustomViewabilityMetric() {
  final o = api.CustomViewabilityMetric();
  buildCounterCustomViewabilityMetric++;
  if (buildCounterCustomViewabilityMetric < 3) {
    o.configuration = buildCustomViewabilityMetricConfiguration();
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterCustomViewabilityMetric--;
  return o;
}

void checkCustomViewabilityMetric(api.CustomViewabilityMetric o) {
  buildCounterCustomViewabilityMetric++;
  if (buildCounterCustomViewabilityMetric < 3) {
    checkCustomViewabilityMetricConfiguration(o.configuration!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomViewabilityMetric--;
}

core.int buildCounterCustomViewabilityMetricConfiguration = 0;
api.CustomViewabilityMetricConfiguration
    buildCustomViewabilityMetricConfiguration() {
  final o = api.CustomViewabilityMetricConfiguration();
  buildCounterCustomViewabilityMetricConfiguration++;
  if (buildCounterCustomViewabilityMetricConfiguration < 3) {
    o.audible = true;
    o.timeMillis = 42;
    o.timePercent = 42;
    o.viewabilityPercent = 42;
  }
  buildCounterCustomViewabilityMetricConfiguration--;
  return o;
}

void checkCustomViewabilityMetricConfiguration(
    api.CustomViewabilityMetricConfiguration o) {
  buildCounterCustomViewabilityMetricConfiguration++;
  if (buildCounterCustomViewabilityMetricConfiguration < 3) {
    unittest.expect(o.audible!, unittest.isTrue);
    unittest.expect(
      o.timeMillis!,
      unittest.equals(42),
    );
    unittest.expect(
      o.timePercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.viewabilityPercent!,
      unittest.equals(42),
    );
  }
  buildCounterCustomViewabilityMetricConfiguration--;
}

core.int buildCounterDateRange = 0;
api.DateRange buildDateRange() {
  final o = api.DateRange();
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.kind = 'foo';
    o.relativeDateRange = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterDateRange--;
  return o;
}

void checkDateRange(api.DateRange o) {
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    unittest.expect(
      o.endDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativeDateRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
  }
  buildCounterDateRange--;
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

core.List<core.int> buildUnnamed85() => [
      42,
      42,
    ];

void checkUnnamed85(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterDayPartTargeting = 0;
api.DayPartTargeting buildDayPartTargeting() {
  final o = api.DayPartTargeting();
  buildCounterDayPartTargeting++;
  if (buildCounterDayPartTargeting < 3) {
    o.daysOfWeek = buildUnnamed84();
    o.hoursOfDay = buildUnnamed85();
    o.userLocalTime = true;
  }
  buildCounterDayPartTargeting--;
  return o;
}

void checkDayPartTargeting(api.DayPartTargeting o) {
  buildCounterDayPartTargeting++;
  if (buildCounterDayPartTargeting < 3) {
    checkUnnamed84(o.daysOfWeek!);
    checkUnnamed85(o.hoursOfDay!);
    unittest.expect(o.userLocalTime!, unittest.isTrue);
  }
  buildCounterDayPartTargeting--;
}

core.List<core.String> buildUnnamed86() => [
      'foo',
      'foo',
    ];

void checkUnnamed86(core.List<core.String> o) {
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

core.int buildCounterDeepLink = 0;
api.DeepLink buildDeepLink() {
  final o = api.DeepLink();
  buildCounterDeepLink++;
  if (buildCounterDeepLink < 3) {
    o.appUrl = 'foo';
    o.fallbackUrl = 'foo';
    o.kind = 'foo';
    o.mobileApp = buildMobileApp();
    o.remarketingListIds = buildUnnamed86();
  }
  buildCounterDeepLink--;
  return o;
}

void checkDeepLink(api.DeepLink o) {
  buildCounterDeepLink++;
  if (buildCounterDeepLink < 3) {
    unittest.expect(
      o.appUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fallbackUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkMobileApp(o.mobileApp!);
    checkUnnamed86(o.remarketingListIds!);
  }
  buildCounterDeepLink--;
}

core.int buildCounterDefaultClickThroughEventTagProperties = 0;
api.DefaultClickThroughEventTagProperties
    buildDefaultClickThroughEventTagProperties() {
  final o = api.DefaultClickThroughEventTagProperties();
  buildCounterDefaultClickThroughEventTagProperties++;
  if (buildCounterDefaultClickThroughEventTagProperties < 3) {
    o.defaultClickThroughEventTagId = 'foo';
    o.overrideInheritedEventTag = true;
  }
  buildCounterDefaultClickThroughEventTagProperties--;
  return o;
}

void checkDefaultClickThroughEventTagProperties(
    api.DefaultClickThroughEventTagProperties o) {
  buildCounterDefaultClickThroughEventTagProperties++;
  if (buildCounterDefaultClickThroughEventTagProperties < 3) {
    unittest.expect(
      o.defaultClickThroughEventTagId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.overrideInheritedEventTag!, unittest.isTrue);
  }
  buildCounterDefaultClickThroughEventTagProperties--;
}

core.int buildCounterDeliverySchedule = 0;
api.DeliverySchedule buildDeliverySchedule() {
  final o = api.DeliverySchedule();
  buildCounterDeliverySchedule++;
  if (buildCounterDeliverySchedule < 3) {
    o.frequencyCap = buildFrequencyCap();
    o.hardCutoff = true;
    o.impressionRatio = 'foo';
    o.priority = 'foo';
  }
  buildCounterDeliverySchedule--;
  return o;
}

void checkDeliverySchedule(api.DeliverySchedule o) {
  buildCounterDeliverySchedule++;
  if (buildCounterDeliverySchedule < 3) {
    checkFrequencyCap(o.frequencyCap!);
    unittest.expect(o.hardCutoff!, unittest.isTrue);
    unittest.expect(
      o.impressionRatio!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeliverySchedule--;
}

core.int buildCounterDfpSettings = 0;
api.DfpSettings buildDfpSettings() {
  final o = api.DfpSettings();
  buildCounterDfpSettings++;
  if (buildCounterDfpSettings < 3) {
    o.dfpNetworkCode = 'foo';
    o.dfpNetworkName = 'foo';
    o.programmaticPlacementAccepted = true;
    o.pubPaidPlacementAccepted = true;
    o.publisherPortalOnly = true;
  }
  buildCounterDfpSettings--;
  return o;
}

void checkDfpSettings(api.DfpSettings o) {
  buildCounterDfpSettings++;
  if (buildCounterDfpSettings < 3) {
    unittest.expect(
      o.dfpNetworkCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dfpNetworkName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.programmaticPlacementAccepted!, unittest.isTrue);
    unittest.expect(o.pubPaidPlacementAccepted!, unittest.isTrue);
    unittest.expect(o.publisherPortalOnly!, unittest.isTrue);
  }
  buildCounterDfpSettings--;
}

core.int buildCounterDimension = 0;
api.Dimension buildDimension() {
  final o = api.Dimension();
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterDimension--;
  return o;
}

void checkDimension(api.Dimension o) {
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimension--;
}

core.int buildCounterDimensionFilter = 0;
api.DimensionFilter buildDimensionFilter() {
  final o = api.DimensionFilter();
  buildCounterDimensionFilter++;
  if (buildCounterDimensionFilter < 3) {
    o.dimensionName = 'foo';
    o.kind = 'foo';
    o.value = 'foo';
  }
  buildCounterDimensionFilter--;
  return o;
}

void checkDimensionFilter(api.DimensionFilter o) {
  buildCounterDimensionFilter++;
  if (buildCounterDimensionFilter < 3) {
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimensionFilter--;
}

core.int buildCounterDimensionValue = 0;
api.DimensionValue buildDimensionValue() {
  final o = api.DimensionValue();
  buildCounterDimensionValue++;
  if (buildCounterDimensionValue < 3) {
    o.dimensionName = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.matchType = 'foo';
    o.value = 'foo';
  }
  buildCounterDimensionValue--;
  return o;
}

void checkDimensionValue(api.DimensionValue o) {
  buildCounterDimensionValue++;
  if (buildCounterDimensionValue < 3) {
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matchType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimensionValue--;
}

core.List<api.DimensionValue> buildUnnamed87() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed87(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.int buildCounterDimensionValueList = 0;
api.DimensionValueList buildDimensionValueList() {
  final o = api.DimensionValueList();
  buildCounterDimensionValueList++;
  if (buildCounterDimensionValueList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed87();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterDimensionValueList--;
  return o;
}

void checkDimensionValueList(api.DimensionValueList o) {
  buildCounterDimensionValueList++;
  if (buildCounterDimensionValueList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed87(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimensionValueList--;
}

core.List<api.DimensionFilter> buildUnnamed88() => [
      buildDimensionFilter(),
      buildDimensionFilter(),
    ];

void checkUnnamed88(core.List<api.DimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionFilter(o[0]);
  checkDimensionFilter(o[1]);
}

core.int buildCounterDimensionValueRequest = 0;
api.DimensionValueRequest buildDimensionValueRequest() {
  final o = api.DimensionValueRequest();
  buildCounterDimensionValueRequest++;
  if (buildCounterDimensionValueRequest < 3) {
    o.dimensionName = 'foo';
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.filters = buildUnnamed88();
    o.kind = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterDimensionValueRequest--;
  return o;
}

void checkDimensionValueRequest(api.DimensionValueRequest o) {
  buildCounterDimensionValueRequest++;
  if (buildCounterDimensionValueRequest < 3) {
    unittest.expect(
      o.dimensionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    checkUnnamed88(o.filters!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
  }
  buildCounterDimensionValueRequest--;
}

core.List<core.String> buildUnnamed89() => [
      'foo',
      'foo',
    ];

void checkUnnamed89(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed90() => [
      'foo',
      'foo',
    ];

void checkUnnamed90(core.List<core.String> o) {
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

core.int buildCounterDirectorySite = 0;
api.DirectorySite buildDirectorySite() {
  final o = api.DirectorySite();
  buildCounterDirectorySite++;
  if (buildCounterDirectorySite < 3) {
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.inpageTagFormats = buildUnnamed89();
    o.interstitialTagFormats = buildUnnamed90();
    o.kind = 'foo';
    o.name = 'foo';
    o.publisherSpecificationId = 'foo';
    o.settings = buildDirectorySiteSettings();
    o.url = 'foo';
  }
  buildCounterDirectorySite--;
  return o;
}

void checkDirectorySite(api.DirectorySite o) {
  buildCounterDirectorySite++;
  if (buildCounterDirectorySite < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    checkUnnamed89(o.inpageTagFormats!);
    checkUnnamed90(o.interstitialTagFormats!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherSpecificationId!,
      unittest.equals('foo'),
    );
    checkDirectorySiteSettings(o.settings!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterDirectorySite--;
}

core.int buildCounterDirectorySiteSettings = 0;
api.DirectorySiteSettings buildDirectorySiteSettings() {
  final o = api.DirectorySiteSettings();
  buildCounterDirectorySiteSettings++;
  if (buildCounterDirectorySiteSettings < 3) {
    o.activeViewOptOut = true;
    o.dfpSettings = buildDfpSettings();
    o.instreamVideoPlacementAccepted = true;
    o.interstitialPlacementAccepted = true;
  }
  buildCounterDirectorySiteSettings--;
  return o;
}

void checkDirectorySiteSettings(api.DirectorySiteSettings o) {
  buildCounterDirectorySiteSettings++;
  if (buildCounterDirectorySiteSettings < 3) {
    unittest.expect(o.activeViewOptOut!, unittest.isTrue);
    checkDfpSettings(o.dfpSettings!);
    unittest.expect(o.instreamVideoPlacementAccepted!, unittest.isTrue);
    unittest.expect(o.interstitialPlacementAccepted!, unittest.isTrue);
  }
  buildCounterDirectorySiteSettings--;
}

core.List<api.DirectorySite> buildUnnamed91() => [
      buildDirectorySite(),
      buildDirectorySite(),
    ];

void checkUnnamed91(core.List<api.DirectorySite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDirectorySite(o[0]);
  checkDirectorySite(o[1]);
}

core.int buildCounterDirectorySitesListResponse = 0;
api.DirectorySitesListResponse buildDirectorySitesListResponse() {
  final o = api.DirectorySitesListResponse();
  buildCounterDirectorySitesListResponse++;
  if (buildCounterDirectorySitesListResponse < 3) {
    o.directorySites = buildUnnamed91();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterDirectorySitesListResponse--;
  return o;
}

void checkDirectorySitesListResponse(api.DirectorySitesListResponse o) {
  buildCounterDirectorySitesListResponse++;
  if (buildCounterDirectorySitesListResponse < 3) {
    checkUnnamed91(o.directorySites!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterDirectorySitesListResponse--;
}

core.int buildCounterDynamicTargetingKey = 0;
api.DynamicTargetingKey buildDynamicTargetingKey() {
  final o = api.DynamicTargetingKey();
  buildCounterDynamicTargetingKey++;
  if (buildCounterDynamicTargetingKey < 3) {
    o.kind = 'foo';
    o.name = 'foo';
    o.objectId = 'foo';
    o.objectType = 'foo';
  }
  buildCounterDynamicTargetingKey--;
  return o;
}

void checkDynamicTargetingKey(api.DynamicTargetingKey o) {
  buildCounterDynamicTargetingKey++;
  if (buildCounterDynamicTargetingKey < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDynamicTargetingKey--;
}

core.List<api.DynamicTargetingKey> buildUnnamed92() => [
      buildDynamicTargetingKey(),
      buildDynamicTargetingKey(),
    ];

void checkUnnamed92(core.List<api.DynamicTargetingKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicTargetingKey(o[0]);
  checkDynamicTargetingKey(o[1]);
}

core.int buildCounterDynamicTargetingKeysListResponse = 0;
api.DynamicTargetingKeysListResponse buildDynamicTargetingKeysListResponse() {
  final o = api.DynamicTargetingKeysListResponse();
  buildCounterDynamicTargetingKeysListResponse++;
  if (buildCounterDynamicTargetingKeysListResponse < 3) {
    o.dynamicTargetingKeys = buildUnnamed92();
    o.kind = 'foo';
  }
  buildCounterDynamicTargetingKeysListResponse--;
  return o;
}

void checkDynamicTargetingKeysListResponse(
    api.DynamicTargetingKeysListResponse o) {
  buildCounterDynamicTargetingKeysListResponse++;
  if (buildCounterDynamicTargetingKeysListResponse < 3) {
    checkUnnamed92(o.dynamicTargetingKeys!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDynamicTargetingKeysListResponse--;
}

core.int buildCounterEncryptionInfo = 0;
api.EncryptionInfo buildEncryptionInfo() {
  final o = api.EncryptionInfo();
  buildCounterEncryptionInfo++;
  if (buildCounterEncryptionInfo < 3) {
    o.encryptionEntityId = 'foo';
    o.encryptionEntityType = 'foo';
    o.encryptionSource = 'foo';
    o.kind = 'foo';
  }
  buildCounterEncryptionInfo--;
  return o;
}

void checkEncryptionInfo(api.EncryptionInfo o) {
  buildCounterEncryptionInfo++;
  if (buildCounterEncryptionInfo < 3) {
    unittest.expect(
      o.encryptionEntityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encryptionEntityType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encryptionSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterEncryptionInfo--;
}

core.List<core.String> buildUnnamed93() => [
      'foo',
      'foo',
    ];

void checkUnnamed93(core.List<core.String> o) {
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

core.int buildCounterEventTag = 0;
api.EventTag buildEventTag() {
  final o = api.EventTag();
  buildCounterEventTag++;
  if (buildCounterEventTag < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.campaignId = 'foo';
    o.campaignIdDimensionValue = buildDimensionValue();
    o.enabledByDefault = true;
    o.excludeFromAdxRequests = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.siteFilterType = 'foo';
    o.siteIds = buildUnnamed93();
    o.sslCompliant = true;
    o.status = 'foo';
    o.subaccountId = 'foo';
    o.type = 'foo';
    o.url = 'foo';
    o.urlEscapeLevels = 42;
  }
  buildCounterEventTag--;
  return o;
}

void checkEventTag(api.EventTag o) {
  buildCounterEventTag++;
  if (buildCounterEventTag < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    unittest.expect(
      o.campaignId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.campaignIdDimensionValue!);
    unittest.expect(o.enabledByDefault!, unittest.isTrue);
    unittest.expect(o.excludeFromAdxRequests!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteFilterType!,
      unittest.equals('foo'),
    );
    checkUnnamed93(o.siteIds!);
    unittest.expect(o.sslCompliant!, unittest.isTrue);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.urlEscapeLevels!,
      unittest.equals(42),
    );
  }
  buildCounterEventTag--;
}

core.int buildCounterEventTagOverride = 0;
api.EventTagOverride buildEventTagOverride() {
  final o = api.EventTagOverride();
  buildCounterEventTagOverride++;
  if (buildCounterEventTagOverride < 3) {
    o.enabled = true;
    o.id = 'foo';
  }
  buildCounterEventTagOverride--;
  return o;
}

void checkEventTagOverride(api.EventTagOverride o) {
  buildCounterEventTagOverride++;
  if (buildCounterEventTagOverride < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventTagOverride--;
}

core.List<api.EventTag> buildUnnamed94() => [
      buildEventTag(),
      buildEventTag(),
    ];

void checkUnnamed94(core.List<api.EventTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventTag(o[0]);
  checkEventTag(o[1]);
}

core.int buildCounterEventTagsListResponse = 0;
api.EventTagsListResponse buildEventTagsListResponse() {
  final o = api.EventTagsListResponse();
  buildCounterEventTagsListResponse++;
  if (buildCounterEventTagsListResponse < 3) {
    o.eventTags = buildUnnamed94();
    o.kind = 'foo';
  }
  buildCounterEventTagsListResponse--;
  return o;
}

void checkEventTagsListResponse(api.EventTagsListResponse o) {
  buildCounterEventTagsListResponse++;
  if (buildCounterEventTagsListResponse < 3) {
    checkUnnamed94(o.eventTags!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventTagsListResponse--;
}

core.int buildCounterFileUrls = 0;
api.FileUrls buildFileUrls() {
  final o = api.FileUrls();
  buildCounterFileUrls++;
  if (buildCounterFileUrls < 3) {
    o.apiUrl = 'foo';
    o.browserUrl = 'foo';
  }
  buildCounterFileUrls--;
  return o;
}

void checkFileUrls(api.FileUrls o) {
  buildCounterFileUrls++;
  if (buildCounterFileUrls < 3) {
    unittest.expect(
      o.apiUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.browserUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileUrls--;
}

core.int buildCounterFile = 0;
api.File buildFile() {
  final o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.dateRange = buildDateRange();
    o.etag = 'foo';
    o.fileName = 'foo';
    o.format = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.lastModifiedTime = 'foo';
    o.reportId = 'foo';
    o.status = 'foo';
    o.urls = buildFileUrls();
  }
  buildCounterFile--;
  return o;
}

void checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    checkDateRange(o.dateRange!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    checkFileUrls(o.urls!);
  }
  buildCounterFile--;
}

core.List<api.File> buildUnnamed95() => [
      buildFile(),
      buildFile(),
    ];

void checkUnnamed95(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterFileList = 0;
api.FileList buildFileList() {
  final o = api.FileList();
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed95();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterFileList--;
  return o;
}

void checkFileList(api.FileList o) {
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed95(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileList--;
}

core.int buildCounterFlight = 0;
api.Flight buildFlight() {
  final o = api.Flight();
  buildCounterFlight++;
  if (buildCounterFlight < 3) {
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.rateOrCost = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.units = 'foo';
  }
  buildCounterFlight--;
  return o;
}

void checkFlight(api.Flight o) {
  buildCounterFlight++;
  if (buildCounterFlight < 3) {
    unittest.expect(
      o.endDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.rateOrCost!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterFlight--;
}

core.int buildCounterFloodlightActivitiesGenerateTagResponse = 0;
api.FloodlightActivitiesGenerateTagResponse
    buildFloodlightActivitiesGenerateTagResponse() {
  final o = api.FloodlightActivitiesGenerateTagResponse();
  buildCounterFloodlightActivitiesGenerateTagResponse++;
  if (buildCounterFloodlightActivitiesGenerateTagResponse < 3) {
    o.floodlightActivityTag = 'foo';
    o.globalSiteTagGlobalSnippet = 'foo';
    o.kind = 'foo';
  }
  buildCounterFloodlightActivitiesGenerateTagResponse--;
  return o;
}

void checkFloodlightActivitiesGenerateTagResponse(
    api.FloodlightActivitiesGenerateTagResponse o) {
  buildCounterFloodlightActivitiesGenerateTagResponse++;
  if (buildCounterFloodlightActivitiesGenerateTagResponse < 3) {
    unittest.expect(
      o.floodlightActivityTag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.globalSiteTagGlobalSnippet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterFloodlightActivitiesGenerateTagResponse--;
}

core.List<api.FloodlightActivity> buildUnnamed96() => [
      buildFloodlightActivity(),
      buildFloodlightActivity(),
    ];

void checkUnnamed96(core.List<api.FloodlightActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFloodlightActivity(o[0]);
  checkFloodlightActivity(o[1]);
}

core.int buildCounterFloodlightActivitiesListResponse = 0;
api.FloodlightActivitiesListResponse buildFloodlightActivitiesListResponse() {
  final o = api.FloodlightActivitiesListResponse();
  buildCounterFloodlightActivitiesListResponse++;
  if (buildCounterFloodlightActivitiesListResponse < 3) {
    o.floodlightActivities = buildUnnamed96();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterFloodlightActivitiesListResponse--;
  return o;
}

void checkFloodlightActivitiesListResponse(
    api.FloodlightActivitiesListResponse o) {
  buildCounterFloodlightActivitiesListResponse++;
  if (buildCounterFloodlightActivitiesListResponse < 3) {
    checkUnnamed96(o.floodlightActivities!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterFloodlightActivitiesListResponse--;
}

core.List<api.FloodlightActivityDynamicTag> buildUnnamed97() => [
      buildFloodlightActivityDynamicTag(),
      buildFloodlightActivityDynamicTag(),
    ];

void checkUnnamed97(core.List<api.FloodlightActivityDynamicTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFloodlightActivityDynamicTag(o[0]);
  checkFloodlightActivityDynamicTag(o[1]);
}

core.List<api.FloodlightActivityPublisherDynamicTag> buildUnnamed98() => [
      buildFloodlightActivityPublisherDynamicTag(),
      buildFloodlightActivityPublisherDynamicTag(),
    ];

void checkUnnamed98(core.List<api.FloodlightActivityPublisherDynamicTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFloodlightActivityPublisherDynamicTag(o[0]);
  checkFloodlightActivityPublisherDynamicTag(o[1]);
}

core.List<core.String> buildUnnamed99() => [
      'foo',
      'foo',
    ];

void checkUnnamed99(core.List<core.String> o) {
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

core.int buildCounterFloodlightActivity = 0;
api.FloodlightActivity buildFloodlightActivity() {
  final o = api.FloodlightActivity();
  buildCounterFloodlightActivity++;
  if (buildCounterFloodlightActivity < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.attributionEnabled = true;
    o.cacheBustingType = 'foo';
    o.countingMethod = 'foo';
    o.defaultTags = buildUnnamed97();
    o.expectedUrl = 'foo';
    o.floodlightActivityGroupId = 'foo';
    o.floodlightActivityGroupName = 'foo';
    o.floodlightActivityGroupTagString = 'foo';
    o.floodlightActivityGroupType = 'foo';
    o.floodlightConfigurationId = 'foo';
    o.floodlightConfigurationIdDimensionValue = buildDimensionValue();
    o.floodlightTagType = 'foo';
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.kind = 'foo';
    o.name = 'foo';
    o.notes = 'foo';
    o.publisherTags = buildUnnamed98();
    o.secure = true;
    o.sslCompliant = true;
    o.sslRequired = true;
    o.status = 'foo';
    o.subaccountId = 'foo';
    o.tagFormat = 'foo';
    o.tagString = 'foo';
    o.userDefinedVariableTypes = buildUnnamed99();
  }
  buildCounterFloodlightActivity--;
  return o;
}

void checkFloodlightActivity(api.FloodlightActivity o) {
  buildCounterFloodlightActivity++;
  if (buildCounterFloodlightActivity < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    unittest.expect(o.attributionEnabled!, unittest.isTrue);
    unittest.expect(
      o.cacheBustingType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countingMethod!,
      unittest.equals('foo'),
    );
    checkUnnamed97(o.defaultTags!);
    unittest.expect(
      o.expectedUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floodlightActivityGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floodlightActivityGroupName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floodlightActivityGroupTagString!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floodlightActivityGroupType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floodlightConfigurationId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.floodlightConfigurationIdDimensionValue!);
    unittest.expect(
      o.floodlightTagType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    checkUnnamed98(o.publisherTags!);
    unittest.expect(o.secure!, unittest.isTrue);
    unittest.expect(o.sslCompliant!, unittest.isTrue);
    unittest.expect(o.sslRequired!, unittest.isTrue);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagString!,
      unittest.equals('foo'),
    );
    checkUnnamed99(o.userDefinedVariableTypes!);
  }
  buildCounterFloodlightActivity--;
}

core.int buildCounterFloodlightActivityDynamicTag = 0;
api.FloodlightActivityDynamicTag buildFloodlightActivityDynamicTag() {
  final o = api.FloodlightActivityDynamicTag();
  buildCounterFloodlightActivityDynamicTag++;
  if (buildCounterFloodlightActivityDynamicTag < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.tag = 'foo';
  }
  buildCounterFloodlightActivityDynamicTag--;
  return o;
}

void checkFloodlightActivityDynamicTag(api.FloodlightActivityDynamicTag o) {
  buildCounterFloodlightActivityDynamicTag++;
  if (buildCounterFloodlightActivityDynamicTag < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterFloodlightActivityDynamicTag--;
}

core.int buildCounterFloodlightActivityGroup = 0;
api.FloodlightActivityGroup buildFloodlightActivityGroup() {
  final o = api.FloodlightActivityGroup();
  buildCounterFloodlightActivityGroup++;
  if (buildCounterFloodlightActivityGroup < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.floodlightConfigurationId = 'foo';
    o.floodlightConfigurationIdDimensionValue = buildDimensionValue();
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.kind = 'foo';
    o.name = 'foo';
    o.subaccountId = 'foo';
    o.tagString = 'foo';
    o.type = 'foo';
  }
  buildCounterFloodlightActivityGroup--;
  return o;
}

void checkFloodlightActivityGroup(api.FloodlightActivityGroup o) {
  buildCounterFloodlightActivityGroup++;
  if (buildCounterFloodlightActivityGroup < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    unittest.expect(
      o.floodlightConfigurationId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.floodlightConfigurationIdDimensionValue!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagString!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterFloodlightActivityGroup--;
}

core.List<api.FloodlightActivityGroup> buildUnnamed100() => [
      buildFloodlightActivityGroup(),
      buildFloodlightActivityGroup(),
    ];

void checkUnnamed100(core.List<api.FloodlightActivityGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFloodlightActivityGroup(o[0]);
  checkFloodlightActivityGroup(o[1]);
}

core.int buildCounterFloodlightActivityGroupsListResponse = 0;
api.FloodlightActivityGroupsListResponse
    buildFloodlightActivityGroupsListResponse() {
  final o = api.FloodlightActivityGroupsListResponse();
  buildCounterFloodlightActivityGroupsListResponse++;
  if (buildCounterFloodlightActivityGroupsListResponse < 3) {
    o.floodlightActivityGroups = buildUnnamed100();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterFloodlightActivityGroupsListResponse--;
  return o;
}

void checkFloodlightActivityGroupsListResponse(
    api.FloodlightActivityGroupsListResponse o) {
  buildCounterFloodlightActivityGroupsListResponse++;
  if (buildCounterFloodlightActivityGroupsListResponse < 3) {
    checkUnnamed100(o.floodlightActivityGroups!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterFloodlightActivityGroupsListResponse--;
}

core.int buildCounterFloodlightActivityPublisherDynamicTag = 0;
api.FloodlightActivityPublisherDynamicTag
    buildFloodlightActivityPublisherDynamicTag() {
  final o = api.FloodlightActivityPublisherDynamicTag();
  buildCounterFloodlightActivityPublisherDynamicTag++;
  if (buildCounterFloodlightActivityPublisherDynamicTag < 3) {
    o.clickThrough = true;
    o.directorySiteId = 'foo';
    o.dynamicTag = buildFloodlightActivityDynamicTag();
    o.siteId = 'foo';
    o.siteIdDimensionValue = buildDimensionValue();
    o.viewThrough = true;
  }
  buildCounterFloodlightActivityPublisherDynamicTag--;
  return o;
}

void checkFloodlightActivityPublisherDynamicTag(
    api.FloodlightActivityPublisherDynamicTag o) {
  buildCounterFloodlightActivityPublisherDynamicTag++;
  if (buildCounterFloodlightActivityPublisherDynamicTag < 3) {
    unittest.expect(o.clickThrough!, unittest.isTrue);
    unittest.expect(
      o.directorySiteId!,
      unittest.equals('foo'),
    );
    checkFloodlightActivityDynamicTag(o.dynamicTag!);
    unittest.expect(
      o.siteId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.siteIdDimensionValue!);
    unittest.expect(o.viewThrough!, unittest.isTrue);
  }
  buildCounterFloodlightActivityPublisherDynamicTag--;
}

core.List<api.ThirdPartyAuthenticationToken> buildUnnamed101() => [
      buildThirdPartyAuthenticationToken(),
      buildThirdPartyAuthenticationToken(),
    ];

void checkUnnamed101(core.List<api.ThirdPartyAuthenticationToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThirdPartyAuthenticationToken(o[0]);
  checkThirdPartyAuthenticationToken(o[1]);
}

core.List<api.UserDefinedVariableConfiguration> buildUnnamed102() => [
      buildUserDefinedVariableConfiguration(),
      buildUserDefinedVariableConfiguration(),
    ];

void checkUnnamed102(core.List<api.UserDefinedVariableConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDefinedVariableConfiguration(o[0]);
  checkUserDefinedVariableConfiguration(o[1]);
}

core.int buildCounterFloodlightConfiguration = 0;
api.FloodlightConfiguration buildFloodlightConfiguration() {
  final o = api.FloodlightConfiguration();
  buildCounterFloodlightConfiguration++;
  if (buildCounterFloodlightConfiguration < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.analyticsDataSharingEnabled = true;
    o.customViewabilityMetric = buildCustomViewabilityMetric();
    o.exposureToConversionEnabled = true;
    o.firstDayOfWeek = 'foo';
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.inAppAttributionTrackingEnabled = true;
    o.kind = 'foo';
    o.lookbackConfiguration = buildLookbackConfiguration();
    o.naturalSearchConversionAttributionOption = 'foo';
    o.omnitureSettings = buildOmnitureSettings();
    o.subaccountId = 'foo';
    o.tagSettings = buildTagSettings();
    o.thirdPartyAuthenticationTokens = buildUnnamed101();
    o.userDefinedVariableConfigurations = buildUnnamed102();
  }
  buildCounterFloodlightConfiguration--;
  return o;
}

void checkFloodlightConfiguration(api.FloodlightConfiguration o) {
  buildCounterFloodlightConfiguration++;
  if (buildCounterFloodlightConfiguration < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    unittest.expect(o.analyticsDataSharingEnabled!, unittest.isTrue);
    checkCustomViewabilityMetric(o.customViewabilityMetric!);
    unittest.expect(o.exposureToConversionEnabled!, unittest.isTrue);
    unittest.expect(
      o.firstDayOfWeek!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    unittest.expect(o.inAppAttributionTrackingEnabled!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLookbackConfiguration(o.lookbackConfiguration!);
    unittest.expect(
      o.naturalSearchConversionAttributionOption!,
      unittest.equals('foo'),
    );
    checkOmnitureSettings(o.omnitureSettings!);
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    checkTagSettings(o.tagSettings!);
    checkUnnamed101(o.thirdPartyAuthenticationTokens!);
    checkUnnamed102(o.userDefinedVariableConfigurations!);
  }
  buildCounterFloodlightConfiguration--;
}

core.List<api.FloodlightConfiguration> buildUnnamed103() => [
      buildFloodlightConfiguration(),
      buildFloodlightConfiguration(),
    ];

void checkUnnamed103(core.List<api.FloodlightConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFloodlightConfiguration(o[0]);
  checkFloodlightConfiguration(o[1]);
}

core.int buildCounterFloodlightConfigurationsListResponse = 0;
api.FloodlightConfigurationsListResponse
    buildFloodlightConfigurationsListResponse() {
  final o = api.FloodlightConfigurationsListResponse();
  buildCounterFloodlightConfigurationsListResponse++;
  if (buildCounterFloodlightConfigurationsListResponse < 3) {
    o.floodlightConfigurations = buildUnnamed103();
    o.kind = 'foo';
  }
  buildCounterFloodlightConfigurationsListResponse--;
  return o;
}

void checkFloodlightConfigurationsListResponse(
    api.FloodlightConfigurationsListResponse o) {
  buildCounterFloodlightConfigurationsListResponse++;
  if (buildCounterFloodlightConfigurationsListResponse < 3) {
    checkUnnamed103(o.floodlightConfigurations!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterFloodlightConfigurationsListResponse--;
}

core.List<api.Dimension> buildUnnamed104() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed104(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Dimension> buildUnnamed105() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed105(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed106() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed106(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterFloodlightReportCompatibleFields = 0;
api.FloodlightReportCompatibleFields buildFloodlightReportCompatibleFields() {
  final o = api.FloodlightReportCompatibleFields();
  buildCounterFloodlightReportCompatibleFields++;
  if (buildCounterFloodlightReportCompatibleFields < 3) {
    o.dimensionFilters = buildUnnamed104();
    o.dimensions = buildUnnamed105();
    o.kind = 'foo';
    o.metrics = buildUnnamed106();
  }
  buildCounterFloodlightReportCompatibleFields--;
  return o;
}

void checkFloodlightReportCompatibleFields(
    api.FloodlightReportCompatibleFields o) {
  buildCounterFloodlightReportCompatibleFields++;
  if (buildCounterFloodlightReportCompatibleFields < 3) {
    checkUnnamed104(o.dimensionFilters!);
    checkUnnamed105(o.dimensions!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed106(o.metrics!);
  }
  buildCounterFloodlightReportCompatibleFields--;
}

core.int buildCounterFrequencyCap = 0;
api.FrequencyCap buildFrequencyCap() {
  final o = api.FrequencyCap();
  buildCounterFrequencyCap++;
  if (buildCounterFrequencyCap < 3) {
    o.duration = 'foo';
    o.impressions = 'foo';
  }
  buildCounterFrequencyCap--;
  return o;
}

void checkFrequencyCap(api.FrequencyCap o) {
  buildCounterFrequencyCap++;
  if (buildCounterFrequencyCap < 3) {
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.impressions!,
      unittest.equals('foo'),
    );
  }
  buildCounterFrequencyCap--;
}

core.int buildCounterFsCommand = 0;
api.FsCommand buildFsCommand() {
  final o = api.FsCommand();
  buildCounterFsCommand++;
  if (buildCounterFsCommand < 3) {
    o.left = 42;
    o.positionOption = 'foo';
    o.top = 42;
    o.windowHeight = 42;
    o.windowWidth = 42;
  }
  buildCounterFsCommand--;
  return o;
}

void checkFsCommand(api.FsCommand o) {
  buildCounterFsCommand++;
  if (buildCounterFsCommand < 3) {
    unittest.expect(
      o.left!,
      unittest.equals(42),
    );
    unittest.expect(
      o.positionOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.top!,
      unittest.equals(42),
    );
    unittest.expect(
      o.windowHeight!,
      unittest.equals(42),
    );
    unittest.expect(
      o.windowWidth!,
      unittest.equals(42),
    );
  }
  buildCounterFsCommand--;
}

core.List<api.City> buildUnnamed107() => [
      buildCity(),
      buildCity(),
    ];

void checkUnnamed107(core.List<api.City> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCity(o[0]);
  checkCity(o[1]);
}

core.List<api.Country> buildUnnamed108() => [
      buildCountry(),
      buildCountry(),
    ];

void checkUnnamed108(core.List<api.Country> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCountry(o[0]);
  checkCountry(o[1]);
}

core.List<api.Metro> buildUnnamed109() => [
      buildMetro(),
      buildMetro(),
    ];

void checkUnnamed109(core.List<api.Metro> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetro(o[0]);
  checkMetro(o[1]);
}

core.List<api.PostalCode> buildUnnamed110() => [
      buildPostalCode(),
      buildPostalCode(),
    ];

void checkUnnamed110(core.List<api.PostalCode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCode(o[0]);
  checkPostalCode(o[1]);
}

core.List<api.Region> buildUnnamed111() => [
      buildRegion(),
      buildRegion(),
    ];

void checkUnnamed111(core.List<api.Region> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegion(o[0]);
  checkRegion(o[1]);
}

core.int buildCounterGeoTargeting = 0;
api.GeoTargeting buildGeoTargeting() {
  final o = api.GeoTargeting();
  buildCounterGeoTargeting++;
  if (buildCounterGeoTargeting < 3) {
    o.cities = buildUnnamed107();
    o.countries = buildUnnamed108();
    o.excludeCountries = true;
    o.metros = buildUnnamed109();
    o.postalCodes = buildUnnamed110();
    o.regions = buildUnnamed111();
  }
  buildCounterGeoTargeting--;
  return o;
}

void checkGeoTargeting(api.GeoTargeting o) {
  buildCounterGeoTargeting++;
  if (buildCounterGeoTargeting < 3) {
    checkUnnamed107(o.cities!);
    checkUnnamed108(o.countries!);
    unittest.expect(o.excludeCountries!, unittest.isTrue);
    checkUnnamed109(o.metros!);
    checkUnnamed110(o.postalCodes!);
    checkUnnamed111(o.regions!);
  }
  buildCounterGeoTargeting--;
}

core.List<api.AdSlot> buildUnnamed112() => [
      buildAdSlot(),
      buildAdSlot(),
    ];

void checkUnnamed112(core.List<api.AdSlot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSlot(o[0]);
  checkAdSlot(o[1]);
}

core.int buildCounterInventoryItem = 0;
api.InventoryItem buildInventoryItem() {
  final o = api.InventoryItem();
  buildCounterInventoryItem++;
  if (buildCounterInventoryItem < 3) {
    o.accountId = 'foo';
    o.adSlots = buildUnnamed112();
    o.advertiserId = 'foo';
    o.contentCategoryId = 'foo';
    o.estimatedClickThroughRate = 'foo';
    o.estimatedConversionRate = 'foo';
    o.id = 'foo';
    o.inPlan = true;
    o.kind = 'foo';
    o.lastModifiedInfo = buildLastModifiedInfo();
    o.name = 'foo';
    o.negotiationChannelId = 'foo';
    o.orderId = 'foo';
    o.placementStrategyId = 'foo';
    o.pricing = buildPricing();
    o.projectId = 'foo';
    o.rfpId = 'foo';
    o.siteId = 'foo';
    o.subaccountId = 'foo';
    o.type = 'foo';
  }
  buildCounterInventoryItem--;
  return o;
}

void checkInventoryItem(api.InventoryItem o) {
  buildCounterInventoryItem++;
  if (buildCounterInventoryItem < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed112(o.adSlots!);
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentCategoryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.estimatedClickThroughRate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.estimatedConversionRate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.inPlan!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLastModifiedInfo(o.lastModifiedInfo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.negotiationChannelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placementStrategyId!,
      unittest.equals('foo'),
    );
    checkPricing(o.pricing!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rfpId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterInventoryItem--;
}

core.List<api.InventoryItem> buildUnnamed113() => [
      buildInventoryItem(),
      buildInventoryItem(),
    ];

void checkUnnamed113(core.List<api.InventoryItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryItem(o[0]);
  checkInventoryItem(o[1]);
}

core.int buildCounterInventoryItemsListResponse = 0;
api.InventoryItemsListResponse buildInventoryItemsListResponse() {
  final o = api.InventoryItemsListResponse();
  buildCounterInventoryItemsListResponse++;
  if (buildCounterInventoryItemsListResponse < 3) {
    o.inventoryItems = buildUnnamed113();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterInventoryItemsListResponse--;
  return o;
}

void checkInventoryItemsListResponse(api.InventoryItemsListResponse o) {
  buildCounterInventoryItemsListResponse++;
  if (buildCounterInventoryItemsListResponse < 3) {
    checkUnnamed113(o.inventoryItems!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterInventoryItemsListResponse--;
}

core.List<api.CampaignSummary> buildUnnamed114() => [
      buildCampaignSummary(),
      buildCampaignSummary(),
    ];

void checkUnnamed114(core.List<api.CampaignSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCampaignSummary(o[0]);
  checkCampaignSummary(o[1]);
}

core.List<core.String> buildUnnamed115() => [
      'foo',
      'foo',
    ];

void checkUnnamed115(core.List<core.String> o) {
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

core.int buildCounterInvoice = 0;
api.Invoice buildInvoice() {
  final o = api.Invoice();
  buildCounterInvoice++;
  if (buildCounterInvoice < 3) {
    o.campaignSummaries = buildUnnamed114();
    o.correctedInvoiceId = 'foo';
    o.currencyCode = 'foo';
    o.dueDate = 'foo';
    o.id = 'foo';
    o.invoiceType = 'foo';
    o.issueDate = 'foo';
    o.kind = 'foo';
    o.paymentsAccountId = 'foo';
    o.paymentsProfileId = 'foo';
    o.pdfUrl = 'foo';
    o.purchaseOrderNumber = 'foo';
    o.replacedInvoiceIds = buildUnnamed115();
    o.serviceEndDate = 'foo';
    o.serviceStartDate = 'foo';
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
    checkUnnamed114(o.campaignSummaries!);
    unittest.expect(
      o.correctedInvoiceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dueDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invoiceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issueDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentsAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentsProfileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pdfUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseOrderNumber!,
      unittest.equals('foo'),
    );
    checkUnnamed115(o.replacedInvoiceIds!);
    unittest.expect(
      o.serviceEndDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceStartDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subtotalAmountMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalAmountMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalTaxAmountMicros!,
      unittest.equals('foo'),
    );
  }
  buildCounterInvoice--;
}

core.int buildCounterKeyValueTargetingExpression = 0;
api.KeyValueTargetingExpression buildKeyValueTargetingExpression() {
  final o = api.KeyValueTargetingExpression();
  buildCounterKeyValueTargetingExpression++;
  if (buildCounterKeyValueTargetingExpression < 3) {
    o.expression = 'foo';
  }
  buildCounterKeyValueTargetingExpression--;
  return o;
}

void checkKeyValueTargetingExpression(api.KeyValueTargetingExpression o) {
  buildCounterKeyValueTargetingExpression++;
  if (buildCounterKeyValueTargetingExpression < 3) {
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyValueTargetingExpression--;
}

core.List<api.DeepLink> buildUnnamed116() => [
      buildDeepLink(),
      buildDeepLink(),
    ];

void checkUnnamed116(core.List<api.DeepLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeepLink(o[0]);
  checkDeepLink(o[1]);
}

core.int buildCounterLandingPage = 0;
api.LandingPage buildLandingPage() {
  final o = api.LandingPage();
  buildCounterLandingPage++;
  if (buildCounterLandingPage < 3) {
    o.advertiserId = 'foo';
    o.archived = true;
    o.deepLinks = buildUnnamed116();
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.url = 'foo';
  }
  buildCounterLandingPage--;
  return o;
}

void checkLandingPage(api.LandingPage o) {
  buildCounterLandingPage++;
  if (buildCounterLandingPage < 3) {
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.archived!, unittest.isTrue);
    checkUnnamed116(o.deepLinks!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterLandingPage--;
}

core.int buildCounterLanguage = 0;
api.Language buildLanguage() {
  final o = api.Language();
  buildCounterLanguage++;
  if (buildCounterLanguage < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.languageCode = 'foo';
    o.name = 'foo';
  }
  buildCounterLanguage--;
  return o;
}

void checkLanguage(api.Language o) {
  buildCounterLanguage++;
  if (buildCounterLanguage < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLanguage--;
}

core.List<api.Language> buildUnnamed117() => [
      buildLanguage(),
      buildLanguage(),
    ];

void checkUnnamed117(core.List<api.Language> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLanguage(o[0]);
  checkLanguage(o[1]);
}

core.int buildCounterLanguageTargeting = 0;
api.LanguageTargeting buildLanguageTargeting() {
  final o = api.LanguageTargeting();
  buildCounterLanguageTargeting++;
  if (buildCounterLanguageTargeting < 3) {
    o.languages = buildUnnamed117();
  }
  buildCounterLanguageTargeting--;
  return o;
}

void checkLanguageTargeting(api.LanguageTargeting o) {
  buildCounterLanguageTargeting++;
  if (buildCounterLanguageTargeting < 3) {
    checkUnnamed117(o.languages!);
  }
  buildCounterLanguageTargeting--;
}

core.List<api.Language> buildUnnamed118() => [
      buildLanguage(),
      buildLanguage(),
    ];

void checkUnnamed118(core.List<api.Language> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLanguage(o[0]);
  checkLanguage(o[1]);
}

core.int buildCounterLanguagesListResponse = 0;
api.LanguagesListResponse buildLanguagesListResponse() {
  final o = api.LanguagesListResponse();
  buildCounterLanguagesListResponse++;
  if (buildCounterLanguagesListResponse < 3) {
    o.kind = 'foo';
    o.languages = buildUnnamed118();
  }
  buildCounterLanguagesListResponse--;
  return o;
}

void checkLanguagesListResponse(api.LanguagesListResponse o) {
  buildCounterLanguagesListResponse++;
  if (buildCounterLanguagesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed118(o.languages!);
  }
  buildCounterLanguagesListResponse--;
}

core.int buildCounterLastModifiedInfo = 0;
api.LastModifiedInfo buildLastModifiedInfo() {
  final o = api.LastModifiedInfo();
  buildCounterLastModifiedInfo++;
  if (buildCounterLastModifiedInfo < 3) {
    o.time = 'foo';
  }
  buildCounterLastModifiedInfo--;
  return o;
}

void checkLastModifiedInfo(api.LastModifiedInfo o) {
  buildCounterLastModifiedInfo++;
  if (buildCounterLastModifiedInfo < 3) {
    unittest.expect(
      o.time!,
      unittest.equals('foo'),
    );
  }
  buildCounterLastModifiedInfo--;
}

core.List<api.ListPopulationTerm> buildUnnamed119() => [
      buildListPopulationTerm(),
      buildListPopulationTerm(),
    ];

void checkUnnamed119(core.List<api.ListPopulationTerm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListPopulationTerm(o[0]);
  checkListPopulationTerm(o[1]);
}

core.int buildCounterListPopulationClause = 0;
api.ListPopulationClause buildListPopulationClause() {
  final o = api.ListPopulationClause();
  buildCounterListPopulationClause++;
  if (buildCounterListPopulationClause < 3) {
    o.terms = buildUnnamed119();
  }
  buildCounterListPopulationClause--;
  return o;
}

void checkListPopulationClause(api.ListPopulationClause o) {
  buildCounterListPopulationClause++;
  if (buildCounterListPopulationClause < 3) {
    checkUnnamed119(o.terms!);
  }
  buildCounterListPopulationClause--;
}

core.List<api.ListPopulationClause> buildUnnamed120() => [
      buildListPopulationClause(),
      buildListPopulationClause(),
    ];

void checkUnnamed120(core.List<api.ListPopulationClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListPopulationClause(o[0]);
  checkListPopulationClause(o[1]);
}

core.int buildCounterListPopulationRule = 0;
api.ListPopulationRule buildListPopulationRule() {
  final o = api.ListPopulationRule();
  buildCounterListPopulationRule++;
  if (buildCounterListPopulationRule < 3) {
    o.floodlightActivityId = 'foo';
    o.floodlightActivityName = 'foo';
    o.listPopulationClauses = buildUnnamed120();
  }
  buildCounterListPopulationRule--;
  return o;
}

void checkListPopulationRule(api.ListPopulationRule o) {
  buildCounterListPopulationRule++;
  if (buildCounterListPopulationRule < 3) {
    unittest.expect(
      o.floodlightActivityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floodlightActivityName!,
      unittest.equals('foo'),
    );
    checkUnnamed120(o.listPopulationClauses!);
  }
  buildCounterListPopulationRule--;
}

core.int buildCounterListPopulationTerm = 0;
api.ListPopulationTerm buildListPopulationTerm() {
  final o = api.ListPopulationTerm();
  buildCounterListPopulationTerm++;
  if (buildCounterListPopulationTerm < 3) {
    o.contains = true;
    o.negation = true;
    o.operator = 'foo';
    o.remarketingListId = 'foo';
    o.type = 'foo';
    o.value = 'foo';
    o.variableFriendlyName = 'foo';
    o.variableName = 'foo';
  }
  buildCounterListPopulationTerm--;
  return o;
}

void checkListPopulationTerm(api.ListPopulationTerm o) {
  buildCounterListPopulationTerm++;
  if (buildCounterListPopulationTerm < 3) {
    unittest.expect(o.contains!, unittest.isTrue);
    unittest.expect(o.negation!, unittest.isTrue);
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remarketingListId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variableFriendlyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variableName!,
      unittest.equals('foo'),
    );
  }
  buildCounterListPopulationTerm--;
}

core.int buildCounterListTargetingExpression = 0;
api.ListTargetingExpression buildListTargetingExpression() {
  final o = api.ListTargetingExpression();
  buildCounterListTargetingExpression++;
  if (buildCounterListTargetingExpression < 3) {
    o.expression = 'foo';
  }
  buildCounterListTargetingExpression--;
  return o;
}

void checkListTargetingExpression(api.ListTargetingExpression o) {
  buildCounterListTargetingExpression++;
  if (buildCounterListTargetingExpression < 3) {
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
  }
  buildCounterListTargetingExpression--;
}

core.int buildCounterLookbackConfiguration = 0;
api.LookbackConfiguration buildLookbackConfiguration() {
  final o = api.LookbackConfiguration();
  buildCounterLookbackConfiguration++;
  if (buildCounterLookbackConfiguration < 3) {
    o.clickDuration = 42;
    o.postImpressionActivitiesDuration = 42;
  }
  buildCounterLookbackConfiguration--;
  return o;
}

void checkLookbackConfiguration(api.LookbackConfiguration o) {
  buildCounterLookbackConfiguration++;
  if (buildCounterLookbackConfiguration < 3) {
    unittest.expect(
      o.clickDuration!,
      unittest.equals(42),
    );
    unittest.expect(
      o.postImpressionActivitiesDuration!,
      unittest.equals(42),
    );
  }
  buildCounterLookbackConfiguration--;
}

core.int buildCounterMeasurementPartnerAdvertiserLink = 0;
api.MeasurementPartnerAdvertiserLink buildMeasurementPartnerAdvertiserLink() {
  final o = api.MeasurementPartnerAdvertiserLink();
  buildCounterMeasurementPartnerAdvertiserLink++;
  if (buildCounterMeasurementPartnerAdvertiserLink < 3) {
    o.linkStatus = 'foo';
    o.measurementPartner = 'foo';
    o.partnerAdvertiserId = 'foo';
  }
  buildCounterMeasurementPartnerAdvertiserLink--;
  return o;
}

void checkMeasurementPartnerAdvertiserLink(
    api.MeasurementPartnerAdvertiserLink o) {
  buildCounterMeasurementPartnerAdvertiserLink++;
  if (buildCounterMeasurementPartnerAdvertiserLink < 3) {
    unittest.expect(
      o.linkStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.measurementPartner!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partnerAdvertiserId!,
      unittest.equals('foo'),
    );
  }
  buildCounterMeasurementPartnerAdvertiserLink--;
}

core.int buildCounterMeasurementPartnerCampaignLink = 0;
api.MeasurementPartnerCampaignLink buildMeasurementPartnerCampaignLink() {
  final o = api.MeasurementPartnerCampaignLink();
  buildCounterMeasurementPartnerCampaignLink++;
  if (buildCounterMeasurementPartnerCampaignLink < 3) {
    o.linkStatus = 'foo';
    o.measurementPartner = 'foo';
    o.partnerCampaignId = 'foo';
  }
  buildCounterMeasurementPartnerCampaignLink--;
  return o;
}

void checkMeasurementPartnerCampaignLink(api.MeasurementPartnerCampaignLink o) {
  buildCounterMeasurementPartnerCampaignLink++;
  if (buildCounterMeasurementPartnerCampaignLink < 3) {
    unittest.expect(
      o.linkStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.measurementPartner!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partnerCampaignId!,
      unittest.equals('foo'),
    );
  }
  buildCounterMeasurementPartnerCampaignLink--;
}

core.int buildCounterMeasurementPartnerWrappingData = 0;
api.MeasurementPartnerWrappingData buildMeasurementPartnerWrappingData() {
  final o = api.MeasurementPartnerWrappingData();
  buildCounterMeasurementPartnerWrappingData++;
  if (buildCounterMeasurementPartnerWrappingData < 3) {
    o.linkStatus = 'foo';
    o.measurementPartner = 'foo';
    o.tagWrappingMode = 'foo';
    o.wrappedTag = 'foo';
  }
  buildCounterMeasurementPartnerWrappingData--;
  return o;
}

void checkMeasurementPartnerWrappingData(api.MeasurementPartnerWrappingData o) {
  buildCounterMeasurementPartnerWrappingData++;
  if (buildCounterMeasurementPartnerWrappingData < 3) {
    unittest.expect(
      o.linkStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.measurementPartner!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagWrappingMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.wrappedTag!,
      unittest.equals('foo'),
    );
  }
  buildCounterMeasurementPartnerWrappingData--;
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  final o = api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterMetric--;
  return o;
}

void checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetric--;
}

core.int buildCounterMetro = 0;
api.Metro buildMetro() {
  final o = api.Metro();
  buildCounterMetro++;
  if (buildCounterMetro < 3) {
    o.countryCode = 'foo';
    o.countryDartId = 'foo';
    o.dartId = 'foo';
    o.dmaId = 'foo';
    o.kind = 'foo';
    o.metroCode = 'foo';
    o.name = 'foo';
  }
  buildCounterMetro--;
  return o;
}

void checkMetro(api.Metro o) {
  buildCounterMetro++;
  if (buildCounterMetro < 3) {
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryDartId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dartId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dmaId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metroCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetro--;
}

core.List<api.Metro> buildUnnamed121() => [
      buildMetro(),
      buildMetro(),
    ];

void checkUnnamed121(core.List<api.Metro> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetro(o[0]);
  checkMetro(o[1]);
}

core.int buildCounterMetrosListResponse = 0;
api.MetrosListResponse buildMetrosListResponse() {
  final o = api.MetrosListResponse();
  buildCounterMetrosListResponse++;
  if (buildCounterMetrosListResponse < 3) {
    o.kind = 'foo';
    o.metros = buildUnnamed121();
  }
  buildCounterMetrosListResponse--;
  return o;
}

void checkMetrosListResponse(api.MetrosListResponse o) {
  buildCounterMetrosListResponse++;
  if (buildCounterMetrosListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed121(o.metros!);
  }
  buildCounterMetrosListResponse--;
}

core.int buildCounterMobileApp = 0;
api.MobileApp buildMobileApp() {
  final o = api.MobileApp();
  buildCounterMobileApp++;
  if (buildCounterMobileApp < 3) {
    o.directory = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.publisherName = 'foo';
    o.title = 'foo';
  }
  buildCounterMobileApp--;
  return o;
}

void checkMobileApp(api.MobileApp o) {
  buildCounterMobileApp++;
  if (buildCounterMobileApp < 3) {
    unittest.expect(
      o.directory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterMobileApp--;
}

core.List<api.MobileApp> buildUnnamed122() => [
      buildMobileApp(),
      buildMobileApp(),
    ];

void checkUnnamed122(core.List<api.MobileApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileApp(o[0]);
  checkMobileApp(o[1]);
}

core.int buildCounterMobileAppsListResponse = 0;
api.MobileAppsListResponse buildMobileAppsListResponse() {
  final o = api.MobileAppsListResponse();
  buildCounterMobileAppsListResponse++;
  if (buildCounterMobileAppsListResponse < 3) {
    o.kind = 'foo';
    o.mobileApps = buildUnnamed122();
    o.nextPageToken = 'foo';
  }
  buildCounterMobileAppsListResponse--;
  return o;
}

void checkMobileAppsListResponse(api.MobileAppsListResponse o) {
  buildCounterMobileAppsListResponse++;
  if (buildCounterMobileAppsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed122(o.mobileApps!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterMobileAppsListResponse--;
}

core.int buildCounterMobileCarrier = 0;
api.MobileCarrier buildMobileCarrier() {
  final o = api.MobileCarrier();
  buildCounterMobileCarrier++;
  if (buildCounterMobileCarrier < 3) {
    o.countryCode = 'foo';
    o.countryDartId = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterMobileCarrier--;
  return o;
}

void checkMobileCarrier(api.MobileCarrier o) {
  buildCounterMobileCarrier++;
  if (buildCounterMobileCarrier < 3) {
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryDartId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterMobileCarrier--;
}

core.List<api.MobileCarrier> buildUnnamed123() => [
      buildMobileCarrier(),
      buildMobileCarrier(),
    ];

void checkUnnamed123(core.List<api.MobileCarrier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileCarrier(o[0]);
  checkMobileCarrier(o[1]);
}

core.int buildCounterMobileCarriersListResponse = 0;
api.MobileCarriersListResponse buildMobileCarriersListResponse() {
  final o = api.MobileCarriersListResponse();
  buildCounterMobileCarriersListResponse++;
  if (buildCounterMobileCarriersListResponse < 3) {
    o.kind = 'foo';
    o.mobileCarriers = buildUnnamed123();
  }
  buildCounterMobileCarriersListResponse--;
  return o;
}

void checkMobileCarriersListResponse(api.MobileCarriersListResponse o) {
  buildCounterMobileCarriersListResponse++;
  if (buildCounterMobileCarriersListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed123(o.mobileCarriers!);
  }
  buildCounterMobileCarriersListResponse--;
}

core.int buildCounterObaIcon = 0;
api.ObaIcon buildObaIcon() {
  final o = api.ObaIcon();
  buildCounterObaIcon++;
  if (buildCounterObaIcon < 3) {
    o.iconClickThroughUrl = 'foo';
    o.iconClickTrackingUrl = 'foo';
    o.iconViewTrackingUrl = 'foo';
    o.program = 'foo';
    o.resourceUrl = 'foo';
    o.size = buildSize();
    o.xPosition = 'foo';
    o.yPosition = 'foo';
  }
  buildCounterObaIcon--;
  return o;
}

void checkObaIcon(api.ObaIcon o) {
  buildCounterObaIcon++;
  if (buildCounterObaIcon < 3) {
    unittest.expect(
      o.iconClickThroughUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconClickTrackingUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconViewTrackingUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.program!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUrl!,
      unittest.equals('foo'),
    );
    checkSize(o.size!);
    unittest.expect(
      o.xPosition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.yPosition!,
      unittest.equals('foo'),
    );
  }
  buildCounterObaIcon--;
}

core.List<core.String> buildUnnamed124() => [
      'foo',
      'foo',
    ];

void checkUnnamed124(core.List<core.String> o) {
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

core.int buildCounterObjectFilter = 0;
api.ObjectFilter buildObjectFilter() {
  final o = api.ObjectFilter();
  buildCounterObjectFilter++;
  if (buildCounterObjectFilter < 3) {
    o.kind = 'foo';
    o.objectIds = buildUnnamed124();
    o.status = 'foo';
  }
  buildCounterObjectFilter--;
  return o;
}

void checkObjectFilter(api.ObjectFilter o) {
  buildCounterObjectFilter++;
  if (buildCounterObjectFilter < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed124(o.objectIds!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterObjectFilter--;
}

core.int buildCounterOfflineUserAddressInfo = 0;
api.OfflineUserAddressInfo buildOfflineUserAddressInfo() {
  final o = api.OfflineUserAddressInfo();
  buildCounterOfflineUserAddressInfo++;
  if (buildCounterOfflineUserAddressInfo < 3) {
    o.city = 'foo';
    o.countryCode = 'foo';
    o.hashedFirstName = 'foo';
    o.hashedLastName = 'foo';
    o.hashedStreetAddress = 'foo';
    o.postalCode = 'foo';
    o.state = 'foo';
  }
  buildCounterOfflineUserAddressInfo--;
  return o;
}

void checkOfflineUserAddressInfo(api.OfflineUserAddressInfo o) {
  buildCounterOfflineUserAddressInfo++;
  if (buildCounterOfflineUserAddressInfo < 3) {
    unittest.expect(
      o.city!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hashedFirstName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hashedLastName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hashedStreetAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterOfflineUserAddressInfo--;
}

core.int buildCounterOffsetPosition = 0;
api.OffsetPosition buildOffsetPosition() {
  final o = api.OffsetPosition();
  buildCounterOffsetPosition++;
  if (buildCounterOffsetPosition < 3) {
    o.left = 42;
    o.top = 42;
  }
  buildCounterOffsetPosition--;
  return o;
}

void checkOffsetPosition(api.OffsetPosition o) {
  buildCounterOffsetPosition++;
  if (buildCounterOffsetPosition < 3) {
    unittest.expect(
      o.left!,
      unittest.equals(42),
    );
    unittest.expect(
      o.top!,
      unittest.equals(42),
    );
  }
  buildCounterOffsetPosition--;
}

core.int buildCounterOmnitureSettings = 0;
api.OmnitureSettings buildOmnitureSettings() {
  final o = api.OmnitureSettings();
  buildCounterOmnitureSettings++;
  if (buildCounterOmnitureSettings < 3) {
    o.omnitureCostDataEnabled = true;
    o.omnitureIntegrationEnabled = true;
  }
  buildCounterOmnitureSettings--;
  return o;
}

void checkOmnitureSettings(api.OmnitureSettings o) {
  buildCounterOmnitureSettings++;
  if (buildCounterOmnitureSettings < 3) {
    unittest.expect(o.omnitureCostDataEnabled!, unittest.isTrue);
    unittest.expect(o.omnitureIntegrationEnabled!, unittest.isTrue);
  }
  buildCounterOmnitureSettings--;
}

core.int buildCounterOperatingSystem = 0;
api.OperatingSystem buildOperatingSystem() {
  final o = api.OperatingSystem();
  buildCounterOperatingSystem++;
  if (buildCounterOperatingSystem < 3) {
    o.dartId = 'foo';
    o.desktop = true;
    o.kind = 'foo';
    o.mobile = true;
    o.name = 'foo';
  }
  buildCounterOperatingSystem--;
  return o;
}

void checkOperatingSystem(api.OperatingSystem o) {
  buildCounterOperatingSystem++;
  if (buildCounterOperatingSystem < 3) {
    unittest.expect(
      o.dartId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.desktop!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.mobile!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperatingSystem--;
}

core.int buildCounterOperatingSystemVersion = 0;
api.OperatingSystemVersion buildOperatingSystemVersion() {
  final o = api.OperatingSystemVersion();
  buildCounterOperatingSystemVersion++;
  if (buildCounterOperatingSystemVersion < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.majorVersion = 'foo';
    o.minorVersion = 'foo';
    o.name = 'foo';
    o.operatingSystem = buildOperatingSystem();
  }
  buildCounterOperatingSystemVersion--;
  return o;
}

void checkOperatingSystemVersion(api.OperatingSystemVersion o) {
  buildCounterOperatingSystemVersion++;
  if (buildCounterOperatingSystemVersion < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.majorVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minorVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOperatingSystem(o.operatingSystem!);
  }
  buildCounterOperatingSystemVersion--;
}

core.List<api.OperatingSystemVersion> buildUnnamed125() => [
      buildOperatingSystemVersion(),
      buildOperatingSystemVersion(),
    ];

void checkUnnamed125(core.List<api.OperatingSystemVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperatingSystemVersion(o[0]);
  checkOperatingSystemVersion(o[1]);
}

core.int buildCounterOperatingSystemVersionsListResponse = 0;
api.OperatingSystemVersionsListResponse
    buildOperatingSystemVersionsListResponse() {
  final o = api.OperatingSystemVersionsListResponse();
  buildCounterOperatingSystemVersionsListResponse++;
  if (buildCounterOperatingSystemVersionsListResponse < 3) {
    o.kind = 'foo';
    o.operatingSystemVersions = buildUnnamed125();
  }
  buildCounterOperatingSystemVersionsListResponse--;
  return o;
}

void checkOperatingSystemVersionsListResponse(
    api.OperatingSystemVersionsListResponse o) {
  buildCounterOperatingSystemVersionsListResponse++;
  if (buildCounterOperatingSystemVersionsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed125(o.operatingSystemVersions!);
  }
  buildCounterOperatingSystemVersionsListResponse--;
}

core.List<api.OperatingSystem> buildUnnamed126() => [
      buildOperatingSystem(),
      buildOperatingSystem(),
    ];

void checkUnnamed126(core.List<api.OperatingSystem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperatingSystem(o[0]);
  checkOperatingSystem(o[1]);
}

core.int buildCounterOperatingSystemsListResponse = 0;
api.OperatingSystemsListResponse buildOperatingSystemsListResponse() {
  final o = api.OperatingSystemsListResponse();
  buildCounterOperatingSystemsListResponse++;
  if (buildCounterOperatingSystemsListResponse < 3) {
    o.kind = 'foo';
    o.operatingSystems = buildUnnamed126();
  }
  buildCounterOperatingSystemsListResponse--;
  return o;
}

void checkOperatingSystemsListResponse(api.OperatingSystemsListResponse o) {
  buildCounterOperatingSystemsListResponse++;
  if (buildCounterOperatingSystemsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed126(o.operatingSystems!);
  }
  buildCounterOperatingSystemsListResponse--;
}

core.int buildCounterOptimizationActivity = 0;
api.OptimizationActivity buildOptimizationActivity() {
  final o = api.OptimizationActivity();
  buildCounterOptimizationActivity++;
  if (buildCounterOptimizationActivity < 3) {
    o.floodlightActivityId = 'foo';
    o.floodlightActivityIdDimensionValue = buildDimensionValue();
    o.weight = 42;
  }
  buildCounterOptimizationActivity--;
  return o;
}

void checkOptimizationActivity(api.OptimizationActivity o) {
  buildCounterOptimizationActivity++;
  if (buildCounterOptimizationActivity < 3) {
    unittest.expect(
      o.floodlightActivityId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.floodlightActivityIdDimensionValue!);
    unittest.expect(
      o.weight!,
      unittest.equals(42),
    );
  }
  buildCounterOptimizationActivity--;
}

core.List<core.String> buildUnnamed127() => [
      'foo',
      'foo',
    ];

void checkUnnamed127(core.List<core.String> o) {
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

core.List<api.OrderContact> buildUnnamed128() => [
      buildOrderContact(),
      buildOrderContact(),
    ];

void checkUnnamed128(core.List<api.OrderContact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderContact(o[0]);
  checkOrderContact(o[1]);
}

core.List<core.String> buildUnnamed129() => [
      'foo',
      'foo',
    ];

void checkUnnamed129(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed130() => [
      'foo',
      'foo',
    ];

void checkUnnamed130(core.List<core.String> o) {
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

core.int buildCounterOrder = 0;
api.Order buildOrder() {
  final o = api.Order();
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.approverUserProfileIds = buildUnnamed127();
    o.buyerInvoiceId = 'foo';
    o.buyerOrganizationName = 'foo';
    o.comments = 'foo';
    o.contacts = buildUnnamed128();
    o.id = 'foo';
    o.kind = 'foo';
    o.lastModifiedInfo = buildLastModifiedInfo();
    o.name = 'foo';
    o.notes = 'foo';
    o.planningTermId = 'foo';
    o.projectId = 'foo';
    o.sellerOrderId = 'foo';
    o.sellerOrganizationName = 'foo';
    o.siteId = buildUnnamed129();
    o.siteNames = buildUnnamed130();
    o.subaccountId = 'foo';
    o.termsAndConditions = 'foo';
  }
  buildCounterOrder--;
  return o;
}

void checkOrder(api.Order o) {
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkUnnamed127(o.approverUserProfileIds!);
    unittest.expect(
      o.buyerInvoiceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buyerOrganizationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.comments!,
      unittest.equals('foo'),
    );
    checkUnnamed128(o.contacts!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLastModifiedInfo(o.lastModifiedInfo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.planningTermId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sellerOrderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sellerOrganizationName!,
      unittest.equals('foo'),
    );
    checkUnnamed129(o.siteId!);
    checkUnnamed130(o.siteNames!);
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.termsAndConditions!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrder--;
}

core.int buildCounterOrderContact = 0;
api.OrderContact buildOrderContact() {
  final o = api.OrderContact();
  buildCounterOrderContact++;
  if (buildCounterOrderContact < 3) {
    o.contactInfo = 'foo';
    o.contactName = 'foo';
    o.contactTitle = 'foo';
    o.contactType = 'foo';
    o.signatureUserProfileId = 'foo';
  }
  buildCounterOrderContact--;
  return o;
}

void checkOrderContact(api.OrderContact o) {
  buildCounterOrderContact++;
  if (buildCounterOrderContact < 3) {
    unittest.expect(
      o.contactInfo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signatureUserProfileId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderContact--;
}

core.List<api.Order> buildUnnamed131() => [
      buildOrder(),
      buildOrder(),
    ];

void checkUnnamed131(core.List<api.Order> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrder(o[0]);
  checkOrder(o[1]);
}

core.int buildCounterOrdersListResponse = 0;
api.OrdersListResponse buildOrdersListResponse() {
  final o = api.OrdersListResponse();
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.orders = buildUnnamed131();
  }
  buildCounterOrdersListResponse--;
  return o;
}

void checkOrdersListResponse(api.OrdersListResponse o) {
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed131(o.orders!);
  }
  buildCounterOrdersListResponse--;
}

core.List<api.Dimension> buildUnnamed132() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed132(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Dimension> buildUnnamed133() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed133(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed134() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed134(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Dimension> buildUnnamed135() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed135(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.int buildCounterPathToConversionReportCompatibleFields = 0;
api.PathToConversionReportCompatibleFields
    buildPathToConversionReportCompatibleFields() {
  final o = api.PathToConversionReportCompatibleFields();
  buildCounterPathToConversionReportCompatibleFields++;
  if (buildCounterPathToConversionReportCompatibleFields < 3) {
    o.conversionDimensions = buildUnnamed132();
    o.customFloodlightVariables = buildUnnamed133();
    o.kind = 'foo';
    o.metrics = buildUnnamed134();
    o.perInteractionDimensions = buildUnnamed135();
  }
  buildCounterPathToConversionReportCompatibleFields--;
  return o;
}

void checkPathToConversionReportCompatibleFields(
    api.PathToConversionReportCompatibleFields o) {
  buildCounterPathToConversionReportCompatibleFields++;
  if (buildCounterPathToConversionReportCompatibleFields < 3) {
    checkUnnamed132(o.conversionDimensions!);
    checkUnnamed133(o.customFloodlightVariables!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed134(o.metrics!);
    checkUnnamed135(o.perInteractionDimensions!);
  }
  buildCounterPathToConversionReportCompatibleFields--;
}

core.List<api.Size> buildUnnamed136() => [
      buildSize(),
      buildSize(),
    ];

void checkUnnamed136(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.List<core.String> buildUnnamed137() => [
      'foo',
      'foo',
    ];

void checkUnnamed137(core.List<core.String> o) {
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

core.int buildCounterPlacement = 0;
api.Placement buildPlacement() {
  final o = api.Placement();
  buildCounterPlacement++;
  if (buildCounterPlacement < 3) {
    o.accountId = 'foo';
    o.activeStatus = 'foo';
    o.adBlockingOptOut = true;
    o.adServingPlatformId = 'foo';
    o.additionalSizes = buildUnnamed136();
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.campaignId = 'foo';
    o.campaignIdDimensionValue = buildDimensionValue();
    o.comment = 'foo';
    o.compatibility = 'foo';
    o.contentCategoryId = 'foo';
    o.conversionDomainOverride = buildPlacementConversionDomainOverride();
    o.createInfo = buildLastModifiedInfo();
    o.directorySiteId = 'foo';
    o.directorySiteIdDimensionValue = buildDimensionValue();
    o.externalId = 'foo';
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.keyName = 'foo';
    o.kind = 'foo';
    o.lastModifiedInfo = buildLastModifiedInfo();
    o.lookbackConfiguration = buildLookbackConfiguration();
    o.name = 'foo';
    o.partnerWrappingData = buildMeasurementPartnerWrappingData();
    o.paymentApproved = true;
    o.paymentSource = 'foo';
    o.placementGroupId = 'foo';
    o.placementGroupIdDimensionValue = buildDimensionValue();
    o.placementStrategyId = 'foo';
    o.pricingSchedule = buildPricingSchedule();
    o.primary = true;
    o.publisherUpdateInfo = buildLastModifiedInfo();
    o.siteId = 'foo';
    o.siteIdDimensionValue = buildDimensionValue();
    o.siteServed = true;
    o.size = buildSize();
    o.sslRequired = true;
    o.status = 'foo';
    o.subaccountId = 'foo';
    o.tagFormats = buildUnnamed137();
    o.tagSetting = buildTagSetting();
    o.videoActiveViewOptOut = true;
    o.videoSettings = buildVideoSettings();
    o.vpaidAdapterChoice = 'foo';
    o.wrappingOptOut = true;
  }
  buildCounterPlacement--;
  return o;
}

void checkPlacement(api.Placement o) {
  buildCounterPlacement++;
  if (buildCounterPlacement < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.activeStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.adBlockingOptOut!, unittest.isTrue);
    unittest.expect(
      o.adServingPlatformId!,
      unittest.equals('foo'),
    );
    checkUnnamed136(o.additionalSizes!);
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    unittest.expect(
      o.campaignId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.campaignIdDimensionValue!);
    unittest.expect(
      o.comment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.compatibility!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentCategoryId!,
      unittest.equals('foo'),
    );
    checkPlacementConversionDomainOverride(o.conversionDomainOverride!);
    checkLastModifiedInfo(o.createInfo!);
    unittest.expect(
      o.directorySiteId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.directorySiteIdDimensionValue!);
    unittest.expect(
      o.externalId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    unittest.expect(
      o.keyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLastModifiedInfo(o.lastModifiedInfo!);
    checkLookbackConfiguration(o.lookbackConfiguration!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkMeasurementPartnerWrappingData(o.partnerWrappingData!);
    unittest.expect(o.paymentApproved!, unittest.isTrue);
    unittest.expect(
      o.paymentSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placementGroupId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.placementGroupIdDimensionValue!);
    unittest.expect(
      o.placementStrategyId!,
      unittest.equals('foo'),
    );
    checkPricingSchedule(o.pricingSchedule!);
    unittest.expect(o.primary!, unittest.isTrue);
    checkLastModifiedInfo(o.publisherUpdateInfo!);
    unittest.expect(
      o.siteId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.siteIdDimensionValue!);
    unittest.expect(o.siteServed!, unittest.isTrue);
    checkSize(o.size!);
    unittest.expect(o.sslRequired!, unittest.isTrue);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    checkUnnamed137(o.tagFormats!);
    checkTagSetting(o.tagSetting!);
    unittest.expect(o.videoActiveViewOptOut!, unittest.isTrue);
    checkVideoSettings(o.videoSettings!);
    unittest.expect(
      o.vpaidAdapterChoice!,
      unittest.equals('foo'),
    );
    unittest.expect(o.wrappingOptOut!, unittest.isTrue);
  }
  buildCounterPlacement--;
}

core.int buildCounterPlacementAssignment = 0;
api.PlacementAssignment buildPlacementAssignment() {
  final o = api.PlacementAssignment();
  buildCounterPlacementAssignment++;
  if (buildCounterPlacementAssignment < 3) {
    o.active = true;
    o.placementId = 'foo';
    o.placementIdDimensionValue = buildDimensionValue();
    o.sslRequired = true;
  }
  buildCounterPlacementAssignment--;
  return o;
}

void checkPlacementAssignment(api.PlacementAssignment o) {
  buildCounterPlacementAssignment++;
  if (buildCounterPlacementAssignment < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.placementId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.placementIdDimensionValue!);
    unittest.expect(o.sslRequired!, unittest.isTrue);
  }
  buildCounterPlacementAssignment--;
}

core.List<api.PlacementSingleConversionDomain> buildUnnamed138() => [
      buildPlacementSingleConversionDomain(),
      buildPlacementSingleConversionDomain(),
    ];

void checkUnnamed138(core.List<api.PlacementSingleConversionDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlacementSingleConversionDomain(o[0]);
  checkPlacementSingleConversionDomain(o[1]);
}

core.int buildCounterPlacementConversionDomainOverride = 0;
api.PlacementConversionDomainOverride buildPlacementConversionDomainOverride() {
  final o = api.PlacementConversionDomainOverride();
  buildCounterPlacementConversionDomainOverride++;
  if (buildCounterPlacementConversionDomainOverride < 3) {
    o.conversionDomains = buildUnnamed138();
  }
  buildCounterPlacementConversionDomainOverride--;
  return o;
}

void checkPlacementConversionDomainOverride(
    api.PlacementConversionDomainOverride o) {
  buildCounterPlacementConversionDomainOverride++;
  if (buildCounterPlacementConversionDomainOverride < 3) {
    checkUnnamed138(o.conversionDomains!);
  }
  buildCounterPlacementConversionDomainOverride--;
}

core.List<core.String> buildUnnamed139() => [
      'foo',
      'foo',
    ];

void checkUnnamed139(core.List<core.String> o) {
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

core.int buildCounterPlacementGroup = 0;
api.PlacementGroup buildPlacementGroup() {
  final o = api.PlacementGroup();
  buildCounterPlacementGroup++;
  if (buildCounterPlacementGroup < 3) {
    o.accountId = 'foo';
    o.activeStatus = 'foo';
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.campaignId = 'foo';
    o.campaignIdDimensionValue = buildDimensionValue();
    o.childPlacementIds = buildUnnamed139();
    o.comment = 'foo';
    o.contentCategoryId = 'foo';
    o.createInfo = buildLastModifiedInfo();
    o.directorySiteId = 'foo';
    o.directorySiteIdDimensionValue = buildDimensionValue();
    o.externalId = 'foo';
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.kind = 'foo';
    o.lastModifiedInfo = buildLastModifiedInfo();
    o.name = 'foo';
    o.placementGroupType = 'foo';
    o.placementStrategyId = 'foo';
    o.pricingSchedule = buildPricingSchedule();
    o.primaryPlacementId = 'foo';
    o.primaryPlacementIdDimensionValue = buildDimensionValue();
    o.siteId = 'foo';
    o.siteIdDimensionValue = buildDimensionValue();
    o.subaccountId = 'foo';
  }
  buildCounterPlacementGroup--;
  return o;
}

void checkPlacementGroup(api.PlacementGroup o) {
  buildCounterPlacementGroup++;
  if (buildCounterPlacementGroup < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.activeStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    unittest.expect(
      o.campaignId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.campaignIdDimensionValue!);
    checkUnnamed139(o.childPlacementIds!);
    unittest.expect(
      o.comment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentCategoryId!,
      unittest.equals('foo'),
    );
    checkLastModifiedInfo(o.createInfo!);
    unittest.expect(
      o.directorySiteId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.directorySiteIdDimensionValue!);
    unittest.expect(
      o.externalId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLastModifiedInfo(o.lastModifiedInfo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placementGroupType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placementStrategyId!,
      unittest.equals('foo'),
    );
    checkPricingSchedule(o.pricingSchedule!);
    unittest.expect(
      o.primaryPlacementId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.primaryPlacementIdDimensionValue!);
    unittest.expect(
      o.siteId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.siteIdDimensionValue!);
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlacementGroup--;
}

core.List<api.PlacementGroup> buildUnnamed140() => [
      buildPlacementGroup(),
      buildPlacementGroup(),
    ];

void checkUnnamed140(core.List<api.PlacementGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlacementGroup(o[0]);
  checkPlacementGroup(o[1]);
}

core.int buildCounterPlacementGroupsListResponse = 0;
api.PlacementGroupsListResponse buildPlacementGroupsListResponse() {
  final o = api.PlacementGroupsListResponse();
  buildCounterPlacementGroupsListResponse++;
  if (buildCounterPlacementGroupsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.placementGroups = buildUnnamed140();
  }
  buildCounterPlacementGroupsListResponse--;
  return o;
}

void checkPlacementGroupsListResponse(api.PlacementGroupsListResponse o) {
  buildCounterPlacementGroupsListResponse++;
  if (buildCounterPlacementGroupsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed140(o.placementGroups!);
  }
  buildCounterPlacementGroupsListResponse--;
}

core.int buildCounterPlacementSingleConversionDomain = 0;
api.PlacementSingleConversionDomain buildPlacementSingleConversionDomain() {
  final o = api.PlacementSingleConversionDomain();
  buildCounterPlacementSingleConversionDomain++;
  if (buildCounterPlacementSingleConversionDomain < 3) {
    o.conversionDomainId = 'foo';
    o.conversionDomainValue = 'foo';
  }
  buildCounterPlacementSingleConversionDomain--;
  return o;
}

void checkPlacementSingleConversionDomain(
    api.PlacementSingleConversionDomain o) {
  buildCounterPlacementSingleConversionDomain++;
  if (buildCounterPlacementSingleConversionDomain < 3) {
    unittest.expect(
      o.conversionDomainId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conversionDomainValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlacementSingleConversionDomain--;
}

core.List<api.PlacementStrategy> buildUnnamed141() => [
      buildPlacementStrategy(),
      buildPlacementStrategy(),
    ];

void checkUnnamed141(core.List<api.PlacementStrategy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlacementStrategy(o[0]);
  checkPlacementStrategy(o[1]);
}

core.int buildCounterPlacementStrategiesListResponse = 0;
api.PlacementStrategiesListResponse buildPlacementStrategiesListResponse() {
  final o = api.PlacementStrategiesListResponse();
  buildCounterPlacementStrategiesListResponse++;
  if (buildCounterPlacementStrategiesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.placementStrategies = buildUnnamed141();
  }
  buildCounterPlacementStrategiesListResponse--;
  return o;
}

void checkPlacementStrategiesListResponse(
    api.PlacementStrategiesListResponse o) {
  buildCounterPlacementStrategiesListResponse++;
  if (buildCounterPlacementStrategiesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed141(o.placementStrategies!);
  }
  buildCounterPlacementStrategiesListResponse--;
}

core.int buildCounterPlacementStrategy = 0;
api.PlacementStrategy buildPlacementStrategy() {
  final o = api.PlacementStrategy();
  buildCounterPlacementStrategy++;
  if (buildCounterPlacementStrategy < 3) {
    o.accountId = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterPlacementStrategy--;
  return o;
}

void checkPlacementStrategy(api.PlacementStrategy o) {
  buildCounterPlacementStrategy++;
  if (buildCounterPlacementStrategy < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlacementStrategy--;
}

core.List<api.TagData> buildUnnamed142() => [
      buildTagData(),
      buildTagData(),
    ];

void checkUnnamed142(core.List<api.TagData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTagData(o[0]);
  checkTagData(o[1]);
}

core.int buildCounterPlacementTag = 0;
api.PlacementTag buildPlacementTag() {
  final o = api.PlacementTag();
  buildCounterPlacementTag++;
  if (buildCounterPlacementTag < 3) {
    o.placementId = 'foo';
    o.tagDatas = buildUnnamed142();
  }
  buildCounterPlacementTag--;
  return o;
}

void checkPlacementTag(api.PlacementTag o) {
  buildCounterPlacementTag++;
  if (buildCounterPlacementTag < 3) {
    unittest.expect(
      o.placementId!,
      unittest.equals('foo'),
    );
    checkUnnamed142(o.tagDatas!);
  }
  buildCounterPlacementTag--;
}

core.List<api.PlacementTag> buildUnnamed143() => [
      buildPlacementTag(),
      buildPlacementTag(),
    ];

void checkUnnamed143(core.List<api.PlacementTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlacementTag(o[0]);
  checkPlacementTag(o[1]);
}

core.int buildCounterPlacementsGenerateTagsResponse = 0;
api.PlacementsGenerateTagsResponse buildPlacementsGenerateTagsResponse() {
  final o = api.PlacementsGenerateTagsResponse();
  buildCounterPlacementsGenerateTagsResponse++;
  if (buildCounterPlacementsGenerateTagsResponse < 3) {
    o.kind = 'foo';
    o.placementTags = buildUnnamed143();
  }
  buildCounterPlacementsGenerateTagsResponse--;
  return o;
}

void checkPlacementsGenerateTagsResponse(api.PlacementsGenerateTagsResponse o) {
  buildCounterPlacementsGenerateTagsResponse++;
  if (buildCounterPlacementsGenerateTagsResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed143(o.placementTags!);
  }
  buildCounterPlacementsGenerateTagsResponse--;
}

core.List<api.Placement> buildUnnamed144() => [
      buildPlacement(),
      buildPlacement(),
    ];

void checkUnnamed144(core.List<api.Placement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlacement(o[0]);
  checkPlacement(o[1]);
}

core.int buildCounterPlacementsListResponse = 0;
api.PlacementsListResponse buildPlacementsListResponse() {
  final o = api.PlacementsListResponse();
  buildCounterPlacementsListResponse++;
  if (buildCounterPlacementsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.placements = buildUnnamed144();
  }
  buildCounterPlacementsListResponse--;
  return o;
}

void checkPlacementsListResponse(api.PlacementsListResponse o) {
  buildCounterPlacementsListResponse++;
  if (buildCounterPlacementsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed144(o.placements!);
  }
  buildCounterPlacementsListResponse--;
}

core.int buildCounterPlatformType = 0;
api.PlatformType buildPlatformType() {
  final o = api.PlatformType();
  buildCounterPlatformType++;
  if (buildCounterPlatformType < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterPlatformType--;
  return o;
}

void checkPlatformType(api.PlatformType o) {
  buildCounterPlatformType++;
  if (buildCounterPlatformType < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlatformType--;
}

core.List<api.PlatformType> buildUnnamed145() => [
      buildPlatformType(),
      buildPlatformType(),
    ];

void checkUnnamed145(core.List<api.PlatformType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlatformType(o[0]);
  checkPlatformType(o[1]);
}

core.int buildCounterPlatformTypesListResponse = 0;
api.PlatformTypesListResponse buildPlatformTypesListResponse() {
  final o = api.PlatformTypesListResponse();
  buildCounterPlatformTypesListResponse++;
  if (buildCounterPlatformTypesListResponse < 3) {
    o.kind = 'foo';
    o.platformTypes = buildUnnamed145();
  }
  buildCounterPlatformTypesListResponse--;
  return o;
}

void checkPlatformTypesListResponse(api.PlatformTypesListResponse o) {
  buildCounterPlatformTypesListResponse++;
  if (buildCounterPlatformTypesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed145(o.platformTypes!);
  }
  buildCounterPlatformTypesListResponse--;
}

core.int buildCounterPopupWindowProperties = 0;
api.PopupWindowProperties buildPopupWindowProperties() {
  final o = api.PopupWindowProperties();
  buildCounterPopupWindowProperties++;
  if (buildCounterPopupWindowProperties < 3) {
    o.dimension = buildSize();
    o.offset = buildOffsetPosition();
    o.positionType = 'foo';
    o.showAddressBar = true;
    o.showMenuBar = true;
    o.showScrollBar = true;
    o.showStatusBar = true;
    o.showToolBar = true;
    o.title = 'foo';
  }
  buildCounterPopupWindowProperties--;
  return o;
}

void checkPopupWindowProperties(api.PopupWindowProperties o) {
  buildCounterPopupWindowProperties++;
  if (buildCounterPopupWindowProperties < 3) {
    checkSize(o.dimension!);
    checkOffsetPosition(o.offset!);
    unittest.expect(
      o.positionType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.showAddressBar!, unittest.isTrue);
    unittest.expect(o.showMenuBar!, unittest.isTrue);
    unittest.expect(o.showScrollBar!, unittest.isTrue);
    unittest.expect(o.showStatusBar!, unittest.isTrue);
    unittest.expect(o.showToolBar!, unittest.isTrue);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterPopupWindowProperties--;
}

core.int buildCounterPostalCode = 0;
api.PostalCode buildPostalCode() {
  final o = api.PostalCode();
  buildCounterPostalCode++;
  if (buildCounterPostalCode < 3) {
    o.code = 'foo';
    o.countryCode = 'foo';
    o.countryDartId = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
  }
  buildCounterPostalCode--;
  return o;
}

void checkPostalCode(api.PostalCode o) {
  buildCounterPostalCode++;
  if (buildCounterPostalCode < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryDartId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostalCode--;
}

core.List<api.PostalCode> buildUnnamed146() => [
      buildPostalCode(),
      buildPostalCode(),
    ];

void checkUnnamed146(core.List<api.PostalCode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCode(o[0]);
  checkPostalCode(o[1]);
}

core.int buildCounterPostalCodesListResponse = 0;
api.PostalCodesListResponse buildPostalCodesListResponse() {
  final o = api.PostalCodesListResponse();
  buildCounterPostalCodesListResponse++;
  if (buildCounterPostalCodesListResponse < 3) {
    o.kind = 'foo';
    o.postalCodes = buildUnnamed146();
  }
  buildCounterPostalCodesListResponse--;
  return o;
}

void checkPostalCodesListResponse(api.PostalCodesListResponse o) {
  buildCounterPostalCodesListResponse++;
  if (buildCounterPostalCodesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed146(o.postalCodes!);
  }
  buildCounterPostalCodesListResponse--;
}

core.List<api.Flight> buildUnnamed147() => [
      buildFlight(),
      buildFlight(),
    ];

void checkUnnamed147(core.List<api.Flight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFlight(o[0]);
  checkFlight(o[1]);
}

core.int buildCounterPricing = 0;
api.Pricing buildPricing() {
  final o = api.Pricing();
  buildCounterPricing++;
  if (buildCounterPricing < 3) {
    o.capCostType = 'foo';
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.flights = buildUnnamed147();
    o.groupType = 'foo';
    o.pricingType = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterPricing--;
  return o;
}

void checkPricing(api.Pricing o) {
  buildCounterPricing++;
  if (buildCounterPricing < 3) {
    unittest.expect(
      o.capCostType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    checkUnnamed147(o.flights!);
    unittest.expect(
      o.groupType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pricingType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
  }
  buildCounterPricing--;
}

core.List<api.PricingSchedulePricingPeriod> buildUnnamed148() => [
      buildPricingSchedulePricingPeriod(),
      buildPricingSchedulePricingPeriod(),
    ];

void checkUnnamed148(core.List<api.PricingSchedulePricingPeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricingSchedulePricingPeriod(o[0]);
  checkPricingSchedulePricingPeriod(o[1]);
}

core.int buildCounterPricingSchedule = 0;
api.PricingSchedule buildPricingSchedule() {
  final o = api.PricingSchedule();
  buildCounterPricingSchedule++;
  if (buildCounterPricingSchedule < 3) {
    o.capCostOption = 'foo';
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.flighted = true;
    o.floodlightActivityId = 'foo';
    o.pricingPeriods = buildUnnamed148();
    o.pricingType = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.testingStartDate = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterPricingSchedule--;
  return o;
}

void checkPricingSchedule(api.PricingSchedule o) {
  buildCounterPricingSchedule++;
  if (buildCounterPricingSchedule < 3) {
    unittest.expect(
      o.capCostOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(o.flighted!, unittest.isTrue);
    unittest.expect(
      o.floodlightActivityId!,
      unittest.equals('foo'),
    );
    checkUnnamed148(o.pricingPeriods!);
    unittest.expect(
      o.pricingType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.testingStartDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
  }
  buildCounterPricingSchedule--;
}

core.int buildCounterPricingSchedulePricingPeriod = 0;
api.PricingSchedulePricingPeriod buildPricingSchedulePricingPeriod() {
  final o = api.PricingSchedulePricingPeriod();
  buildCounterPricingSchedulePricingPeriod++;
  if (buildCounterPricingSchedulePricingPeriod < 3) {
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.pricingComment = 'foo';
    o.rateOrCostNanos = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.units = 'foo';
  }
  buildCounterPricingSchedulePricingPeriod--;
  return o;
}

void checkPricingSchedulePricingPeriod(api.PricingSchedulePricingPeriod o) {
  buildCounterPricingSchedulePricingPeriod++;
  if (buildCounterPricingSchedulePricingPeriod < 3) {
    unittest.expect(
      o.endDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.pricingComment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rateOrCostNanos!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterPricingSchedulePricingPeriod--;
}

core.int buildCounterProject = 0;
api.Project buildProject() {
  final o = api.Project();
  buildCounterProject++;
  if (buildCounterProject < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.audienceAgeGroup = 'foo';
    o.audienceGender = 'foo';
    o.budget = 'foo';
    o.clientBillingCode = 'foo';
    o.clientName = 'foo';
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.id = 'foo';
    o.kind = 'foo';
    o.lastModifiedInfo = buildLastModifiedInfo();
    o.name = 'foo';
    o.overview = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.subaccountId = 'foo';
    o.targetClicks = 'foo';
    o.targetConversions = 'foo';
    o.targetCpaNanos = 'foo';
    o.targetCpcNanos = 'foo';
    o.targetCpmActiveViewNanos = 'foo';
    o.targetCpmNanos = 'foo';
    o.targetImpressions = 'foo';
  }
  buildCounterProject--;
  return o;
}

void checkProject(api.Project o) {
  buildCounterProject++;
  if (buildCounterProject < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.audienceAgeGroup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.audienceGender!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.budget!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientBillingCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLastModifiedInfo(o.lastModifiedInfo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.overview!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetClicks!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetConversions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCpaNanos!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCpcNanos!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCpmActiveViewNanos!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCpmNanos!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetImpressions!,
      unittest.equals('foo'),
    );
  }
  buildCounterProject--;
}

core.List<api.Project> buildUnnamed149() => [
      buildProject(),
      buildProject(),
    ];

void checkUnnamed149(core.List<api.Project> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProject(o[0]);
  checkProject(o[1]);
}

core.int buildCounterProjectsListResponse = 0;
api.ProjectsListResponse buildProjectsListResponse() {
  final o = api.ProjectsListResponse();
  buildCounterProjectsListResponse++;
  if (buildCounterProjectsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.projects = buildUnnamed149();
  }
  buildCounterProjectsListResponse--;
  return o;
}

void checkProjectsListResponse(api.ProjectsListResponse o) {
  buildCounterProjectsListResponse++;
  if (buildCounterProjectsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed149(o.projects!);
  }
  buildCounterProjectsListResponse--;
}

core.List<api.Dimension> buildUnnamed150() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed150(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Dimension> buildUnnamed151() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed151(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed152() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed152(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Metric> buildUnnamed153() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed153(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Metric> buildUnnamed154() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed154(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterReachReportCompatibleFields = 0;
api.ReachReportCompatibleFields buildReachReportCompatibleFields() {
  final o = api.ReachReportCompatibleFields();
  buildCounterReachReportCompatibleFields++;
  if (buildCounterReachReportCompatibleFields < 3) {
    o.dimensionFilters = buildUnnamed150();
    o.dimensions = buildUnnamed151();
    o.kind = 'foo';
    o.metrics = buildUnnamed152();
    o.pivotedActivityMetrics = buildUnnamed153();
    o.reachByFrequencyMetrics = buildUnnamed154();
  }
  buildCounterReachReportCompatibleFields--;
  return o;
}

void checkReachReportCompatibleFields(api.ReachReportCompatibleFields o) {
  buildCounterReachReportCompatibleFields++;
  if (buildCounterReachReportCompatibleFields < 3) {
    checkUnnamed150(o.dimensionFilters!);
    checkUnnamed151(o.dimensions!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed152(o.metrics!);
    checkUnnamed153(o.pivotedActivityMetrics!);
    checkUnnamed154(o.reachByFrequencyMetrics!);
  }
  buildCounterReachReportCompatibleFields--;
}

core.int buildCounterRecipient = 0;
api.Recipient buildRecipient() {
  final o = api.Recipient();
  buildCounterRecipient++;
  if (buildCounterRecipient < 3) {
    o.deliveryType = 'foo';
    o.email = 'foo';
    o.kind = 'foo';
  }
  buildCounterRecipient--;
  return o;
}

void checkRecipient(api.Recipient o) {
  buildCounterRecipient++;
  if (buildCounterRecipient < 3) {
    unittest.expect(
      o.deliveryType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecipient--;
}

core.int buildCounterRegion = 0;
api.Region buildRegion() {
  final o = api.Region();
  buildCounterRegion++;
  if (buildCounterRegion < 3) {
    o.countryCode = 'foo';
    o.countryDartId = 'foo';
    o.dartId = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterRegion--;
  return o;
}

void checkRegion(api.Region o) {
  buildCounterRegion++;
  if (buildCounterRegion < 3) {
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryDartId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dartId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegion--;
}

core.List<api.Region> buildUnnamed155() => [
      buildRegion(),
      buildRegion(),
    ];

void checkUnnamed155(core.List<api.Region> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegion(o[0]);
  checkRegion(o[1]);
}

core.int buildCounterRegionsListResponse = 0;
api.RegionsListResponse buildRegionsListResponse() {
  final o = api.RegionsListResponse();
  buildCounterRegionsListResponse++;
  if (buildCounterRegionsListResponse < 3) {
    o.kind = 'foo';
    o.regions = buildUnnamed155();
  }
  buildCounterRegionsListResponse--;
  return o;
}

void checkRegionsListResponse(api.RegionsListResponse o) {
  buildCounterRegionsListResponse++;
  if (buildCounterRegionsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed155(o.regions!);
  }
  buildCounterRegionsListResponse--;
}

core.int buildCounterRemarketingList = 0;
api.RemarketingList buildRemarketingList() {
  final o = api.RemarketingList();
  buildCounterRemarketingList++;
  if (buildCounterRemarketingList < 3) {
    o.accountId = 'foo';
    o.active = true;
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.description = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.lifeSpan = 'foo';
    o.listPopulationRule = buildListPopulationRule();
    o.listSize = 'foo';
    o.listSource = 'foo';
    o.name = 'foo';
    o.subaccountId = 'foo';
  }
  buildCounterRemarketingList--;
  return o;
}

void checkRemarketingList(api.RemarketingList o) {
  buildCounterRemarketingList++;
  if (buildCounterRemarketingList < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lifeSpan!,
      unittest.equals('foo'),
    );
    checkListPopulationRule(o.listPopulationRule!);
    unittest.expect(
      o.listSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.listSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemarketingList--;
}

core.List<core.String> buildUnnamed156() => [
      'foo',
      'foo',
    ];

void checkUnnamed156(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed157() => [
      'foo',
      'foo',
    ];

void checkUnnamed157(core.List<core.String> o) {
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

core.int buildCounterRemarketingListShare = 0;
api.RemarketingListShare buildRemarketingListShare() {
  final o = api.RemarketingListShare();
  buildCounterRemarketingListShare++;
  if (buildCounterRemarketingListShare < 3) {
    o.kind = 'foo';
    o.remarketingListId = 'foo';
    o.sharedAccountIds = buildUnnamed156();
    o.sharedAdvertiserIds = buildUnnamed157();
  }
  buildCounterRemarketingListShare--;
  return o;
}

void checkRemarketingListShare(api.RemarketingListShare o) {
  buildCounterRemarketingListShare++;
  if (buildCounterRemarketingListShare < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remarketingListId!,
      unittest.equals('foo'),
    );
    checkUnnamed156(o.sharedAccountIds!);
    checkUnnamed157(o.sharedAdvertiserIds!);
  }
  buildCounterRemarketingListShare--;
}

core.List<api.RemarketingList> buildUnnamed158() => [
      buildRemarketingList(),
      buildRemarketingList(),
    ];

void checkUnnamed158(core.List<api.RemarketingList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemarketingList(o[0]);
  checkRemarketingList(o[1]);
}

core.int buildCounterRemarketingListsListResponse = 0;
api.RemarketingListsListResponse buildRemarketingListsListResponse() {
  final o = api.RemarketingListsListResponse();
  buildCounterRemarketingListsListResponse++;
  if (buildCounterRemarketingListsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.remarketingLists = buildUnnamed158();
  }
  buildCounterRemarketingListsListResponse--;
  return o;
}

void checkRemarketingListsListResponse(api.RemarketingListsListResponse o) {
  buildCounterRemarketingListsListResponse++;
  if (buildCounterRemarketingListsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed158(o.remarketingLists!);
  }
  buildCounterRemarketingListsListResponse--;
}

core.List<api.DimensionValue> buildUnnamed159() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed159(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.SortedDimension> buildUnnamed160() => [
      buildSortedDimension(),
      buildSortedDimension(),
    ];

void checkUnnamed160(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<core.String> buildUnnamed161() => [
      'foo',
      'foo',
    ];

void checkUnnamed161(core.List<core.String> o) {
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

core.int buildCounterReportCriteria = 0;
api.ReportCriteria buildReportCriteria() {
  final o = api.ReportCriteria();
  buildCounterReportCriteria++;
  if (buildCounterReportCriteria < 3) {
    o.activities = buildActivities();
    o.customRichMediaEvents = buildCustomRichMediaEvents();
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed159();
    o.dimensions = buildUnnamed160();
    o.metricNames = buildUnnamed161();
  }
  buildCounterReportCriteria--;
  return o;
}

void checkReportCriteria(api.ReportCriteria o) {
  buildCounterReportCriteria++;
  if (buildCounterReportCriteria < 3) {
    checkActivities(o.activities!);
    checkCustomRichMediaEvents(o.customRichMediaEvents!);
    checkDateRange(o.dateRange!);
    checkUnnamed159(o.dimensionFilters!);
    checkUnnamed160(o.dimensions!);
    checkUnnamed161(o.metricNames!);
  }
  buildCounterReportCriteria--;
}

core.List<api.SortedDimension> buildUnnamed162() => [
      buildSortedDimension(),
      buildSortedDimension(),
    ];

void checkUnnamed162(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<api.DimensionValue> buildUnnamed163() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed163(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<core.String> buildUnnamed164() => [
      'foo',
      'foo',
    ];

void checkUnnamed164(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed165() => [
      'foo',
      'foo',
    ];

void checkUnnamed165(core.List<core.String> o) {
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

core.int buildCounterReportCrossDimensionReachCriteria = 0;
api.ReportCrossDimensionReachCriteria buildReportCrossDimensionReachCriteria() {
  final o = api.ReportCrossDimensionReachCriteria();
  buildCounterReportCrossDimensionReachCriteria++;
  if (buildCounterReportCrossDimensionReachCriteria < 3) {
    o.breakdown = buildUnnamed162();
    o.dateRange = buildDateRange();
    o.dimension = 'foo';
    o.dimensionFilters = buildUnnamed163();
    o.metricNames = buildUnnamed164();
    o.overlapMetricNames = buildUnnamed165();
    o.pivoted = true;
  }
  buildCounterReportCrossDimensionReachCriteria--;
  return o;
}

void checkReportCrossDimensionReachCriteria(
    api.ReportCrossDimensionReachCriteria o) {
  buildCounterReportCrossDimensionReachCriteria++;
  if (buildCounterReportCrossDimensionReachCriteria < 3) {
    checkUnnamed162(o.breakdown!);
    checkDateRange(o.dateRange!);
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    checkUnnamed163(o.dimensionFilters!);
    checkUnnamed164(o.metricNames!);
    checkUnnamed165(o.overlapMetricNames!);
    unittest.expect(o.pivoted!, unittest.isTrue);
  }
  buildCounterReportCrossDimensionReachCriteria--;
}

core.List<api.DimensionValue> buildUnnamed166() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed166(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.SortedDimension> buildUnnamed167() => [
      buildSortedDimension(),
      buildSortedDimension(),
    ];

void checkUnnamed167(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<core.String> buildUnnamed168() => [
      'foo',
      'foo',
    ];

void checkUnnamed168(core.List<core.String> o) {
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

core.int buildCounterReportCrossMediaReachCriteria = 0;
api.ReportCrossMediaReachCriteria buildReportCrossMediaReachCriteria() {
  final o = api.ReportCrossMediaReachCriteria();
  buildCounterReportCrossMediaReachCriteria++;
  if (buildCounterReportCrossMediaReachCriteria < 3) {
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed166();
    o.dimensions = buildUnnamed167();
    o.metricNames = buildUnnamed168();
  }
  buildCounterReportCrossMediaReachCriteria--;
  return o;
}

void checkReportCrossMediaReachCriteria(api.ReportCrossMediaReachCriteria o) {
  buildCounterReportCrossMediaReachCriteria++;
  if (buildCounterReportCrossMediaReachCriteria < 3) {
    checkDateRange(o.dateRange!);
    checkUnnamed166(o.dimensionFilters!);
    checkUnnamed167(o.dimensions!);
    checkUnnamed168(o.metricNames!);
  }
  buildCounterReportCrossMediaReachCriteria--;
}

core.List<api.Recipient> buildUnnamed169() => [
      buildRecipient(),
      buildRecipient(),
    ];

void checkUnnamed169(core.List<api.Recipient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRecipient(o[0]);
  checkRecipient(o[1]);
}

core.int buildCounterReportDelivery = 0;
api.ReportDelivery buildReportDelivery() {
  final o = api.ReportDelivery();
  buildCounterReportDelivery++;
  if (buildCounterReportDelivery < 3) {
    o.emailOwner = true;
    o.emailOwnerDeliveryType = 'foo';
    o.message = 'foo';
    o.recipients = buildUnnamed169();
  }
  buildCounterReportDelivery--;
  return o;
}

void checkReportDelivery(api.ReportDelivery o) {
  buildCounterReportDelivery++;
  if (buildCounterReportDelivery < 3) {
    unittest.expect(o.emailOwner!, unittest.isTrue);
    unittest.expect(
      o.emailOwnerDeliveryType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    checkUnnamed169(o.recipients!);
  }
  buildCounterReportDelivery--;
}

core.List<api.DimensionValue> buildUnnamed170() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed170(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.DimensionValue> buildUnnamed171() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed171(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.SortedDimension> buildUnnamed172() => [
      buildSortedDimension(),
      buildSortedDimension(),
    ];

void checkUnnamed172(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<core.String> buildUnnamed173() => [
      'foo',
      'foo',
    ];

void checkUnnamed173(core.List<core.String> o) {
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

core.int buildCounterReportFloodlightCriteriaReportProperties = 0;
api.ReportFloodlightCriteriaReportProperties
    buildReportFloodlightCriteriaReportProperties() {
  final o = api.ReportFloodlightCriteriaReportProperties();
  buildCounterReportFloodlightCriteriaReportProperties++;
  if (buildCounterReportFloodlightCriteriaReportProperties < 3) {
    o.includeAttributedIPConversions = true;
    o.includeUnattributedCookieConversions = true;
    o.includeUnattributedIPConversions = true;
  }
  buildCounterReportFloodlightCriteriaReportProperties--;
  return o;
}

void checkReportFloodlightCriteriaReportProperties(
    api.ReportFloodlightCriteriaReportProperties o) {
  buildCounterReportFloodlightCriteriaReportProperties++;
  if (buildCounterReportFloodlightCriteriaReportProperties < 3) {
    unittest.expect(o.includeAttributedIPConversions!, unittest.isTrue);
    unittest.expect(o.includeUnattributedCookieConversions!, unittest.isTrue);
    unittest.expect(o.includeUnattributedIPConversions!, unittest.isTrue);
  }
  buildCounterReportFloodlightCriteriaReportProperties--;
}

core.int buildCounterReportFloodlightCriteria = 0;
api.ReportFloodlightCriteria buildReportFloodlightCriteria() {
  final o = api.ReportFloodlightCriteria();
  buildCounterReportFloodlightCriteria++;
  if (buildCounterReportFloodlightCriteria < 3) {
    o.customRichMediaEvents = buildUnnamed170();
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed171();
    o.dimensions = buildUnnamed172();
    o.floodlightConfigId = buildDimensionValue();
    o.metricNames = buildUnnamed173();
    o.reportProperties = buildReportFloodlightCriteriaReportProperties();
  }
  buildCounterReportFloodlightCriteria--;
  return o;
}

void checkReportFloodlightCriteria(api.ReportFloodlightCriteria o) {
  buildCounterReportFloodlightCriteria++;
  if (buildCounterReportFloodlightCriteria < 3) {
    checkUnnamed170(o.customRichMediaEvents!);
    checkDateRange(o.dateRange!);
    checkUnnamed171(o.dimensionFilters!);
    checkUnnamed172(o.dimensions!);
    checkDimensionValue(o.floodlightConfigId!);
    checkUnnamed173(o.metricNames!);
    checkReportFloodlightCriteriaReportProperties(o.reportProperties!);
  }
  buildCounterReportFloodlightCriteria--;
}

core.List<api.DimensionValue> buildUnnamed174() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed174(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.SortedDimension> buildUnnamed175() => [
      buildSortedDimension(),
      buildSortedDimension(),
    ];

void checkUnnamed175(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<api.SortedDimension> buildUnnamed176() => [
      buildSortedDimension(),
      buildSortedDimension(),
    ];

void checkUnnamed176(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<api.DimensionValue> buildUnnamed177() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed177(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<core.String> buildUnnamed178() => [
      'foo',
      'foo',
    ];

void checkUnnamed178(core.List<core.String> o) {
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

core.List<api.SortedDimension> buildUnnamed179() => [
      buildSortedDimension(),
      buildSortedDimension(),
    ];

void checkUnnamed179(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.int buildCounterReportPathToConversionCriteriaReportProperties = 0;
api.ReportPathToConversionCriteriaReportProperties
    buildReportPathToConversionCriteriaReportProperties() {
  final o = api.ReportPathToConversionCriteriaReportProperties();
  buildCounterReportPathToConversionCriteriaReportProperties++;
  if (buildCounterReportPathToConversionCriteriaReportProperties < 3) {
    o.clicksLookbackWindow = 42;
    o.impressionsLookbackWindow = 42;
    o.includeAttributedIPConversions = true;
    o.includeUnattributedCookieConversions = true;
    o.includeUnattributedIPConversions = true;
    o.maximumClickInteractions = 42;
    o.maximumImpressionInteractions = 42;
    o.maximumInteractionGap = 42;
    o.pivotOnInteractionPath = true;
  }
  buildCounterReportPathToConversionCriteriaReportProperties--;
  return o;
}

void checkReportPathToConversionCriteriaReportProperties(
    api.ReportPathToConversionCriteriaReportProperties o) {
  buildCounterReportPathToConversionCriteriaReportProperties++;
  if (buildCounterReportPathToConversionCriteriaReportProperties < 3) {
    unittest.expect(
      o.clicksLookbackWindow!,
      unittest.equals(42),
    );
    unittest.expect(
      o.impressionsLookbackWindow!,
      unittest.equals(42),
    );
    unittest.expect(o.includeAttributedIPConversions!, unittest.isTrue);
    unittest.expect(o.includeUnattributedCookieConversions!, unittest.isTrue);
    unittest.expect(o.includeUnattributedIPConversions!, unittest.isTrue);
    unittest.expect(
      o.maximumClickInteractions!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maximumImpressionInteractions!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maximumInteractionGap!,
      unittest.equals(42),
    );
    unittest.expect(o.pivotOnInteractionPath!, unittest.isTrue);
  }
  buildCounterReportPathToConversionCriteriaReportProperties--;
}

core.int buildCounterReportPathToConversionCriteria = 0;
api.ReportPathToConversionCriteria buildReportPathToConversionCriteria() {
  final o = api.ReportPathToConversionCriteria();
  buildCounterReportPathToConversionCriteria++;
  if (buildCounterReportPathToConversionCriteria < 3) {
    o.activityFilters = buildUnnamed174();
    o.conversionDimensions = buildUnnamed175();
    o.customFloodlightVariables = buildUnnamed176();
    o.customRichMediaEvents = buildUnnamed177();
    o.dateRange = buildDateRange();
    o.floodlightConfigId = buildDimensionValue();
    o.metricNames = buildUnnamed178();
    o.perInteractionDimensions = buildUnnamed179();
    o.reportProperties = buildReportPathToConversionCriteriaReportProperties();
  }
  buildCounterReportPathToConversionCriteria--;
  return o;
}

void checkReportPathToConversionCriteria(api.ReportPathToConversionCriteria o) {
  buildCounterReportPathToConversionCriteria++;
  if (buildCounterReportPathToConversionCriteria < 3) {
    checkUnnamed174(o.activityFilters!);
    checkUnnamed175(o.conversionDimensions!);
    checkUnnamed176(o.customFloodlightVariables!);
    checkUnnamed177(o.customRichMediaEvents!);
    checkDateRange(o.dateRange!);
    checkDimensionValue(o.floodlightConfigId!);
    checkUnnamed178(o.metricNames!);
    checkUnnamed179(o.perInteractionDimensions!);
    checkReportPathToConversionCriteriaReportProperties(o.reportProperties!);
  }
  buildCounterReportPathToConversionCriteria--;
}

core.List<api.DimensionValue> buildUnnamed180() => [
      buildDimensionValue(),
      buildDimensionValue(),
    ];

void checkUnnamed180(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.SortedDimension> buildUnnamed181() => [
      buildSortedDimension(),
      buildSortedDimension(),
    ];

void checkUnnamed181(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<core.String> buildUnnamed182() => [
      'foo',
      'foo',
    ];

void checkUnnamed182(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed183() => [
      'foo',
      'foo',
    ];

void checkUnnamed183(core.List<core.String> o) {
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

core.int buildCounterReportReachCriteria = 0;
api.ReportReachCriteria buildReportReachCriteria() {
  final o = api.ReportReachCriteria();
  buildCounterReportReachCriteria++;
  if (buildCounterReportReachCriteria < 3) {
    o.activities = buildActivities();
    o.customRichMediaEvents = buildCustomRichMediaEvents();
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed180();
    o.dimensions = buildUnnamed181();
    o.enableAllDimensionCombinations = true;
    o.metricNames = buildUnnamed182();
    o.reachByFrequencyMetricNames = buildUnnamed183();
  }
  buildCounterReportReachCriteria--;
  return o;
}

void checkReportReachCriteria(api.ReportReachCriteria o) {
  buildCounterReportReachCriteria++;
  if (buildCounterReportReachCriteria < 3) {
    checkActivities(o.activities!);
    checkCustomRichMediaEvents(o.customRichMediaEvents!);
    checkDateRange(o.dateRange!);
    checkUnnamed180(o.dimensionFilters!);
    checkUnnamed181(o.dimensions!);
    unittest.expect(o.enableAllDimensionCombinations!, unittest.isTrue);
    checkUnnamed182(o.metricNames!);
    checkUnnamed183(o.reachByFrequencyMetricNames!);
  }
  buildCounterReportReachCriteria--;
}

core.List<core.String> buildUnnamed184() => [
      'foo',
      'foo',
    ];

void checkUnnamed184(core.List<core.String> o) {
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

core.int buildCounterReportSchedule = 0;
api.ReportSchedule buildReportSchedule() {
  final o = api.ReportSchedule();
  buildCounterReportSchedule++;
  if (buildCounterReportSchedule < 3) {
    o.active = true;
    o.every = 42;
    o.expirationDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.repeats = 'foo';
    o.repeatsOnWeekDays = buildUnnamed184();
    o.runsOnDayOfMonth = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.timezone = 'foo';
  }
  buildCounterReportSchedule--;
  return o;
}

void checkReportSchedule(api.ReportSchedule o) {
  buildCounterReportSchedule++;
  if (buildCounterReportSchedule < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.every!,
      unittest.equals(42),
    );
    unittest.expect(
      o.expirationDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.repeats!,
      unittest.equals('foo'),
    );
    checkUnnamed184(o.repeatsOnWeekDays!);
    unittest.expect(
      o.runsOnDayOfMonth!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
    unittest.expect(
      o.timezone!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportSchedule--;
}

core.int buildCounterReport = 0;
api.Report buildReport() {
  final o = api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.accountId = 'foo';
    o.criteria = buildReportCriteria();
    o.crossDimensionReachCriteria = buildReportCrossDimensionReachCriteria();
    o.crossMediaReachCriteria = buildReportCrossMediaReachCriteria();
    o.delivery = buildReportDelivery();
    o.etag = 'foo';
    o.fileName = 'foo';
    o.floodlightCriteria = buildReportFloodlightCriteria();
    o.format = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.lastModifiedTime = 'foo';
    o.name = 'foo';
    o.ownerProfileId = 'foo';
    o.pathToConversionCriteria = buildReportPathToConversionCriteria();
    o.reachCriteria = buildReportReachCriteria();
    o.schedule = buildReportSchedule();
    o.subAccountId = 'foo';
    o.type = 'foo';
  }
  buildCounterReport--;
  return o;
}

void checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkReportCriteria(o.criteria!);
    checkReportCrossDimensionReachCriteria(o.crossDimensionReachCriteria!);
    checkReportCrossMediaReachCriteria(o.crossMediaReachCriteria!);
    checkReportDelivery(o.delivery!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    checkReportFloodlightCriteria(o.floodlightCriteria!);
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ownerProfileId!,
      unittest.equals('foo'),
    );
    checkReportPathToConversionCriteria(o.pathToConversionCriteria!);
    checkReportReachCriteria(o.reachCriteria!);
    checkReportSchedule(o.schedule!);
    unittest.expect(
      o.subAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterReport--;
}

core.List<api.Dimension> buildUnnamed185() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed185(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Dimension> buildUnnamed186() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed186(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed187() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed187(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Metric> buildUnnamed188() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed188(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterReportCompatibleFields = 0;
api.ReportCompatibleFields buildReportCompatibleFields() {
  final o = api.ReportCompatibleFields();
  buildCounterReportCompatibleFields++;
  if (buildCounterReportCompatibleFields < 3) {
    o.dimensionFilters = buildUnnamed185();
    o.dimensions = buildUnnamed186();
    o.kind = 'foo';
    o.metrics = buildUnnamed187();
    o.pivotedActivityMetrics = buildUnnamed188();
  }
  buildCounterReportCompatibleFields--;
  return o;
}

void checkReportCompatibleFields(api.ReportCompatibleFields o) {
  buildCounterReportCompatibleFields++;
  if (buildCounterReportCompatibleFields < 3) {
    checkUnnamed185(o.dimensionFilters!);
    checkUnnamed186(o.dimensions!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed187(o.metrics!);
    checkUnnamed188(o.pivotedActivityMetrics!);
  }
  buildCounterReportCompatibleFields--;
}

core.List<api.Report> buildUnnamed189() => [
      buildReport(),
      buildReport(),
    ];

void checkUnnamed189(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.int buildCounterReportList = 0;
api.ReportList buildReportList() {
  final o = api.ReportList();
  buildCounterReportList++;
  if (buildCounterReportList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed189();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterReportList--;
  return o;
}

void checkReportList(api.ReportList o) {
  buildCounterReportList++;
  if (buildCounterReportList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed189(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportList--;
}

core.int buildCounterReportsConfiguration = 0;
api.ReportsConfiguration buildReportsConfiguration() {
  final o = api.ReportsConfiguration();
  buildCounterReportsConfiguration++;
  if (buildCounterReportsConfiguration < 3) {
    o.exposureToConversionEnabled = true;
    o.lookbackConfiguration = buildLookbackConfiguration();
    o.reportGenerationTimeZoneId = 'foo';
  }
  buildCounterReportsConfiguration--;
  return o;
}

void checkReportsConfiguration(api.ReportsConfiguration o) {
  buildCounterReportsConfiguration++;
  if (buildCounterReportsConfiguration < 3) {
    unittest.expect(o.exposureToConversionEnabled!, unittest.isTrue);
    checkLookbackConfiguration(o.lookbackConfiguration!);
    unittest.expect(
      o.reportGenerationTimeZoneId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportsConfiguration--;
}

core.int buildCounterRichMediaExitOverride = 0;
api.RichMediaExitOverride buildRichMediaExitOverride() {
  final o = api.RichMediaExitOverride();
  buildCounterRichMediaExitOverride++;
  if (buildCounterRichMediaExitOverride < 3) {
    o.clickThroughUrl = buildClickThroughUrl();
    o.enabled = true;
    o.exitId = 'foo';
  }
  buildCounterRichMediaExitOverride--;
  return o;
}

void checkRichMediaExitOverride(api.RichMediaExitOverride o) {
  buildCounterRichMediaExitOverride++;
  if (buildCounterRichMediaExitOverride < 3) {
    checkClickThroughUrl(o.clickThroughUrl!);
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.exitId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRichMediaExitOverride--;
}

core.int buildCounterRule = 0;
api.Rule buildRule() {
  final o = api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.assetId = 'foo';
    o.name = 'foo';
    o.targetingTemplateId = 'foo';
  }
  buildCounterRule--;
  return o;
}

void checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    unittest.expect(
      o.assetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetingTemplateId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRule--;
}

core.List<api.SiteContact> buildUnnamed190() => [
      buildSiteContact(),
      buildSiteContact(),
    ];

void checkUnnamed190(core.List<api.SiteContact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSiteContact(o[0]);
  checkSiteContact(o[1]);
}

core.int buildCounterSite = 0;
api.Site buildSite() {
  final o = api.Site();
  buildCounterSite++;
  if (buildCounterSite < 3) {
    o.accountId = 'foo';
    o.adServingPlatformId = 'foo';
    o.approved = true;
    o.directorySiteId = 'foo';
    o.directorySiteIdDimensionValue = buildDimensionValue();
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.keyName = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.siteContacts = buildUnnamed190();
    o.siteSettings = buildSiteSettings();
    o.subaccountId = 'foo';
    o.videoSettings = buildSiteVideoSettings();
  }
  buildCounterSite--;
  return o;
}

void checkSite(api.Site o) {
  buildCounterSite++;
  if (buildCounterSite < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.adServingPlatformId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.approved!, unittest.isTrue);
    unittest.expect(
      o.directorySiteId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.directorySiteIdDimensionValue!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.idDimensionValue!);
    unittest.expect(
      o.keyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed190(o.siteContacts!);
    checkSiteSettings(o.siteSettings!);
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    checkSiteVideoSettings(o.videoSettings!);
  }
  buildCounterSite--;
}

core.List<api.Size> buildUnnamed191() => [
      buildSize(),
      buildSize(),
    ];

void checkUnnamed191(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.int buildCounterSiteCompanionSetting = 0;
api.SiteCompanionSetting buildSiteCompanionSetting() {
  final o = api.SiteCompanionSetting();
  buildCounterSiteCompanionSetting++;
  if (buildCounterSiteCompanionSetting < 3) {
    o.companionsDisabled = true;
    o.enabledSizes = buildUnnamed191();
    o.imageOnly = true;
    o.kind = 'foo';
  }
  buildCounterSiteCompanionSetting--;
  return o;
}

void checkSiteCompanionSetting(api.SiteCompanionSetting o) {
  buildCounterSiteCompanionSetting++;
  if (buildCounterSiteCompanionSetting < 3) {
    unittest.expect(o.companionsDisabled!, unittest.isTrue);
    checkUnnamed191(o.enabledSizes!);
    unittest.expect(o.imageOnly!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterSiteCompanionSetting--;
}

core.int buildCounterSiteContact = 0;
api.SiteContact buildSiteContact() {
  final o = api.SiteContact();
  buildCounterSiteContact++;
  if (buildCounterSiteContact < 3) {
    o.address = 'foo';
    o.contactType = 'foo';
    o.email = 'foo';
    o.firstName = 'foo';
    o.id = 'foo';
    o.lastName = 'foo';
    o.phone = 'foo';
    o.title = 'foo';
  }
  buildCounterSiteContact--;
  return o;
}

void checkSiteContact(api.SiteContact o) {
  buildCounterSiteContact++;
  if (buildCounterSiteContact < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterSiteContact--;
}

core.int buildCounterSiteSettings = 0;
api.SiteSettings buildSiteSettings() {
  final o = api.SiteSettings();
  buildCounterSiteSettings++;
  if (buildCounterSiteSettings < 3) {
    o.activeViewOptOut = true;
    o.adBlockingOptOut = true;
    o.disableNewCookie = true;
    o.tagSetting = buildTagSetting();
    o.videoActiveViewOptOutTemplate = true;
    o.vpaidAdapterChoiceTemplate = 'foo';
  }
  buildCounterSiteSettings--;
  return o;
}

void checkSiteSettings(api.SiteSettings o) {
  buildCounterSiteSettings++;
  if (buildCounterSiteSettings < 3) {
    unittest.expect(o.activeViewOptOut!, unittest.isTrue);
    unittest.expect(o.adBlockingOptOut!, unittest.isTrue);
    unittest.expect(o.disableNewCookie!, unittest.isTrue);
    checkTagSetting(o.tagSetting!);
    unittest.expect(o.videoActiveViewOptOutTemplate!, unittest.isTrue);
    unittest.expect(
      o.vpaidAdapterChoiceTemplate!,
      unittest.equals('foo'),
    );
  }
  buildCounterSiteSettings--;
}

core.int buildCounterSiteSkippableSetting = 0;
api.SiteSkippableSetting buildSiteSkippableSetting() {
  final o = api.SiteSkippableSetting();
  buildCounterSiteSkippableSetting++;
  if (buildCounterSiteSkippableSetting < 3) {
    o.kind = 'foo';
    o.progressOffset = buildVideoOffset();
    o.skipOffset = buildVideoOffset();
    o.skippable = true;
  }
  buildCounterSiteSkippableSetting--;
  return o;
}

void checkSiteSkippableSetting(api.SiteSkippableSetting o) {
  buildCounterSiteSkippableSetting++;
  if (buildCounterSiteSkippableSetting < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkVideoOffset(o.progressOffset!);
    checkVideoOffset(o.skipOffset!);
    unittest.expect(o.skippable!, unittest.isTrue);
  }
  buildCounterSiteSkippableSetting--;
}

core.List<core.int> buildUnnamed192() => [
      42,
      42,
    ];

void checkUnnamed192(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterSiteTranscodeSetting = 0;
api.SiteTranscodeSetting buildSiteTranscodeSetting() {
  final o = api.SiteTranscodeSetting();
  buildCounterSiteTranscodeSetting++;
  if (buildCounterSiteTranscodeSetting < 3) {
    o.enabledVideoFormats = buildUnnamed192();
    o.kind = 'foo';
  }
  buildCounterSiteTranscodeSetting--;
  return o;
}

void checkSiteTranscodeSetting(api.SiteTranscodeSetting o) {
  buildCounterSiteTranscodeSetting++;
  if (buildCounterSiteTranscodeSetting < 3) {
    checkUnnamed192(o.enabledVideoFormats!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterSiteTranscodeSetting--;
}

core.int buildCounterSiteVideoSettings = 0;
api.SiteVideoSettings buildSiteVideoSettings() {
  final o = api.SiteVideoSettings();
  buildCounterSiteVideoSettings++;
  if (buildCounterSiteVideoSettings < 3) {
    o.companionSettings = buildSiteCompanionSetting();
    o.kind = 'foo';
    o.obaEnabled = true;
    o.obaSettings = buildObaIcon();
    o.orientation = 'foo';
    o.publisherSpecificationId = 'foo';
    o.skippableSettings = buildSiteSkippableSetting();
    o.transcodeSettings = buildSiteTranscodeSetting();
  }
  buildCounterSiteVideoSettings--;
  return o;
}

void checkSiteVideoSettings(api.SiteVideoSettings o) {
  buildCounterSiteVideoSettings++;
  if (buildCounterSiteVideoSettings < 3) {
    checkSiteCompanionSetting(o.companionSettings!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.obaEnabled!, unittest.isTrue);
    checkObaIcon(o.obaSettings!);
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherSpecificationId!,
      unittest.equals('foo'),
    );
    checkSiteSkippableSetting(o.skippableSettings!);
    checkSiteTranscodeSetting(o.transcodeSettings!);
  }
  buildCounterSiteVideoSettings--;
}

core.List<api.Site> buildUnnamed193() => [
      buildSite(),
      buildSite(),
    ];

void checkUnnamed193(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0]);
  checkSite(o[1]);
}

core.int buildCounterSitesListResponse = 0;
api.SitesListResponse buildSitesListResponse() {
  final o = api.SitesListResponse();
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.sites = buildUnnamed193();
  }
  buildCounterSitesListResponse--;
  return o;
}

void checkSitesListResponse(api.SitesListResponse o) {
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed193(o.sites!);
  }
  buildCounterSitesListResponse--;
}

core.int buildCounterSize = 0;
api.Size buildSize() {
  final o = api.Size();
  buildCounterSize++;
  if (buildCounterSize < 3) {
    o.height = 42;
    o.iab = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.width = 42;
  }
  buildCounterSize--;
  return o;
}

void checkSize(api.Size o) {
  buildCounterSize++;
  if (buildCounterSize < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(o.iab!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterSize--;
}

core.List<api.Size> buildUnnamed194() => [
      buildSize(),
      buildSize(),
    ];

void checkUnnamed194(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.int buildCounterSizesListResponse = 0;
api.SizesListResponse buildSizesListResponse() {
  final o = api.SizesListResponse();
  buildCounterSizesListResponse++;
  if (buildCounterSizesListResponse < 3) {
    o.kind = 'foo';
    o.sizes = buildUnnamed194();
  }
  buildCounterSizesListResponse--;
  return o;
}

void checkSizesListResponse(api.SizesListResponse o) {
  buildCounterSizesListResponse++;
  if (buildCounterSizesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed194(o.sizes!);
  }
  buildCounterSizesListResponse--;
}

core.int buildCounterSkippableSetting = 0;
api.SkippableSetting buildSkippableSetting() {
  final o = api.SkippableSetting();
  buildCounterSkippableSetting++;
  if (buildCounterSkippableSetting < 3) {
    o.kind = 'foo';
    o.progressOffset = buildVideoOffset();
    o.skipOffset = buildVideoOffset();
    o.skippable = true;
  }
  buildCounterSkippableSetting--;
  return o;
}

void checkSkippableSetting(api.SkippableSetting o) {
  buildCounterSkippableSetting++;
  if (buildCounterSkippableSetting < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkVideoOffset(o.progressOffset!);
    checkVideoOffset(o.skipOffset!);
    unittest.expect(o.skippable!, unittest.isTrue);
  }
  buildCounterSkippableSetting--;
}

core.int buildCounterSortedDimension = 0;
api.SortedDimension buildSortedDimension() {
  final o = api.SortedDimension();
  buildCounterSortedDimension++;
  if (buildCounterSortedDimension < 3) {
    o.kind = 'foo';
    o.name = 'foo';
    o.sortOrder = 'foo';
  }
  buildCounterSortedDimension--;
  return o;
}

void checkSortedDimension(api.SortedDimension o) {
  buildCounterSortedDimension++;
  if (buildCounterSortedDimension < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sortOrder!,
      unittest.equals('foo'),
    );
  }
  buildCounterSortedDimension--;
}

core.List<core.String> buildUnnamed195() => [
      'foo',
      'foo',
    ];

void checkUnnamed195(core.List<core.String> o) {
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

core.int buildCounterSubaccount = 0;
api.Subaccount buildSubaccount() {
  final o = api.Subaccount();
  buildCounterSubaccount++;
  if (buildCounterSubaccount < 3) {
    o.accountId = 'foo';
    o.availablePermissionIds = buildUnnamed195();
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterSubaccount--;
  return o;
}

void checkSubaccount(api.Subaccount o) {
  buildCounterSubaccount++;
  if (buildCounterSubaccount < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed195(o.availablePermissionIds!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubaccount--;
}

core.List<api.Subaccount> buildUnnamed196() => [
      buildSubaccount(),
      buildSubaccount(),
    ];

void checkUnnamed196(core.List<api.Subaccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubaccount(o[0]);
  checkSubaccount(o[1]);
}

core.int buildCounterSubaccountsListResponse = 0;
api.SubaccountsListResponse buildSubaccountsListResponse() {
  final o = api.SubaccountsListResponse();
  buildCounterSubaccountsListResponse++;
  if (buildCounterSubaccountsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.subaccounts = buildUnnamed196();
  }
  buildCounterSubaccountsListResponse--;
  return o;
}

void checkSubaccountsListResponse(api.SubaccountsListResponse o) {
  buildCounterSubaccountsListResponse++;
  if (buildCounterSubaccountsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed196(o.subaccounts!);
  }
  buildCounterSubaccountsListResponse--;
}

core.int buildCounterTagData = 0;
api.TagData buildTagData() {
  final o = api.TagData();
  buildCounterTagData++;
  if (buildCounterTagData < 3) {
    o.adId = 'foo';
    o.clickTag = 'foo';
    o.creativeId = 'foo';
    o.format = 'foo';
    o.impressionTag = 'foo';
  }
  buildCounterTagData--;
  return o;
}

void checkTagData(api.TagData o) {
  buildCounterTagData++;
  if (buildCounterTagData < 3) {
    unittest.expect(
      o.adId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clickTag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creativeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.impressionTag!,
      unittest.equals('foo'),
    );
  }
  buildCounterTagData--;
}

core.int buildCounterTagSetting = 0;
api.TagSetting buildTagSetting() {
  final o = api.TagSetting();
  buildCounterTagSetting++;
  if (buildCounterTagSetting < 3) {
    o.additionalKeyValues = 'foo';
    o.includeClickThroughUrls = true;
    o.includeClickTracking = true;
    o.includeUnescapedlpurlMacro = true;
    o.keywordOption = 'foo';
  }
  buildCounterTagSetting--;
  return o;
}

void checkTagSetting(api.TagSetting o) {
  buildCounterTagSetting++;
  if (buildCounterTagSetting < 3) {
    unittest.expect(
      o.additionalKeyValues!,
      unittest.equals('foo'),
    );
    unittest.expect(o.includeClickThroughUrls!, unittest.isTrue);
    unittest.expect(o.includeClickTracking!, unittest.isTrue);
    unittest.expect(o.includeUnescapedlpurlMacro!, unittest.isTrue);
    unittest.expect(
      o.keywordOption!,
      unittest.equals('foo'),
    );
  }
  buildCounterTagSetting--;
}

core.int buildCounterTagSettings = 0;
api.TagSettings buildTagSettings() {
  final o = api.TagSettings();
  buildCounterTagSettings++;
  if (buildCounterTagSettings < 3) {
    o.dynamicTagEnabled = true;
    o.imageTagEnabled = true;
  }
  buildCounterTagSettings--;
  return o;
}

void checkTagSettings(api.TagSettings o) {
  buildCounterTagSettings++;
  if (buildCounterTagSettings < 3) {
    unittest.expect(o.dynamicTagEnabled!, unittest.isTrue);
    unittest.expect(o.imageTagEnabled!, unittest.isTrue);
  }
  buildCounterTagSettings--;
}

core.int buildCounterTargetWindow = 0;
api.TargetWindow buildTargetWindow() {
  final o = api.TargetWindow();
  buildCounterTargetWindow++;
  if (buildCounterTargetWindow < 3) {
    o.customHtml = 'foo';
    o.targetWindowOption = 'foo';
  }
  buildCounterTargetWindow--;
  return o;
}

void checkTargetWindow(api.TargetWindow o) {
  buildCounterTargetWindow++;
  if (buildCounterTargetWindow < 3) {
    unittest.expect(
      o.customHtml!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetWindowOption!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetWindow--;
}

core.int buildCounterTargetableRemarketingList = 0;
api.TargetableRemarketingList buildTargetableRemarketingList() {
  final o = api.TargetableRemarketingList();
  buildCounterTargetableRemarketingList++;
  if (buildCounterTargetableRemarketingList < 3) {
    o.accountId = 'foo';
    o.active = true;
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.description = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.lifeSpan = 'foo';
    o.listSize = 'foo';
    o.listSource = 'foo';
    o.name = 'foo';
    o.subaccountId = 'foo';
  }
  buildCounterTargetableRemarketingList--;
  return o;
}

void checkTargetableRemarketingList(api.TargetableRemarketingList o) {
  buildCounterTargetableRemarketingList++;
  if (buildCounterTargetableRemarketingList < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lifeSpan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.listSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.listSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetableRemarketingList--;
}

core.List<api.TargetableRemarketingList> buildUnnamed197() => [
      buildTargetableRemarketingList(),
      buildTargetableRemarketingList(),
    ];

void checkUnnamed197(core.List<api.TargetableRemarketingList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetableRemarketingList(o[0]);
  checkTargetableRemarketingList(o[1]);
}

core.int buildCounterTargetableRemarketingListsListResponse = 0;
api.TargetableRemarketingListsListResponse
    buildTargetableRemarketingListsListResponse() {
  final o = api.TargetableRemarketingListsListResponse();
  buildCounterTargetableRemarketingListsListResponse++;
  if (buildCounterTargetableRemarketingListsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.targetableRemarketingLists = buildUnnamed197();
  }
  buildCounterTargetableRemarketingListsListResponse--;
  return o;
}

void checkTargetableRemarketingListsListResponse(
    api.TargetableRemarketingListsListResponse o) {
  buildCounterTargetableRemarketingListsListResponse++;
  if (buildCounterTargetableRemarketingListsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed197(o.targetableRemarketingLists!);
  }
  buildCounterTargetableRemarketingListsListResponse--;
}

core.int buildCounterTargetingTemplate = 0;
api.TargetingTemplate buildTargetingTemplate() {
  final o = api.TargetingTemplate();
  buildCounterTargetingTemplate++;
  if (buildCounterTargetingTemplate < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.dayPartTargeting = buildDayPartTargeting();
    o.geoTargeting = buildGeoTargeting();
    o.id = 'foo';
    o.keyValueTargetingExpression = buildKeyValueTargetingExpression();
    o.kind = 'foo';
    o.languageTargeting = buildLanguageTargeting();
    o.listTargetingExpression = buildListTargetingExpression();
    o.name = 'foo';
    o.subaccountId = 'foo';
    o.technologyTargeting = buildTechnologyTargeting();
  }
  buildCounterTargetingTemplate--;
  return o;
}

void checkTargetingTemplate(api.TargetingTemplate o) {
  buildCounterTargetingTemplate++;
  if (buildCounterTargetingTemplate < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.advertiserId!,
      unittest.equals('foo'),
    );
    checkDimensionValue(o.advertiserIdDimensionValue!);
    checkDayPartTargeting(o.dayPartTargeting!);
    checkGeoTargeting(o.geoTargeting!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkKeyValueTargetingExpression(o.keyValueTargetingExpression!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLanguageTargeting(o.languageTargeting!);
    checkListTargetingExpression(o.listTargetingExpression!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
    checkTechnologyTargeting(o.technologyTargeting!);
  }
  buildCounterTargetingTemplate--;
}

core.List<api.TargetingTemplate> buildUnnamed198() => [
      buildTargetingTemplate(),
      buildTargetingTemplate(),
    ];

void checkUnnamed198(core.List<api.TargetingTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingTemplate(o[0]);
  checkTargetingTemplate(o[1]);
}

core.int buildCounterTargetingTemplatesListResponse = 0;
api.TargetingTemplatesListResponse buildTargetingTemplatesListResponse() {
  final o = api.TargetingTemplatesListResponse();
  buildCounterTargetingTemplatesListResponse++;
  if (buildCounterTargetingTemplatesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.targetingTemplates = buildUnnamed198();
  }
  buildCounterTargetingTemplatesListResponse--;
  return o;
}

void checkTargetingTemplatesListResponse(api.TargetingTemplatesListResponse o) {
  buildCounterTargetingTemplatesListResponse++;
  if (buildCounterTargetingTemplatesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed198(o.targetingTemplates!);
  }
  buildCounterTargetingTemplatesListResponse--;
}

core.List<api.Browser> buildUnnamed199() => [
      buildBrowser(),
      buildBrowser(),
    ];

void checkUnnamed199(core.List<api.Browser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBrowser(o[0]);
  checkBrowser(o[1]);
}

core.List<api.ConnectionType> buildUnnamed200() => [
      buildConnectionType(),
      buildConnectionType(),
    ];

void checkUnnamed200(core.List<api.ConnectionType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionType(o[0]);
  checkConnectionType(o[1]);
}

core.List<api.MobileCarrier> buildUnnamed201() => [
      buildMobileCarrier(),
      buildMobileCarrier(),
    ];

void checkUnnamed201(core.List<api.MobileCarrier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileCarrier(o[0]);
  checkMobileCarrier(o[1]);
}

core.List<api.OperatingSystemVersion> buildUnnamed202() => [
      buildOperatingSystemVersion(),
      buildOperatingSystemVersion(),
    ];

void checkUnnamed202(core.List<api.OperatingSystemVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperatingSystemVersion(o[0]);
  checkOperatingSystemVersion(o[1]);
}

core.List<api.OperatingSystem> buildUnnamed203() => [
      buildOperatingSystem(),
      buildOperatingSystem(),
    ];

void checkUnnamed203(core.List<api.OperatingSystem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperatingSystem(o[0]);
  checkOperatingSystem(o[1]);
}

core.List<api.PlatformType> buildUnnamed204() => [
      buildPlatformType(),
      buildPlatformType(),
    ];

void checkUnnamed204(core.List<api.PlatformType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlatformType(o[0]);
  checkPlatformType(o[1]);
}

core.int buildCounterTechnologyTargeting = 0;
api.TechnologyTargeting buildTechnologyTargeting() {
  final o = api.TechnologyTargeting();
  buildCounterTechnologyTargeting++;
  if (buildCounterTechnologyTargeting < 3) {
    o.browsers = buildUnnamed199();
    o.connectionTypes = buildUnnamed200();
    o.mobileCarriers = buildUnnamed201();
    o.operatingSystemVersions = buildUnnamed202();
    o.operatingSystems = buildUnnamed203();
    o.platformTypes = buildUnnamed204();
  }
  buildCounterTechnologyTargeting--;
  return o;
}

void checkTechnologyTargeting(api.TechnologyTargeting o) {
  buildCounterTechnologyTargeting++;
  if (buildCounterTechnologyTargeting < 3) {
    checkUnnamed199(o.browsers!);
    checkUnnamed200(o.connectionTypes!);
    checkUnnamed201(o.mobileCarriers!);
    checkUnnamed202(o.operatingSystemVersions!);
    checkUnnamed203(o.operatingSystems!);
    checkUnnamed204(o.platformTypes!);
  }
  buildCounterTechnologyTargeting--;
}

core.int buildCounterThirdPartyAuthenticationToken = 0;
api.ThirdPartyAuthenticationToken buildThirdPartyAuthenticationToken() {
  final o = api.ThirdPartyAuthenticationToken();
  buildCounterThirdPartyAuthenticationToken++;
  if (buildCounterThirdPartyAuthenticationToken < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterThirdPartyAuthenticationToken--;
  return o;
}

void checkThirdPartyAuthenticationToken(api.ThirdPartyAuthenticationToken o) {
  buildCounterThirdPartyAuthenticationToken++;
  if (buildCounterThirdPartyAuthenticationToken < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterThirdPartyAuthenticationToken--;
}

core.int buildCounterThirdPartyTrackingUrl = 0;
api.ThirdPartyTrackingUrl buildThirdPartyTrackingUrl() {
  final o = api.ThirdPartyTrackingUrl();
  buildCounterThirdPartyTrackingUrl++;
  if (buildCounterThirdPartyTrackingUrl < 3) {
    o.thirdPartyUrlType = 'foo';
    o.url = 'foo';
  }
  buildCounterThirdPartyTrackingUrl--;
  return o;
}

void checkThirdPartyTrackingUrl(api.ThirdPartyTrackingUrl o) {
  buildCounterThirdPartyTrackingUrl++;
  if (buildCounterThirdPartyTrackingUrl < 3) {
    unittest.expect(
      o.thirdPartyUrlType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterThirdPartyTrackingUrl--;
}

core.List<core.int> buildUnnamed205() => [
      42,
      42,
    ];

void checkUnnamed205(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterTranscodeSetting = 0;
api.TranscodeSetting buildTranscodeSetting() {
  final o = api.TranscodeSetting();
  buildCounterTranscodeSetting++;
  if (buildCounterTranscodeSetting < 3) {
    o.enabledVideoFormats = buildUnnamed205();
    o.kind = 'foo';
  }
  buildCounterTranscodeSetting--;
  return o;
}

void checkTranscodeSetting(api.TranscodeSetting o) {
  buildCounterTranscodeSetting++;
  if (buildCounterTranscodeSetting < 3) {
    checkUnnamed205(o.enabledVideoFormats!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterTranscodeSetting--;
}

core.List<api.TvCampaignTimepoint> buildUnnamed206() => [
      buildTvCampaignTimepoint(),
      buildTvCampaignTimepoint(),
    ];

void checkUnnamed206(core.List<api.TvCampaignTimepoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTvCampaignTimepoint(o[0]);
  checkTvCampaignTimepoint(o[1]);
}

core.int buildCounterTvCampaignDetail = 0;
api.TvCampaignDetail buildTvCampaignDetail() {
  final o = api.TvCampaignDetail();
  buildCounterTvCampaignDetail++;
  if (buildCounterTvCampaignDetail < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.timepoints = buildUnnamed206();
  }
  buildCounterTvCampaignDetail--;
  return o;
}

void checkTvCampaignDetail(api.TvCampaignDetail o) {
  buildCounterTvCampaignDetail++;
  if (buildCounterTvCampaignDetail < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed206(o.timepoints!);
  }
  buildCounterTvCampaignDetail--;
}

core.List<api.TvCampaignSummary> buildUnnamed207() => [
      buildTvCampaignSummary(),
      buildTvCampaignSummary(),
    ];

void checkUnnamed207(core.List<api.TvCampaignSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTvCampaignSummary(o[0]);
  checkTvCampaignSummary(o[1]);
}

core.int buildCounterTvCampaignSummariesListResponse = 0;
api.TvCampaignSummariesListResponse buildTvCampaignSummariesListResponse() {
  final o = api.TvCampaignSummariesListResponse();
  buildCounterTvCampaignSummariesListResponse++;
  if (buildCounterTvCampaignSummariesListResponse < 3) {
    o.kind = 'foo';
    o.tvCampaignSummaries = buildUnnamed207();
  }
  buildCounterTvCampaignSummariesListResponse--;
  return o;
}

void checkTvCampaignSummariesListResponse(
    api.TvCampaignSummariesListResponse o) {
  buildCounterTvCampaignSummariesListResponse++;
  if (buildCounterTvCampaignSummariesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed207(o.tvCampaignSummaries!);
  }
  buildCounterTvCampaignSummariesListResponse--;
}

core.int buildCounterTvCampaignSummary = 0;
api.TvCampaignSummary buildTvCampaignSummary() {
  final o = api.TvCampaignSummary();
  buildCounterTvCampaignSummary++;
  if (buildCounterTvCampaignSummary < 3) {
    o.endDate = 'foo';
    o.grp = 'foo';
    o.id = 'foo';
    o.impressions = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.spend = 42.0;
    o.startDate = 'foo';
    o.type = 'foo';
  }
  buildCounterTvCampaignSummary--;
  return o;
}

void checkTvCampaignSummary(api.TvCampaignSummary o) {
  buildCounterTvCampaignSummary++;
  if (buildCounterTvCampaignSummary < 3) {
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.grp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.impressions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spend!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterTvCampaignSummary--;
}

core.int buildCounterTvCampaignTimepoint = 0;
api.TvCampaignTimepoint buildTvCampaignTimepoint() {
  final o = api.TvCampaignTimepoint();
  buildCounterTvCampaignTimepoint++;
  if (buildCounterTvCampaignTimepoint < 3) {
    o.dateWindow = 'foo';
    o.spend = 42.0;
    o.startDate = 'foo';
  }
  buildCounterTvCampaignTimepoint--;
  return o;
}

void checkTvCampaignTimepoint(api.TvCampaignTimepoint o) {
  buildCounterTvCampaignTimepoint++;
  if (buildCounterTvCampaignTimepoint < 3) {
    unittest.expect(
      o.dateWindow!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spend!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterTvCampaignTimepoint--;
}

core.int buildCounterUniversalAdId = 0;
api.UniversalAdId buildUniversalAdId() {
  final o = api.UniversalAdId();
  buildCounterUniversalAdId++;
  if (buildCounterUniversalAdId < 3) {
    o.registry = 'foo';
    o.value = 'foo';
  }
  buildCounterUniversalAdId--;
  return o;
}

void checkUniversalAdId(api.UniversalAdId o) {
  buildCounterUniversalAdId++;
  if (buildCounterUniversalAdId < 3) {
    unittest.expect(
      o.registry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterUniversalAdId--;
}

core.int buildCounterUserDefinedVariableConfiguration = 0;
api.UserDefinedVariableConfiguration buildUserDefinedVariableConfiguration() {
  final o = api.UserDefinedVariableConfiguration();
  buildCounterUserDefinedVariableConfiguration++;
  if (buildCounterUserDefinedVariableConfiguration < 3) {
    o.dataType = 'foo';
    o.reportName = 'foo';
    o.variableType = 'foo';
  }
  buildCounterUserDefinedVariableConfiguration--;
  return o;
}

void checkUserDefinedVariableConfiguration(
    api.UserDefinedVariableConfiguration o) {
  buildCounterUserDefinedVariableConfiguration++;
  if (buildCounterUserDefinedVariableConfiguration < 3) {
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variableType!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserDefinedVariableConfiguration--;
}

core.int buildCounterUserIdentifier = 0;
api.UserIdentifier buildUserIdentifier() {
  final o = api.UserIdentifier();
  buildCounterUserIdentifier++;
  if (buildCounterUserIdentifier < 3) {
    o.addressInfo = buildOfflineUserAddressInfo();
    o.hashedEmail = 'foo';
    o.hashedPhoneNumber = 'foo';
  }
  buildCounterUserIdentifier--;
  return o;
}

void checkUserIdentifier(api.UserIdentifier o) {
  buildCounterUserIdentifier++;
  if (buildCounterUserIdentifier < 3) {
    checkOfflineUserAddressInfo(o.addressInfo!);
    unittest.expect(
      o.hashedEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hashedPhoneNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserIdentifier--;
}

core.int buildCounterUserProfile = 0;
api.UserProfile buildUserProfile() {
  final o = api.UserProfile();
  buildCounterUserProfile++;
  if (buildCounterUserProfile < 3) {
    o.accountId = 'foo';
    o.accountName = 'foo';
    o.etag = 'foo';
    o.kind = 'foo';
    o.profileId = 'foo';
    o.subAccountId = 'foo';
    o.subAccountName = 'foo';
    o.userName = 'foo';
  }
  buildCounterUserProfile--;
  return o;
}

void checkUserProfile(api.UserProfile o) {
  buildCounterUserProfile++;
  if (buildCounterUserProfile < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.accountName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subAccountName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userName!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserProfile--;
}

core.List<api.UserProfile> buildUnnamed208() => [
      buildUserProfile(),
      buildUserProfile(),
    ];

void checkUnnamed208(core.List<api.UserProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserProfile(o[0]);
  checkUserProfile(o[1]);
}

core.int buildCounterUserProfileList = 0;
api.UserProfileList buildUserProfileList() {
  final o = api.UserProfileList();
  buildCounterUserProfileList++;
  if (buildCounterUserProfileList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed208();
    o.kind = 'foo';
  }
  buildCounterUserProfileList--;
  return o;
}

void checkUserProfileList(api.UserProfileList o) {
  buildCounterUserProfileList++;
  if (buildCounterUserProfileList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed208(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserProfileList--;
}

core.List<api.UserRolePermission> buildUnnamed209() => [
      buildUserRolePermission(),
      buildUserRolePermission(),
    ];

void checkUnnamed209(core.List<api.UserRolePermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserRolePermission(o[0]);
  checkUserRolePermission(o[1]);
}

core.int buildCounterUserRole = 0;
api.UserRole buildUserRole() {
  final o = api.UserRole();
  buildCounterUserRole++;
  if (buildCounterUserRole < 3) {
    o.accountId = 'foo';
    o.defaultUserRole = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.parentUserRoleId = 'foo';
    o.permissions = buildUnnamed209();
    o.subaccountId = 'foo';
  }
  buildCounterUserRole--;
  return o;
}

void checkUserRole(api.UserRole o) {
  buildCounterUserRole++;
  if (buildCounterUserRole < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.defaultUserRole!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentUserRoleId!,
      unittest.equals('foo'),
    );
    checkUnnamed209(o.permissions!);
    unittest.expect(
      o.subaccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserRole--;
}

core.int buildCounterUserRolePermission = 0;
api.UserRolePermission buildUserRolePermission() {
  final o = api.UserRolePermission();
  buildCounterUserRolePermission++;
  if (buildCounterUserRolePermission < 3) {
    o.availability = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.permissionGroupId = 'foo';
  }
  buildCounterUserRolePermission--;
  return o;
}

void checkUserRolePermission(api.UserRolePermission o) {
  buildCounterUserRolePermission++;
  if (buildCounterUserRolePermission < 3) {
    unittest.expect(
      o.availability!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permissionGroupId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserRolePermission--;
}

core.int buildCounterUserRolePermissionGroup = 0;
api.UserRolePermissionGroup buildUserRolePermissionGroup() {
  final o = api.UserRolePermissionGroup();
  buildCounterUserRolePermissionGroup++;
  if (buildCounterUserRolePermissionGroup < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterUserRolePermissionGroup--;
  return o;
}

void checkUserRolePermissionGroup(api.UserRolePermissionGroup o) {
  buildCounterUserRolePermissionGroup++;
  if (buildCounterUserRolePermissionGroup < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserRolePermissionGroup--;
}

core.List<api.UserRolePermissionGroup> buildUnnamed210() => [
      buildUserRolePermissionGroup(),
      buildUserRolePermissionGroup(),
    ];

void checkUnnamed210(core.List<api.UserRolePermissionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserRolePermissionGroup(o[0]);
  checkUserRolePermissionGroup(o[1]);
}

core.int buildCounterUserRolePermissionGroupsListResponse = 0;
api.UserRolePermissionGroupsListResponse
    buildUserRolePermissionGroupsListResponse() {
  final o = api.UserRolePermissionGroupsListResponse();
  buildCounterUserRolePermissionGroupsListResponse++;
  if (buildCounterUserRolePermissionGroupsListResponse < 3) {
    o.kind = 'foo';
    o.userRolePermissionGroups = buildUnnamed210();
  }
  buildCounterUserRolePermissionGroupsListResponse--;
  return o;
}

void checkUserRolePermissionGroupsListResponse(
    api.UserRolePermissionGroupsListResponse o) {
  buildCounterUserRolePermissionGroupsListResponse++;
  if (buildCounterUserRolePermissionGroupsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed210(o.userRolePermissionGroups!);
  }
  buildCounterUserRolePermissionGroupsListResponse--;
}

core.List<api.UserRolePermission> buildUnnamed211() => [
      buildUserRolePermission(),
      buildUserRolePermission(),
    ];

void checkUnnamed211(core.List<api.UserRolePermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserRolePermission(o[0]);
  checkUserRolePermission(o[1]);
}

core.int buildCounterUserRolePermissionsListResponse = 0;
api.UserRolePermissionsListResponse buildUserRolePermissionsListResponse() {
  final o = api.UserRolePermissionsListResponse();
  buildCounterUserRolePermissionsListResponse++;
  if (buildCounterUserRolePermissionsListResponse < 3) {
    o.kind = 'foo';
    o.userRolePermissions = buildUnnamed211();
  }
  buildCounterUserRolePermissionsListResponse--;
  return o;
}

void checkUserRolePermissionsListResponse(
    api.UserRolePermissionsListResponse o) {
  buildCounterUserRolePermissionsListResponse++;
  if (buildCounterUserRolePermissionsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed211(o.userRolePermissions!);
  }
  buildCounterUserRolePermissionsListResponse--;
}

core.List<api.UserRole> buildUnnamed212() => [
      buildUserRole(),
      buildUserRole(),
    ];

void checkUnnamed212(core.List<api.UserRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserRole(o[0]);
  checkUserRole(o[1]);
}

core.int buildCounterUserRolesListResponse = 0;
api.UserRolesListResponse buildUserRolesListResponse() {
  final o = api.UserRolesListResponse();
  buildCounterUserRolesListResponse++;
  if (buildCounterUserRolesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.userRoles = buildUnnamed212();
  }
  buildCounterUserRolesListResponse--;
  return o;
}

void checkUserRolesListResponse(api.UserRolesListResponse o) {
  buildCounterUserRolesListResponse++;
  if (buildCounterUserRolesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed212(o.userRoles!);
  }
  buildCounterUserRolesListResponse--;
}

core.int buildCounterVideoFormat = 0;
api.VideoFormat buildVideoFormat() {
  final o = api.VideoFormat();
  buildCounterVideoFormat++;
  if (buildCounterVideoFormat < 3) {
    o.fileType = 'foo';
    o.id = 42;
    o.kind = 'foo';
    o.resolution = buildSize();
    o.targetBitRate = 42;
  }
  buildCounterVideoFormat--;
  return o;
}

void checkVideoFormat(api.VideoFormat o) {
  buildCounterVideoFormat++;
  if (buildCounterVideoFormat < 3) {
    unittest.expect(
      o.fileType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkSize(o.resolution!);
    unittest.expect(
      o.targetBitRate!,
      unittest.equals(42),
    );
  }
  buildCounterVideoFormat--;
}

core.List<api.VideoFormat> buildUnnamed213() => [
      buildVideoFormat(),
      buildVideoFormat(),
    ];

void checkUnnamed213(core.List<api.VideoFormat> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoFormat(o[0]);
  checkVideoFormat(o[1]);
}

core.int buildCounterVideoFormatsListResponse = 0;
api.VideoFormatsListResponse buildVideoFormatsListResponse() {
  final o = api.VideoFormatsListResponse();
  buildCounterVideoFormatsListResponse++;
  if (buildCounterVideoFormatsListResponse < 3) {
    o.kind = 'foo';
    o.videoFormats = buildUnnamed213();
  }
  buildCounterVideoFormatsListResponse--;
  return o;
}

void checkVideoFormatsListResponse(api.VideoFormatsListResponse o) {
  buildCounterVideoFormatsListResponse++;
  if (buildCounterVideoFormatsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed213(o.videoFormats!);
  }
  buildCounterVideoFormatsListResponse--;
}

core.int buildCounterVideoOffset = 0;
api.VideoOffset buildVideoOffset() {
  final o = api.VideoOffset();
  buildCounterVideoOffset++;
  if (buildCounterVideoOffset < 3) {
    o.offsetPercentage = 42;
    o.offsetSeconds = 42;
  }
  buildCounterVideoOffset--;
  return o;
}

void checkVideoOffset(api.VideoOffset o) {
  buildCounterVideoOffset++;
  if (buildCounterVideoOffset < 3) {
    unittest.expect(
      o.offsetPercentage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.offsetSeconds!,
      unittest.equals(42),
    );
  }
  buildCounterVideoOffset--;
}

core.int buildCounterVideoSettings = 0;
api.VideoSettings buildVideoSettings() {
  final o = api.VideoSettings();
  buildCounterVideoSettings++;
  if (buildCounterVideoSettings < 3) {
    o.companionSettings = buildCompanionSetting();
    o.durationSeconds = 42;
    o.kind = 'foo';
    o.obaEnabled = true;
    o.obaSettings = buildObaIcon();
    o.orientation = 'foo';
    o.publisherSpecificationId = 'foo';
    o.skippableSettings = buildSkippableSetting();
    o.transcodeSettings = buildTranscodeSetting();
  }
  buildCounterVideoSettings--;
  return o;
}

void checkVideoSettings(api.VideoSettings o) {
  buildCounterVideoSettings++;
  if (buildCounterVideoSettings < 3) {
    checkCompanionSetting(o.companionSettings!);
    unittest.expect(
      o.durationSeconds!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.obaEnabled!, unittest.isTrue);
    checkObaIcon(o.obaSettings!);
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherSpecificationId!,
      unittest.equals('foo'),
    );
    checkSkippableSetting(o.skippableSettings!);
    checkTranscodeSetting(o.transcodeSettings!);
  }
  buildCounterVideoSettings--;
}

core.List<core.String> buildUnnamed214() => [
      'foo',
      'foo',
    ];

void checkUnnamed214(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed215() => [
      'foo',
      'foo',
    ];

void checkUnnamed215(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed216() => [
      'foo',
      'foo',
    ];

void checkUnnamed216(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed217() => [
      'foo',
      'foo',
    ];

void checkUnnamed217(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed218() => [
      'foo',
      'foo',
    ];

void checkUnnamed218(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed219() => [
      'foo',
      'foo',
    ];

void checkUnnamed219(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed220() => [
      'foo',
      'foo',
    ];

void checkUnnamed220(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed221() => [
      'foo',
      'foo',
    ];

void checkUnnamed221(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed222() => [
      'foo',
      'foo',
    ];

void checkUnnamed222(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed223() => [
      'foo',
      'foo',
    ];

void checkUnnamed223(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed224() => [
      'foo',
      'foo',
    ];

void checkUnnamed224(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed225() => [
      'foo',
      'foo',
    ];

void checkUnnamed225(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed226() => [
      'foo',
      'foo',
    ];

void checkUnnamed226(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed227() => [
      'foo',
      'foo',
    ];

void checkUnnamed227(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed228() => [
      'foo',
      'foo',
    ];

void checkUnnamed228(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed229() => [
      'foo',
      'foo',
    ];

void checkUnnamed229(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed230() => [
      'foo',
      'foo',
    ];

void checkUnnamed230(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed231() => [
      'foo',
      'foo',
    ];

void checkUnnamed231(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed232() => [
      'foo',
      'foo',
    ];

void checkUnnamed232(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed233() => [
      'foo',
      'foo',
    ];

void checkUnnamed233(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed234() => [
      'foo',
      'foo',
    ];

void checkUnnamed234(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed235() => [
      'foo',
      'foo',
    ];

void checkUnnamed235(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed236() => [
      'foo',
      'foo',
    ];

void checkUnnamed236(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed237() => [
      'foo',
      'foo',
    ];

void checkUnnamed237(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed238() => [
      'foo',
      'foo',
    ];

void checkUnnamed238(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed239() => [
      'foo',
      'foo',
    ];

void checkUnnamed239(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed240() => [
      'foo',
      'foo',
    ];

void checkUnnamed240(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed241() => [
      'foo',
      'foo',
    ];

void checkUnnamed241(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed242() => [
      'foo',
      'foo',
    ];

void checkUnnamed242(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed243() => [
      'foo',
      'foo',
    ];

void checkUnnamed243(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed244() => [
      'foo',
      'foo',
    ];

void checkUnnamed244(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed245() => [
      'foo',
      'foo',
    ];

void checkUnnamed245(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed246() => [
      'foo',
      'foo',
    ];

void checkUnnamed246(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed247() => [
      'foo',
      'foo',
    ];

void checkUnnamed247(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed248() => [
      'foo',
      'foo',
    ];

void checkUnnamed248(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed249() => [
      'foo',
      'foo',
    ];

void checkUnnamed249(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed250() => [
      'foo',
      'foo',
    ];

void checkUnnamed250(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed251() => [
      'foo',
      'foo',
    ];

void checkUnnamed251(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed252() => [
      'foo',
      'foo',
    ];

void checkUnnamed252(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed253() => [
      'foo',
      'foo',
    ];

void checkUnnamed253(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed254() => [
      'foo',
      'foo',
    ];

void checkUnnamed254(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed255() => [
      'foo',
      'foo',
    ];

void checkUnnamed255(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed256() => [
      'foo',
      'foo',
    ];

void checkUnnamed256(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed257() => [
      'foo',
      'foo',
    ];

void checkUnnamed257(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed258() => [
      'foo',
      'foo',
    ];

void checkUnnamed258(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed259() => [
      'foo',
      'foo',
    ];

void checkUnnamed259(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed260() => [
      'foo',
      'foo',
    ];

void checkUnnamed260(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed261() => [
      'foo',
      'foo',
    ];

void checkUnnamed261(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed262() => [
      'foo',
      'foo',
    ];

void checkUnnamed262(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed263() => [
      'foo',
      'foo',
    ];

void checkUnnamed263(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed264() => [
      'foo',
      'foo',
    ];

void checkUnnamed264(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed265() => [
      'foo',
      'foo',
    ];

void checkUnnamed265(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed266() => [
      'foo',
      'foo',
    ];

void checkUnnamed266(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed267() => [
      'foo',
      'foo',
    ];

void checkUnnamed267(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed268() => [
      'foo',
      'foo',
    ];

void checkUnnamed268(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed269() => [
      'foo',
      'foo',
    ];

void checkUnnamed269(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed270() => [
      'foo',
      'foo',
    ];

void checkUnnamed270(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed271() => [
      'foo',
      'foo',
    ];

void checkUnnamed271(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed272() => [
      'foo',
      'foo',
    ];

void checkUnnamed272(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed273() => [
      'foo',
      'foo',
    ];

void checkUnnamed273(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed274() => [
      'foo',
      'foo',
    ];

void checkUnnamed274(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed275() => [
      'foo',
      'foo',
    ];

void checkUnnamed275(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed276() => [
      'foo',
      'foo',
    ];

void checkUnnamed276(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed277() => [
      'foo',
      'foo',
    ];

void checkUnnamed277(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed278() => [
      'foo',
      'foo',
    ];

void checkUnnamed278(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed279() => [
      'foo',
      'foo',
    ];

void checkUnnamed279(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed280() => [
      'foo',
      'foo',
    ];

void checkUnnamed280(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed281() => [
      'foo',
      'foo',
    ];

void checkUnnamed281(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed282() => [
      'foo',
      'foo',
    ];

void checkUnnamed282(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed283() => [
      'foo',
      'foo',
    ];

void checkUnnamed283(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed284() => [
      'foo',
      'foo',
    ];

void checkUnnamed284(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed285() => [
      'foo',
      'foo',
    ];

void checkUnnamed285(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed286() => [
      'foo',
      'foo',
    ];

void checkUnnamed286(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed287() => [
      'foo',
      'foo',
    ];

void checkUnnamed287(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed288() => [
      'foo',
      'foo',
    ];

void checkUnnamed288(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed289() => [
      'foo',
      'foo',
    ];

void checkUnnamed289(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed290() => [
      'foo',
      'foo',
    ];

void checkUnnamed290(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed291() => [
      'foo',
      'foo',
    ];

void checkUnnamed291(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed292() => [
      'foo',
      'foo',
    ];

void checkUnnamed292(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed293() => [
      'foo',
      'foo',
    ];

void checkUnnamed293(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed294() => [
      'foo',
      'foo',
    ];

void checkUnnamed294(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed295() => [
      'foo',
      'foo',
    ];

void checkUnnamed295(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed296() => [
      'foo',
      'foo',
    ];

void checkUnnamed296(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed297() => [
      'foo',
      'foo',
    ];

void checkUnnamed297(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed298() => [
      'foo',
      'foo',
    ];

void checkUnnamed298(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed299() => [
      'foo',
      'foo',
    ];

void checkUnnamed299(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed300() => [
      'foo',
      'foo',
    ];

void checkUnnamed300(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed301() => [
      'foo',
      'foo',
    ];

void checkUnnamed301(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed302() => [
      'foo',
      'foo',
    ];

void checkUnnamed302(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed303() => [
      'foo',
      'foo',
    ];

void checkUnnamed303(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed304() => [
      'foo',
      'foo',
    ];

void checkUnnamed304(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed305() => [
      'foo',
      'foo',
    ];

void checkUnnamed305(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed306() => [
      'foo',
      'foo',
    ];

void checkUnnamed306(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Account.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-AccountActiveAdSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountActiveAdSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountActiveAdSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountActiveAdSummary(od);
    });
  });

  unittest.group('obj-schema-AccountPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountPermission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountPermission(od);
    });
  });

  unittest.group('obj-schema-AccountPermissionGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountPermissionGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountPermissionGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountPermissionGroup(od);
    });
  });

  unittest.group('obj-schema-AccountPermissionGroupsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountPermissionGroupsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountPermissionGroupsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountPermissionGroupsListResponse(od);
    });
  });

  unittest.group('obj-schema-AccountPermissionsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountPermissionsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountPermissionsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountPermissionsListResponse(od);
    });
  });

  unittest.group('obj-schema-AccountUserProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountUserProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountUserProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountUserProfile(od);
    });
  });

  unittest.group('obj-schema-AccountUserProfilesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountUserProfilesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountUserProfilesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountUserProfilesListResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsListResponse(od);
    });
  });

  unittest.group('obj-schema-Activities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Activities.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkActivities(od);
    });
  });

  unittest.group('obj-schema-Ad', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Ad.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAd(od);
    });
  });

  unittest.group('obj-schema-AdBlockingConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdBlockingConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdBlockingConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdBlockingConfiguration(od);
    });
  });

  unittest.group('obj-schema-AdSlot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdSlot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AdSlot.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdSlot(od);
    });
  });

  unittest.group('obj-schema-AdsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdsListResponse(od);
    });
  });

  unittest.group('obj-schema-Advertiser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertiser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Advertiser.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdvertiser(od);
    });
  });

  unittest.group('obj-schema-AdvertiserGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertiserGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvertiserGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvertiserGroup(od);
    });
  });

  unittest.group('obj-schema-AdvertiserGroupsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertiserGroupsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvertiserGroupsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvertiserGroupsListResponse(od);
    });
  });

  unittest.group('obj-schema-AdvertiserInvoicesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertiserInvoicesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvertiserInvoicesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvertiserInvoicesListResponse(od);
    });
  });

  unittest.group('obj-schema-AdvertiserLandingPagesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertiserLandingPagesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvertiserLandingPagesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvertiserLandingPagesListResponse(od);
    });
  });

  unittest.group('obj-schema-AdvertisersListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvertisersListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvertisersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvertisersListResponse(od);
    });
  });

  unittest.group('obj-schema-AudienceSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudienceSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudienceSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAudienceSegment(od);
    });
  });

  unittest.group('obj-schema-AudienceSegmentGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudienceSegmentGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudienceSegmentGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAudienceSegmentGroup(od);
    });
  });

  unittest.group('obj-schema-BillingAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingAssignment(od);
    });
  });

  unittest.group('obj-schema-BillingAssignmentsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingAssignmentsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingAssignmentsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingAssignmentsListResponse(od);
    });
  });

  unittest.group('obj-schema-BillingProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingProfile(od);
    });
  });

  unittest.group('obj-schema-BillingProfilesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingProfilesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingProfilesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingProfilesListResponse(od);
    });
  });

  unittest.group('obj-schema-BillingRate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingRate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingRate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingRate(od);
    });
  });

  unittest.group('obj-schema-BillingRateTieredRate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingRateTieredRate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingRateTieredRate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingRateTieredRate(od);
    });
  });

  unittest.group('obj-schema-BillingRatesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingRatesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingRatesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingRatesListResponse(od);
    });
  });

  unittest.group('obj-schema-Browser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBrowser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Browser.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBrowser(od);
    });
  });

  unittest.group('obj-schema-BrowsersListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBrowsersListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BrowsersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBrowsersListResponse(od);
    });
  });

  unittest.group('obj-schema-Campaign', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCampaign();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Campaign.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCampaign(od);
    });
  });

  unittest.group('obj-schema-CampaignCreativeAssociation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCampaignCreativeAssociation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CampaignCreativeAssociation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCampaignCreativeAssociation(od);
    });
  });

  unittest.group('obj-schema-CampaignCreativeAssociationsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCampaignCreativeAssociationsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CampaignCreativeAssociationsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCampaignCreativeAssociationsListResponse(od);
    });
  });

  unittest.group('obj-schema-CampaignSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCampaignSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CampaignSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCampaignSummary(od);
    });
  });

  unittest.group('obj-schema-CampaignsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCampaignsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CampaignsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCampaignsListResponse(od);
    });
  });

  unittest.group('obj-schema-CartData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCartData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CartData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCartData(od);
    });
  });

  unittest.group('obj-schema-CartDataItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCartDataItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CartDataItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCartDataItem(od);
    });
  });

  unittest.group('obj-schema-ChangeLog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChangeLog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ChangeLog.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChangeLog(od);
    });
  });

  unittest.group('obj-schema-ChangeLogsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChangeLogsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChangeLogsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChangeLogsListResponse(od);
    });
  });

  unittest.group('obj-schema-CitiesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCitiesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CitiesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCitiesListResponse(od);
    });
  });

  unittest.group('obj-schema-City', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.City.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCity(od);
    });
  });

  unittest.group('obj-schema-ClickTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClickTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ClickTag.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkClickTag(od);
    });
  });

  unittest.group('obj-schema-ClickThroughUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClickThroughUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClickThroughUrl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClickThroughUrl(od);
    });
  });

  unittest.group('obj-schema-ClickThroughUrlSuffixProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClickThroughUrlSuffixProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClickThroughUrlSuffixProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClickThroughUrlSuffixProperties(od);
    });
  });

  unittest.group('obj-schema-CompanionClickThroughOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompanionClickThroughOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompanionClickThroughOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompanionClickThroughOverride(od);
    });
  });

  unittest.group('obj-schema-CompanionSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompanionSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompanionSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompanionSetting(od);
    });
  });

  unittest.group('obj-schema-CompatibleFields', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompatibleFields();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompatibleFields.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-ConnectionType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectionType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectionType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectionType(od);
    });
  });

  unittest.group('obj-schema-ConnectionTypesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectionTypesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectionTypesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectionTypesListResponse(od);
    });
  });

  unittest.group('obj-schema-ContentCategoriesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentCategoriesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentCategoriesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContentCategoriesListResponse(od);
    });
  });

  unittest.group('obj-schema-ContentCategory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentCategory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContentCategory(od);
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

  unittest.group('obj-schema-ConversionError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConversionError(od);
    });
  });

  unittest.group('obj-schema-ConversionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConversionStatus(od);
    });
  });

  unittest.group('obj-schema-ConversionsBatchInsertRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionsBatchInsertRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionsBatchInsertRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConversionsBatchInsertRequest(od);
    });
  });

  unittest.group('obj-schema-ConversionsBatchInsertResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionsBatchInsertResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionsBatchInsertResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConversionsBatchInsertResponse(od);
    });
  });

  unittest.group('obj-schema-ConversionsBatchUpdateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionsBatchUpdateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionsBatchUpdateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConversionsBatchUpdateRequest(od);
    });
  });

  unittest.group('obj-schema-ConversionsBatchUpdateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionsBatchUpdateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionsBatchUpdateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConversionsBatchUpdateResponse(od);
    });
  });

  unittest.group('obj-schema-CountriesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCountriesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CountriesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCountriesListResponse(od);
    });
  });

  unittest.group('obj-schema-Country', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCountry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Country.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCountry(od);
    });
  });

  unittest.group('obj-schema-Creative', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreative();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Creative.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCreative(od);
    });
  });

  unittest.group('obj-schema-CreativeAsset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeAsset(od);
    });
  });

  unittest.group('obj-schema-CreativeAssetId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeAssetId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeAssetId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeAssetId(od);
    });
  });

  unittest.group('obj-schema-CreativeAssetMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeAssetMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeAssetMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeAssetMetadata(od);
    });
  });

  unittest.group('obj-schema-CreativeAssetSelection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeAssetSelection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeAssetSelection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeAssetSelection(od);
    });
  });

  unittest.group('obj-schema-CreativeAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeAssignment(od);
    });
  });

  unittest.group('obj-schema-CreativeClickThroughUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeClickThroughUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeClickThroughUrl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeClickThroughUrl(od);
    });
  });

  unittest.group('obj-schema-CreativeCustomEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeCustomEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeCustomEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeCustomEvent(od);
    });
  });

  unittest.group('obj-schema-CreativeField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeField(od);
    });
  });

  unittest.group('obj-schema-CreativeFieldAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeFieldAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeFieldAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeFieldAssignment(od);
    });
  });

  unittest.group('obj-schema-CreativeFieldValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeFieldValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeFieldValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeFieldValue(od);
    });
  });

  unittest.group('obj-schema-CreativeFieldValuesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeFieldValuesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeFieldValuesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeFieldValuesListResponse(od);
    });
  });

  unittest.group('obj-schema-CreativeFieldsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeFieldsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeFieldsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeFieldsListResponse(od);
    });
  });

  unittest.group('obj-schema-CreativeGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeGroup(od);
    });
  });

  unittest.group('obj-schema-CreativeGroupAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeGroupAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeGroupAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeGroupAssignment(od);
    });
  });

  unittest.group('obj-schema-CreativeGroupsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeGroupsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeGroupsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeGroupsListResponse(od);
    });
  });

  unittest.group('obj-schema-CreativeOptimizationConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeOptimizationConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeOptimizationConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeOptimizationConfiguration(od);
    });
  });

  unittest.group('obj-schema-CreativeRotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeRotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeRotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeRotation(od);
    });
  });

  unittest.group('obj-schema-CreativesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativesListResponse(od);
    });
  });

  unittest.group('obj-schema-CrossDimensionReachReportCompatibleFields', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCrossDimensionReachReportCompatibleFields();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CrossDimensionReachReportCompatibleFields.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCrossDimensionReachReportCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-CrossMediaReachReportCompatibleFields', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCrossMediaReachReportCompatibleFields();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CrossMediaReachReportCompatibleFields.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCrossMediaReachReportCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-CustomFloodlightVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomFloodlightVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomFloodlightVariable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomFloodlightVariable(od);
    });
  });

  unittest.group('obj-schema-CustomRichMediaEvents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomRichMediaEvents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomRichMediaEvents.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomRichMediaEvents(od);
    });
  });

  unittest.group('obj-schema-CustomViewabilityMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomViewabilityMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomViewabilityMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomViewabilityMetric(od);
    });
  });

  unittest.group('obj-schema-CustomViewabilityMetricConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomViewabilityMetricConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomViewabilityMetricConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomViewabilityMetricConfiguration(od);
    });
  });

  unittest.group('obj-schema-DateRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DateRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDateRange(od);
    });
  });

  unittest.group('obj-schema-DayPartTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDayPartTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DayPartTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDayPartTargeting(od);
    });
  });

  unittest.group('obj-schema-DeepLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeepLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DeepLink.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeepLink(od);
    });
  });

  unittest.group('obj-schema-DefaultClickThroughEventTagProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultClickThroughEventTagProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultClickThroughEventTagProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDefaultClickThroughEventTagProperties(od);
    });
  });

  unittest.group('obj-schema-DeliverySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliverySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliverySchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeliverySchedule(od);
    });
  });

  unittest.group('obj-schema-DfpSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDfpSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DfpSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDfpSettings(od);
    });
  });

  unittest.group('obj-schema-Dimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Dimension.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDimension(od);
    });
  });

  unittest.group('obj-schema-DimensionFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-DimensionValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionValue(od);
    });
  });

  unittest.group('obj-schema-DimensionValueList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionValueList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionValueList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionValueList(od);
    });
  });

  unittest.group('obj-schema-DimensionValueRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionValueRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionValueRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionValueRequest(od);
    });
  });

  unittest.group('obj-schema-DirectorySite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectorySite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectorySite.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDirectorySite(od);
    });
  });

  unittest.group('obj-schema-DirectorySiteSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectorySiteSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectorySiteSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDirectorySiteSettings(od);
    });
  });

  unittest.group('obj-schema-DirectorySitesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectorySitesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectorySitesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDirectorySitesListResponse(od);
    });
  });

  unittest.group('obj-schema-DynamicTargetingKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicTargetingKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicTargetingKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicTargetingKey(od);
    });
  });

  unittest.group('obj-schema-DynamicTargetingKeysListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicTargetingKeysListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicTargetingKeysListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicTargetingKeysListResponse(od);
    });
  });

  unittest.group('obj-schema-EncryptionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncryptionInfo(od);
    });
  });

  unittest.group('obj-schema-EventTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EventTag.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEventTag(od);
    });
  });

  unittest.group('obj-schema-EventTagOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventTagOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventTagOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventTagOverride(od);
    });
  });

  unittest.group('obj-schema-EventTagsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventTagsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventTagsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventTagsListResponse(od);
    });
  });

  unittest.group('obj-schema-FileUrls', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileUrls();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FileUrls.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFileUrls(od);
    });
  });

  unittest.group('obj-schema-File', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.File.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFile(od);
    });
  });

  unittest.group('obj-schema-FileList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FileList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFileList(od);
    });
  });

  unittest.group('obj-schema-Flight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Flight.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFlight(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivitiesGenerateTagResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloodlightActivitiesGenerateTagResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloodlightActivitiesGenerateTagResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFloodlightActivitiesGenerateTagResponse(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivitiesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloodlightActivitiesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloodlightActivitiesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFloodlightActivitiesListResponse(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloodlightActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloodlightActivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFloodlightActivity(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivityDynamicTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloodlightActivityDynamicTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloodlightActivityDynamicTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFloodlightActivityDynamicTag(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivityGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloodlightActivityGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloodlightActivityGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFloodlightActivityGroup(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivityGroupsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloodlightActivityGroupsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloodlightActivityGroupsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFloodlightActivityGroupsListResponse(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivityPublisherDynamicTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloodlightActivityPublisherDynamicTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloodlightActivityPublisherDynamicTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFloodlightActivityPublisherDynamicTag(od);
    });
  });

  unittest.group('obj-schema-FloodlightConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloodlightConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloodlightConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFloodlightConfiguration(od);
    });
  });

  unittest.group('obj-schema-FloodlightConfigurationsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloodlightConfigurationsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloodlightConfigurationsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFloodlightConfigurationsListResponse(od);
    });
  });

  unittest.group('obj-schema-FloodlightReportCompatibleFields', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloodlightReportCompatibleFields();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloodlightReportCompatibleFields.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFloodlightReportCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-FrequencyCap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFrequencyCap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FrequencyCap.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFrequencyCap(od);
    });
  });

  unittest.group('obj-schema-FsCommand', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFsCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FsCommand.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFsCommand(od);
    });
  });

  unittest.group('obj-schema-GeoTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeoTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeoTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeoTargeting(od);
    });
  });

  unittest.group('obj-schema-InventoryItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventoryItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventoryItem(od);
    });
  });

  unittest.group('obj-schema-InventoryItemsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryItemsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventoryItemsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventoryItemsListResponse(od);
    });
  });

  unittest.group('obj-schema-Invoice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInvoice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Invoice.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInvoice(od);
    });
  });

  unittest.group('obj-schema-KeyValueTargetingExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyValueTargetingExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeyValueTargetingExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyValueTargetingExpression(od);
    });
  });

  unittest.group('obj-schema-LandingPage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLandingPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LandingPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLandingPage(od);
    });
  });

  unittest.group('obj-schema-Language', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Language.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLanguage(od);
    });
  });

  unittest.group('obj-schema-LanguageTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguageTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LanguageTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLanguageTargeting(od);
    });
  });

  unittest.group('obj-schema-LanguagesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguagesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LanguagesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLanguagesListResponse(od);
    });
  });

  unittest.group('obj-schema-LastModifiedInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLastModifiedInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LastModifiedInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLastModifiedInfo(od);
    });
  });

  unittest.group('obj-schema-ListPopulationClause', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPopulationClause();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPopulationClause.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPopulationClause(od);
    });
  });

  unittest.group('obj-schema-ListPopulationRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPopulationRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPopulationRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPopulationRule(od);
    });
  });

  unittest.group('obj-schema-ListPopulationTerm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPopulationTerm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPopulationTerm.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPopulationTerm(od);
    });
  });

  unittest.group('obj-schema-ListTargetingExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTargetingExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTargetingExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTargetingExpression(od);
    });
  });

  unittest.group('obj-schema-LookbackConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookbackConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookbackConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookbackConfiguration(od);
    });
  });

  unittest.group('obj-schema-MeasurementPartnerAdvertiserLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMeasurementPartnerAdvertiserLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MeasurementPartnerAdvertiserLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMeasurementPartnerAdvertiserLink(od);
    });
  });

  unittest.group('obj-schema-MeasurementPartnerCampaignLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMeasurementPartnerCampaignLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MeasurementPartnerCampaignLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMeasurementPartnerCampaignLink(od);
    });
  });

  unittest.group('obj-schema-MeasurementPartnerWrappingData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMeasurementPartnerWrappingData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MeasurementPartnerWrappingData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMeasurementPartnerWrappingData(od);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metric.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetric(od);
    });
  });

  unittest.group('obj-schema-Metro', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetro();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metro.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetro(od);
    });
  });

  unittest.group('obj-schema-MetrosListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetrosListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetrosListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetrosListResponse(od);
    });
  });

  unittest.group('obj-schema-MobileApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MobileApp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMobileApp(od);
    });
  });

  unittest.group('obj-schema-MobileAppsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileAppsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileAppsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileAppsListResponse(od);
    });
  });

  unittest.group('obj-schema-MobileCarrier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileCarrier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileCarrier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileCarrier(od);
    });
  });

  unittest.group('obj-schema-MobileCarriersListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileCarriersListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileCarriersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileCarriersListResponse(od);
    });
  });

  unittest.group('obj-schema-ObaIcon', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObaIcon();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ObaIcon.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkObaIcon(od);
    });
  });

  unittest.group('obj-schema-ObjectFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectFilter(od);
    });
  });

  unittest.group('obj-schema-OfflineUserAddressInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOfflineUserAddressInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OfflineUserAddressInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOfflineUserAddressInfo(od);
    });
  });

  unittest.group('obj-schema-OffsetPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOffsetPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OffsetPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOffsetPosition(od);
    });
  });

  unittest.group('obj-schema-OmnitureSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOmnitureSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OmnitureSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOmnitureSettings(od);
    });
  });

  unittest.group('obj-schema-OperatingSystem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperatingSystem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperatingSystem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperatingSystem(od);
    });
  });

  unittest.group('obj-schema-OperatingSystemVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperatingSystemVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperatingSystemVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperatingSystemVersion(od);
    });
  });

  unittest.group('obj-schema-OperatingSystemVersionsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperatingSystemVersionsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperatingSystemVersionsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperatingSystemVersionsListResponse(od);
    });
  });

  unittest.group('obj-schema-OperatingSystemsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperatingSystemsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperatingSystemsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperatingSystemsListResponse(od);
    });
  });

  unittest.group('obj-schema-OptimizationActivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOptimizationActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OptimizationActivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOptimizationActivity(od);
    });
  });

  unittest.group('obj-schema-Order', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Order.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrder(od);
    });
  });

  unittest.group('obj-schema-OrderContact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderContact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderContact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderContact(od);
    });
  });

  unittest.group('obj-schema-OrdersListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersListResponse(od);
    });
  });

  unittest.group('obj-schema-PathToConversionReportCompatibleFields', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPathToConversionReportCompatibleFields();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PathToConversionReportCompatibleFields.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPathToConversionReportCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-Placement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Placement.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPlacement(od);
    });
  });

  unittest.group('obj-schema-PlacementAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacementAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlacementAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementAssignment(od);
    });
  });

  unittest.group('obj-schema-PlacementConversionDomainOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacementConversionDomainOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlacementConversionDomainOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementConversionDomainOverride(od);
    });
  });

  unittest.group('obj-schema-PlacementGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacementGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlacementGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementGroup(od);
    });
  });

  unittest.group('obj-schema-PlacementGroupsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacementGroupsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlacementGroupsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementGroupsListResponse(od);
    });
  });

  unittest.group('obj-schema-PlacementSingleConversionDomain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacementSingleConversionDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlacementSingleConversionDomain.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementSingleConversionDomain(od);
    });
  });

  unittest.group('obj-schema-PlacementStrategiesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacementStrategiesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlacementStrategiesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementStrategiesListResponse(od);
    });
  });

  unittest.group('obj-schema-PlacementStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacementStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlacementStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementStrategy(od);
    });
  });

  unittest.group('obj-schema-PlacementTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacementTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlacementTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementTag(od);
    });
  });

  unittest.group('obj-schema-PlacementsGenerateTagsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacementsGenerateTagsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlacementsGenerateTagsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementsGenerateTagsResponse(od);
    });
  });

  unittest.group('obj-schema-PlacementsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacementsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlacementsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementsListResponse(od);
    });
  });

  unittest.group('obj-schema-PlatformType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlatformType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlatformType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlatformType(od);
    });
  });

  unittest.group('obj-schema-PlatformTypesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlatformTypesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlatformTypesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlatformTypesListResponse(od);
    });
  });

  unittest.group('obj-schema-PopupWindowProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPopupWindowProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PopupWindowProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPopupWindowProperties(od);
    });
  });

  unittest.group('obj-schema-PostalCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostalCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PostalCode.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPostalCode(od);
    });
  });

  unittest.group('obj-schema-PostalCodesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostalCodesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostalCodesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostalCodesListResponse(od);
    });
  });

  unittest.group('obj-schema-Pricing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPricing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Pricing.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPricing(od);
    });
  });

  unittest.group('obj-schema-PricingSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPricingSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PricingSchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPricingSchedule(od);
    });
  });

  unittest.group('obj-schema-PricingSchedulePricingPeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPricingSchedulePricingPeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PricingSchedulePricingPeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPricingSchedulePricingPeriod(od);
    });
  });

  unittest.group('obj-schema-Project', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Project.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProject(od);
    });
  });

  unittest.group('obj-schema-ProjectsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProjectsListResponse(od);
    });
  });

  unittest.group('obj-schema-ReachReportCompatibleFields', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReachReportCompatibleFields();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReachReportCompatibleFields.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReachReportCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-Recipient', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecipient();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Recipient.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRecipient(od);
    });
  });

  unittest.group('obj-schema-Region', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Region.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRegion(od);
    });
  });

  unittest.group('obj-schema-RegionsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionsListResponse(od);
    });
  });

  unittest.group('obj-schema-RemarketingList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemarketingList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemarketingList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemarketingList(od);
    });
  });

  unittest.group('obj-schema-RemarketingListShare', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemarketingListShare();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemarketingListShare.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemarketingListShare(od);
    });
  });

  unittest.group('obj-schema-RemarketingListsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemarketingListsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemarketingListsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemarketingListsListResponse(od);
    });
  });

  unittest.group('obj-schema-ReportCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportCrossDimensionReachCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportCrossDimensionReachCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportCrossDimensionReachCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportCrossDimensionReachCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportCrossMediaReachCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportCrossMediaReachCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportCrossMediaReachCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportCrossMediaReachCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportDelivery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportDelivery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportDelivery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportDelivery(od);
    });
  });

  unittest.group('obj-schema-ReportFloodlightCriteriaReportProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportFloodlightCriteriaReportProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportFloodlightCriteriaReportProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportFloodlightCriteriaReportProperties(od);
    });
  });

  unittest.group('obj-schema-ReportFloodlightCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportFloodlightCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportFloodlightCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportFloodlightCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportPathToConversionCriteriaReportProperties',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportPathToConversionCriteriaReportProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportPathToConversionCriteriaReportProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportPathToConversionCriteriaReportProperties(od);
    });
  });

  unittest.group('obj-schema-ReportPathToConversionCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportPathToConversionCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportPathToConversionCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportPathToConversionCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportReachCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportReachCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportReachCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportReachCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSchedule(od);
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

  unittest.group('obj-schema-ReportCompatibleFields', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportCompatibleFields();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportCompatibleFields.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-ReportList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReportList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReportList(od);
    });
  });

  unittest.group('obj-schema-ReportsConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportsConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportsConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportsConfiguration(od);
    });
  });

  unittest.group('obj-schema-RichMediaExitOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRichMediaExitOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RichMediaExitOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRichMediaExitOverride(od);
    });
  });

  unittest.group('obj-schema-Rule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Rule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRule(od);
    });
  });

  unittest.group('obj-schema-Site', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Site.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSite(od);
    });
  });

  unittest.group('obj-schema-SiteCompanionSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSiteCompanionSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SiteCompanionSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSiteCompanionSetting(od);
    });
  });

  unittest.group('obj-schema-SiteContact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSiteContact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SiteContact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSiteContact(od);
    });
  });

  unittest.group('obj-schema-SiteSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSiteSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SiteSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSiteSettings(od);
    });
  });

  unittest.group('obj-schema-SiteSkippableSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSiteSkippableSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SiteSkippableSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSiteSkippableSetting(od);
    });
  });

  unittest.group('obj-schema-SiteTranscodeSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSiteTranscodeSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SiteTranscodeSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSiteTranscodeSetting(od);
    });
  });

  unittest.group('obj-schema-SiteVideoSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSiteVideoSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SiteVideoSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSiteVideoSettings(od);
    });
  });

  unittest.group('obj-schema-SitesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSitesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SitesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSitesListResponse(od);
    });
  });

  unittest.group('obj-schema-Size', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Size.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSize(od);
    });
  });

  unittest.group('obj-schema-SizesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSizesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SizesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSizesListResponse(od);
    });
  });

  unittest.group('obj-schema-SkippableSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkippableSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SkippableSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSkippableSetting(od);
    });
  });

  unittest.group('obj-schema-SortedDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSortedDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SortedDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSortedDimension(od);
    });
  });

  unittest.group('obj-schema-Subaccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubaccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Subaccount.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSubaccount(od);
    });
  });

  unittest.group('obj-schema-SubaccountsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubaccountsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubaccountsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubaccountsListResponse(od);
    });
  });

  unittest.group('obj-schema-TagData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTagData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TagData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTagData(od);
    });
  });

  unittest.group('obj-schema-TagSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTagSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TagSetting.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTagSetting(od);
    });
  });

  unittest.group('obj-schema-TagSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTagSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TagSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTagSettings(od);
    });
  });

  unittest.group('obj-schema-TargetWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetWindow(od);
    });
  });

  unittest.group('obj-schema-TargetableRemarketingList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetableRemarketingList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetableRemarketingList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetableRemarketingList(od);
    });
  });

  unittest.group('obj-schema-TargetableRemarketingListsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetableRemarketingListsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetableRemarketingListsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetableRemarketingListsListResponse(od);
    });
  });

  unittest.group('obj-schema-TargetingTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingTemplate(od);
    });
  });

  unittest.group('obj-schema-TargetingTemplatesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingTemplatesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingTemplatesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingTemplatesListResponse(od);
    });
  });

  unittest.group('obj-schema-TechnologyTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTechnologyTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TechnologyTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTechnologyTargeting(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyAuthenticationToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThirdPartyAuthenticationToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThirdPartyAuthenticationToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThirdPartyAuthenticationToken(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyTrackingUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThirdPartyTrackingUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThirdPartyTrackingUrl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThirdPartyTrackingUrl(od);
    });
  });

  unittest.group('obj-schema-TranscodeSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranscodeSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranscodeSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTranscodeSetting(od);
    });
  });

  unittest.group('obj-schema-TvCampaignDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTvCampaignDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TvCampaignDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTvCampaignDetail(od);
    });
  });

  unittest.group('obj-schema-TvCampaignSummariesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTvCampaignSummariesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TvCampaignSummariesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTvCampaignSummariesListResponse(od);
    });
  });

  unittest.group('obj-schema-TvCampaignSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTvCampaignSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TvCampaignSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTvCampaignSummary(od);
    });
  });

  unittest.group('obj-schema-TvCampaignTimepoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTvCampaignTimepoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TvCampaignTimepoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTvCampaignTimepoint(od);
    });
  });

  unittest.group('obj-schema-UniversalAdId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUniversalAdId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UniversalAdId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUniversalAdId(od);
    });
  });

  unittest.group('obj-schema-UserDefinedVariableConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserDefinedVariableConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserDefinedVariableConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserDefinedVariableConfiguration(od);
    });
  });

  unittest.group('obj-schema-UserIdentifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserIdentifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserIdentifier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserIdentifier(od);
    });
  });

  unittest.group('obj-schema-UserProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserProfile(od);
    });
  });

  unittest.group('obj-schema-UserProfileList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserProfileList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserProfileList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserProfileList(od);
    });
  });

  unittest.group('obj-schema-UserRole', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UserRole.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUserRole(od);
    });
  });

  unittest.group('obj-schema-UserRolePermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserRolePermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserRolePermission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserRolePermission(od);
    });
  });

  unittest.group('obj-schema-UserRolePermissionGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserRolePermissionGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserRolePermissionGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserRolePermissionGroup(od);
    });
  });

  unittest.group('obj-schema-UserRolePermissionGroupsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserRolePermissionGroupsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserRolePermissionGroupsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserRolePermissionGroupsListResponse(od);
    });
  });

  unittest.group('obj-schema-UserRolePermissionsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserRolePermissionsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserRolePermissionsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserRolePermissionsListResponse(od);
    });
  });

  unittest.group('obj-schema-UserRolesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserRolesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserRolesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserRolesListResponse(od);
    });
  });

  unittest.group('obj-schema-VideoFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoFormat.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoFormat(od);
    });
  });

  unittest.group('obj-schema-VideoFormatsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoFormatsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoFormatsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoFormatsListResponse(od);
    });
  });

  unittest.group('obj-schema-VideoOffset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoOffset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoOffset.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoOffset(od);
    });
  });

  unittest.group('obj-schema-VideoSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoSettings(od);
    });
  });

  unittest.group('resource-AccountActiveAdSummariesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accountActiveAdSummaries;
      final arg_profileId = 'foo';
      final arg_summaryAccountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountActiveAdSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_profileId, arg_summaryAccountId,
          $fields: arg_$fields);
      checkAccountActiveAdSummary(response as api.AccountActiveAdSummary);
    });
  });

  unittest.group('resource-AccountPermissionGroupsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accountPermissionGroups;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountPermissionGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkAccountPermissionGroup(response as api.AccountPermissionGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accountPermissionGroups;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildAccountPermissionGroupsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkAccountPermissionGroupsListResponse(
          response as api.AccountPermissionGroupsListResponse);
    });
  });

  unittest.group('resource-AccountPermissionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accountPermissions;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkAccountPermission(response as api.AccountPermission);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accountPermissions;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountPermissionsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkAccountPermissionsListResponse(
          response as api.AccountPermissionsListResponse);
    });
  });

  unittest.group('resource-AccountUserProfilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accountUserProfiles;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/accountUserProfiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/accountUserProfiles/'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountUserProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkAccountUserProfile(response as api.AccountUserProfile);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accountUserProfiles;
      final arg_request = buildAccountUserProfile();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountUserProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountUserProfile(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountUserProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkAccountUserProfile(response as api.AccountUserProfile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accountUserProfiles;
      final arg_profileId = 'foo';
      final arg_active = true;
      final arg_ids = buildUnnamed214();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_subaccountId = 'foo';
      final arg_userRoleId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['active']!.first,
          unittest.equals('$arg_active'),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['subaccountId']!.first,
          unittest.equals(arg_subaccountId),
        );
        unittest.expect(
          queryMap['userRoleId']!.first,
          unittest.equals(arg_userRoleId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildAccountUserProfilesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          active: arg_active,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          subaccountId: arg_subaccountId,
          userRoleId: arg_userRoleId,
          $fields: arg_$fields);
      checkAccountUserProfilesListResponse(
          response as api.AccountUserProfilesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accountUserProfiles;
      final arg_request = buildAccountUserProfile();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountUserProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountUserProfile(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountUserProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkAccountUserProfile(response as api.AccountUserProfile);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accountUserProfiles;
      final arg_request = buildAccountUserProfile();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountUserProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountUserProfile(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountUserProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkAccountUserProfile(response as api.AccountUserProfile);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accounts;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accounts;
      final arg_profileId = 'foo';
      final arg_active = true;
      final arg_ids = buildUnnamed215();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['active']!.first,
          unittest.equals('$arg_active'),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          active: arg_active,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkAccountsListResponse(response as api.AccountsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accounts;
      final arg_request = buildAccount();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Account.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAccount(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).accounts;
      final arg_request = buildAccount();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Account.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAccount(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });
  });

  unittest.group('resource-AdsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).ads;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAd());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkAd(response as api.Ad);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).ads;
      final arg_request = buildAd();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Ad.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAd(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAd());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkAd(response as api.Ad);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).ads;
      final arg_profileId = 'foo';
      final arg_active = true;
      final arg_advertiserId = 'foo';
      final arg_archived = true;
      final arg_audienceSegmentIds = buildUnnamed216();
      final arg_campaignIds = buildUnnamed217();
      final arg_compatibility = 'foo';
      final arg_creativeIds = buildUnnamed218();
      final arg_creativeOptimizationConfigurationIds = buildUnnamed219();
      final arg_dynamicClickTracker = true;
      final arg_ids = buildUnnamed220();
      final arg_landingPageIds = buildUnnamed221();
      final arg_maxResults = 42;
      final arg_overriddenEventTagId = 'foo';
      final arg_pageToken = 'foo';
      final arg_placementIds = buildUnnamed222();
      final arg_remarketingListIds = buildUnnamed223();
      final arg_searchString = 'foo';
      final arg_sizeIds = buildUnnamed224();
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_sslCompliant = true;
      final arg_sslRequired = true;
      final arg_type = buildUnnamed225();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['active']!.first,
          unittest.equals('$arg_active'),
        );
        unittest.expect(
          queryMap['advertiserId']!.first,
          unittest.equals(arg_advertiserId),
        );
        unittest.expect(
          queryMap['archived']!.first,
          unittest.equals('$arg_archived'),
        );
        unittest.expect(
          queryMap['audienceSegmentIds']!,
          unittest.equals(arg_audienceSegmentIds),
        );
        unittest.expect(
          queryMap['campaignIds']!,
          unittest.equals(arg_campaignIds),
        );
        unittest.expect(
          queryMap['compatibility']!.first,
          unittest.equals(arg_compatibility),
        );
        unittest.expect(
          queryMap['creativeIds']!,
          unittest.equals(arg_creativeIds),
        );
        unittest.expect(
          queryMap['creativeOptimizationConfigurationIds']!,
          unittest.equals(arg_creativeOptimizationConfigurationIds),
        );
        unittest.expect(
          queryMap['dynamicClickTracker']!.first,
          unittest.equals('$arg_dynamicClickTracker'),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['landingPageIds']!,
          unittest.equals(arg_landingPageIds),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['overriddenEventTagId']!.first,
          unittest.equals(arg_overriddenEventTagId),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['placementIds']!,
          unittest.equals(arg_placementIds),
        );
        unittest.expect(
          queryMap['remarketingListIds']!,
          unittest.equals(arg_remarketingListIds),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sizeIds']!,
          unittest.equals(arg_sizeIds),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['sslCompliant']!.first,
          unittest.equals('$arg_sslCompliant'),
        );
        unittest.expect(
          queryMap['sslRequired']!.first,
          unittest.equals('$arg_sslRequired'),
        );
        unittest.expect(
          queryMap['type']!,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          active: arg_active,
          advertiserId: arg_advertiserId,
          archived: arg_archived,
          audienceSegmentIds: arg_audienceSegmentIds,
          campaignIds: arg_campaignIds,
          compatibility: arg_compatibility,
          creativeIds: arg_creativeIds,
          creativeOptimizationConfigurationIds:
              arg_creativeOptimizationConfigurationIds,
          dynamicClickTracker: arg_dynamicClickTracker,
          ids: arg_ids,
          landingPageIds: arg_landingPageIds,
          maxResults: arg_maxResults,
          overriddenEventTagId: arg_overriddenEventTagId,
          pageToken: arg_pageToken,
          placementIds: arg_placementIds,
          remarketingListIds: arg_remarketingListIds,
          searchString: arg_searchString,
          sizeIds: arg_sizeIds,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          sslCompliant: arg_sslCompliant,
          sslRequired: arg_sslRequired,
          type: arg_type,
          $fields: arg_$fields);
      checkAdsListResponse(response as api.AdsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).ads;
      final arg_request = buildAd();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Ad.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAd(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAd());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkAd(response as api.Ad);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).ads;
      final arg_request = buildAd();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Ad.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAd(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAd());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkAd(response as api.Ad);
    });
  });

  unittest.group('resource-AdvertiserGroupsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertiserGroups;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_profileId, arg_id, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertiserGroups;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdvertiserGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkAdvertiserGroup(response as api.AdvertiserGroup);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertiserGroups;
      final arg_request = buildAdvertiserGroup();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AdvertiserGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAdvertiserGroup(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdvertiserGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkAdvertiserGroup(response as api.AdvertiserGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertiserGroups;
      final arg_profileId = 'foo';
      final arg_ids = buildUnnamed226();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdvertiserGroupsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkAdvertiserGroupsListResponse(
          response as api.AdvertiserGroupsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertiserGroups;
      final arg_request = buildAdvertiserGroup();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AdvertiserGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAdvertiserGroup(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdvertiserGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkAdvertiserGroup(response as api.AdvertiserGroup);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertiserGroups;
      final arg_request = buildAdvertiserGroup();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AdvertiserGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAdvertiserGroup(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdvertiserGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkAdvertiserGroup(response as api.AdvertiserGroup);
    });
  });

  unittest.group('resource-AdvertiserInvoicesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertiserInvoices;
      final arg_profileId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_issueMonth = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['issueMonth']!.first,
          unittest.equals(arg_issueMonth),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildAdvertiserInvoicesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, arg_advertiserId,
          issueMonth: arg_issueMonth,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkAdvertiserInvoicesListResponse(
          response as api.AdvertiserInvoicesListResponse);
    });
  });

  unittest.group('resource-AdvertiserLandingPagesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertiserLandingPages;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLandingPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkLandingPage(response as api.LandingPage);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertiserLandingPages;
      final arg_request = buildLandingPage();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LandingPage.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLandingPage(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLandingPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkLandingPage(response as api.LandingPage);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertiserLandingPages;
      final arg_profileId = 'foo';
      final arg_advertiserIds = buildUnnamed227();
      final arg_archived = true;
      final arg_campaignIds = buildUnnamed228();
      final arg_ids = buildUnnamed229();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_subaccountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['advertiserIds']!,
          unittest.equals(arg_advertiserIds),
        );
        unittest.expect(
          queryMap['archived']!.first,
          unittest.equals('$arg_archived'),
        );
        unittest.expect(
          queryMap['campaignIds']!,
          unittest.equals(arg_campaignIds),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['subaccountId']!.first,
          unittest.equals(arg_subaccountId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildAdvertiserLandingPagesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          advertiserIds: arg_advertiserIds,
          archived: arg_archived,
          campaignIds: arg_campaignIds,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          subaccountId: arg_subaccountId,
          $fields: arg_$fields);
      checkAdvertiserLandingPagesListResponse(
          response as api.AdvertiserLandingPagesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertiserLandingPages;
      final arg_request = buildLandingPage();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LandingPage.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLandingPage(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLandingPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkLandingPage(response as api.LandingPage);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertiserLandingPages;
      final arg_request = buildLandingPage();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LandingPage.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLandingPage(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLandingPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkLandingPage(response as api.LandingPage);
    });
  });

  unittest.group('resource-AdvertisersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertisers;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdvertiser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkAdvertiser(response as api.Advertiser);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertisers;
      final arg_request = buildAdvertiser();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Advertiser.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdvertiser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkAdvertiser(response as api.Advertiser);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertisers;
      final arg_profileId = 'foo';
      final arg_advertiserGroupIds = buildUnnamed230();
      final arg_floodlightConfigurationIds = buildUnnamed231();
      final arg_ids = buildUnnamed232();
      final arg_includeAdvertisersWithoutGroupsOnly = true;
      final arg_maxResults = 42;
      final arg_onlyParent = true;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_status = 'foo';
      final arg_subaccountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['advertiserGroupIds']!,
          unittest.equals(arg_advertiserGroupIds),
        );
        unittest.expect(
          queryMap['floodlightConfigurationIds']!,
          unittest.equals(arg_floodlightConfigurationIds),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['includeAdvertisersWithoutGroupsOnly']!.first,
          unittest.equals('$arg_includeAdvertisersWithoutGroupsOnly'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['onlyParent']!.first,
          unittest.equals('$arg_onlyParent'),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['status']!.first,
          unittest.equals(arg_status),
        );
        unittest.expect(
          queryMap['subaccountId']!.first,
          unittest.equals(arg_subaccountId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdvertisersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          advertiserGroupIds: arg_advertiserGroupIds,
          floodlightConfigurationIds: arg_floodlightConfigurationIds,
          ids: arg_ids,
          includeAdvertisersWithoutGroupsOnly:
              arg_includeAdvertisersWithoutGroupsOnly,
          maxResults: arg_maxResults,
          onlyParent: arg_onlyParent,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          status: arg_status,
          subaccountId: arg_subaccountId,
          $fields: arg_$fields);
      checkAdvertisersListResponse(response as api.AdvertisersListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertisers;
      final arg_request = buildAdvertiser();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Advertiser.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdvertiser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkAdvertiser(response as api.Advertiser);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).advertisers;
      final arg_request = buildAdvertiser();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Advertiser.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdvertiser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkAdvertiser(response as api.Advertiser);
    });
  });

  unittest.group('resource-BillingAssignmentsResource', () {
    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).billingAssignments;
      final arg_request = buildBillingAssignment();
      final arg_profileId = 'foo';
      final arg_billingProfileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BillingAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBillingAssignment(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBillingAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_profileId, arg_billingProfileId,
          $fields: arg_$fields);
      checkBillingAssignment(response as api.BillingAssignment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).billingAssignments;
      final arg_profileId = 'foo';
      final arg_billingProfileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBillingAssignmentsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, arg_billingProfileId,
          $fields: arg_$fields);
      checkBillingAssignmentsListResponse(
          response as api.BillingAssignmentsListResponse);
    });
  });

  unittest.group('resource-BillingProfilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).billingProfiles;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBillingProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkBillingProfile(response as api.BillingProfile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).billingProfiles;
      final arg_profileId = 'foo';
      final arg_currencyCode = 'foo';
      final arg_ids = buildUnnamed233();
      final arg_maxResults = 42;
      final arg_name = 'foo';
      final arg_onlySuggestion = true;
      final arg_pageToken = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_status = buildUnnamed234();
      final arg_subaccountIds = buildUnnamed235();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['currency_code']!.first,
          unittest.equals(arg_currencyCode),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['onlySuggestion']!.first,
          unittest.equals('$arg_onlySuggestion'),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['status']!,
          unittest.equals(arg_status),
        );
        unittest.expect(
          queryMap['subaccountIds']!,
          unittest.equals(arg_subaccountIds),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBillingProfilesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          currencyCode: arg_currencyCode,
          ids: arg_ids,
          maxResults: arg_maxResults,
          name: arg_name,
          onlySuggestion: arg_onlySuggestion,
          pageToken: arg_pageToken,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          status: arg_status,
          subaccountIds: arg_subaccountIds,
          $fields: arg_$fields);
      checkBillingProfilesListResponse(
          response as api.BillingProfilesListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).billingProfiles;
      final arg_request = buildBillingProfile();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BillingProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBillingProfile(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBillingProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkBillingProfile(response as api.BillingProfile);
    });
  });

  unittest.group('resource-BillingRatesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).billingRates;
      final arg_profileId = 'foo';
      final arg_billingProfileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBillingRatesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, arg_billingProfileId,
          $fields: arg_$fields);
      checkBillingRatesListResponse(response as api.BillingRatesListResponse);
    });
  });

  unittest.group('resource-BrowsersResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).browsers;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBrowsersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkBrowsersListResponse(response as api.BrowsersListResponse);
    });
  });

  unittest.group('resource-CampaignCreativeAssociationsResource', () {
    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).campaignCreativeAssociations;
      final arg_request = buildCampaignCreativeAssociation();
      final arg_profileId = 'foo';
      final arg_campaignId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CampaignCreativeAssociation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCampaignCreativeAssociation(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCampaignCreativeAssociation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_profileId, arg_campaignId,
          $fields: arg_$fields);
      checkCampaignCreativeAssociation(
          response as api.CampaignCreativeAssociation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).campaignCreativeAssociations;
      final arg_profileId = 'foo';
      final arg_campaignId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildCampaignCreativeAssociationsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, arg_campaignId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkCampaignCreativeAssociationsListResponse(
          response as api.CampaignCreativeAssociationsListResponse);
    });
  });

  unittest.group('resource-CampaignsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).campaigns;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCampaign());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkCampaign(response as api.Campaign);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).campaigns;
      final arg_request = buildCampaign();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Campaign.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCampaign());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkCampaign(response as api.Campaign);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).campaigns;
      final arg_profileId = 'foo';
      final arg_advertiserGroupIds = buildUnnamed236();
      final arg_advertiserIds = buildUnnamed237();
      final arg_archived = true;
      final arg_atLeastOneOptimizationActivity = true;
      final arg_excludedIds = buildUnnamed238();
      final arg_ids = buildUnnamed239();
      final arg_maxResults = 42;
      final arg_overriddenEventTagId = 'foo';
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_subaccountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['advertiserGroupIds']!,
          unittest.equals(arg_advertiserGroupIds),
        );
        unittest.expect(
          queryMap['advertiserIds']!,
          unittest.equals(arg_advertiserIds),
        );
        unittest.expect(
          queryMap['archived']!.first,
          unittest.equals('$arg_archived'),
        );
        unittest.expect(
          queryMap['atLeastOneOptimizationActivity']!.first,
          unittest.equals('$arg_atLeastOneOptimizationActivity'),
        );
        unittest.expect(
          queryMap['excludedIds']!,
          unittest.equals(arg_excludedIds),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['overriddenEventTagId']!.first,
          unittest.equals(arg_overriddenEventTagId),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['subaccountId']!.first,
          unittest.equals(arg_subaccountId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCampaignsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          advertiserGroupIds: arg_advertiserGroupIds,
          advertiserIds: arg_advertiserIds,
          archived: arg_archived,
          atLeastOneOptimizationActivity: arg_atLeastOneOptimizationActivity,
          excludedIds: arg_excludedIds,
          ids: arg_ids,
          maxResults: arg_maxResults,
          overriddenEventTagId: arg_overriddenEventTagId,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          subaccountId: arg_subaccountId,
          $fields: arg_$fields);
      checkCampaignsListResponse(response as api.CampaignsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).campaigns;
      final arg_request = buildCampaign();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Campaign.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCampaign());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkCampaign(response as api.Campaign);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).campaigns;
      final arg_request = buildCampaign();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Campaign.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCampaign());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkCampaign(response as api.Campaign);
    });
  });

  unittest.group('resource-ChangeLogsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).changeLogs;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChangeLog());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkChangeLog(response as api.ChangeLog);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).changeLogs;
      final arg_profileId = 'foo';
      final arg_action = 'foo';
      final arg_ids = buildUnnamed240();
      final arg_maxChangeTime = 'foo';
      final arg_maxResults = 42;
      final arg_minChangeTime = 'foo';
      final arg_objectIds = buildUnnamed241();
      final arg_objectType = 'foo';
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_userProfileIds = buildUnnamed242();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['action']!.first,
          unittest.equals(arg_action),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['maxChangeTime']!.first,
          unittest.equals(arg_maxChangeTime),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['minChangeTime']!.first,
          unittest.equals(arg_minChangeTime),
        );
        unittest.expect(
          queryMap['objectIds']!,
          unittest.equals(arg_objectIds),
        );
        unittest.expect(
          queryMap['objectType']!.first,
          unittest.equals(arg_objectType),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['userProfileIds']!,
          unittest.equals(arg_userProfileIds),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChangeLogsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          action: arg_action,
          ids: arg_ids,
          maxChangeTime: arg_maxChangeTime,
          maxResults: arg_maxResults,
          minChangeTime: arg_minChangeTime,
          objectIds: arg_objectIds,
          objectType: arg_objectType,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          userProfileIds: arg_userProfileIds,
          $fields: arg_$fields);
      checkChangeLogsListResponse(response as api.ChangeLogsListResponse);
    });
  });

  unittest.group('resource-CitiesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).cities;
      final arg_profileId = 'foo';
      final arg_countryDartIds = buildUnnamed243();
      final arg_dartIds = buildUnnamed244();
      final arg_namePrefix = 'foo';
      final arg_regionDartIds = buildUnnamed245();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['countryDartIds']!,
          unittest.equals(arg_countryDartIds),
        );
        unittest.expect(
          queryMap['dartIds']!,
          unittest.equals(arg_dartIds),
        );
        unittest.expect(
          queryMap['namePrefix']!.first,
          unittest.equals(arg_namePrefix),
        );
        unittest.expect(
          queryMap['regionDartIds']!,
          unittest.equals(arg_regionDartIds),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCitiesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          countryDartIds: arg_countryDartIds,
          dartIds: arg_dartIds,
          namePrefix: arg_namePrefix,
          regionDartIds: arg_regionDartIds,
          $fields: arg_$fields);
      checkCitiesListResponse(response as api.CitiesListResponse);
    });
  });

  unittest.group('resource-ConnectionTypesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).connectionTypes;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildConnectionType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkConnectionType(response as api.ConnectionType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).connectionTypes;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildConnectionTypesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkConnectionTypesListResponse(
          response as api.ConnectionTypesListResponse);
    });
  });

  unittest.group('resource-ContentCategoriesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).contentCategories;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_profileId, arg_id, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).contentCategories;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildContentCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkContentCategory(response as api.ContentCategory);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).contentCategories;
      final arg_request = buildContentCategory();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ContentCategory.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkContentCategory(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildContentCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkContentCategory(response as api.ContentCategory);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).contentCategories;
      final arg_profileId = 'foo';
      final arg_ids = buildUnnamed246();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildContentCategoriesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkContentCategoriesListResponse(
          response as api.ContentCategoriesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).contentCategories;
      final arg_request = buildContentCategory();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ContentCategory.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkContentCategory(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildContentCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkContentCategory(response as api.ContentCategory);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).contentCategories;
      final arg_request = buildContentCategory();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ContentCategory.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkContentCategory(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildContentCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkContentCategory(response as api.ContentCategory);
    });
  });

  unittest.group('resource-ConversionsResource', () {
    unittest.test('method--batchinsert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).conversions;
      final arg_request = buildConversionsBatchInsertRequest();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConversionsBatchInsertRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConversionsBatchInsertRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/conversions/batchinsert', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('/conversions/batchinsert'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildConversionsBatchInsertResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchinsert(arg_request, arg_profileId,
          $fields: arg_$fields);
      checkConversionsBatchInsertResponse(
          response as api.ConversionsBatchInsertResponse);
    });

    unittest.test('method--batchupdate', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).conversions;
      final arg_request = buildConversionsBatchUpdateRequest();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConversionsBatchUpdateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConversionsBatchUpdateRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/conversions/batchupdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('/conversions/batchupdate'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildConversionsBatchUpdateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchupdate(arg_request, arg_profileId,
          $fields: arg_$fields);
      checkConversionsBatchUpdateResponse(
          response as api.ConversionsBatchUpdateResponse);
    });
  });

  unittest.group('resource-CountriesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).countries;
      final arg_profileId = 'foo';
      final arg_dartId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCountry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_dartId, $fields: arg_$fields);
      checkCountry(response as api.Country);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).countries;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCountriesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkCountriesListResponse(response as api.CountriesListResponse);
    });
  });

  unittest.group('resource-CreativeAssetsResource', () {
    unittest.test('method--insert', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeAssets;
      final arg_request = buildCreativeAssetMetadata();
      final arg_profileId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreativeAssetMetadata.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreativeAssetMetadata(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeAssetMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_profileId, arg_advertiserId,
          $fields: arg_$fields);
      checkCreativeAssetMetadata(response as api.CreativeAssetMetadata);
    });
  });

  unittest.group('resource-CreativeFieldValuesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeFieldValues;
      final arg_profileId = 'foo';
      final arg_creativeFieldId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_profileId, arg_creativeFieldId, arg_id,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeFieldValues;
      final arg_profileId = 'foo';
      final arg_creativeFieldId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeFieldValue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_profileId, arg_creativeFieldId, arg_id,
          $fields: arg_$fields);
      checkCreativeFieldValue(response as api.CreativeFieldValue);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeFieldValues;
      final arg_request = buildCreativeFieldValue();
      final arg_profileId = 'foo';
      final arg_creativeFieldId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreativeFieldValue.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreativeFieldValue(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeFieldValue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_profileId, arg_creativeFieldId,
          $fields: arg_$fields);
      checkCreativeFieldValue(response as api.CreativeFieldValue);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeFieldValues;
      final arg_profileId = 'foo';
      final arg_creativeFieldId = 'foo';
      final arg_ids = buildUnnamed247();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildCreativeFieldValuesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, arg_creativeFieldId,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkCreativeFieldValuesListResponse(
          response as api.CreativeFieldValuesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeFieldValues;
      final arg_request = buildCreativeFieldValue();
      final arg_profileId = 'foo';
      final arg_creativeFieldId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreativeFieldValue.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreativeFieldValue(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeFieldValue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_profileId, arg_creativeFieldId, arg_id,
          $fields: arg_$fields);
      checkCreativeFieldValue(response as api.CreativeFieldValue);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeFieldValues;
      final arg_request = buildCreativeFieldValue();
      final arg_profileId = 'foo';
      final arg_creativeFieldId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreativeFieldValue.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreativeFieldValue(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeFieldValue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_profileId, arg_creativeFieldId,
          $fields: arg_$fields);
      checkCreativeFieldValue(response as api.CreativeFieldValue);
    });
  });

  unittest.group('resource-CreativeFieldsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeFields;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_profileId, arg_id, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeFields;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkCreativeField(response as api.CreativeField);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeFields;
      final arg_request = buildCreativeField();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreativeField.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreativeField(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkCreativeField(response as api.CreativeField);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeFields;
      final arg_profileId = 'foo';
      final arg_advertiserIds = buildUnnamed248();
      final arg_ids = buildUnnamed249();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['advertiserIds']!,
          unittest.equals(arg_advertiserIds),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeFieldsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          advertiserIds: arg_advertiserIds,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkCreativeFieldsListResponse(
          response as api.CreativeFieldsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeFields;
      final arg_request = buildCreativeField();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreativeField.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreativeField(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkCreativeField(response as api.CreativeField);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeFields;
      final arg_request = buildCreativeField();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreativeField.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreativeField(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkCreativeField(response as api.CreativeField);
    });
  });

  unittest.group('resource-CreativeGroupsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeGroups;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkCreativeGroup(response as api.CreativeGroup);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeGroups;
      final arg_request = buildCreativeGroup();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreativeGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreativeGroup(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkCreativeGroup(response as api.CreativeGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeGroups;
      final arg_profileId = 'foo';
      final arg_advertiserIds = buildUnnamed250();
      final arg_groupNumber = 42;
      final arg_ids = buildUnnamed251();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['advertiserIds']!,
          unittest.equals(arg_advertiserIds),
        );
        unittest.expect(
          core.int.parse(queryMap['groupNumber']!.first),
          unittest.equals(arg_groupNumber),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeGroupsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          advertiserIds: arg_advertiserIds,
          groupNumber: arg_groupNumber,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkCreativeGroupsListResponse(
          response as api.CreativeGroupsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeGroups;
      final arg_request = buildCreativeGroup();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreativeGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreativeGroup(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkCreativeGroup(response as api.CreativeGroup);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creativeGroups;
      final arg_request = buildCreativeGroup();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreativeGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreativeGroup(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativeGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkCreativeGroup(response as api.CreativeGroup);
    });
  });

  unittest.group('resource-CreativesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creatives;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkCreative(response as api.Creative);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creatives;
      final arg_request = buildCreative();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Creative.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkCreative(response as api.Creative);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creatives;
      final arg_profileId = 'foo';
      final arg_active = true;
      final arg_advertiserId = 'foo';
      final arg_archived = true;
      final arg_campaignId = 'foo';
      final arg_companionCreativeIds = buildUnnamed252();
      final arg_creativeFieldIds = buildUnnamed253();
      final arg_ids = buildUnnamed254();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_renderingIds = buildUnnamed255();
      final arg_searchString = 'foo';
      final arg_sizeIds = buildUnnamed256();
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_studioCreativeId = 'foo';
      final arg_types = buildUnnamed257();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['active']!.first,
          unittest.equals('$arg_active'),
        );
        unittest.expect(
          queryMap['advertiserId']!.first,
          unittest.equals(arg_advertiserId),
        );
        unittest.expect(
          queryMap['archived']!.first,
          unittest.equals('$arg_archived'),
        );
        unittest.expect(
          queryMap['campaignId']!.first,
          unittest.equals(arg_campaignId),
        );
        unittest.expect(
          queryMap['companionCreativeIds']!,
          unittest.equals(arg_companionCreativeIds),
        );
        unittest.expect(
          queryMap['creativeFieldIds']!,
          unittest.equals(arg_creativeFieldIds),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['renderingIds']!,
          unittest.equals(arg_renderingIds),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sizeIds']!,
          unittest.equals(arg_sizeIds),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['studioCreativeId']!.first,
          unittest.equals(arg_studioCreativeId),
        );
        unittest.expect(
          queryMap['types']!,
          unittest.equals(arg_types),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          active: arg_active,
          advertiserId: arg_advertiserId,
          archived: arg_archived,
          campaignId: arg_campaignId,
          companionCreativeIds: arg_companionCreativeIds,
          creativeFieldIds: arg_creativeFieldIds,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          renderingIds: arg_renderingIds,
          searchString: arg_searchString,
          sizeIds: arg_sizeIds,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          studioCreativeId: arg_studioCreativeId,
          types: arg_types,
          $fields: arg_$fields);
      checkCreativesListResponse(response as api.CreativesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creatives;
      final arg_request = buildCreative();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Creative.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkCreative(response as api.Creative);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).creatives;
      final arg_request = buildCreative();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Creative.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkCreative(response as api.Creative);
    });
  });

  unittest.group('resource-DimensionValuesResource', () {
    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).dimensionValues;
      final arg_request = buildDimensionValueRequest();
      final arg_profileId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DimensionValueRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDimensionValueRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/dimensionvalues/query', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/dimensionvalues/query'),
        );
        pathOffset += 22;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildDimensionValueList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.query(arg_request, arg_profileId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkDimensionValueList(response as api.DimensionValueList);
    });
  });

  unittest.group('resource-DirectorySitesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).directorySites;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDirectorySite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkDirectorySite(response as api.DirectorySite);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).directorySites;
      final arg_request = buildDirectorySite();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DirectorySite.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDirectorySite(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDirectorySite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkDirectorySite(response as api.DirectorySite);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).directorySites;
      final arg_profileId = 'foo';
      final arg_acceptsInStreamVideoPlacements = true;
      final arg_acceptsInterstitialPlacements = true;
      final arg_acceptsPublisherPaidPlacements = true;
      final arg_active = true;
      final arg_dfpNetworkCode = 'foo';
      final arg_ids = buildUnnamed258();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['acceptsInStreamVideoPlacements']!.first,
          unittest.equals('$arg_acceptsInStreamVideoPlacements'),
        );
        unittest.expect(
          queryMap['acceptsInterstitialPlacements']!.first,
          unittest.equals('$arg_acceptsInterstitialPlacements'),
        );
        unittest.expect(
          queryMap['acceptsPublisherPaidPlacements']!.first,
          unittest.equals('$arg_acceptsPublisherPaidPlacements'),
        );
        unittest.expect(
          queryMap['active']!.first,
          unittest.equals('$arg_active'),
        );
        unittest.expect(
          queryMap['dfpNetworkCode']!.first,
          unittest.equals(arg_dfpNetworkCode),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDirectorySitesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          acceptsInStreamVideoPlacements: arg_acceptsInStreamVideoPlacements,
          acceptsInterstitialPlacements: arg_acceptsInterstitialPlacements,
          acceptsPublisherPaidPlacements: arg_acceptsPublisherPaidPlacements,
          active: arg_active,
          dfpNetworkCode: arg_dfpNetworkCode,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkDirectorySitesListResponse(
          response as api.DirectorySitesListResponse);
    });
  });

  unittest.group('resource-DynamicTargetingKeysResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).dynamicTargetingKeys;
      final arg_profileId = 'foo';
      final arg_objectId = 'foo';
      final arg_name = 'foo';
      final arg_objectType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['objectType']!.first,
          unittest.equals(arg_objectType),
        );
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
      await res.delete(arg_profileId, arg_objectId, arg_name, arg_objectType,
          $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).dynamicTargetingKeys;
      final arg_request = buildDynamicTargetingKey();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DynamicTargetingKey.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDynamicTargetingKey(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDynamicTargetingKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkDynamicTargetingKey(response as api.DynamicTargetingKey);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).dynamicTargetingKeys;
      final arg_profileId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_names = buildUnnamed259();
      final arg_objectId = 'foo';
      final arg_objectType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['advertiserId']!.first,
          unittest.equals(arg_advertiserId),
        );
        unittest.expect(
          queryMap['names']!,
          unittest.equals(arg_names),
        );
        unittest.expect(
          queryMap['objectId']!.first,
          unittest.equals(arg_objectId),
        );
        unittest.expect(
          queryMap['objectType']!.first,
          unittest.equals(arg_objectType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildDynamicTargetingKeysListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          advertiserId: arg_advertiserId,
          names: arg_names,
          objectId: arg_objectId,
          objectType: arg_objectType,
          $fields: arg_$fields);
      checkDynamicTargetingKeysListResponse(
          response as api.DynamicTargetingKeysListResponse);
    });
  });

  unittest.group('resource-EventTagsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).eventTags;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_profileId, arg_id, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).eventTags;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEventTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkEventTag(response as api.EventTag);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).eventTags;
      final arg_request = buildEventTag();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.EventTag.fromJson(json as core.Map<core.String, core.dynamic>);
        checkEventTag(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEventTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkEventTag(response as api.EventTag);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).eventTags;
      final arg_profileId = 'foo';
      final arg_adId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_campaignId = 'foo';
      final arg_definitionsOnly = true;
      final arg_enabled = true;
      final arg_eventTagTypes = buildUnnamed260();
      final arg_ids = buildUnnamed261();
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['adId']!.first,
          unittest.equals(arg_adId),
        );
        unittest.expect(
          queryMap['advertiserId']!.first,
          unittest.equals(arg_advertiserId),
        );
        unittest.expect(
          queryMap['campaignId']!.first,
          unittest.equals(arg_campaignId),
        );
        unittest.expect(
          queryMap['definitionsOnly']!.first,
          unittest.equals('$arg_definitionsOnly'),
        );
        unittest.expect(
          queryMap['enabled']!.first,
          unittest.equals('$arg_enabled'),
        );
        unittest.expect(
          queryMap['eventTagTypes']!,
          unittest.equals(arg_eventTagTypes),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEventTagsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          adId: arg_adId,
          advertiserId: arg_advertiserId,
          campaignId: arg_campaignId,
          definitionsOnly: arg_definitionsOnly,
          enabled: arg_enabled,
          eventTagTypes: arg_eventTagTypes,
          ids: arg_ids,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkEventTagsListResponse(response as api.EventTagsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).eventTags;
      final arg_request = buildEventTag();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.EventTag.fromJson(json as core.Map<core.String, core.dynamic>);
        checkEventTag(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEventTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkEventTag(response as api.EventTag);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).eventTags;
      final arg_request = buildEventTag();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.EventTag.fromJson(json as core.Map<core.String, core.dynamic>);
        checkEventTag(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEventTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkEventTag(response as api.EventTag);
    });
  });

  unittest.group('resource-FilesResource', () {
    unittest.test('method--get', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).files;
      final arg_reportId = 'foo';
      final arg_fileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('reports/'),
        );
        pathOffset += 8;
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
          unittest.equals('$arg_fileId'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_reportId, arg_fileId, $fields: arg_$fields);
      checkFile(response as api.File);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).files;
      final arg_profileId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_scope = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/files', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/files'),
        );
        pathOffset += 6;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['scope']!.first,
          unittest.equals(arg_scope),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFileList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          scope: arg_scope,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkFileList(response as api.FileList);
    });
  });

  unittest.group('resource-FloodlightActivitiesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightActivities;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_profileId, arg_id, $fields: arg_$fields);
    });

    unittest.test('method--generatetag', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightActivities;
      final arg_profileId = 'foo';
      final arg_floodlightActivityId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['floodlightActivityId']!.first,
          unittest.equals(arg_floodlightActivityId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildFloodlightActivitiesGenerateTagResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generatetag(arg_profileId,
          floodlightActivityId: arg_floodlightActivityId, $fields: arg_$fields);
      checkFloodlightActivitiesGenerateTagResponse(
          response as api.FloodlightActivitiesGenerateTagResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightActivities;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFloodlightActivity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkFloodlightActivity(response as api.FloodlightActivity);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightActivities;
      final arg_request = buildFloodlightActivity();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FloodlightActivity.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFloodlightActivity(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFloodlightActivity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkFloodlightActivity(response as api.FloodlightActivity);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightActivities;
      final arg_profileId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_floodlightActivityGroupIds = buildUnnamed262();
      final arg_floodlightActivityGroupName = 'foo';
      final arg_floodlightActivityGroupTagString = 'foo';
      final arg_floodlightActivityGroupType = 'foo';
      final arg_floodlightConfigurationId = 'foo';
      final arg_ids = buildUnnamed263();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_tagString = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['advertiserId']!.first,
          unittest.equals(arg_advertiserId),
        );
        unittest.expect(
          queryMap['floodlightActivityGroupIds']!,
          unittest.equals(arg_floodlightActivityGroupIds),
        );
        unittest.expect(
          queryMap['floodlightActivityGroupName']!.first,
          unittest.equals(arg_floodlightActivityGroupName),
        );
        unittest.expect(
          queryMap['floodlightActivityGroupTagString']!.first,
          unittest.equals(arg_floodlightActivityGroupTagString),
        );
        unittest.expect(
          queryMap['floodlightActivityGroupType']!.first,
          unittest.equals(arg_floodlightActivityGroupType),
        );
        unittest.expect(
          queryMap['floodlightConfigurationId']!.first,
          unittest.equals(arg_floodlightConfigurationId),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['tagString']!.first,
          unittest.equals(arg_tagString),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildFloodlightActivitiesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          advertiserId: arg_advertiserId,
          floodlightActivityGroupIds: arg_floodlightActivityGroupIds,
          floodlightActivityGroupName: arg_floodlightActivityGroupName,
          floodlightActivityGroupTagString:
              arg_floodlightActivityGroupTagString,
          floodlightActivityGroupType: arg_floodlightActivityGroupType,
          floodlightConfigurationId: arg_floodlightConfigurationId,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          tagString: arg_tagString,
          $fields: arg_$fields);
      checkFloodlightActivitiesListResponse(
          response as api.FloodlightActivitiesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightActivities;
      final arg_request = buildFloodlightActivity();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FloodlightActivity.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFloodlightActivity(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFloodlightActivity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkFloodlightActivity(response as api.FloodlightActivity);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightActivities;
      final arg_request = buildFloodlightActivity();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FloodlightActivity.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFloodlightActivity(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFloodlightActivity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkFloodlightActivity(response as api.FloodlightActivity);
    });
  });

  unittest.group('resource-FloodlightActivityGroupsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightActivityGroups;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFloodlightActivityGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkFloodlightActivityGroup(response as api.FloodlightActivityGroup);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightActivityGroups;
      final arg_request = buildFloodlightActivityGroup();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FloodlightActivityGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFloodlightActivityGroup(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFloodlightActivityGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkFloodlightActivityGroup(response as api.FloodlightActivityGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightActivityGroups;
      final arg_profileId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_floodlightConfigurationId = 'foo';
      final arg_ids = buildUnnamed264();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_type = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['advertiserId']!.first,
          unittest.equals(arg_advertiserId),
        );
        unittest.expect(
          queryMap['floodlightConfigurationId']!.first,
          unittest.equals(arg_floodlightConfigurationId),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildFloodlightActivityGroupsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          advertiserId: arg_advertiserId,
          floodlightConfigurationId: arg_floodlightConfigurationId,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          type: arg_type,
          $fields: arg_$fields);
      checkFloodlightActivityGroupsListResponse(
          response as api.FloodlightActivityGroupsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightActivityGroups;
      final arg_request = buildFloodlightActivityGroup();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FloodlightActivityGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFloodlightActivityGroup(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFloodlightActivityGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkFloodlightActivityGroup(response as api.FloodlightActivityGroup);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightActivityGroups;
      final arg_request = buildFloodlightActivityGroup();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FloodlightActivityGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFloodlightActivityGroup(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFloodlightActivityGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkFloodlightActivityGroup(response as api.FloodlightActivityGroup);
    });
  });

  unittest.group('resource-FloodlightConfigurationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightConfigurations;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFloodlightConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkFloodlightConfiguration(response as api.FloodlightConfiguration);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightConfigurations;
      final arg_profileId = 'foo';
      final arg_ids = buildUnnamed265();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildFloodlightConfigurationsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_profileId, ids: arg_ids, $fields: arg_$fields);
      checkFloodlightConfigurationsListResponse(
          response as api.FloodlightConfigurationsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightConfigurations;
      final arg_request = buildFloodlightConfiguration();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FloodlightConfiguration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFloodlightConfiguration(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFloodlightConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkFloodlightConfiguration(response as api.FloodlightConfiguration);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).floodlightConfigurations;
      final arg_request = buildFloodlightConfiguration();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FloodlightConfiguration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFloodlightConfiguration(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFloodlightConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkFloodlightConfiguration(response as api.FloodlightConfiguration);
    });
  });

  unittest.group('resource-InventoryItemsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).inventoryItems;
      final arg_profileId = 'foo';
      final arg_projectId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInventoryItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_profileId, arg_projectId, arg_id,
          $fields: arg_$fields);
      checkInventoryItem(response as api.InventoryItem);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).inventoryItems;
      final arg_profileId = 'foo';
      final arg_projectId = 'foo';
      final arg_ids = buildUnnamed266();
      final arg_inPlan = true;
      final arg_maxResults = 42;
      final arg_orderId = buildUnnamed267();
      final arg_pageToken = 'foo';
      final arg_siteId = buildUnnamed268();
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_type = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['inPlan']!.first,
          unittest.equals('$arg_inPlan'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderId']!,
          unittest.equals(arg_orderId),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['siteId']!,
          unittest.equals(arg_siteId),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInventoryItemsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, arg_projectId,
          ids: arg_ids,
          inPlan: arg_inPlan,
          maxResults: arg_maxResults,
          orderId: arg_orderId,
          pageToken: arg_pageToken,
          siteId: arg_siteId,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          type: arg_type,
          $fields: arg_$fields);
      checkInventoryItemsListResponse(
          response as api.InventoryItemsListResponse);
    });
  });

  unittest.group('resource-LanguagesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).languages;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLanguagesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkLanguagesListResponse(response as api.LanguagesListResponse);
    });
  });

  unittest.group('resource-MetrosResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).metros;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMetrosListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkMetrosListResponse(response as api.MetrosListResponse);
    });
  });

  unittest.group('resource-MobileAppsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).mobileApps;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMobileApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkMobileApp(response as api.MobileApp);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).mobileApps;
      final arg_profileId = 'foo';
      final arg_directories = buildUnnamed269();
      final arg_ids = buildUnnamed270();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['directories']!,
          unittest.equals(arg_directories),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMobileAppsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          directories: arg_directories,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          $fields: arg_$fields);
      checkMobileAppsListResponse(response as api.MobileAppsListResponse);
    });
  });

  unittest.group('resource-MobileCarriersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).mobileCarriers;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMobileCarrier());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkMobileCarrier(response as api.MobileCarrier);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).mobileCarriers;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMobileCarriersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkMobileCarriersListResponse(
          response as api.MobileCarriersListResponse);
    });
  });

  unittest.group('resource-OperatingSystemVersionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).operatingSystemVersions;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperatingSystemVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkOperatingSystemVersion(response as api.OperatingSystemVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).operatingSystemVersions;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildOperatingSystemVersionsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkOperatingSystemVersionsListResponse(
          response as api.OperatingSystemVersionsListResponse);
    });
  });

  unittest.group('resource-OperatingSystemsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).operatingSystems;
      final arg_profileId = 'foo';
      final arg_dartId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperatingSystem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_dartId, $fields: arg_$fields);
      checkOperatingSystem(response as api.OperatingSystem);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).operatingSystems;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperatingSystemsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkOperatingSystemsListResponse(
          response as api.OperatingSystemsListResponse);
    });
  });

  unittest.group('resource-OrdersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).orders;
      final arg_profileId = 'foo';
      final arg_projectId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOrder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_profileId, arg_projectId, arg_id,
          $fields: arg_$fields);
      checkOrder(response as api.Order);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).orders;
      final arg_profileId = 'foo';
      final arg_projectId = 'foo';
      final arg_ids = buildUnnamed271();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_siteId = buildUnnamed272();
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['siteId']!,
          unittest.equals(arg_siteId),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOrdersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, arg_projectId,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          siteId: arg_siteId,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkOrdersListResponse(response as api.OrdersListResponse);
    });
  });

  unittest.group('resource-PlacementGroupsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placementGroups;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacementGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkPlacementGroup(response as api.PlacementGroup);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placementGroups;
      final arg_request = buildPlacementGroup();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlacementGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPlacementGroup(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacementGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkPlacementGroup(response as api.PlacementGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placementGroups;
      final arg_profileId = 'foo';
      final arg_activeStatus = buildUnnamed273();
      final arg_advertiserIds = buildUnnamed274();
      final arg_campaignIds = buildUnnamed275();
      final arg_contentCategoryIds = buildUnnamed276();
      final arg_directorySiteIds = buildUnnamed277();
      final arg_ids = buildUnnamed278();
      final arg_maxEndDate = 'foo';
      final arg_maxResults = 42;
      final arg_maxStartDate = 'foo';
      final arg_minEndDate = 'foo';
      final arg_minStartDate = 'foo';
      final arg_pageToken = 'foo';
      final arg_placementGroupType = 'foo';
      final arg_placementStrategyIds = buildUnnamed279();
      final arg_pricingTypes = buildUnnamed280();
      final arg_searchString = 'foo';
      final arg_siteIds = buildUnnamed281();
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['activeStatus']!,
          unittest.equals(arg_activeStatus),
        );
        unittest.expect(
          queryMap['advertiserIds']!,
          unittest.equals(arg_advertiserIds),
        );
        unittest.expect(
          queryMap['campaignIds']!,
          unittest.equals(arg_campaignIds),
        );
        unittest.expect(
          queryMap['contentCategoryIds']!,
          unittest.equals(arg_contentCategoryIds),
        );
        unittest.expect(
          queryMap['directorySiteIds']!,
          unittest.equals(arg_directorySiteIds),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['maxEndDate']!.first,
          unittest.equals(arg_maxEndDate),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['maxStartDate']!.first,
          unittest.equals(arg_maxStartDate),
        );
        unittest.expect(
          queryMap['minEndDate']!.first,
          unittest.equals(arg_minEndDate),
        );
        unittest.expect(
          queryMap['minStartDate']!.first,
          unittest.equals(arg_minStartDate),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['placementGroupType']!.first,
          unittest.equals(arg_placementGroupType),
        );
        unittest.expect(
          queryMap['placementStrategyIds']!,
          unittest.equals(arg_placementStrategyIds),
        );
        unittest.expect(
          queryMap['pricingTypes']!,
          unittest.equals(arg_pricingTypes),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['siteIds']!,
          unittest.equals(arg_siteIds),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacementGroupsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          activeStatus: arg_activeStatus,
          advertiserIds: arg_advertiserIds,
          campaignIds: arg_campaignIds,
          contentCategoryIds: arg_contentCategoryIds,
          directorySiteIds: arg_directorySiteIds,
          ids: arg_ids,
          maxEndDate: arg_maxEndDate,
          maxResults: arg_maxResults,
          maxStartDate: arg_maxStartDate,
          minEndDate: arg_minEndDate,
          minStartDate: arg_minStartDate,
          pageToken: arg_pageToken,
          placementGroupType: arg_placementGroupType,
          placementStrategyIds: arg_placementStrategyIds,
          pricingTypes: arg_pricingTypes,
          searchString: arg_searchString,
          siteIds: arg_siteIds,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkPlacementGroupsListResponse(
          response as api.PlacementGroupsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placementGroups;
      final arg_request = buildPlacementGroup();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlacementGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPlacementGroup(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacementGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkPlacementGroup(response as api.PlacementGroup);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placementGroups;
      final arg_request = buildPlacementGroup();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlacementGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPlacementGroup(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacementGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkPlacementGroup(response as api.PlacementGroup);
    });
  });

  unittest.group('resource-PlacementStrategiesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placementStrategies;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_profileId, arg_id, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placementStrategies;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacementStrategy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkPlacementStrategy(response as api.PlacementStrategy);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placementStrategies;
      final arg_request = buildPlacementStrategy();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlacementStrategy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPlacementStrategy(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacementStrategy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkPlacementStrategy(response as api.PlacementStrategy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placementStrategies;
      final arg_profileId = 'foo';
      final arg_ids = buildUnnamed282();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildPlacementStrategiesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkPlacementStrategiesListResponse(
          response as api.PlacementStrategiesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placementStrategies;
      final arg_request = buildPlacementStrategy();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlacementStrategy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPlacementStrategy(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacementStrategy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkPlacementStrategy(response as api.PlacementStrategy);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placementStrategies;
      final arg_request = buildPlacementStrategy();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlacementStrategy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPlacementStrategy(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacementStrategy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkPlacementStrategy(response as api.PlacementStrategy);
    });
  });

  unittest.group('resource-PlacementsResource', () {
    unittest.test('method--generatetags', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placements;
      final arg_profileId = 'foo';
      final arg_campaignId = 'foo';
      final arg_placementIds = buildUnnamed283();
      final arg_tagFormats = buildUnnamed284();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['campaignId']!.first,
          unittest.equals(arg_campaignId),
        );
        unittest.expect(
          queryMap['placementIds']!,
          unittest.equals(arg_placementIds),
        );
        unittest.expect(
          queryMap['tagFormats']!,
          unittest.equals(arg_tagFormats),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacementsGenerateTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generatetags(arg_profileId,
          campaignId: arg_campaignId,
          placementIds: arg_placementIds,
          tagFormats: arg_tagFormats,
          $fields: arg_$fields);
      checkPlacementsGenerateTagsResponse(
          response as api.PlacementsGenerateTagsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placements;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkPlacement(response as api.Placement);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placements;
      final arg_request = buildPlacement();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Placement.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPlacement(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkPlacement(response as api.Placement);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placements;
      final arg_profileId = 'foo';
      final arg_activeStatus = buildUnnamed285();
      final arg_advertiserIds = buildUnnamed286();
      final arg_campaignIds = buildUnnamed287();
      final arg_compatibilities = buildUnnamed288();
      final arg_contentCategoryIds = buildUnnamed289();
      final arg_directorySiteIds = buildUnnamed290();
      final arg_groupIds = buildUnnamed291();
      final arg_ids = buildUnnamed292();
      final arg_maxEndDate = 'foo';
      final arg_maxResults = 42;
      final arg_maxStartDate = 'foo';
      final arg_minEndDate = 'foo';
      final arg_minStartDate = 'foo';
      final arg_pageToken = 'foo';
      final arg_paymentSource = 'foo';
      final arg_placementStrategyIds = buildUnnamed293();
      final arg_pricingTypes = buildUnnamed294();
      final arg_searchString = 'foo';
      final arg_siteIds = buildUnnamed295();
      final arg_sizeIds = buildUnnamed296();
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['activeStatus']!,
          unittest.equals(arg_activeStatus),
        );
        unittest.expect(
          queryMap['advertiserIds']!,
          unittest.equals(arg_advertiserIds),
        );
        unittest.expect(
          queryMap['campaignIds']!,
          unittest.equals(arg_campaignIds),
        );
        unittest.expect(
          queryMap['compatibilities']!,
          unittest.equals(arg_compatibilities),
        );
        unittest.expect(
          queryMap['contentCategoryIds']!,
          unittest.equals(arg_contentCategoryIds),
        );
        unittest.expect(
          queryMap['directorySiteIds']!,
          unittest.equals(arg_directorySiteIds),
        );
        unittest.expect(
          queryMap['groupIds']!,
          unittest.equals(arg_groupIds),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['maxEndDate']!.first,
          unittest.equals(arg_maxEndDate),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['maxStartDate']!.first,
          unittest.equals(arg_maxStartDate),
        );
        unittest.expect(
          queryMap['minEndDate']!.first,
          unittest.equals(arg_minEndDate),
        );
        unittest.expect(
          queryMap['minStartDate']!.first,
          unittest.equals(arg_minStartDate),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['paymentSource']!.first,
          unittest.equals(arg_paymentSource),
        );
        unittest.expect(
          queryMap['placementStrategyIds']!,
          unittest.equals(arg_placementStrategyIds),
        );
        unittest.expect(
          queryMap['pricingTypes']!,
          unittest.equals(arg_pricingTypes),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['siteIds']!,
          unittest.equals(arg_siteIds),
        );
        unittest.expect(
          queryMap['sizeIds']!,
          unittest.equals(arg_sizeIds),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacementsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          activeStatus: arg_activeStatus,
          advertiserIds: arg_advertiserIds,
          campaignIds: arg_campaignIds,
          compatibilities: arg_compatibilities,
          contentCategoryIds: arg_contentCategoryIds,
          directorySiteIds: arg_directorySiteIds,
          groupIds: arg_groupIds,
          ids: arg_ids,
          maxEndDate: arg_maxEndDate,
          maxResults: arg_maxResults,
          maxStartDate: arg_maxStartDate,
          minEndDate: arg_minEndDate,
          minStartDate: arg_minStartDate,
          pageToken: arg_pageToken,
          paymentSource: arg_paymentSource,
          placementStrategyIds: arg_placementStrategyIds,
          pricingTypes: arg_pricingTypes,
          searchString: arg_searchString,
          siteIds: arg_siteIds,
          sizeIds: arg_sizeIds,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkPlacementsListResponse(response as api.PlacementsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placements;
      final arg_request = buildPlacement();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Placement.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPlacement(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkPlacement(response as api.Placement);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).placements;
      final arg_request = buildPlacement();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Placement.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPlacement(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlacement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkPlacement(response as api.Placement);
    });
  });

  unittest.group('resource-PlatformTypesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).platformTypes;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlatformType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkPlatformType(response as api.PlatformType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).platformTypes;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlatformTypesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkPlatformTypesListResponse(response as api.PlatformTypesListResponse);
    });
  });

  unittest.group('resource-PostalCodesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).postalCodes;
      final arg_profileId = 'foo';
      final arg_code = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPostalCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_code, $fields: arg_$fields);
      checkPostalCode(response as api.PostalCode);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).postalCodes;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPostalCodesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkPostalCodesListResponse(response as api.PostalCodesListResponse);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).projects;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkProject(response as api.Project);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).projects;
      final arg_profileId = 'foo';
      final arg_advertiserIds = buildUnnamed297();
      final arg_ids = buildUnnamed298();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['advertiserIds']!,
          unittest.equals(arg_advertiserIds),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProjectsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          advertiserIds: arg_advertiserIds,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkProjectsListResponse(response as api.ProjectsListResponse);
    });
  });

  unittest.group('resource-RegionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).regions;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRegionsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkRegionsListResponse(response as api.RegionsListResponse);
    });
  });

  unittest.group('resource-RemarketingListSharesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).remarketingListShares;
      final arg_profileId = 'foo';
      final arg_remarketingListId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRemarketingListShare());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_profileId, arg_remarketingListId,
          $fields: arg_$fields);
      checkRemarketingListShare(response as api.RemarketingListShare);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).remarketingListShares;
      final arg_request = buildRemarketingListShare();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemarketingListShare.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemarketingListShare(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRemarketingListShare());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkRemarketingListShare(response as api.RemarketingListShare);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).remarketingListShares;
      final arg_request = buildRemarketingListShare();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemarketingListShare.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemarketingListShare(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRemarketingListShare());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkRemarketingListShare(response as api.RemarketingListShare);
    });
  });

  unittest.group('resource-RemarketingListsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).remarketingLists;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRemarketingList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkRemarketingList(response as api.RemarketingList);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).remarketingLists;
      final arg_request = buildRemarketingList();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemarketingList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemarketingList(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRemarketingList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkRemarketingList(response as api.RemarketingList);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).remarketingLists;
      final arg_profileId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_active = true;
      final arg_floodlightActivityId = 'foo';
      final arg_maxResults = 42;
      final arg_name = 'foo';
      final arg_pageToken = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['advertiserId']!.first,
          unittest.equals(arg_advertiserId),
        );
        unittest.expect(
          queryMap['active']!.first,
          unittest.equals('$arg_active'),
        );
        unittest.expect(
          queryMap['floodlightActivityId']!.first,
          unittest.equals(arg_floodlightActivityId),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRemarketingListsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, arg_advertiserId,
          active: arg_active,
          floodlightActivityId: arg_floodlightActivityId,
          maxResults: arg_maxResults,
          name: arg_name,
          pageToken: arg_pageToken,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkRemarketingListsListResponse(
          response as api.RemarketingListsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).remarketingLists;
      final arg_request = buildRemarketingList();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemarketingList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemarketingList(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRemarketingList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkRemarketingList(response as api.RemarketingList);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).remarketingLists;
      final arg_request = buildRemarketingList();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemarketingList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemarketingList(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRemarketingList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkRemarketingList(response as api.RemarketingList);
    });
  });

  unittest.group('resource-ReportsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).reports;
      final arg_profileId = 'foo';
      final arg_reportId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/reports/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reportId'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_profileId, arg_reportId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).reports;
      final arg_profileId = 'foo';
      final arg_reportId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/reports/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reportId'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_reportId, $fields: arg_$fields);
      checkReport(response as api.Report);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).reports;
      final arg_request = buildReport();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Report.fromJson(json as core.Map<core.String, core.dynamic>);
        checkReport(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/reports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/reports'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkReport(response as api.Report);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).reports;
      final arg_profileId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_scope = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/reports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/reports'),
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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['scope']!.first,
          unittest.equals(arg_scope),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReportList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          scope: arg_scope,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkReportList(response as api.ReportList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).reports;
      final arg_request = buildReport();
      final arg_profileId = 'foo';
      final arg_reportId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Report.fromJson(json as core.Map<core.String, core.dynamic>);
        checkReport(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/reports/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reportId'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_reportId,
          $fields: arg_$fields);
      checkReport(response as api.Report);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).reports;
      final arg_profileId = 'foo';
      final arg_reportId = 'foo';
      final arg_synchronous = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/reports/'),
        );
        pathOffset += 9;
        index = path.indexOf('/run', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reportId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('/run'),
        );
        pathOffset += 4;

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
          queryMap['synchronous']!.first,
          unittest.equals('$arg_synchronous'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.run(arg_profileId, arg_reportId,
          synchronous: arg_synchronous, $fields: arg_$fields);
      checkFile(response as api.File);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).reports;
      final arg_request = buildReport();
      final arg_profileId = 'foo';
      final arg_reportId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Report.fromJson(json as core.Map<core.String, core.dynamic>);
        checkReport(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/reports/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reportId'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_profileId, arg_reportId,
          $fields: arg_$fields);
      checkReport(response as api.Report);
    });
  });

  unittest.group('resource-ReportsCompatibleFieldsResource', () {
    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).reports.compatibleFields;
      final arg_request = buildReport();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Report.fromJson(json as core.Map<core.String, core.dynamic>);
        checkReport(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/reports/compatiblefields/query', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('/reports/compatiblefields/query'),
        );
        pathOffset += 31;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCompatibleFields());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.query(arg_request, arg_profileId, $fields: arg_$fields);
      checkCompatibleFields(response as api.CompatibleFields);
    });
  });

  unittest.group('resource-ReportsFilesResource', () {
    unittest.test('method--get', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).reports.files;
      final arg_profileId = 'foo';
      final arg_reportId = 'foo';
      final arg_fileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/reports/'),
        );
        pathOffset += 9;
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
          unittest.equals('$arg_fileId'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_profileId, arg_reportId, arg_fileId,
          $fields: arg_$fields);
      checkFile(response as api.File);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).reports.files;
      final arg_profileId = 'foo';
      final arg_reportId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/reports/'),
        );
        pathOffset += 9;
        index = path.indexOf('/files', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reportId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/files'),
        );
        pathOffset += 6;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFileList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, arg_reportId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkFileList(response as api.FileList);
    });
  });

  unittest.group('resource-SitesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).sites;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkSite(response as api.Site);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).sites;
      final arg_request = buildSite();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Site.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkSite(response as api.Site);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).sites;
      final arg_profileId = 'foo';
      final arg_acceptsInStreamVideoPlacements = true;
      final arg_acceptsInterstitialPlacements = true;
      final arg_acceptsPublisherPaidPlacements = true;
      final arg_adWordsSite = true;
      final arg_approved = true;
      final arg_campaignIds = buildUnnamed299();
      final arg_directorySiteIds = buildUnnamed300();
      final arg_ids = buildUnnamed301();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_subaccountId = 'foo';
      final arg_unmappedSite = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['acceptsInStreamVideoPlacements']!.first,
          unittest.equals('$arg_acceptsInStreamVideoPlacements'),
        );
        unittest.expect(
          queryMap['acceptsInterstitialPlacements']!.first,
          unittest.equals('$arg_acceptsInterstitialPlacements'),
        );
        unittest.expect(
          queryMap['acceptsPublisherPaidPlacements']!.first,
          unittest.equals('$arg_acceptsPublisherPaidPlacements'),
        );
        unittest.expect(
          queryMap['adWordsSite']!.first,
          unittest.equals('$arg_adWordsSite'),
        );
        unittest.expect(
          queryMap['approved']!.first,
          unittest.equals('$arg_approved'),
        );
        unittest.expect(
          queryMap['campaignIds']!,
          unittest.equals(arg_campaignIds),
        );
        unittest.expect(
          queryMap['directorySiteIds']!,
          unittest.equals(arg_directorySiteIds),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['subaccountId']!.first,
          unittest.equals(arg_subaccountId),
        );
        unittest.expect(
          queryMap['unmappedSite']!.first,
          unittest.equals('$arg_unmappedSite'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSitesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          acceptsInStreamVideoPlacements: arg_acceptsInStreamVideoPlacements,
          acceptsInterstitialPlacements: arg_acceptsInterstitialPlacements,
          acceptsPublisherPaidPlacements: arg_acceptsPublisherPaidPlacements,
          adWordsSite: arg_adWordsSite,
          approved: arg_approved,
          campaignIds: arg_campaignIds,
          directorySiteIds: arg_directorySiteIds,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          subaccountId: arg_subaccountId,
          unmappedSite: arg_unmappedSite,
          $fields: arg_$fields);
      checkSitesListResponse(response as api.SitesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).sites;
      final arg_request = buildSite();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Site.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkSite(response as api.Site);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).sites;
      final arg_request = buildSite();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Site.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkSite(response as api.Site);
    });
  });

  unittest.group('resource-SizesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).sizes;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSize());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkSize(response as api.Size);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).sizes;
      final arg_request = buildSize();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Size.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSize(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSize());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkSize(response as api.Size);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).sizes;
      final arg_profileId = 'foo';
      final arg_height = 42;
      final arg_iabStandard = true;
      final arg_ids = buildUnnamed302();
      final arg_width = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          core.int.parse(queryMap['height']!.first),
          unittest.equals(arg_height),
        );
        unittest.expect(
          queryMap['iabStandard']!.first,
          unittest.equals('$arg_iabStandard'),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['width']!.first),
          unittest.equals(arg_width),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSizesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          height: arg_height,
          iabStandard: arg_iabStandard,
          ids: arg_ids,
          width: arg_width,
          $fields: arg_$fields);
      checkSizesListResponse(response as api.SizesListResponse);
    });
  });

  unittest.group('resource-SubaccountsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).subaccounts;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubaccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkSubaccount(response as api.Subaccount);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).subaccounts;
      final arg_request = buildSubaccount();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Subaccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubaccount(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubaccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkSubaccount(response as api.Subaccount);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).subaccounts;
      final arg_profileId = 'foo';
      final arg_ids = buildUnnamed303();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubaccountsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkSubaccountsListResponse(response as api.SubaccountsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).subaccounts;
      final arg_request = buildSubaccount();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Subaccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubaccount(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubaccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkSubaccount(response as api.Subaccount);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).subaccounts;
      final arg_request = buildSubaccount();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Subaccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubaccount(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubaccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkSubaccount(response as api.Subaccount);
    });
  });

  unittest.group('resource-TargetableRemarketingListsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).targetableRemarketingLists;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTargetableRemarketingList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkTargetableRemarketingList(response as api.TargetableRemarketingList);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).targetableRemarketingLists;
      final arg_profileId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_active = true;
      final arg_maxResults = 42;
      final arg_name = 'foo';
      final arg_pageToken = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['advertiserId']!.first,
          unittest.equals(arg_advertiserId),
        );
        unittest.expect(
          queryMap['active']!.first,
          unittest.equals('$arg_active'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildTargetableRemarketingListsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, arg_advertiserId,
          active: arg_active,
          maxResults: arg_maxResults,
          name: arg_name,
          pageToken: arg_pageToken,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkTargetableRemarketingListsListResponse(
          response as api.TargetableRemarketingListsListResponse);
    });
  });

  unittest.group('resource-TargetingTemplatesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).targetingTemplates;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTargetingTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkTargetingTemplate(response as api.TargetingTemplate);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).targetingTemplates;
      final arg_request = buildTargetingTemplate();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TargetingTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTargetingTemplate(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTargetingTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkTargetingTemplate(response as api.TargetingTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).targetingTemplates;
      final arg_profileId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_ids = buildUnnamed304();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['advertiserId']!.first,
          unittest.equals(arg_advertiserId),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTargetingTemplatesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          advertiserId: arg_advertiserId,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkTargetingTemplatesListResponse(
          response as api.TargetingTemplatesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).targetingTemplates;
      final arg_request = buildTargetingTemplate();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TargetingTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTargetingTemplate(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTargetingTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkTargetingTemplate(response as api.TargetingTemplate);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).targetingTemplates;
      final arg_request = buildTargetingTemplate();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TargetingTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTargetingTemplate(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTargetingTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkTargetingTemplate(response as api.TargetingTemplate);
    });
  });

  unittest.group('resource-TvCampaignDetailsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).tvCampaignDetails;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['accountId']!.first,
          unittest.equals(arg_accountId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTvCampaignDetail());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_profileId, arg_id,
          accountId: arg_accountId, $fields: arg_$fields);
      checkTvCampaignDetail(response as api.TvCampaignDetail);
    });
  });

  unittest.group('resource-TvCampaignSummariesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).tvCampaignSummaries;
      final arg_profileId = 'foo';
      final arg_accountId = 'foo';
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['accountId']!.first,
          unittest.equals(arg_accountId),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildTvCampaignSummariesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          accountId: arg_accountId, name: arg_name, $fields: arg_$fields);
      checkTvCampaignSummariesListResponse(
          response as api.TvCampaignSummariesListResponse);
    });
  });

  unittest.group('resource-UserProfilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).userProfiles;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_profileId, $fields: arg_$fields);
      checkUserProfile(response as api.UserProfile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).userProfiles;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('userprofiles'),
        );
        pathOffset += 12;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserProfileList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list($fields: arg_$fields);
      checkUserProfileList(response as api.UserProfileList);
    });
  });

  unittest.group('resource-UserRolePermissionGroupsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).userRolePermissionGroups;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserRolePermissionGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkUserRolePermissionGroup(response as api.UserRolePermissionGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).userRolePermissionGroups;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildUserRolePermissionGroupsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkUserRolePermissionGroupsListResponse(
          response as api.UserRolePermissionGroupsListResponse);
    });
  });

  unittest.group('resource-UserRolePermissionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).userRolePermissions;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserRolePermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkUserRolePermission(response as api.UserRolePermission);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).userRolePermissions;
      final arg_profileId = 'foo';
      final arg_ids = buildUnnamed305();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildUserRolePermissionsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_profileId, ids: arg_ids, $fields: arg_$fields);
      checkUserRolePermissionsListResponse(
          response as api.UserRolePermissionsListResponse);
    });
  });

  unittest.group('resource-UserRolesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).userRoles;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_profileId, arg_id, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).userRoles;
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkUserRole(response as api.UserRole);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).userRoles;
      final arg_request = buildUserRole();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.UserRole.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUserRole(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_profileId, $fields: arg_$fields);
      checkUserRole(response as api.UserRole);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).userRoles;
      final arg_profileId = 'foo';
      final arg_accountUserRoleOnly = true;
      final arg_ids = buildUnnamed306();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_searchString = 'foo';
      final arg_sortField = 'foo';
      final arg_sortOrder = 'foo';
      final arg_subaccountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['accountUserRoleOnly']!.first,
          unittest.equals('$arg_accountUserRoleOnly'),
        );
        unittest.expect(
          queryMap['ids']!,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchString']!.first,
          unittest.equals(arg_searchString),
        );
        unittest.expect(
          queryMap['sortField']!.first,
          unittest.equals(arg_sortField),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['subaccountId']!.first,
          unittest.equals(arg_subaccountId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserRolesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId,
          accountUserRoleOnly: arg_accountUserRoleOnly,
          ids: arg_ids,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          searchString: arg_searchString,
          sortField: arg_sortField,
          sortOrder: arg_sortOrder,
          subaccountId: arg_subaccountId,
          $fields: arg_$fields);
      checkUserRolesListResponse(response as api.UserRolesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).userRoles;
      final arg_request = buildUserRole();
      final arg_profileId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.UserRole.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUserRole(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_profileId, arg_id,
          $fields: arg_$fields);
      checkUserRole(response as api.UserRole);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).userRoles;
      final arg_request = buildUserRole();
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.UserRole.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUserRole(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_profileId, $fields: arg_$fields);
      checkUserRole(response as api.UserRole);
    });
  });

  unittest.group('resource-VideoFormatsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).videoFormats;
      final arg_profileId = 'foo';
      final arg_id = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVideoFormat());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_profileId, arg_id, $fields: arg_$fields);
      checkVideoFormat(response as api.VideoFormat);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).videoFormats;
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('dfareporting/v4/'),
        );
        pathOffset += 16;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('userprofiles/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVideoFormatsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_profileId, $fields: arg_$fields);
      checkVideoFormatsListResponse(response as api.VideoFormatsListResponse);
    });
  });
}
